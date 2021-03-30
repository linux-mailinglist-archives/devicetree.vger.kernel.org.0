Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B69E534DF30
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 05:23:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231150AbhC3DXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 23:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbhC3DWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 23:22:51 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3F24C061764
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:22:50 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id l12-20020a9d6a8c0000b0290238e0f9f0d8so14313434otq.8
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7t41cKlUPf2SnzIKDlby3FdcAtybZ6gP9vRyzm3tlpw=;
        b=TJNV3MVCQiasUwqdWIivjPmtxOlTOM1JFzmuOpR9nVs/xhurYQoXWzFj6vka6gfYKh
         M5YUGkd78B11wr1AdEIa9Qcc6G/+eyhgbltQO7vqHBoq42lkywNNLVeZBhYv6gS8k9Uy
         zApFG9rXYZ+cdBMyjDherT3Gnk2sZ7J32aONf0JqZFLjRj9X5brQ8V1+O5LGj6UYoa8x
         5BYnrnfuIIScVKQ03JGW/yn6CMtjUCj6IkK/gfMntf+qRiyX3AK98tu/oYIdKw/IQLlo
         N6s3NJciHIcZcql/q6sYzASzKajau88T+2BRMKyuyy4NsZLbxcGECElNmCFy77c4+ndD
         S+Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7t41cKlUPf2SnzIKDlby3FdcAtybZ6gP9vRyzm3tlpw=;
        b=UJmRezJDEiY5gGV1BjUHOcMlcG087b3kofiBq51cU2Yz+bcKJBXTYn3p9w1dgJmEeh
         zxWpURATn+lQfqBSaJoS/amh12cKbdzMgSEeMGYmbQE1RVw9XtpfU7sZ9+6rCbvIDbW+
         8QCobmmUcnOhBnKSvKQ3NDR7pX0VqgB0wiSP/hfLRO8iDjIBp712Yd+wFCF/vj3hTjn3
         HHj+sqO/xLfxM896Pi64mfrvuyQVy1G6bYmXyx+wur3KDDND2pcUhrB4SAcurf7xdUpf
         gkasEmhbN99yqrbuz7etPSxsoWZ3vucIMOHfkxTM4AjY9J3f9DNBUocNw5AgZQygiGCH
         WhkA==
X-Gm-Message-State: AOAM530eZjOsaAAzhCX5dqIIuSWgWbf0fPSCprqNQ+GMGCeIBXTkr5cI
        8RtSO0Znmig5OjBopR0cLRa7lA==
X-Google-Smtp-Source: ABdhPJz07cbagzaVzHToP1yWalnf9L0GdocLLOt77CGY/q0IwhHE08v6oRtmLrtY0x/kftQXiO+LgQ==
X-Received: by 2002:a05:6830:57:: with SMTP id d23mr24601867otp.44.1617074570171;
        Mon, 29 Mar 2021 20:22:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r20sm4954787otd.26.2021.03.29.20.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 20:22:49 -0700 (PDT)
Date:   Mon, 29 Mar 2021 22:22:47 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Eric Anholt <eric@anholt.net>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Joerg Roedel <joro@8bytes.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] iommu/arm-smmu-qcom: Skip the TTBR1 quirk for db820c.
Message-ID: <YGKZh5zHcbC18cZq@builder.lan>
References: <20210326231303.3071950-1-eric@anholt.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210326231303.3071950-1-eric@anholt.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 26 Mar 18:13 CDT 2021, Eric Anholt wrote:

> db820c wants to use the qcom smmu path to get HUPCF set (which keeps
> the GPU from wedging and then sometimes wedging the kernel after a
> page fault), but it doesn't have separate pagetables support yet in
> drm/msm so we can't go all the way to the TTBR1 path.
> 
> Signed-off-by: Eric Anholt <eric@anholt.net>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> 
> We've been seeing a flaky test per day or so in Mesa CI where the
> kernel gets wedged after an iommu fault turns into CP errors.  With
> this patch, the CI isn't throwing the string of CP errors on the
> faults in any of the ~10 jobs I've run so far.
> 
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index bcda17012aee..51f22193e456 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -130,6 +130,16 @@ static int qcom_adreno_smmu_alloc_context_bank(struct arm_smmu_domain *smmu_doma
>  	return __arm_smmu_alloc_bitmap(smmu->context_map, start, count);
>  }
>  
> +static bool qcom_adreno_can_do_ttbr1(struct arm_smmu_device *smmu)
> +{
> +	const struct device_node *np = smmu->dev->of_node;
> +
> +	if (of_device_is_compatible(np, "qcom,msm8996-smmu-v2"))
> +		return false;
> +
> +	return true;
> +}
> +
>  static int qcom_adreno_smmu_init_context(struct arm_smmu_domain *smmu_domain,
>  		struct io_pgtable_cfg *pgtbl_cfg, struct device *dev)
>  {
> @@ -144,7 +154,8 @@ static int qcom_adreno_smmu_init_context(struct arm_smmu_domain *smmu_domain,
>  	 * be AARCH64 stage 1 but double check because the arm-smmu code assumes
>  	 * that is the case when the TTBR1 quirk is enabled
>  	 */
> -	if ((smmu_domain->stage == ARM_SMMU_DOMAIN_S1) &&
> +	if (qcom_adreno_can_do_ttbr1(smmu_domain->smmu) &&
> +	    (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) &&
>  	    (smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64))
>  		pgtbl_cfg->quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
>  
> -- 
> 2.31.0
> 
