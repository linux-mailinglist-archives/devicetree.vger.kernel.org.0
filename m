Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 129FE2C0CB0
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:14:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729779AbgKWOC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:02:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729777AbgKWOC4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:02:56 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D89EFC061A4D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:02:55 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id a3so17344924wmb.5
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8MbLOzoiGt8qOrDnUA/zH8u0u0zSMC0gXKfi559DqVA=;
        b=ltVKPu+mf3w4cnT/dnxBHhtwTdvH5234a5m0Aas+h+d2O+deloN4yvQEqWA5jdgL7J
         BBwCdHTKDne3rtZS0479aN3cO3cK+qHE6RJeFtQD88SABrLknnTJIWPt7vFegoL9JAMW
         tfJ66juRzDAMcoPc3Q0qet+A+HXN7V++y5x4xM2kc9zgzhx3h6U57HdwASSxRI5xat96
         BhPR4KyhD3Do/OEx1hLna61IZUxVJpjCstJkxu9okbRxbT/18JE9VgsD6QeRJo/OjI6z
         GfIEjP7OFlskU0BPW9s0Lm8eEjmI5XyUFsIp0EVclLPkh5UQlfPxKshKoo9TN39JqMei
         EP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8MbLOzoiGt8qOrDnUA/zH8u0u0zSMC0gXKfi559DqVA=;
        b=CoYjUXdQXDgY7jgCQYMtTgVC3Ks0FREFSpz9UX3EfudTR3vs96NxALW0WHCrEQ2OjT
         4Vy0qmwPhBUNLEepCxpXYp98moDJJiUcYPAtwBjJslHWWexjnuF9NPzLRZDmJFhx8zAi
         au4PS3DrxDWxMs/sg+KiUwyStVQCySl6TW+s2SpOmaMZfWCeXhL95aKHGKXiFEZJ1LbZ
         tciVfHoebi44VkgIFx2ljTV8RF5B8cCLA5qwm8uf7/9sXSj8b/ahfmzxx5+h08j2VRM6
         S5la/bKk8kzPQpU9ikF0qi1j9IoZGPAo9IeLeo269OLLUiFT0xurRdDy1EEV4yq4LoiS
         QBZQ==
X-Gm-Message-State: AOAM530W7ZzpM+UtRoqPsTVlAqq7ctILHaMzD33qz8pOqSt80KeKEOGC
        20v4CWftbslQAv0s0eQmOUFdTw==
X-Google-Smtp-Source: ABdhPJxjgLyk9Fulttys1g8vPl1CXFrXrd8EhtH74rQmWAECciCrmgsHxN+h0I4wxVN09sd5aywgVA==
X-Received: by 2002:a7b:c24b:: with SMTP id b11mr23203780wmj.109.1606140174472;
        Mon, 23 Nov 2020 06:02:54 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id x13sm8390719wmj.48.2020.11.23.06.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 06:02:54 -0800 (PST)
Date:   Mon, 23 Nov 2020 14:02:50 +0000
From:   Quentin Perret <qperret@google.com>
To:     David Brazdil <dbrazdil@google.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>, kernel-team@android.com,
        android-kvm@google.com
Subject: Re: [RFC PATCH 09/27] KVM: arm64: Allow using kvm_nvhe_sym() in hyp
 code
Message-ID: <20201123140250.GB490744@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-10-qperret@google.com>
 <20201123125723.4mnodg3tnal4q4v2@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201123125723.4mnodg3tnal4q4v2@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 23 Nov 2020 at 12:57:23 (+0000), David Brazdil wrote:
> > diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
> > index 882eb383bd75..391cf6753a13 100644
> > --- a/arch/arm64/kvm/arm.c
> > +++ b/arch/arm64/kvm/arm.c
> > @@ -1369,7 +1369,7 @@ static void cpu_prepare_hyp_mode(int cpu)
> >  
> >  	params->vector_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref(__kvm_hyp_host_vector));
> >  	params->stack_hyp_va = kern_hyp_va(per_cpu(kvm_arm_hyp_stack_page, cpu) + PAGE_SIZE);
> > -	params->entry_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref(__kvm_hyp_psci_cpu_entry));
> > +	params->entry_hyp_va = kern_hyp_va((unsigned long)kvm_ksym_ref_nvhe(__kvm_hyp_psci_cpu_entry));
> 
> Why is this change needed?

You mean this line specifically or the whole __kvm_hyp_psci_cpu_entry
thing?

For the latter, it is to avoid having the compiler complain about
__kvm_hyp_psci_cpu_entry being re-defined as a different symbol. If
there is a better way to solve this problem I'm happy to change it -- I
must admit I got a little confused with the namespacing along the way.

Thanks,
Quentin
