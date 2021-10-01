Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4878041F321
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 19:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355057AbhJARcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 13:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354823AbhJARcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 13:32:20 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C68EDC061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 10:30:35 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id s69so12273471oie.13
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 10:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=IhB/01/IitH3m4NcKKW8vX/IfPHlPDQqhEV0x9b/C7E=;
        b=HlOwQHROTnWHik2T8VfIGkqf3Z67AZudlPX/31hUH96V29bu/c+NtgsWRB35Fae6S8
         LRJpMRytqwLLloUL5SVWhAn+fTyjTWi9hBOYyJPzx0jA5/2izZJvT6HHtKQId01uOYjT
         6tER8Mwb4KIsIdjxAbVaQo4vTLNxi0Wy4/DwKtRQsmM2pNmdv6mlV3mw51tSfEOA58hV
         J4CGdHVbtwVlguR7quRULV2ud9lA60Xg7DqxM3Q4poXa7eh9/xcOOkYCBiQ7P4Ai+16D
         I6qTxZ1DNvPMcZVtnlJmJJl49Toh1yciblo1O1hBLN1UrP28icChZoiCT66oruTHh7NM
         hTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IhB/01/IitH3m4NcKKW8vX/IfPHlPDQqhEV0x9b/C7E=;
        b=QDObxQCG6tPrN7ym3aXV3+aFbp4uaWB3BYD04k8nwfyrKioSkSEYyFwbsGI/kEZUkY
         xxXsCn/ljPOYxN/qa0ureLddcrN6RFX+umn7+RqdgjmkAsYgmNS3tMeIfQLiFjannTeI
         CjlstIatbagsu9gXC7YHruZjXtaJHnDkn0LjVAB7UbTN8JHt8jvluO6OEf7cFeRtIH9v
         yuj7niUxMHID5TPfYLho9CaTxO39StTPtOuwOTcTmZNSOd16Ek53SEU8/qlqF0mHbDnI
         uiUqT2ujDyder2+Myi93XkO51nUuXSqWcjBPlqyRGZX3k/YjhGPb7f8lA6rXAZDF+ffo
         lp6g==
X-Gm-Message-State: AOAM531QpuLsi8GvFzO9hAxgJgeCfh9cXnixZBBG/YVUCt8wYprtUpQB
        Vdc7NueF2QrBaKNWzdNkTPRoyQ==
X-Google-Smtp-Source: ABdhPJxNJDogYaRDrJIGhbZoMKxXpalTJtz7iUyJqaHo5NPFVSjpShuqvB6eeQBs/lxrG2ph5cJDtw==
X-Received: by 2002:a05:6808:11c8:: with SMTP id p8mr4762589oiv.72.1633109434912;
        Fri, 01 Oct 2021 10:30:34 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id z24sm1224876oic.26.2021.10.01.10.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 10:30:34 -0700 (PDT)
Date:   Fri, 1 Oct 2021 10:32:22 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Loic Poulain <loic.poulain@linaro.org>
Cc:     will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, robin.murphy@arm.com
Subject: Re: [PATCH 1/2] iommu: arm-smmu-qcom: Add compatible for qcm2290
Message-ID: <YVdGJtGnH+RMilBv@ripper>
References: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 01 Oct 07:00 PDT 2021, Loic Poulain wrote:

> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> ---
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 55690af..d105186 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -412,6 +412,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
>  	{ .compatible = "qcom,sm8150-smmu-500" },
>  	{ .compatible = "qcom,sm8250-smmu-500" },
>  	{ .compatible = "qcom,sm8350-smmu-500" },
> +	{ .compatible = "qcom,qcm2290-smmu-500" },

Would be nice if we kept the alphabetical sort order on these and in the
binding.

With that, please feel free to add my R-b

Regards,
Bjorn

>  	{ }
>  };
>  
> -- 
> 2.7.4
> 
