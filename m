Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B2D65655A
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 23:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232400AbiLZWfw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 17:35:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232381AbiLZWfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 17:35:48 -0500
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD15BD99
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 14:35:47 -0800 (PST)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-14fb3809eaeso7875022fac.1
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 14:35:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lt+gzNImgwQhawSy/zX0NqMABwqGJ4OMHwRZPC2+ROw=;
        b=Qn51lt5h/bTJyWXy9UdsAqu1yv71Oy4ywj7Zt+QF5PjR4wtXdZ0WhDDZd6cnXXG68w
         2NUC0cj4xtWjkfsJ91OaMKSpm6Ekbvjq22UHKAB9R1AHTRnh7+x5CZY9EP7gWRIotmI4
         UCZKyYegpb2KLTki9J9+wUiS/BMQU7OffSz+67RUCP7ODr42SFPgOzVGpgtl7yzoaefO
         gV8+qPSnZoKk09Cp43sPYMoK35dqpbPY0A9B8sg1NDbpZVLH6GTOi5jolml9gUFAbF54
         PBYiH0OPyri4GQVLS84QarV/cIAb4EjjHPrU+oYhFlGU66hcccHzU0mzpcHpQTAZbz9y
         AFug==
X-Gm-Message-State: AFqh2kryZp4nO0c29S+Gg94W0AO+roVL5tBzy15n4M31pb2v6gyELadg
        Z4CtIYsJSR+QwQBClMHBkMxF3I6arw==
X-Google-Smtp-Source: AMrXdXtoyYNVc/HfF7b8ZQ6awqmxZtHIAJA8GEEc6ASnXnLJU/vSgfPTQp95w57GfWXniFD8o9Moww==
X-Received: by 2002:a05:6871:4595:b0:143:95b0:26e7 with SMTP id nl21-20020a056871459500b0014395b026e7mr8961672oab.54.1672094146950;
        Mon, 26 Dec 2022 14:35:46 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:80e8:2792:eb0e:539f:f657:547b])
        by smtp.gmail.com with ESMTPSA id z12-20020a056870738c00b00143065d3e99sm5461116oam.5.2022.12.26.14.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 14:35:46 -0800 (PST)
Received: (nullmailer pid 375419 invoked by uid 1000);
        Fri, 23 Dec 2022 19:26:02 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     devicetree@vger.kernel.org, kchsu0@nuvoton.com,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Benjamin Marty <info@benjaminmarty.ch>, wtli@nuvoton.com,
        Rob Herring <robh+dt@kernel.org>,
        David Lin <CTLIN0@nuvoton.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Takashi Iwai <tiwai@suse.com>
In-Reply-To: <20221223170404.210603-2-francesco@dolcini.it>
References: <20221223170404.210603-1-francesco@dolcini.it>
 <20221223170404.210603-2-francesco@dolcini.it>
Message-Id: <167182349408.373865.10339766752503211557.robh@kernel.org>
Subject: Re: [PATCH v1 1/3] ASoC: dt-bindings: nau8822: convert to the dtschema
Date:   Fri, 23 Dec 2022 13:26:02 -0600
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 23 Dec 2022 18:04:02 +0100, Francesco Dolcini wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> 
> Convert nau8822 devicetree binding to dtschema.
> Change file name to match dtschema naming.
> 
> Cc: David Lin <CTLIN0@nuvoton.com>
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  .../devicetree/bindings/sound/nau8822.txt     | 16 --------
>  .../bindings/sound/nuvoton,nau8822.yaml       | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221223170404.210603-2-francesco@dolcini.it


audio-codec@1a: '#sound-dai-cells', 'AVDD-supply', 'CPVDD-supply', 'DBVDD-supply', 'DCVDD-supply', 'MICVDD-supply', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb

