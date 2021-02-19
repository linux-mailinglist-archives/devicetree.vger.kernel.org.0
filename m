Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A42031FED1
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 19:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbhBSSdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 13:33:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbhBSSdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 13:33:47 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5818BC061756
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 10:33:07 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id ba1so3844692plb.1
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 10:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=apaYLCgpKww0D9oOCdL1/leTpd02z3P4w+UfyB0qUtE=;
        b=cNzmU6RwCi2M7zc1iN6kXALpuF4Dr3p9TUe2IZrVSxDRNZxj43w4OZN9GBVNUyVoGY
         H1RXDjVYIy/K8yNu7pM4zNUC+X8IPbISNDZkI7CMRH6NW31SInd7dD92i1llEAJIpNl9
         iWbI8rgOSf7uQmj0SebJ6NcX/Ooy0yvSHYo1XyOoSpU19UIDftAZr4ACUicBtUMeLzOs
         JxUyV+lfMm+gr31mLh9yWgpO+USuw7r8q/XR26xRmrLSWdm95R71UclAbHcjdoD9mUVg
         /RXbSkNXY3aLx0dVZoac6BkHs3HET/aQxjW2WzpvO3e5JjAUaXvXTBmMVyOyA+7Xdb05
         6Cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=apaYLCgpKww0D9oOCdL1/leTpd02z3P4w+UfyB0qUtE=;
        b=Arlfn0EuvTbSctGwUbh5LLF1FyIYADfJFmXMCZH/IbvFThSs4Mi4U87K2cQZF+zikf
         WMU782X13fto3xJ1X/FBIfde0VEqZgwzNJjrPevqNdvmjf59nXaMTxGRLS40cuzvc+hM
         se5UNeGNws/0fnDYx1ubE8wh/oRgipu4abFW64YSiixLW43alPaCnlQrvNwaJm16pWZc
         oLGEnggpYTAgdxxvueykpdifIEtgVGISVfa1ElXmHEnp/ndh7AVZpiBPYzord/nMrqHu
         ug/oJQD6YkoTUdRbKnGYH97qxm4geIOnXdoLeYiWjnOe8l/r7ji0gzL0wbIM3bp5H2Ag
         VY3g==
X-Gm-Message-State: AOAM531Zmp+oAXdSBAXgE03XRe6+RhJVmrgLDSD6ZQOIB/6gYVW6+pED
        Zncbz1ssDyZI1Kl8QJDyeizm/A==
X-Google-Smtp-Source: ABdhPJzGsluCsG7fkC2FvoTQGUbPeiWB8QuireUSeDuRRKhKexRWjsorjPjofN2X3s0CAIhvLZ+5ZQ==
X-Received: by 2002:a17:902:9894:b029:e3:7aa3:a499 with SMTP id s20-20020a1709029894b02900e37aa3a499mr3088340plp.11.1613759586653;
        Fri, 19 Feb 2021 10:33:06 -0800 (PST)
Received: from google.com ([2620:15c:f:10:fc4d:e9c3:d7d:9cb3])
        by smtp.gmail.com with ESMTPSA id 3sm9467713pjk.26.2021.02.19.10.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 10:33:06 -0800 (PST)
Date:   Fri, 19 Feb 2021 10:32:58 -0800
From:   Sean Christopherson <seanjc@google.com>
To:     Will Deacon <will@kernel.org>
Cc:     Quentin Perret <qperret@google.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, android-kvm@google.com,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Subject: Re: [RFC PATCH v2 16/26] KVM: arm64: Prepare Hyp memory protection
Message-ID: <YDAEWu7RkG1OBFed@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-17-qperret@google.com>
 <20210203143709.GA18907@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203143709.GA18907@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 03, 2021, Will Deacon wrote:
> On Fri, Jan 08, 2021 at 12:15:14PM +0000, Quentin Perret wrote:

...

> > +static inline unsigned long hyp_s1_pgtable_size(void)
> > +{

...

> > +		res += nr_pages << PAGE_SHIFT;
> > +	}
> > +
> > +	/* Allow 1 GiB for private mappings */
> > +	nr_pages = (1 << 30) >> PAGE_SHIFT;
> 
> SZ_1G >> PAGE_SHIFT

Where does the 1gb magic number come from?  IIUC, this is calculating the number
of pages needed for the hypervisor's Stage-1 page tables.  The amount of memory
needed for those page tables should be easily calculated, and assuming huge
pages can be used, should be far less the 1gb.
 
> > +	nr_pages = __hyp_pgtable_max_pages(nr_pages);
> > +	res += nr_pages << PAGE_SHIFT;
> > +
> > +	return res;

...

> > +void __init kvm_hyp_reserve(void)
> > +{
> > +	u64 nr_pages, prev;
> > +
> > +	if (!is_hyp_mode_available() || is_kernel_in_hyp_mode())
> > +		return;
> > +
> > +	if (kvm_get_mode() != KVM_MODE_PROTECTED)
> > +		return;
> > +
> > +	if (kvm_nvhe_sym(hyp_memblock_nr) < 0) {
> > +		kvm_err("Failed to register hyp memblocks\n");
> > +		return;
> > +	}
> > +
> > +	sort_memblock_regions();
> > +
> > +	/*
> > +	 * We don't know the number of possible CPUs yet, so allocate for the
> > +	 * worst case.
> > +	 */
> > +	hyp_mem_size += NR_CPUS << PAGE_SHIFT;

Is this for per-cpu stack?

If so, what guarantees a single page is sufficient?  Mostly a curiosity question,
since it looks like this is an existing assumption by init_hyp_mode().  Shouldn't
the required stack size be defined in bytes and converted to pages, or is there a
guarantee that 64kb pages will be used?

> There was a recent patch bumping NR_CPUs to 512, so this would be 32MB
> with 64k pages. Is it possible to return memory to the host later on once
> we have a better handle on the number of CPUs in the system?

Does kvm_hyp_reserve() really need to be called during bootmem_init()?  What
prevents doing the reservation during init_hyp_mode()?  If the problem is that
pKVM needs a single contiguous chunk of memory, then it might be worth solving
_that_ problem, e.g. letting the host donate memory in N-byte chunks instead of
requiring a single huge blob of memory.
 
> > +	hyp_mem_size += hyp_s1_pgtable_size();
