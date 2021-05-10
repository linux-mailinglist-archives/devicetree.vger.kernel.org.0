Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9B9378EC1
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 15:52:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230518AbhEJNb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 09:31:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240742AbhEJNXC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 09:23:02 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69423C0613ED
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 06:21:57 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id d21so15722957oic.11
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 06:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+jxkwaOUOJ3jFOmcNvz3Tue0IZGQ5BF7JUsr74h1aJw=;
        b=RDP3aUcQ3kfWJ2qNsoh+IhGWdL0LuMa+Msfecy1hzGlXdu2bJDPgswWy3KCwJZlNsZ
         bAsc+xlFYhZwQPB5yW9mBLSEkciE60xZIceBINttFLL6brqq7SU/AGT+wFJKoA6c/JV9
         mNZTwH9/XOl5eYDCTMrTvCXpZJK+SVjYNmpMQTc/g/7iI03K2S7VtAVlD7WSJBLM/rsC
         FwOlnPwf0RPbxDMZoLq9xaMbSLfHCkZCxGQaXMNBk5D0cU7pdZ99OC+b7Tb+/9ON3Xpe
         pvWY1uGjSQ3Qrthyl1Ty/1JycRK2CkC5JAptvd5EGCb/CKjGTC32uGe7dgltbqjScrBe
         Ialg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:to:cc:references:from:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+jxkwaOUOJ3jFOmcNvz3Tue0IZGQ5BF7JUsr74h1aJw=;
        b=RVlIxc+0adUDNFyjx4xbxpPKMHCPf/cRIwkDqy0e7+kGC4qYr8cPZGzFLCvttH4b7a
         D5WFfKOVluAbB0wPDGKzCRuSsnzhtkOCY9x+NEYGUkcY8zJpQesz47k3+MEGJcxOTAs9
         IJCjZltby2kV8HIcwpDIo5NXtbVKdiZag5BWhSWo4Bbo6KWjdR5iVnHQarcsAOxwobqB
         uAAYRKqVwYSx2C9njmmvXNPtDi4oA8/y7Djor6wKlclJAe0agAa+LlBvC4aVNcrrg6/+
         d7PG2pZS95nAEF7oS9Xn0nKrqTgycq1IPYVWbsac9JAPloeVqdgF0T0c5i1X6YGISDMx
         aM7Q==
X-Gm-Message-State: AOAM5329Yjq/GP5vv1z028FEAvVuCWD9dSPX/ioXRbzNZFH7gNIqaTdy
        tTotMCeYwQMFCJwPSSSYhNuLG163D7I=
X-Google-Smtp-Source: ABdhPJy6MymDO0PEDyxboMgM9f8P8uVZk6fkPf+AT8vff060kvAGClf/HK1lRNlxk11rM2Jjyczt1Q==
X-Received: by 2002:aca:2402:: with SMTP id n2mr11119448oic.113.1620652916908;
        Mon, 10 May 2021 06:21:56 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id r2sm3128956otq.28.2021.05.10.06.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 06:21:56 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To:     Boris Lysov <arzamas-16@mail.ee>, matthias.bgg@gmail.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210509211702.549-1-arzamas-16@mail.ee>
 <20210509211702.549-2-arzamas-16@mail.ee>
From:   Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 1/3] watchdog: mtk_wdt: Refactor code to support more
 SoCs
