Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B204C55E33C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234069AbiF0JrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233792AbiF0JrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:47:00 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E601363DC
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:46:58 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ej4so12142334edb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HHdosOs39o38BChR9emscNODdZBptdPe7N1Ku8GWR4k=;
        b=azcgu63Ik/VtroUohhLpZxUR9DERx1bU09MOj4tbkEu23vvYn7EBlJosUjm/E6cAUm
         mju28meLIHiGPyHms5sL05Oxbj239p1GXoC29oiOBietQAAXAeRdmswylVAjtp1VMHbx
         o/hsJ4+Z0RnW18+LcOpL+0u/N5v6h/+Xz8ko9ejwGiTl1OPSfmlnGRQcfsw/ds5vmqc8
         xIj5FCxSRN1h01OwnjonkuvlLROikDUMGetATplTArkGVadDkU1nAOr+Jji8EQIMKNl0
         sP7Fl8EueRMyZvIoynIHiIw6OIhHbi2pcnKFNtsCWfxlcgwiUK2dsuUxV/ZnE8t6Y6Pb
         /yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HHdosOs39o38BChR9emscNODdZBptdPe7N1Ku8GWR4k=;
        b=EefpuH2LbfjCEK8W0+XBZ7iXGoDSDYky84l8HNuc9sI3YKPRCDg87qEWzXtfgXG8hy
         f+XjpHmIXM5iy/r6v50S1GlnLizgalW1OUyZl5Ko65gFyeZ9Hlvk0dkBM1WSbKYwPlGw
         +G96tndMGph+mSTI5Smeitp9taoaeoy10MjgdOGzExEuQuDl9h6c0Vo/86ohPVPVPqFu
         KBbI4q5IgvjT/eOeJkjcN8XPA48F5uA3UGQHvxpvM6tqCv3ALA+w9Quo9OZ3l7WtkDLn
         mFp3LrnMFua3+aXRVgCI2gplyLL1KKrYS8S/80aDvXIUfIkpf+sCMWMUwCGej42lMod+
         nmjA==
X-Gm-Message-State: AJIora/3SsyZ7p7vhCoZZglpRL5xEDKicDN3WgMJNK2Sjzgp9wZ5szuP
        WytaxKf5vt81sGbJkhEJ1N/I+g==
X-Google-Smtp-Source: AGRyM1t6/gfotl2CU2szWClM+pyQl+8yGEzM6POYUCGhui7Z0nKt/DRapclROxQUx1vgj3P6b6/7Sw==
X-Received: by 2002:a50:ce4a:0:b0:435:c543:87e8 with SMTP id k10-20020a50ce4a000000b00435c54387e8mr15388117edj.295.1656323217429;
        Mon, 27 Jun 2022 02:46:57 -0700 (PDT)
Received: from [192.168.0.247] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dn7-20020a05640222e700b0042617ba6396sm7209623edb.32.2022.06.27.02.46.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 02:46:56 -0700 (PDT)
Message-ID: <f18a141b-b0bd-0efb-498a-1ab7745a3702@linaro.org>
Date:   Mon, 27 Jun 2022 11:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 5/5] spi: s3c64xx: add spi port configuration for Exynos
 Auto v9 SoC
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220627064707.138883-1-chanho61.park@samsung.com>
 <CGME20220627064931epcas2p19407c5c3da3319cfb55dcb2c6d517256@epcas2p1.samsung.com>
 <20220627064707.138883-6-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627064707.138883-6-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2022 08:47, Chanho Park wrote:
> Add exynosautov9 spi port configuration. It supports up to 12 spis and
> has DIV_4 as the default internal clock divider. The spi also has
> an internal loopback mode to run a loopback test.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/spi/spi-s3c64xx.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index dd5fc8570bce..67b1fecf6fc6 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1447,6 +1447,19 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
>  	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
>  };
>  
> +static struct s3c64xx_spi_port_config exynosautov9_spi_port_config = {

This should be const.

Best regards,
Krzysztof
