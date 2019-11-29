Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3A0710D67C
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2019 14:58:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726822AbfK2N6A convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 29 Nov 2019 08:58:00 -0500
Received: from Galois.linutronix.de ([193.142.43.55]:48861 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726821AbfK2N6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Nov 2019 08:58:00 -0500
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
        (envelope-from <bigeasy@linutronix.de>)
        id 1iagmT-0007s7-0N; Fri, 29 Nov 2019 14:57:57 +0100
Date:   Fri, 29 Nov 2019 14:57:56 +0100
From:   Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] of: allocate / free phandle cache outside of the
 devtree_lock
Message-ID: <20191129135756.tfmuygw4be6yftz5@linutronix.de>
References: <20191111172142.ozczh7j2gmzi7o5k@linutronix.de>
 <e62e6a76-c614-80c4-2c9b-cd4326105fd9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
In-Reply-To: <e62e6a76-c614-80c4-2c9b-cd4326105fd9@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2019-11-12 16:48:12 [-0600], Frank Rowand wrote:
> Hi Sebastian,
Hi Frank,

> On 11/11/19 11:21 AM, Sebastian Andrzej Siewior wrote:
> > The phandle cache code allocates memory while holding devtree_lock which
> > is a raw_spinlock_t. Memory allocation (and free()) is not possible on
> > RT while a raw_spinlock_t is held.
> > Invoke the kfree() and kcalloc() while the lock is dropped.
> 
> I thought the GFP_ATOMIC passed to kcalloc() in of_populate_phandle_cache()
> was sufficient.  And I didn't realize (or remember) that kfree was
> not allowed while a raw_spinlock_t is held.  Do you have a
> pointer to the preempt RT documentation that explains that?
> I'd like to add that pointer to my personal notes about locking so
> that I won't mis-remember this too often.

Unfortunately not yet. I have a mini document that needs polishing…
However, since as far as my RT memory goes:
GFP_ATOMIC can be used in non-blocking context. On !RT that includes
disabled preemption and/or interrupts _usually_ part of locking (like
spin_lock_irqsave()) or the inherited context like IRQ-handler or
softirq for instance.
On RT the former example is not blocking anymore (sleeping spinlocks,
threaded IRQs). The locking with raw_spinlock_t still disables
preemption and interrupts as part of the procedure. The GFP_ATOMIC in
this case does not matter on RT here in terms of blocking (the part with
emergency pools and so on remains unchanged). 
The kfree() part within a raw_spinlock_t section has the same
limitations on RT as kmalloc() for the same reason. The SLUB part of the
function is fine. The problem is once SLUB has to call to the page
allocated in order to return or ask for memory. We can't do this in
blocking context.

…
> > | smp: Bringing up secondary CPUs ...
> > | BUG: sleeping function called from invalid context at kernel/locking/rtmutex.c:973
> > | in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 0, name: swapper/1
> > | 1 lock held by swapper/1/0:
> > |  #0: c000000000def6e0 (devtree_lock){+.+.}, at: of_find_node_opts_by_path+0x1f4/0x230
> > | Preemption disabled at:
> > | [<c0000000000557a0>] start_secondary+0xd0/0x6a0
> > |
> > | Call Trace:
> > | [c0000001f9667d10] [c000000000158e30] ___might_sleep+0x250/0x270
> > | [c0000001f9667da0] [c000000000984f40] rt_spin_lock+0x70/0x90
> > | [c0000001f9667de0] [c0000000007e3634] of_find_node_opts_by_path+0x1f4/0x230
> > | [c0000001f9667e30] [c0000000007e3844] of_get_next_cpu_node+0x144/0x180
> > | [c0000001f9667e70] [c0000000007e38d8] of_get_cpu_node+0x58/0x90
> > | [c0000001f9667eb0] [c00000000002eb00] cpu_to_chip_id+0x20/0x70
> > | [c0000001f9667ee0] [c000000000055858] start_secondary+0x188/0x6a0
> > | [c0000001f9667f90] [c00000000000b554] start_secondary_prolog+0x10/0x14
> > 
> > because cpu_to_chip_id() acquires devtree_lock() early in the CPU-bring
> > up path.
> 
> I read too much into that sentence, and ran off on a tangent re-educating
> myself on preempt RT lock stuff.
> 
> The issue in this path is that start_secondary() disables preemption before
> going down the code path that ends up with an attempt by of_find_node_opts_by_path()
> to lock devtree_lock.  It is ok to acquire a raw spinlock with preemption
> disabled, but not ok to acquire a normal spinlock with preemption disabled.
That is correct. So
	spin_lock();
	spin_lock();

