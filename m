Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A95BD37FA9C
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 17:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232548AbhEMPYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 11:24:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234904AbhEMPYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 11:24:19 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A6BC061574
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:23:09 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id t20so15704597qtx.8
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sUR72DN9QdDZD7euHanPKYl0hI658xAmnecCL3Vfxqo=;
        b=T2HZlG/RgbQbpbLycYFEcG52OAKj1scqcAB3hH+4IDDene4VvaK/2vq1ldXLrDWT49
         PJMTFF2ewqpiLppSyV+NVwZgYD6v0uF6to5IG9moZvctCKckubTGCA9j2jQFqEt8INBP
         pbcRhsuPevWL6oSs2ZU8h5YwjMpuGAnpAq3mI321hqk5OXtLuGU1t0/8JGgoqOAAk5Ir
         zTaj6CYp30d93+FSudyKjoKHEVHtu8/LZ73duN3gvKO4tmbhSei6oJESWZKbfKLbignI
         VK3teLLeQeJMTKhtUFnLmyG8PQbNOmKTtT2/2rvEYT4mx0Z75CqPtT8IXL10YOfv1rIs
         jSCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=sUR72DN9QdDZD7euHanPKYl0hI658xAmnecCL3Vfxqo=;
        b=CgVdMdZVW3q7em36dbQSdOaukdVUkPS64bVhcTtUaYdGTCbwrOCzjsLBASsQ0kr2Qw
         nWZbscPVuUFziymFPJzghhlyWZGzmDNHb8HbcEj6lrj07pdziLgMrMDWk98ok15rQ+DW
         2Xasxo7w1pS2S6iHHkVkzZyYuqQPMVq20BlcENf++cYjd1/QRJ44mKUj6CGeEAZAKiGf
         eY5Jg9FZ5iQFxMIKJ+Ok9qK4HnodtteRkTLk1FUkcb9vomiFR/QNG2ZsWAienGv18946
         E3yuX8NU6A7+WvplXMgPQrLRFdyJdcfKBjbyubi0VRkWdqTL8yQ/XdB86Zb+Xj8f7iFy
         XJzg==
X-Gm-Message-State: AOAM532xaEtu9Xh6kSCreCAi4BBt8BGIuRo4C1RMwgVILR9EimIqKJwn
        4FThWe3TBMDAocjUa/AFXGE=
X-Google-Smtp-Source: ABdhPJx6QS/FlZpNS8dD7PeuIuQmC5NvmCFeggOL4iSN2CTxn0q+yLrJzL3PdWrFIvZpNt07Uofy7A==
X-Received: by 2002:ac8:4049:: with SMTP id j9mr39290033qtl.79.1620919388936;
        Thu, 13 May 2021 08:23:08 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id u3sm2530042qtg.16.2021.05.13.08.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 08:23:08 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date:   Thu, 13 May 2021 08:23:07 -0700
From:   Guenter Roeck <linux@roeck-us.net>
To:     Boris Lysov <arzamas-16@mail.ee>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 3/3] watchdog: mtk_wdt: add support for mt6577
Message-ID: <20210513152307.GC3452915@roeck-us.net>
References: <20210513013515.31329-1-arzamas-16@mail.ee>
 <20210513013515.31329-4-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210513013515.31329-4-arzamas-16@mail.ee>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 13, 2021 at 04:35:15AM +0300, Boris Lysov wrote:
> This patch adds support for watchdog used by mt6577 and related SoCs such
> as mt6575 and mt8317. These watchdogs are known for having shifted WDT_MODE
> and SWSYSRST registers and using different SWSYSRST_KEY value.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/mtk_wdt.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 0878fa33dffe..91d498b5d212 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -54,6 +54,10 @@
>  #define MT2712_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
>  #define MT2712_SWSYSRST_KEY		0x88
>  
> +#define MT6577_WDT_MODE_KEY_SHIFT	8		// unlock_key [15:8]
> +#define MT6577_SWSYSRST_KEY_SHIFT	8		// unlock_key [15:8]
> +#define MT6577_SWSYSRST_KEY		0x15
> +
>  #define MT6589_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
>  #define MT6589_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
>  #define MT6589_SWSYSRST_KEY		0x88
> @@ -94,6 +98,13 @@ static const struct mtk_wdt_data mt2712_data = {
>  	.wdt_swsys_rst_key =		MT2712_SWSYSRST_KEY,
>  };
>  
> +static const struct mtk_wdt_data mt6577_data = {
> +	.toprgu_sw_rst_num =		-1,
> +	.wdt_mode_key_shift =		MT6577_WDT_MODE_KEY_SHIFT,
> +	.wdt_swsys_rst_key_shift =	MT6577_SWSYSRST_KEY_SHIFT,
> +	.wdt_swsys_rst_key =		MT6577_SWSYSRST_KEY,
> +};
> +
>  static const struct mtk_wdt_data mt6589_data = {
>  	.toprgu_sw_rst_num =		-1,
>  	.wdt_mode_key_shift =		MT6589_WDT_MODE_KEY_SHIFT,
> @@ -376,6 +387,7 @@ static int mtk_wdt_resume(struct device *dev)
>  
>  static const struct of_device_id mtk_wdt_dt_ids[] = {
>  	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
> +	{ .compatible = "mediatek,mt6577-wdt", .data = &mt6577_data },
>  	{ .compatible = "mediatek,mt6589-wdt", .data = &mt6589_data },
>  	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
>  	{ .compatible = "mediatek,mt8192-wdt", .data = &mt8192_data },
> -- 
> 2.20.1
> 
