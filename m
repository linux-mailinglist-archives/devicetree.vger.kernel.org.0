Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 890205B289D
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 23:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbiIHViD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 17:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiIHViD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 17:38:03 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678B1266B
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 14:38:02 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1225219ee46so48039668fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 14:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=g2vCELUI7uSiIqXKCuKyBQmtCDQGDZ5TQFp9GkCD/Hc=;
        b=LNF1XdxHcBIo5EeXiqcsLevq/RqD5gBTf3ahP/MsePr6Zqt8Y4krD3hNfpPENzO/iN
         4P3otn5ZuRP10sOBiWMKNCncNbIwofTR9nsygBxATsUez7SD0fXdr1Jfr0HI4zFlGjxe
         5Dv+sjL1JMNNEXjXUSUv/Kbd8TO7I5WQ7l5I6x+zRHqDG9Y6D2Vc+2fgtPnx/evH7nFA
         no6qbmoC6jTeog6Czm/75iMnp1Dw3YsoqXZErmg71s4G6BlCGaZrrVljE93/9w0YExNJ
         fCwOADKUqoGESeFErr5Lmd8+zRqDzh31pulV1obfb6E/GMiY3Bx6/mVQhoIZZNjoPiaA
         X2tA==
X-Gm-Message-State: ACgBeo0uaL3HM/5FEqw1en56THHpI79VHVH7+QLlA/LfUGn3HR1eKsQW
        87VWLj/mqOpdUQ8Kr/W94A==
X-Google-Smtp-Source: AA6agR7eEgsu8ThQAALUz5bXvREdGjC73emgbMc0geSCW5IdjtRp4ZwP5pT/HYaXSmbNUHp4jXMl2w==
X-Received: by 2002:a05:6808:1891:b0:344:8495:57f6 with SMTP id bi17-20020a056808189100b00344849557f6mr2425880oib.296.1662673081561;
        Thu, 08 Sep 2022 14:38:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a8-20020a05687073c800b001276cea2320sm70502oan.58.2022.09.08.14.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 14:38:01 -0700 (PDT)
Received: (nullmailer pid 3386125 invoked by uid 1000);
        Thu, 08 Sep 2022 21:38:00 -0000
Date:   Thu, 8 Sep 2022 16:38:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergei Antonov <saproj@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, krzysztof.kozlowski+dt@linaro.org,
        Jonas Jensen <jonas.jensen@gmail.com>,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v2] ARM: dts: fix Moxa SDIO 'compatible', remove 'sdhci'
 misnomer
Message-ID: <20220908213800.GA3386063-robh@kernel.org>
References: <20220905125343.2769117-1-saproj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905125343.2769117-1-saproj@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 05 Sep 2022 15:53:43 +0300, Sergei Antonov wrote:
> Driver moxart-mmc.c has .compatible = "moxa,moxart-mmc".
> 
> But moxart .dts/.dtsi and the documentation file moxa,moxart-dma.txt
> contain compatible = "moxa,moxart-sdhci".
> 
> Change moxart .dts/.dtsi files and moxa,moxart-dma.txt to match the driver.
> 
> Replace 'sdhci' with 'mmc' in names too, since SDHCI is a different
> controller from FTSDC010.
> 
> Signed-off-by: Sergei Antonov <saproj@gmail.com>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Cc: Jonas Jensen <jonas.jensen@gmail.com>
> ---
> v1 -> v2:
> Per Arnd Bergmann's suggestion, replaced sdhci with mmc in names too.
> 
>  Documentation/devicetree/bindings/dma/moxa,moxart-dma.txt | 4 ++--
>  arch/arm/boot/dts/moxart-uc7112lx.dts                     | 2 +-
>  arch/arm/boot/dts/moxart.dtsi                             | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
