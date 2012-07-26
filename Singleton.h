#ifndef _SINGLETON_H_
#define _SINGLETON_H_

#define DECLARE_SINGLETON(theClass)  \
    public: \
        static theClass *Instance() \
        { \
            static theClass *m_pInstance = 0; \
            if (0 == m_pInstance)  \
            { \
            	static theClass inst;\
                m_pInstance = &inst; \
            } \
            return m_pInstance; \
        } \
    private: \
        theClass(theClass const &); \
        theClass &operator =(theClass &); \
        
#endif
