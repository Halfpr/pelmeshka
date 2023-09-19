// Code generated by MockGen. DO NOT EDIT.
// Source: store.go

// Package mock is a generated GoMock package.
package mock

import (
	context "context"
	reflect "reflect"

	dumplings "gitlab.praktikum-services.ru/Stasyan/momo-store/internal/store/dumplings"
	gomock "github.com/golang/mock/gomock"
)

// MockStore is a mock of Store interface.
type MockStore struct {
	ctrl     *gomock.Controller
	recorder *MockStoreMockRecorder
}

// MockStoreMockRecorder is the mock recorder for MockStore.
type MockStoreMockRecorder struct {
	mock *MockStore
}

// NewMockStore creates a new mock instance.
func NewMockStore(ctrl *gomock.Controller) *MockStore {
	mock := &MockStore{ctrl: ctrl}
	mock.recorder = &MockStoreMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockStore) EXPECT() *MockStoreMockRecorder {
	return m.recorder
}

// CreateOrder mocks base method.
func (m *MockStore) CreateOrder(ctx context.Context, items ...dumplings.OrderItem) (int64, error) {
	m.ctrl.T.Helper()
	varargs := []interface{}{ctx}
	for _, a := range items {
		varargs = append(varargs, a)
	}
	ret := m.ctrl.Call(m, "CreateOrder", varargs...)
	ret0, _ := ret[0].(int64)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// CreateOrder indicates an expected call of CreateOrder.
func (mr *MockStoreMockRecorder) CreateOrder(ctx interface{}, items ...interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	varargs := append([]interface{}{ctx}, items...)
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "CreateOrder", reflect.TypeOf((*MockStore)(nil).CreateOrder), varargs...)
}

// ListPacks mocks base method.
func (m *MockStore) ListProducts(ctx context.Context) ([]dumplings.Product, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "ListProducts", ctx)
	ret0, _ := ret[0].([]dumplings.Product)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// ListPacks indicates an expected call of ListPacks.
func (mr *MockStoreMockRecorder) ListPacks(ctx interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "ListProducts", reflect.TypeOf((*MockStore)(nil).ListProducts), ctx)
}
