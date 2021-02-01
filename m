Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEFF309FB5
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 01:32:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbhBAAcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 19:32:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbhBAAby (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 19:31:54 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84F9C061573
        for <devicetree@vger.kernel.org>; Sun, 31 Jan 2021 16:31:12 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id i20so14669404otl.7
        for <devicetree@vger.kernel.org>; Sun, 31 Jan 2021 16:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bsXaRCDYLYtRFHcT1eqeJP/ZOwlZgfM58YrhYIjDvAI=;
        b=UTtBOzXpQkalRk5Dbm6BxhFVo6QeywnYCe/iNtApBS0fgxmpCqP+zx6bCRP9uyQ34f
         Y9W0dyCvqXZTiiQyNRbA6j2O6zQWcuURN6jNL8ftQSM4P98BsuW64sOBrharnTBIiRSQ
         t+lWNfE8CHKcPB8IdyRm+WyXHnjMxHNLDvQFNO0p14Gxtr28NdLgY90zJIkdBLAyyRcZ
         XuZnK9TFZ7O+Ts7pfar5bJKz5gTAeJpr82Xfz4oxbreuulaX2EpHqz/pOcQHje7btI00
         +0Z8Rgl1aFIUPFKyDRMCb++0WnPL7sX+zztdUO/fh5JoIau6JihVl5HRWukoptGKBEbq
         nAyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=bsXaRCDYLYtRFHcT1eqeJP/ZOwlZgfM58YrhYIjDvAI=;
        b=sjbfsliJz69yzIYCpynPuc6jCLsBxmNINd2BV3bNJkD3l4IgId1iwDDh2DW95YUlpE
         BIhAwcttic/k+YdXGnFtgqzwZeTU7cCYb5Z0O8PTvspmW0CkRA6hTBlRckX3nLU6yxTh
         W/o3fZWysFIYlLQmQUD05t0oJ3iCGIo7vTYKzbh8UjDwJBsHH2yyX5sCjqDnwvFAbX47
         TigoRrDZP598Op158ObY+RZHHbBXMobpJEE8kN/j6DBIRmyNnBC/RkGEZxvxfOpe47C5
         9Wa2ofBHNtJ8A6SXv9Rja2sBwzPTrTatyh2yJsTPUF3470E+byZptKhu+l3+2n7ehms3
         Vd8A==
X-Gm-Message-State: AOAM532H/51qZhpZ4leyn45h0asoFeDB9zCDZ9neWe64UpvMBwJ50DZw
        bXfyKOQRM0USpTh6dn+8PlD39CK15Dk=
X-Google-Smtp-Source: ABdhPJy9AuSJLeXR8r+iiTLLaUHMT0OifIQMuWusLXGl8/fTM1KemTgQBp7YuJYQo+VkPPp2K/AKhA==
X-Received: by 2002:a9d:ae7:: with SMTP id 94mr9794580otq.94.1612139471690;
        Sun, 31 Jan 2021 16:31:11 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id t16sm3628310otc.30.2021.01.31.16.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Jan 2021 16:31:10 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH 2/3] watchdog: mtk_wdt: add support for 16-bit control
 registers
