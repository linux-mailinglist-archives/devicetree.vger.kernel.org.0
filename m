Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00CE73E54AC
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 09:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237708AbhHJH4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 03:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237707AbhHJH4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 03:56:50 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E47C061796
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:56:28 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id h14so24979837wrx.10
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=g7xZOOYURLM8XcD5J99k+2d4NDKwxrhzd/8vUo2Rxec=;
        b=lJe8DfOqSzhVqsQKF2gJZOsppP55UjVKP99FQppWg8q90NbCPTzbc1GuDcxAXWe8BI
         NWMh02VhCrqy/UA5hlfI8W6rFsKIVdhASM2hwtpgRomk+sVosEcKadGTHz1WaPtuh8mq
         NmeYsDRp4bqZXgXp5yPmmqJg05jUmIt8PgA/PXIKmQ03U7HEAwlESRKGw+I28sE8ux9L
         IKsV1sSAF4jouBJYewjEGkjkB7Y7b1Na7iakOsCTC7wkd6GIszSS+Dv9w3FD230jT2UE
         n/+3buJdzUHNq+qeJJfwkpwX/tDae1NtkYSOXDfWhw+JxwJ5UsOvOg5cR6G1MEoPDxJa
         Wrjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=g7xZOOYURLM8XcD5J99k+2d4NDKwxrhzd/8vUo2Rxec=;
        b=VnvtYp+XOvHEyOeq/+TSkfkHqsaFc6n5jhYu8r2/Bepa6n5shQY/06XkXGfYaYr5Ux
         u3QQcsQ1duu+nipbSCv5nJ8L5MVdIG0I6eMQbwsUH68+Ajs9wLcNaSCTTop+Uun8Y5VW
         dlV0Jzw6hu9YGiwTMCTj+PzWaEuO9tG9hIsT02HzmLkZJRkG7fx+GGOOn3xKeTLTcl9Y
         lCfIaxOf5uUNSviwDmmf0GfEGEp2mGG0WM5995GbooQjjavbxfhBlizaz11+GEhGya4C
         wCSWL7BqYO/0Z7SI07zxSgJjygWpfZwInUNTcDO3onFNnzjGn3vAJ1a7CeH7tBHmvnMu
         KqeA==
X-Gm-Message-State: AOAM530Oa2+++eC9370cNHopwSV9QXl42Hm5ty9X3uxEwzhfY/3hb7Cv
        yzLfGQeArsRHBrqWDBvuqArY+Q==
X-Google-Smtp-Source: ABdhPJwOZhP4fC1wKufdN+dukh6SNDa58xx8JMlRd8bbRZsfg3aDAUj8aZIsq9rgX3dFzWSMa1Y5Ew==
X-Received: by 2002:a5d:6107:: with SMTP id v7mr7785077wrt.408.1628582187453;
        Tue, 10 Aug 2021 00:56:27 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:b710:2b6e:27aa:f0a0? ([2001:861:44c0:66c0:b710:2b6e:27aa:f0a0])
        by smtp.gmail.com with ESMTPSA id c9sm8087681wrm.43.2021.08.10.00.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 00:56:26 -0700 (PDT)
Subject: Re: [PATCH] drm/meson: fix colour distortion from HDR set during
 vendor u-boot
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Mathias Steiger <mathias.steiger@googlemail.com>
References: <20210806094005.7136-1-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <75c870f1-af7c-88ac-9884-43cc62b22411@baylibre.com>
Date:   Tue, 10 Aug 2021 09:56:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210806094005.7136-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christian,

On 06/08/2021 11:40, Christian Hewitt wrote:
> Add support for the OSD1 HDR registers so meson DRM can handle the HDR
> properties set by Amlogic u-boot on G12A and newer devices which result
> in blue/green/pink colour distortion to display output.
> 
> This takes the original patch submissions from Mathias [0] and [1] with
> corrections for formatting and the missing description and attribution
> needed for merge.
> 
> [0] https://lore.kernel.org/linux-amlogic/59dfd7e6-fc91-3d61-04c4-94e078a3188c@baylibre.com/T/
> [1] https://lore.kernel.org/linux-amlogic/CAOKfEHBx_fboUqkENEMd-OC-NSrf46nto+vDLgvgttzPe99kXg@mail.gmail.com/T/#u
> 
> Fixes: 728883948b0d ("drm/meson: Add G12A Support for VIU setup")
> Suggested-by: Mathias Steiger <mathias.steiger@googlemail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Neil Armstrong<narmstrong@baylibre.com>
> Tested-by: Philip Milev <milev.philip@gmail.com>
> ---
>  drivers/gpu/drm/meson/meson_registers.h | 5 +++++
>  drivers/gpu/drm/meson/meson_viu.c       | 7 ++++++-
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
> index 446e7961da48..0f3cafab8860 100644
> --- a/drivers/gpu/drm/meson/meson_registers.h
> +++ b/drivers/gpu/drm/meson/meson_registers.h
> @@ -634,6 +634,11 @@
>  #define VPP_WRAP_OSD3_MATRIX_PRE_OFFSET2 0x3dbc
>  #define VPP_WRAP_OSD3_MATRIX_EN_CTRL 0x3dbd
>  
> +/* osd1 HDR */
> +#define OSD1_HDR2_CTRL 0x38a0
> +#define OSD1_HDR2_CTRL_VDIN0_HDR2_TOP_EN       BIT(13)
> +#define OSD1_HDR2_CTRL_REG_ONLY_MAT            BIT(16)
> +
>  /* osd2 scaler */
>  #define OSD2_VSC_PHASE_STEP 0x3d00
>  #define OSD2_VSC_INI_PHASE 0x3d01
> diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
> index aede0c67a57f..259f3e6bec90 100644
> --- a/drivers/gpu/drm/meson/meson_viu.c
> +++ b/drivers/gpu/drm/meson/meson_viu.c
> @@ -425,9 +425,14 @@ void meson_viu_init(struct meson_drm *priv)
>  	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
>  	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		meson_viu_load_matrix(priv);
> -	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		meson_viu_set_g12a_osd1_matrix(priv, RGB709_to_YUV709l_coeff,
>  					       true);
> +		/* fix green/pink color distortion from vendor u-boot */
> +		writel_bits_relaxed(OSD1_HDR2_CTRL_REG_ONLY_MAT |
> +				OSD1_HDR2_CTRL_VDIN0_HDR2_TOP_EN, 0,
> +				priv->io_base + _REG(OSD1_HDR2_CTRL));
> +	}
>  
>  	/* Initialize OSD1 fifo control register */
>  	reg = VIU_OSD_DDR_PRIORITY_URGENT |
> 

Thanks for taking time to re-submit this patch,
Applying to drm-misc-fixes

Neil