Message-ID: <efdce3a5-e5b4-19a8-35f1-8a536220bb3f@roeck-us.net>
Date:   Mon, 10 May 2021 06:21:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210509211702.549-2-arzamas-16@mail.ee>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/9/21 2:17 PM, Boris Lysov wrote:
> This patch makes some constants SoC-dependent to support more watchdogs
> in the future. It adds shifts of WDT_MODE_KEY and SWSYSRST_KEY to
> mtk_wdt_data struct. This is done to bring support for various Mediatek
> watchdogs which use same register structure but slightly different field
> offsets in the UNLOCK_KEY registers. For example, mt6577 watchdog has
> WDT_MODE_KEY and SWSYSRST_KEY at [15:8] instead of currently (and only)
> supported [31:24].
> Moreover, this patch adds SWSYSRST_KEY value to mtk_wdt_data because this
> value also depends on specific SoC watchdog, for example mt6577 uses 0x15
> instead of 0x88.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
> ---
>   drivers/watchdog/mtk_wdt.c | 76 ++++++++++++++++++++++++++++----------
>   1 file changed, 57 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 97ca993bd009..9d3091b12c06 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -44,13 +44,27 @@
>   #define WDT_MODE_IRQ_EN		(1 << 3)
>   #define WDT_MODE_AUTO_START	(1 << 4)
>   #define WDT_MODE_DUAL_EN	(1 << 6)
> -#define WDT_MODE_KEY		0x22000000
> +#define WDT_MODE_KEY		0x22
>   
>   #define WDT_SWRST		0x14
>   #define WDT_SWRST_KEY		0x1209
> -
>   #define WDT_SWSYSRST		0x18U
> -#define WDT_SWSYS_RST_KEY	0x88000000
> +
> +#define MT2712_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT2712_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT2712_SWSYSRST_KEY		0x88
> +
> +#define MT6589_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT6589_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT6589_SWSYSRST_KEY		0x88
> +
> +#define MT8183_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT8183_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT8183_SWSYSRST_KEY		0x88
> +
> +#define MT8192_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT8192_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
> +#define MT8192_SWSYSRST_KEY		0x88
>   
>   #define DRV_NAME		"mtk-wdt"
>   #define DRV_VERSION		"1.0"
> @@ -60,6 +74,7 @@ static unsigned int timeout;
>   
>   struct mtk_wdt_dev {
>   	struct watchdog_device wdt_dev;
> +	const struct mtk_wdt_data *data;
>   	void __iomem *wdt_base;
>   	spinlock_t lock; /* protects WDT_SWSYSRST reg */
>   	struct reset_controller_dev rcdev;
> @@ -67,18 +82,37 @@ struct mtk_wdt_dev {
>   
>   struct mtk_wdt_data {
>   	int toprgu_sw_rst_num;
> +	u8 wdt_mode_key_shift;
> +	u8 wdt_swsys_rst_key;
> +	u8 wdt_swsys_rst_key_shift;
>   };
>   
>   static const struct mtk_wdt_data mt2712_data = {
> -	.toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> +	.toprgu_sw_rst_num =		MT2712_TOPRGU_SW_RST_NUM,
> +	.wdt_mode_key_shift =		MT2712_WDT_MODE_KEY_SHIFT,
> +	.wdt_swsys_rst_key_shift =	MT2712_SWSYSRST_KEY_SHIFT,
> +	.wdt_swsys_rst_key =		MT2712_SWSYSRST_KEY,
> +};
> +
> +static const struct mtk_wdt_data mt6589_data = {
> +	.toprgu_sw_rst_num =		-1,
> +	.wdt_mode_key_shift =		MT6589_WDT_MODE_KEY_SHIFT,
> +	.wdt_swsys_rst_key_shift =	MT6589_SWSYSRST_KEY_SHIFT,
> +	.wdt_swsys_rst_key =		MT6589_SWSYSRST_KEY,
>   };
>   
>   static const struct mtk_wdt_data mt8183_data = {
> -	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> +	.toprgu_sw_rst_num =		MT8183_TOPRGU_SW_RST_NUM,
> +	.wdt_mode_key_shift =		MT8183_WDT_MODE_KEY_SHIFT,
> +	.wdt_swsys_rst_key_shift =	MT8183_SWSYSRST_KEY_SHIFT,
> +	.wdt_swsys_rst_key =		MT8183_SWSYSRST_KEY,
>   };
>   
>   static const struct mtk_wdt_data mt8192_data = {
> -	.toprgu_sw_rst_num = MT8192_TOPRGU_SW_RST_NUM,
> +	.toprgu_sw_rst_num =		MT8192_TOPRGU_SW_RST_NUM,
> +	.wdt_mode_key_shift =		MT8192_WDT_MODE_KEY_SHIFT,
> +	.wdt_swsys_rst_key_shift =	MT8192_SWSYSRST_KEY_SHIFT,
> +	.wdt_swsys_rst_key =		MT8192_SWSYSRST_KEY,
>   };
>   
>   static int toprgu_reset_update(struct reset_controller_dev *rcdev,
> @@ -86,20 +120,20 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
>   {
>   	unsigned int tmp;
>   	unsigned long flags;
> -	struct mtk_wdt_dev *data =
> +	struct mtk_wdt_dev *wdev =

Please do not rename variables. If you dislike that the name matches the name
of the newly introduced structure element, find a different name for that.

Thanks,
Guenter
