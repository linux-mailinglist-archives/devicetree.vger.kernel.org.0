Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB5FB2B7A52
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 10:28:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725879AbgKRJZx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 04:25:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725772AbgKRJZx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 04:25:53 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2812C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 01:25:52 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id p2so471433wma.1
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 01:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=X6ZFH7heqse89aEGvMmhzcbSi20z75OlSQMAgPLbESY=;
        b=qsrid+z+rmZ3dQS0wbdI0bNgj4M5MSLp+gEMgXV6pD107XERnbrCeb4fuwBhnXhhMC
         KXHYWC1kNKIJwZf7/xLoXfFqgCbE7c7yJinhL5z2ssGTC0kKTYOLhj2uVu+wJGWo5dvF
         bKfxyw2bfxI+GEnta7thOy7XNgPTU7LaBgO2AVpLbhmzaG4wPNFDr2QN527GIGPTo0Q1
         3jFoNmlWzG5xyLLI4l21CFDARG//t9l5aIqjFYnqj8/1USJfj1/jNHLBXFv2Zbu82e2H
         bDyce1abLLvAKmygjJypUQPKmCk40uitrOiVVix8cWwFTz6HsQiLudWBBn5aw365LAWr
         1Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=X6ZFH7heqse89aEGvMmhzcbSi20z75OlSQMAgPLbESY=;
        b=inLkC11ZgD33nb7UBunV36Fz9kDtjdawWez34Vy/6WFAj39kNJkeXHlTnJ0TKzwlJ+
         3vyfQoNwMilZx04WwfoP7oTlCAgds4xc/yI8F42E0PBTQiYqFd4egviup5S+J7foWIuK
         KXNi81Dyqb/zEXYIDmvBj4kGL000+PUOEZEMGwWent1uwPjrPn3AiGxhJ6AJBQ+zZ9lU
         Pa3RRKfQZ76QFtafBltVJ7DzEvYioGeafI/u//Yg165yz/oJPDpTTwWo26TLfjHMklBT
         myPBOqYowvQ6R471q/wqeWtq9tXvySo+Mihtxf6zUxSfrs4G89MOvHPqQLsfuFrPU/VV
         bytw==
X-Gm-Message-State: AOAM5326Y7CjCL4BMB6zarHtl4hShsmmslyjmLxHtHwUJKSeitQU2tAE
        deV43MYJY4LCwOWpBSOhWXN7BA==
X-Google-Smtp-Source: ABdhPJyzHPcv8qy3yk+iw5C1CfQhs0U063gy6g1/i2mGk7ekBPYQXw+3gsJbk8sWoUnBUh/4KANvSQ==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr3370259wmi.124.1605691551308;
        Wed, 18 Nov 2020 01:25:51 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id t136sm2716518wmt.18.2020.11.18.01.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 01:25:50 -0800 (PST)
Date:   Wed, 18 Nov 2020 09:25:47 +0000
From:   Quentin Perret <qperret@google.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>,
        android-kvm@google.com
Subject: Re: [RFC PATCH 15/27] of/fdt: Introduce
 early_init_dt_add_memory_hyp()
Message-ID: <20201118092547.GA2031536@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-16-qperret@google.com>
 <CAL_Jsq+xAy9+HjH6vqfmaAEKBe9MMm+wWvUtiz5dFnHmMneqNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+xAy9+HjH6vqfmaAEKBe9MMm+wWvUtiz5dFnHmMneqNw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tuesday 17 Nov 2020 at 13:44:53 (-0600), Rob Herring wrote:
> Can this be done right after we add all the memblocks using the
> memblock API?

Possibly, but the thing I'm a bit worried about is the way 'no-map'
regions are removed from memblocks early on.

The EL2 object needs to know about these parts of memory too (and in
fact we may be able to enforce the 'no-map' attribute at the host stage
2 level as well). It's also possible we'll need to have portions of the
guests payload preloaded (and verified) by the bootloader into reserved
memory regions, possibly no-map, to make sure the host does not mess
with them in a normal use-case. So, I couldn't find a much better place
than this one but suggestions are very much welcome.

I'll have a go at the memblock stuff to see if I find a way to make it
work from that angle.

> I thought EFI would also need to be handled, but looks
> like it just calls early_init_dt_add_memory_arch(). That's odd
> especially for ACPI systems...
> 
> I don't really like putting what looks like an arm64 only hook here,
> but then I don't want an arm64 version of
> early_init_dt_add_memory_arch() either. We're almost to the point of
> getting rid of the arch specific ones. But I don't have a better
> suggestion currently.

Ack, the ugly truth is that this is likely to remain arm64-specific. I
figured this was simple enough that we might want to consider it,
though.

Thanks,
Quentin