To:     Boris Lysov <arzamas-16@mail.ee>, matthias.bgg@gmail.com,
        robh+dt@kernel.org
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210131234425.9773-3-arzamas-16@mail.ee>
From:   Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAlVcphcFCRmg06EACgkQyx8mb86fmYFg0RAA
 nzXJzuPkLJaOmSIzPAqqnutACchT/meCOgMEpS5oLf6xn5ySZkl23OxuhpMZTVX+49c9pvBx
 hpvl5bCWFu5qC1jC2eWRYU+aZZE4sxMaAGeWenQJsiG9lP8wkfCJP3ockNu0ZXXAXwIbY1O1
 c+l11zQkZw89zNgWgKobKzrDMBFOYtAh0pAInZ9TSn7oA4Ctejouo5wUugmk8MrDtUVXmEA9
 7f9fgKYSwl/H7dfKKsS1bDOpyJlqhEAH94BHJdK/b1tzwJCFAXFhMlmlbYEk8kWjcxQgDWMu
 GAthQzSuAyhqyZwFcOlMCNbAcTSQawSo3B9yM9mHJne5RrAbVz4TWLnEaX8gA5xK3uCNCeyI
 sqYuzA4OzcMwnnTASvzsGZoYHTFP3DQwf2nzxD6yBGCfwNGIYfS0i8YN8XcBgEcDFMWpOQhT
 Pu3HeztMnF3HXrc0t7e5rDW9zCh3k2PA6D2NV4fews9KDFhLlTfCVzf0PS1dRVVWM+4jVl6l
 HRIAgWp+2/f8dx5vPc4Ycp4IsZN0l1h9uT7qm1KTwz+sSl1zOqKD/BpfGNZfLRRxrXthvvY8
 BltcuZ4+PGFTcRkMytUbMDFMF9Cjd2W9dXD35PEtvj8wnEyzIos8bbgtLrGTv/SYhmPpahJA
 l8hPhYvmAvpOmusUUyB30StsHIU2LLccUPPOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAlVcpi8FCRmg08MACgkQyx8mb86fmYHNRQ/+
 J0OZsBYP4leJvQF8lx9zif+v4ZY/6C9tTcUv/KNAE5leyrD4IKbnV4PnbrVhjq861it/zRQW
 cFpWQszZyWRwNPWUUz7ejmm9lAwPbr8xWT4qMSA43VKQ7ZCeTQJ4TC8kjqtcbw41SjkjrcTG
 wF52zFO4bOWyovVAPncvV9eGA/vtnd3xEZXQiSt91kBSqK28yjxAqK/c3G6i7IX2rg6pzgqh
 hiH3/1qM2M/LSuqAv0Rwrt/k+pZXE+B4Ud42hwmMr0TfhNxG+X7YKvjKC+SjPjqp0CaztQ0H
 nsDLSLElVROxCd9m8CAUuHplgmR3seYCOrT4jriMFBtKNPtj2EE4DNV4s7k0Zy+6iRQ8G8ng
 QjsSqYJx8iAR8JRB7Gm2rQOMv8lSRdjva++GT0VLXtHULdlzg8VjDnFZ3lfz5PWEOeIMk7Rj
 trjv82EZtrhLuLjHRCaG50OOm0hwPSk1J64R8O3HjSLdertmw7eyAYOo4RuWJguYMg5DRnBk
 WkRwrSuCn7UG+qVWZeKEsFKFOkynOs3pVbcbq1pxbhk3TRWCGRU5JolI4ohy/7JV1TVbjiDI
 HP/aVnm6NC8of26P40Pg8EdAhajZnHHjA7FrJXsy3cyIGqvg9os4rNkUWmrCfLLsZDHD8FnU
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net>
Date:   Sun, 31 Jan 2021 16:31:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210131234425.9773-3-arzamas-16@mail.ee>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/31/21 3:44 PM, Boris Lysov wrote:
> Add support for 16-bit control registers.
> Some old Mediatek SoCs such as mt6577 use 16-bit I/O operations
> for controlling watchdog. This commit redefines read/write
> functions and some values in mtk_wdt driver depending on the
> 16-bit register support flag in kernel configuration.
> By default, driver still uses 32-bit values and I/O functions, so
> currently supported devices are unaffected.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>

We can't do this. With this flag enabled, the watchdog won't
support other SoCs, and there is nothing that prevents the flag
from being set for those SoCs.

This has to be handled differently, without configuration
flag. Maybe use regmap for register addresses, and use the
compatible string to determine which regmap settings to use,
or use accessor functions in mtk_wdt_dev.

Guenter

