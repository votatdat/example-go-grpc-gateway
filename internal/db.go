// ./internal/db.go
package internal

import (
	"fmt"

	"github.com/votatdat/example-go-grpc-gateway/protogen/golang/orders"
)

type DB struct {
	collection []*orders.Order
}

// NewDB creates a new array to mimic the behavior of a in-memory database
func NewDB() *DB {
	return &DB{
		collection: make([]*orders.Order, 0),
	}
}

// AddOrder adds a new order to the DB collection. Returns an error on duplicate ids
func (d *DB) AddOrder(order *orders.Order) error {
	for _, o := range d.collection {
		if o.OrderId == order.OrderId {
			return fmt.Errorf("duplicate order id: %d", order.GetOrderId())
		}
	}
	d.collection = append(d.collection, order)
	return nil
}
