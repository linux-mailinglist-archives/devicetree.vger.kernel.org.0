Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6BB233FFD4
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 07:44:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbhCRGns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 02:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhCRGni (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 02:43:38 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9768CC06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:43:37 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id u20so6106762lja.13
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 23:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RI301Q0wsWbsKciSpIG5QiBmIdSS3JhRWZ7BpdKW3Dg=;
        b=vL11IzG6zlyQtHUXEgmUzLLcYLysrdWzgGOwgE2vqiHqtAEZqgi/RERboCIuWxQP0D
         KJ4itexUe2roOplSUrI92+6W5ZrghGhXt+0jNV3pt6Y/e0mYRYe5DcprIwXxa/pSvO1S
         HrV3SNvvJQuJLmdLKL/wBylP4DYtJsjybcCngSinbDzUr05elQiq+DwLzUNCKm96Fkf+
         P91H90Qh6u/ltwUYYk7tyRCpHip3+gC5MA/SVrvavcDmzL0W/bnP3QjSPDPtWFABQhTX
         5ipbuG+LdyLxSQWbuuBzHmchWaGioGenk5ABFrIt1gtBAMXhTmr3W8nCc9+cXLCKXkS9
         vAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RI301Q0wsWbsKciSpIG5QiBmIdSS3JhRWZ7BpdKW3Dg=;
        b=h9TkdfOjQKBr7HdCGiBb89R+rc1YpUxOlYeGarAx7SXKXJbXa3wEVY+i4P25AXOMF5
         yyaFWhucbwWc46X4NlvNcvwFCnR905px5DkbYXFxQtQBOBFzyhbfLFRnmD7vFPyfSxsp
         bhvAeLhJGZ6SFLq+/MSjuEvOymauKdZ5x8Uc8YPea/zeEmm/qpsVT51NwE8+TM0p8Lan
         DzbaRwP0FUvB24h/X+Tu+kLXWlgLPAM1cujybJDYxNl0+1Nc7bxzrQGp8CbD9YXPJsTI
         xJcY9eu0SeQWNCjaCteABaxWDVDG5PmXLC7mVIH0LO4iZvUQcz264mtFqn+iKDOAjg4J
         y/Ig==
X-Gm-Message-State: AOAM531SsGyeLCVjvTcoKEKfyc5jJQJGaxlw6gmlOkJ8A9gj9ty6CnoU
        dul/O0bVSR4B2SamzoG9rWg=
X-Google-Smtp-Source: ABdhPJzmpoXD7zFPb74+DEY6omuCFymT0/E5PJAlH5DSuN+MwLQxPuhlDoxZVNpVOZ7tJSzU+fyrxA==
X-Received: by 2002:a2e:89d4:: with SMTP id c20mr4578899ljk.169.1616049816121;
        Wed, 17 Mar 2021 23:43:36 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id v11sm122050ljp.63.2021.03.17.23.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 23:43:35 -0700 (PDT)
Subject: Re: [PATCH 1/2] mtd: parsers: trx: Allow to specify trx-magic in DT
To:     Hauke Mehrtens <hauke@hauke-m.de>, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com
References: <20210315170711.567358-1-hauke@hauke-m.de>
 <20210315170711.567358-2-hauke@hauke-m.de>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <c596dbe2-a948-81c4-1e4e-e2d6c1b58b44@gmail.com>
Date:   Thu, 18 Mar 2021 07:43:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210315170711.567358-2-hauke@hauke-m.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.03.2021 18:07, Hauke Mehrtens wrote:
> Buffalo uses a different TRX magic for every device, to be able to use
> this trx parser, make it possible to specify the TRX magic in device
> tree. If no TRX magic is specified in device tree, the standard value
> will be used. This value should only be specified if a vendor chooses to
> use a non standard TRX magic.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>   .../bindings/mtd/partitions/brcm,trx.txt      |  5 +++++
>   drivers/mtd/parsers/parser_trx.c              | 21 ++++++++++++++++++-
>   2 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
> index b677147ca4e1..715a18ca36bd 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
> +++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
> @@ -28,6 +28,11 @@ detected by a software parsing TRX header.
>   Required properties:
>   - compatible : (required) must be "brcm,trx"
>   
> +Optional properties:
> +
> +- trx-magic: TRX magic, if it is different from the default magic
> +	     0x30524448 as a u32.

It may need to be brcm,trx-magic and ack for sending a separated bt-bindings patch.


> diff --git a/drivers/mtd/parsers/parser_trx.c b/drivers/mtd/parsers/parser_trx.c
> index 8541182134d4..fd424587caa4 100644
> --- a/drivers/mtd/parsers/parser_trx.c
> +++ b/drivers/mtd/parsers/parser_trx.c
> @@ -47,6 +47,24 @@ static const char *parser_trx_data_part_name(struct mtd_info *master,
>   	return "rootfs";
>   }
>   
> +static uint32_t parser_trx_get_magic(struct mtd_info *mtd)
> +{
> +	uint32_t trx_magic = TRX_MAGIC;
> +	struct device_node *np;
> +	int err;
> +
> +	np = mtd_get_of_node(mtd);
> +	if (!np)
> +		return trx_magic;

This check seems redundant, of_ returns -EINVAL also for NULL node.


> +	/* Get different magic from device tree if specified */
> +	err = of_property_read_u32(np, "trx-magic", &trx_magic);
> +	if (err != 0 && err != -EINVAL)
> +		pr_err("failed to parse \"trx-magic\" DT attribute, use default: %d\n", err);

I'm not native, but shouldn't that be s/use/using/ ?


> +
> +	return trx_magic;
> +}