> ---
>  drivers/watchdog/Kconfig   |  9 +++++++++
>  drivers/watchdog/mtk_wdt.c | 34 ++++++++++++++++++++++++----------
>  2 files changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 7ff941e71b79..83a4b57ede3f 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -865,6 +865,15 @@ config MEDIATEK_WATCHDOG
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called mtk_wdt.
>  
> +config MEDIATEK_WATCHDOG_16BIT
> +	bool "Support 16-bit control registers"
> +	depends on MEDIATEK_WATCHDOG=y
> +	help
> +	  Some Mediatek SoCs such as mt6577 have 16-bit registers for
> +	  controlling watchdog. Newer SoCs usually use 32-bit read/write
> +	  operations.
> +	  If in doubt, say N.
> +
>  config DIGICOLOR_WATCHDOG
>  	tristate "Conexant Digicolor SoCs watchdog support"
>  	depends on ARCH_DIGICOLOR || COMPILE_TEST
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index d6a6393f609d..0ab3cbcf0d93 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -43,13 +43,27 @@
>  #define WDT_MODE_IRQ_EN		(1 << 3)
>  #define WDT_MODE_AUTO_START	(1 << 4)
>  #define WDT_MODE_DUAL_EN	(1 << 6)
> -#define WDT_MODE_KEY		0x22000000
>  
>  #define WDT_SWRST		0x14
>  #define WDT_SWRST_KEY		0x1209
>  
>  #define WDT_SWSYSRST		0x18U
> +
> +#ifdef CONFIG_MEDIATEK_WATCHDOG_16BIT
> +#define WDT_MODE_KEY		0x2200
> +#define WDT_SWSYS_RST_KEY	0x8800
> +#define mtk_wdt_read(a) readw(a)
> +#define mtk_wdt_write(v, a) writew(v, a)
> +#define mtk_wdt_ioread(a) ioread16(a)
> +#define mtk_wdt_iowrite(v, a) iowrite16(v, a)
> +#else
> +#define WDT_MODE_KEY		0x22000000
>  #define WDT_SWSYS_RST_KEY	0x88000000
> +#define mtk_wdt_read(a) readl(a)
> +#define mtk_wdt_write(v, a) writel(v, a)
> +#define mtk_wdt_ioread(a) ioread32(a)
> +#define mtk_wdt_iowrite(v, a) iowrite32(v, a)
> +#endif
>  
>  #define DRV_NAME		"mtk-wdt"
>  #define DRV_VERSION		"1.0"
> @@ -86,13 +100,13 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
>  
>  	spin_lock_irqsave(&data->lock, flags);
>  
> -	tmp = readl(data->wdt_base + WDT_SWSYSRST);
> +	tmp = mtk_wdt_read(data->wdt_base + WDT_SWSYSRST);
>  	if (assert)
>  		tmp |= BIT(id);
>  	else
>  		tmp &= ~BIT(id);
>  	tmp |= WDT_SWSYS_RST_KEY;
> -	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> +	mtk_wdt_write(tmp, data->wdt_base + WDT_SWSYSRST);
>  
>  	spin_unlock_irqrestore(&data->lock, flags);
>  
> @@ -157,7 +171,7 @@ static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
>  	wdt_base = mtk_wdt->wdt_base;
>  
>  	while (1) {
> -		writel(WDT_SWRST_KEY, wdt_base + WDT_SWRST);
> +		mtk_wdt_write(WDT_SWRST_KEY, wdt_base + WDT_SWRST);
>  		mdelay(5);
>  	}
>  
> @@ -169,7 +183,7 @@ static int mtk_wdt_ping(struct watchdog_device *wdt_dev)
>  	struct mtk_wdt_dev *mtk_wdt = watchdog_get_drvdata(wdt_dev);
>  	void __iomem *wdt_base = mtk_wdt->wdt_base;
>  
> -	iowrite32(WDT_RST_RELOAD, wdt_base + WDT_RST);
> +	mtk_wdt_iowrite(WDT_RST_RELOAD, wdt_base + WDT_RST);
>  
>  	return 0;
>  }
> @@ -188,7 +202,7 @@ static int mtk_wdt_set_timeout(struct watchdog_device *wdt_dev,
>  	 * The clock has 32 KHz
>  	 */
>  	reg = WDT_LENGTH_TIMEOUT(timeout << 6) | WDT_LENGTH_KEY;
> -	iowrite32(reg, wdt_base + WDT_LENGTH);
> +	mtk_wdt_iowrite(reg, wdt_base + WDT_LENGTH);
>  
>  	mtk_wdt_ping(wdt_dev);
>  
> @@ -201,10 +215,10 @@ static int mtk_wdt_stop(struct watchdog_device *wdt_dev)
>  	void __iomem *wdt_base = mtk_wdt->wdt_base;
>  	u32 reg;
>  
> -	reg = readl(wdt_base + WDT_MODE);
> +	reg = mtk_wdt_read(wdt_base + WDT_MODE);
>  	reg &= ~WDT_MODE_EN;
>  	reg |= WDT_MODE_KEY;
> -	iowrite32(reg, wdt_base + WDT_MODE);
> +	mtk_wdt_iowrite(reg, wdt_base + WDT_MODE);
>  
>  	return 0;
>  }
> @@ -220,10 +234,10 @@ static int mtk_wdt_start(struct watchdog_device *wdt_dev)
>  	if (ret < 0)
>  		return ret;
>  
> -	reg = ioread32(wdt_base + WDT_MODE);
> +	reg = mtk_wdt_ioread(wdt_base + WDT_MODE);
>  	reg &= ~(WDT_MODE_IRQ_EN | WDT_MODE_DUAL_EN);
>  	reg |= (WDT_MODE_EN | WDT_MODE_KEY);
> -	iowrite32(reg, wdt_base + WDT_MODE);
> +	mtk_wdt_iowrite(reg, wdt_base + WDT_MODE);
>  
>  	return 0;
>  }
> 

