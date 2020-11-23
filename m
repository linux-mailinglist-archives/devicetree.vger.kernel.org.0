Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A59022C0B46
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 14:56:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388985AbgKWNWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 08:22:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388983AbgKWNW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 08:22:28 -0500
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B7CBC0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 05:22:28 -0800 (PST)
Received: by mail-oi1-x243.google.com with SMTP id a130so11504957oif.7
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 05:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/kdqFZeAVjbR1EcrIlFEOxJOMeoTF+Ogzz6G56OSu8M=;
        b=rTTjlgTIUFSWUW/IC4OxUfYnSqKXdJJ9kqYLU/ZqrJAAi87J+7NiREj6ube4ANvu1g
         LsHbqdqUqsv1WvcxkWTewmx3DHXB3cakd8AOodJlcSbrVphhStsCFNaDA0bWkye3lKjm
         AcQllA7rtoChNr8xdo732cLNI+Hy+0pe5oXbIrBYCjn3BPQmXgi82/O1h35cWJqz9T2/
         edQbz0xLSKOG16+/9MKx49RjIACs+K8INOB7JtBQwPP8geXDKG9gyx9eckuCQ6gpNpdk
         Y9AZ333KWpIZr4Kza7TJAOnmVPkXgStofyfEhZK7IKJCMoly0/9ynQdr/CGbnQIOU6mh
         C0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/kdqFZeAVjbR1EcrIlFEOxJOMeoTF+Ogzz6G56OSu8M=;
        b=aKdCPKyD/sxNAe8GWjJ3PpdGuOHCoYUGesu6Fodf8IN/TGoRNM1oR3ZvDhg/VVS1jh
         JB1OJX5eZliWDWTqP/wL+mPMcyig5glqTlSpK3JRcH7pV4kkAoVICsmdhoCWzmleCyw+
         yR4MdxlkQjsOyDRp3r2EKvFWQIOi0S+InLvWjLr3NVY54fItDui6gSnPM0JlYP1/NX91
         WdlMJkLaojxhkEh6ch0hnnWj6gECGyolBgp+W8SN9cSjFXFFIswb4+yItZCwJYMm6Kv5
         H74QIqzbxaf+5/zng2lraFhISQf5cl7KQrrS3wkUFTDHXmuOPmtI+O6PhBkQpQAIHRMs
         a7yQ==
X-Gm-Message-State: AOAM532oqvE3jyCZtlqw84mRBPFKJHeZYOKjkcv4j14Y3RDtdDTreQHA
        VuQhtK6UjCV9DaEZul0cLRZORw==
X-Google-Smtp-Source: ABdhPJzEhLvMoLTH89tN1wdaa8/gjQDGQFbkETdg1TT2tpDZ6ILozNTF3nqBtpBt76eWvVSRF6fAZg==
X-Received: by 2002:a05:6808:301:: with SMTP id i1mr15073703oie.49.1606137747765;
        Mon, 23 Nov 2020 05:22:27 -0800 (PST)
Received: from google.com ([2a01:4b00:8523:2d03:acac:b2ef:c7d:fd8a])
        by smtp.gmail.com with ESMTPSA id s185sm7344774oia.18.2020.11.23.05.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 05:22:26 -0800 (PST)
Date:   Mon, 23 Nov 2020 13:22:23 +0000
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
Subject: Re: [RFC PATCH 13/27] KVM: arm64: Enable access to sanitized CPU
 features at EL2
Message-ID: <20201123132223.oohevce4izuoaqi3@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-14-qperret@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201117181607.1761516-14-qperret@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +int copy_ftr_reg(u32 id, struct arm64_ftr_reg *dst)
> +{
> +	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id);
> +
> +	if (!regp)
> +		return -EINVAL;
> +
> +	memcpy(dst, regp, sizeof(*regp));
> +
> +	return 0;
> +}
> +
>  #define read_sysreg_case(r)	\
>  	case r:		return read_sysreg_s(r)
>  
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> index dd8ccc9efb6a..c35d768672eb 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -116,6 +116,8 @@ __kvm_nvhe___memcpy			= __kvm_nvhe___pi_memcpy;
>  __kvm_nvhe___memset			= __kvm_nvhe___pi_memset;
>  #endif
>  
> +_kvm_nvhe___flush_dcache_area		= __kvm_nvhe___pi___flush_dcache_area;
> +

Could you help my understand why we need this?
* Why do we need PI routines in the first place? Would my series that fixes
  relocations in hyp code remove the need?
* You added these aliases for the string routines because you were worried
  somebody would change the implementation in arch/arm64/lib, right? But this
  cache flush function is defined in hyp/nvhe. So why do we need to point to
  the PI alias if we control the implementation?
