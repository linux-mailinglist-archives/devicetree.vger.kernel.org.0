Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7E1330AE29
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 18:42:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232194AbhBARlo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 12:41:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230064AbhBARll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 12:41:41 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23BD1C06174A
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 09:41:01 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l12so17564067wry.2
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 09:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NecD4Lj2Pit6+zWdziXlW+Wn9lKyelFLyjZNsi277Ko=;
        b=saZ8e5FdXuzKn/wEQOBBdHmpMeHPCpDbAv/xRAxSPOf23fsZYMdk8Yk22lsNT8n+FL
         svRxqoOqTKJjnuSSRyZ+qRx+Efu4w8zHaWLl+bSl/ojmyvBk5bvUIkcHW+jPkaRxjPKN
         AuYSYNzxd18rPUOdsf6Txex3i+Vh3AtUKjJGo1Ow2zHCOx3wA+tdweA4Y3kmSV52XQ2a
         F1I0mbphY6MnUwjZH6PqH8XWbY3tOU4tPce17NCIV/4I7dwNeuNs39OD0g/CRKmBMrJI
         gGZ/tUgRP+6B/DdP59LjGHj87qRLEduw7FMO7hwxvY088FTQz9Qdt46slGB/Tx6BSOG9
         YIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NecD4Lj2Pit6+zWdziXlW+Wn9lKyelFLyjZNsi277Ko=;
        b=V5Qq0X8r6n/47wX7bIX/+ZfSSq0B6J0fyJcyRYz6JECHY5ruO7u0FmPuFZiFPfgKY5
         ++ElBxbldnaQ22ne7xzfMP9991gqN6OP+1FTSq6y/D7hlhKQTGF4dAVsScFJ7syk/Ify
         OOPRVQEwhGDRCLhjQgFtWx4qdtGi9/7OHsiEpnLOjA1GVvbFW0ZwcbXmWnm9Bicvor4Y
         eIKrpuKNky8nC/CiDC7zAHEUOeU+q82WcLUNFC8z5xn1UX1pyc4y61xtKukEsnWSqRvF
         Sh2/uTZKM2V7G/WerqavnFTnVgT10KC6DJ4eWnfGOWRIruZM9HguBurRadopTxeX0L57
         maXA==
X-Gm-Message-State: AOAM533BMU5pmDlduE/7jDOHCbN9afU4SL8Djj18ZEsT6T6qcTVlhNZ+
        mjJKQJwvVvUq/QvqzRzNd1Sx7A==
X-Google-Smtp-Source: ABdhPJyVjTMobOwpzGXZWG3t6ZHVDL2R31hio+NCbOHokYHgLSzOJpH3gDsceNyauEudNIluLfZ9+g==
X-Received: by 2002:a5d:458a:: with SMTP id p10mr19485759wrq.168.1612201259731;
        Mon, 01 Feb 2021 09:40:59 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id r25sm29850479wrr.64.2021.02.01.09.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 09:40:59 -0800 (PST)
Date:   Mon, 1 Feb 2021 17:40:56 +0000
From:   Quentin Perret <qperret@google.com>
To:     Will Deacon <will@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
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
Subject: Re: [RFC PATCH v2 03/26] arm64: kvm: Add standalone ticket spinlock
 implementation for use at hyp
Message-ID: <YBg9KPnKfJzraTBO@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-4-qperret@google.com>
 <20210201172833.GA15632@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210201172833.GA15632@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 01 Feb 2021 at 17:28:34 (+0000), Will Deacon wrote:
> On Fri, Jan 08, 2021 at 12:15:01PM +0000, Quentin Perret wrote:
> > From: Will Deacon <will@kernel.org>
> > 
> > We will soon need to synchronise multiple CPUs in the hyp text at EL2.
> > The qspinlock-based locking used by the host is overkill for this purpose
> > and relies on the kernel's "percpu" implementation for the MCS nodes.
> > 
> > Implement a simple ticket locking scheme based heavily on the code removed
> > by commit c11090474d70 ("arm64: locking: Replace ticket lock implementation
> > with qspinlock").
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Quentin Perret <qperret@google.com>
> > ---
> >  arch/arm64/kvm/hyp/include/nvhe/spinlock.h | 92 ++++++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >  create mode 100644 arch/arm64/kvm/hyp/include/nvhe/spinlock.h
> > 
> > diff --git a/arch/arm64/kvm/hyp/include/nvhe/spinlock.h b/arch/arm64/kvm/hyp/include/nvhe/spinlock.h
> > new file mode 100644
> > index 000000000000..7584c397bbac
> > --- /dev/null
> > +++ b/arch/arm64/kvm/hyp/include/nvhe/spinlock.h
> > @@ -0,0 +1,92 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * A stand-alone ticket spinlock implementation for use by the non-VHE
> > + * KVM hypervisor code running at EL2.
> > + *
> > + * Copyright (C) 2020 Google LLC
> > + * Author: Will Deacon <will@kernel.org>
> > + *
> > + * Heavily based on the implementation removed by c11090474d70 which was:
> > + * Copyright (C) 2012 ARM Ltd.
> > + */
> > +
> > +#ifndef __ARM64_KVM_NVHE_SPINLOCK_H__
> > +#define __ARM64_KVM_NVHE_SPINLOCK_H__
> > +
> > +#include <asm/alternative.h>
> > +#include <asm/lse.h>
> > +
> > +typedef union hyp_spinlock {
> > +	u32	__val;
> > +	struct {
> > +#ifdef __AARCH64EB__
> > +		u16 next, owner;
> > +#else
> > +		u16 owner, next;
> > +	};
> > +#endif
> 
> Looks like I put this #endif in the wrong place; probably needs to be a line
> higher.

Uh oh, missed that too. Fix now merged locally, thanks.

Quentin
