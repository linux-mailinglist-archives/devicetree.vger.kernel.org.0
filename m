Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B82CC2C08EA
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 14:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387677AbgKWNDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 08:03:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387669AbgKWMv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 07:51:57 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01610C0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 04:51:57 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id 7so23126596ejm.0
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 04:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jnD6JxIyxc4vm54K4tKnhPWtevyVeHY1Zgn00laUUfA=;
        b=n+SsvAnOuvFpo9fuYFpraPfRqMJQBKN5DmMsO67xbOdk7xeiFLjd9qowus6ere1Cg3
         IyClkLOxj+jm6I2dSTy2Tx1nAoEZtFF6N2t915Kw+bQ+hCeNUQe+u8vfps7+3A37Wd0i
         Xw468ZyUMHg34aARMw+5sCah5Ife3hgkIOgBaEFtTkrdvjw+F3UZo5x6JCdflbNWKuPL
         +gH7yEC9lZxw9iErt3++xiBCrsbPc8RsDMEJx2rKd5jMKKG8buEGI2odLG0PEC0EqUaX
         T33iehIZOGb9ctsRDtPWP1OUCnXL1/JQt4rpA1d7l2yVOfogxApssQ/fZAMIbiU6O13Y
         pn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jnD6JxIyxc4vm54K4tKnhPWtevyVeHY1Zgn00laUUfA=;
        b=fNNIwhzFnmMo5hQkSbV74NO1/NQqflTCUX1FzmQ9FI+9MI+J51npnqKlmy90OBx0xu
         ZImiaSPRd9E/lQxyPDfSmsP14/wM5YF1RsQn4upQ3aoxpRY3zRxtMksr2tO7gDYCFTT2
         gpzWLwqaU1Jyx+YAUknUQ1MhCngLsy+lWMfFiVJ/onjcUorPzX207dhDs29cJLMHkXtK
         az+f+VH67wYBeEYFhOccRh9lsL4D5dJQwnjyjMWEwWERxg+H3L7KP/06U3AJlRazYOH7
         KjYs7wCOf0ejNWGg2uWF5bSQsKp6HlqaxVNUzGx/W/QG64rjBz/Fl9vZ1PJ0X68/uZ43
         vEyg==
X-Gm-Message-State: AOAM533mHIsNWpFCNHKEfXso9SVtsMsMcz5SIFOZa8iNoZVaMvX3PFAp
        F9DNf5p6UoBcOchrJMVy0sDyCg==
X-Google-Smtp-Source: ABdhPJzoJRpQuSQbyVo4FnWnIGE0h6PqMXD5ASqgZR/lDI3/6lf/+dq9ThIlEFnuoEOJELCR8o+4KQ==
X-Received: by 2002:a17:907:c14:: with SMTP id ga20mr43858051ejc.526.1606135915525;
        Mon, 23 Nov 2020 04:51:55 -0800 (PST)
Received: from google.com ([2a01:4b00:8523:2d03:acac:b2ef:c7d:fd8a])
        by smtp.gmail.com with ESMTPSA id z19sm4921235ejj.101.2020.11.23.04.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 04:51:54 -0800 (PST)
Date:   Mon, 23 Nov 2020 12:51:53 +0000
From:   David Brazdil <dbrazdil@google.com>
To:     Quentin Perret <qperret@google.com>
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
Subject: Re: [RFC PATCH 08/27] KVM: arm64: Make kvm_call_hyp() a function
 call at Hyp
Message-ID: <20201123125153.hnipzls2ijptpti7@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-9-qperret@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201117181607.1761516-9-qperret@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 06:15:48PM +0000, 'Quentin Perret' via kernel-team wrote:
> kvm_call_hyp() has some logic to issue a function call or a hypercall
> depending the EL at which the kernel is running. However, all the code
> compiled under __KVM_NVHE_HYPERVISOR__ is guaranteed to run only at EL2,
> and in this case a simple function call is needed.
> 
> Add ifdefery to kvm_host.h to symplify kvm_call_hyp() in .hyp.text.
> 
> Signed-off-by: Quentin Perret <qperret@google.com>
> ---
>  arch/arm64/include/asm/kvm_host.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index ac11adab6602..7a5d5f4b3351 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -557,6 +557,7 @@ int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
>  void kvm_arm_halt_guest(struct kvm *kvm);
>  void kvm_arm_resume_guest(struct kvm *kvm);
>  
> +#ifndef __KVM_NVHE_HYPERVISOR__
>  #define kvm_call_hyp_nvhe(f, ...)						\
>  	({								\
>  		struct arm_smccc_res res;				\
> @@ -596,6 +597,11 @@ void kvm_arm_resume_guest(struct kvm *kvm);
>  									\
>  		ret;							\
>  	})
> +#else /* __KVM_NVHE_HYPERVISOR__ */
> +#define kvm_call_hyp(f, ...) f(__VA_ARGS__)
> +#define kvm_call_hyp_ret(f, ...) f(__VA_ARGS__)
> +#define kvm_call_hyp_nvhe(f, ...) f(__VA_ARGS__)
> +#endif /* __KVM_NVHE_HYPERVISOR__ */

I was hoping we could define this as the following instead. That would require
adding host-side declarations of all functions currently called with _nvhe.

#define kvm_call_hyp_nvhe(f, ...)					\
+	is_nvhe_hyp_code() ? f(__VA_ARGS__) :				\
	({								\
		struct arm_smccc_res res;				\
									\
		arm_smccc_1_1_hvc(KVM_HOST_SMCCC_FUNC(f),		\
				##__VA_ARGS__, &res);			\
		WARN_ON(res.a0 != SMCCC_RET_SUCCESS);			\
									\
		res.a1;							\
	})

Up to you what you think is cleaner, just my 2 cents...
