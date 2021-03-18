Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1CD33FFDB
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 07:45:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbhCRGp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 02:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbhCRGpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 02:45:07 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51954C06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:45:07 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id y1so6131692ljm.10
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uA6Wlf2FXstqzVdHBN1T/8kikCpOM7WnYKlS60erKGg=;
        b=uTEWplV18gm4Z2dhcjB3Pm2iZbMHc3oJQC3YtTz2bgdh0iIizmh9Wf7uxiO4t+gYbw
         2RBByXwHsJPABHgbgRaJyqHUVC8PXEMkeUFthPdE8o2LZAvVLq4jzayLcFGab4ql1Cze
         FN/o8qCZIva8eq6PQ2f3W/LnH/KvOP/8IGONC/k2BU4KIVJAV8M16IJVXAR3l1XAtjMa
         62ohuQx2jNaLZQ6yJjFxFmHcNZ7OSrnAs0NKccheaRgLDDPiqt0jFVuUux/Xy1jSr1SL
         ja08dMyh2zZoT9Gd9p9Q2aMXGxOnv6f2DyGvFQXHizCdLPNKSBuzqzBxyYud4MQVoehL
         U2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uA6Wlf2FXstqzVdHBN1T/8kikCpOM7WnYKlS60erKGg=;
        b=O2bFh3veEp3mcgfddfMk/P0dfbUrpNZFsQzzp/AopjtUoRbBA35iaZypxxnhUBaf+v
         a6KEn/YaUC59v6FOO+mEC70Z6bXO74AuIEQF99+S4xJU8qCLU3zk1dCJwfSAZln8CCAe
         PRR0xsXPAS+nQSbIIJS/tEwKWKswww7PhJyJE/+Xpb+f+aWg3es539B9NuaYkoj6wuqP
         ogrYb8g07+w5hiqhM3pa0nL3pIG5lxkUkh7FjzR7XfI1HHio4exUbbK0qrXQZhF2mrP1
         CD+ejzpPwXny8lWitj4nZf3c4+AcE8/D4d+++QptDm5yqdK7mmR6wFmwGNoDX69sNdYp
         aQ4A==
X-Gm-Message-State: AOAM533zvLp8AoUWzotKqRkjXU40C9hjzNImaHj7f2gOAAXdGVzXXu/+
        Zs8we4DkA1XGBagHyHPv+z8=
X-Google-Smtp-Source: ABdhPJwsefl6HbgDK/uginm1N3eeV+FZJHW6xxpDbhKhApjNTPW8/uqJtrIEhA2qcThU0dxRY77OBw==
X-Received: by 2002:a05:651c:1214:: with SMTP id i20mr4426977lja.423.1616049905900;
        Wed, 17 Mar 2021 23:45:05 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id u10sm111125lfl.111.2021.03.17.23.45.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 23:45:05 -0700 (PDT)
Subject: Re: [PATCH 2/2] mtd: parsers: trx: Remove dependency to BRCM
 architectures
To:     Hauke Mehrtens <hauke@hauke-m.de>, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
References: <20210315170711.567358-1-hauke@hauke-m.de>
 <20210315170711.567358-3-hauke@hauke-m.de>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <16aba7dd-63ca-e68c-469f-f21cff75b32e@gmail.com>
Date:   Thu, 18 Mar 2021 07:45:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210315170711.567358-3-hauke@hauke-m.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.03.2021 18:07, Hauke Mehrtens wrote:
> Buffalo uses the TRX partition format also on Mediatek SoCs.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>   drivers/mtd/parsers/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
> index d90c30229052..6242903d8844 100644
> --- a/drivers/mtd/parsers/Kconfig
> +++ b/drivers/mtd/parsers/Kconfig
> @@ -96,7 +96,7 @@ config MTD_AFS_PARTS
>   
>   config MTD_PARSER_TRX
>   	tristate "Parser for TRX format partitions"
> -	depends on MTD && (BCM47XX || ARCH_BCM_5301X || COMPILE_TEST)
> +	depends on MTD
>   	help
>   	  TRX is a firmware format used by Broadcom on their devices. It
>   	  may contain up to 3/4 partitions (depending on the version).
> 

Please check Documentation/kbuild/kconfig-language.rst and commit
18084e435ff6 ("Documentation/kbuild: Document platform dependency
practises")

I think you should rather add platform to DEPENDS.