is okay. However
	preempt_disable();
	spin_lock();

is not okay. Same is true for s/preempt_disable/local_irq_disable()/.

Please note the even before preempt_disable() in start_secondary() the
whole code runs with disabled interrupts as part of CPU bring up. 

> The calling path to cpu_to_chip_id() has an intervening call that does not
> show up in the above trace, add_cpu_to_masks().  The first call of cpu_to_chip_id()
> is "int chipid = cpu_to_chip_id(cpu)", which could be moved out to start_secondary(),
> before preemption is disabled.  But at the end of add_cpu_to_masks() is:
> 
>         for_each_cpu(i, cpu_online_mask)
>                 if (cpu_to_chip_id(i) == chipid)
>                         set_cpus_related(cpu, i, cpu_core_mask);
> 
> This use of cpu_to_chip_id() is a little harder to move to before the preemption,
> but it is possible.  A table of the chip ids for all possible cpus could be
> created before disabling preemption, and the table could be passed into
> add_cpu_to_masks().  This would allow devtree_lock to be changed to a
> spinlock_t.
> 
> I like this approach because it removes the one known place that constrains
> what type of lock devtree_lock is.

So even if we move that whole section before preempt_disable(), we still
run with disabled interrupts and can't use spinlock_t.
 
> My second choice (and I am willing to accept this) is:
> 
> > 
> >  drivers/of/base.c |   19 +++++++++++++------
> >  1 file changed, 13 insertions(+), 6 deletions(-)
> > 
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -138,31 +138,34 @@ static u32 phandle_cache_mask;
> >  /*
> >   * Caller must hold devtree_lock.
> >   */
> 
> Add a one line comment to the effect of kfree()
> can not occur while raw_spinlock_t held, so caller must
> do the kfree().

okay.

…
> > @@ -208,12 +212,14 @@ void of_populate_phandle_cache(void)
> >  
> >  	if (!phandles)
> >  		goto out;
> 
> Add a one line comment to the effect of raw_spinlock_t can not be held
> when calling kcalloc().
okay.

> > +	raw_spin_unlock_irqrestore(&devtree_lock, flags);
> >  
> >  	cache_entries = roundup_pow_of_two(phandles);
> >  	phandle_cache_mask = cache_entries - 1;
> > 
> 
> Need to avoid race with of_find_node_by_phandle().  So change the following
> to tmp_phandle_cache = kcalloc(...
okay.
 
> >  	phandle_cache = kcalloc(cache_entries, sizeof(*phandle_cache),
> >  				GFP_ATOMIC);
> > +	raw_spin_lock_irqsave(&devtree_lock, flags);
> 
> Then here:
> 
>         phandle_cache = tmp_phandle_cache;
> 
> >  	if (!phandle_cache)
> >  		goto out;
> >  
> > @@ -225,6 +231,7 @@ void of_populate_phandle_cache(void)
> >  
> >  out:
> >  	raw_spin_unlock_irqrestore(&devtree_lock, flags);
> > +	kfree(shadow);
> >  }
> >  
> >  void __init of_core_init(void)
> > 
> 
> The subtle race with of_find_node_by_phandle() is that if
> of_find_node_by_phandle() added an entry to the cache it
> also did an of_node_get().  It is ok that of_populate_phandle_cache()
> overwrite the cache entry, but it would also do an additional
> of_node_get().
okay.

> -Frank

Sebastian
