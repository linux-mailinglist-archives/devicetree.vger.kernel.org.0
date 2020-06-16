Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3981E1FB1CD
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 15:16:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727804AbgFPNQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 09:16:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728549AbgFPNQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 09:16:11 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A050C06174E
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 06:16:11 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l26so2843113wme.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 06:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9NeQqiMAuFvxtrOzPp09+0hkReargQ3L4b3prwQqFWs=;
        b=lMyV++gPByIjhuuvn2wsK/E6klL79fbVx4ACxXxrHnu5At/8lS+6vpLTCO+WumvCb1
         Btd4DCv1THnwBCG4id7qSDcH0KTr8RGBM5STEozGGKPTVPzbXhsaJf5fGrSIgHEBynR6
         osWj5fyj4mQ1L5xGJVdkwJbuY4v1377rcu5Jq4sLk6859fcrU2fks+W6cDGJWjiN+naa
         qPVu58rW8dbILiK6yl0uJWaPVKLFH5WStAXktelK95uejdkKJQce6ZH8lDI9q1TvmM+g
         MmMS8mqTXaWgdtojc8ytx09R4ArfAHysepVCuNQwQfD/38aR+4SbqhONnPt16lRyzEFp
         8SJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9NeQqiMAuFvxtrOzPp09+0hkReargQ3L4b3prwQqFWs=;
        b=JCtuXvzuW3M9bdhid0zJqU1RNXytgAsf5tUB2Xkdn869CFTn6Bn++8T8rfn+k3wAyt
         qBvCG8jTTUE284P8MaDQidYjiJCZy1x319tCGuCLNwNqyrQV9AKr+5z+SQdlWD8rfhQK
         C/6AsMenaijbrRle/exUoPFfUmbroZo0MLQGhMhh01JoBgqvldYQcLNnulZjosmjCcE2
         gafOFGpFY/CT4wi65LMlN9n6HfZ1acuNuAgQ0sz1VVQ5zf0RIYbkCStlIlKoTT4bZOI6
         QpVaWn+z7dCOVrNP2JwfgATI1El4RnPtzYU0c5bLLZEKWmSl/FiZSL9pG/6yWY1/58rz
         afnw==
X-Gm-Message-State: AOAM531JrnG4mWV67pjMCSNUemcw7myk9y2sdvVLBur8M6lm1R6B6+rs
        GrNIDuezL5bzPLP1/B3/4xD6jQ==
X-Google-Smtp-Source: ABdhPJxXm+YEBOebjFL0T7eNx99jr7/JaArOdawU3v9M4AnaQqFhb5wqOc3kZdhNeoyRmtq7vpK93Q==
X-Received: by 2002:a1c:541d:: with SMTP id i29mr3214543wmb.73.1592313369700;
        Tue, 16 Jun 2020 06:16:09 -0700 (PDT)
Received: from dell ([109.180.115.156])
        by smtp.gmail.com with ESMTPSA id d2sm29670942wrs.95.2020.06.16.06.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 06:16:08 -0700 (PDT)
Date:   Tue, 16 Jun 2020 14:16:07 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Gene Chen <gene.chen.richtek@gmail.com>
Cc:     robh+dt@kernel.org, matthias.bgg@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        gene_chen@richtek.com, Wilma.Wu@mediatek.com,
        shufan_lee@richtek.com, cy_huang@richtek.com
Subject: Re: [PATCH] dt-bindings: mfd: Add bindings for the Mediatek MT6360
 PMIC
Message-ID: <20200616131607.GQ2608702@dell>
References: <1592306876-3504-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1592306876-3504-1-git-send-email-gene.chen.richtek@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Jun 2020, Gene Chen wrote:

> From: Gene Chen <gene_chen@richtek.com>
> 
> Add devicetree binding document support Mediatek MT6360 PMIC

This should have been submitted with the driver.

> Signed-off-by: Gene Chen <gene_chen@richtek.com>
> ---
>  Documentation/devicetree/bindings/mfd/mt6360.txt | 53 ++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/mt6360.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/mt6360.txt b/Documentation/devicetree/bindings/mfd/mt6360.txt
> new file mode 100644
> index 0000000..e25b5c6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/mt6360.txt
> @@ -0,0 +1,53 @@
> +MediaTek MT6360 Multifunction Device Driver

No such thing as an MFD (we made it up!).

Please describe the device.

> +MT6360 is a multifunction device with the following sub modules:

As above.  MFD is a Linuxisum which is not allowed in DT.

> +- ADC
> +- Battery Charger/OTG boost
> +- Flash LED/RGB LED/moonlight LED
> +- 2-channel Buck
> +- 6-channel LDO
> +- USB_PD
> +
> +It is interfaced to host controller using I2C interface.
> +This document describes the binding for MFD device and its sub module.

As above.  This sentence should be at the top in any case.

> +Required properties:
> +- compatible:	Must be "mediatek,mt6360_pmu"

No '_'s in DT.

> +- reg:			Specifies the I2C slave address of PMIC block, Must be <0x34>
> +- interrupts:	I2C device IRQ line connected to the main SoC.
> +
> +Optional subnodes:
> +- ADC
> +	Required properties:
> +		- compatible: "mediatek,mt6360_adc"
> +- battery charger/OTG boost
> +	Required properties:
> +		- compatible: "mediatek,mt6360_chg"
> +- Flash LED/RGB LED/moonlight LED
> +	Required properties:
> +		- compatible: "mediatek,mt6360_led"
> +- 2-channel Buck
> +	Required properties:
> +		- compatible: "mediatek,mt6360_pmic"
> +- 6-channel LDO
> +	Required properties:
> +		- compatible: "mediatek,mt6360_ldo"
> +- USB_PD
> +	Required properties:
> +		- compatible: "mediatek,mt6360_tcpc"

No '_'s.  Must be '-'.

> +Example:
> +
> +	#include <dt-bindings/usb/pd.h>
> +
> +	pmu: mt6360_pmu@34 {
> +		status = "ok";

"okay" is more common I think.

Should be at the bottom if not omitted altogether.

> +		compatible = "mediatek,mt6360_pmu";
> +		reg = <0x34>;
> +		wakeup-source;
> +		interrupts-extended = <&gpio26 0 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "IRQB";
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +	};
> +

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
