Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4E4667205
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 13:22:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbjALMW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 07:22:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjALMW0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 07:22:26 -0500
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11DCDC0
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 04:22:25 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id r130so15129519oih.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 04:22:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rtINNytsd/zxKdxtXoOSr+cNhhKcWFohemXYweWGB1E=;
        b=LdUiSw4Y7mbQ36raXIjnmcsI9NTXzXhpyRUbePESlmjNR3AZl6OrQOPvTdLiBHQu+1
         c+SrSEfBOnamtEZtUISYs1LHcS4KX3S2ilquOP9Wid+lOUgbdsoCdjNzE9r1S5FSo3rI
         7bJnjH36RTqmuLt/M/zQDcdhnailNfMGzIZdNRU2JnXUKbGzVIEcMaNCmohvsidbfNcn
         O+bZmotfXthW2d6rQ3AvENDa7IiOv83jr8QIrUgVX769z+9dPLGmVnAxM70nnL/107iw
         HmyXpYpXEYWiELsPpnTosn5x+ptQsG0f7ijuZ0DNp1cYQir2wGPkSaSl9xYozNmqVfPl
         zCXA==
X-Gm-Message-State: AFqh2krOUbbAIE3lCQSpfWu9wR5pcQEDh36UXtBmUejLYzeG7Kjsqo9H
        2bOrh6yW9PO7qW+INLGLXuLjv7Pf2A==
X-Google-Smtp-Source: AMrXdXteLOgISZYsRPd/H/T+nOQmYks3iSGq+eTi5zkTvXm+MXN1FfdkAJP6d7iBRIfwnuBL4ngLxA==
X-Received: by 2002:a05:6808:2226:b0:364:2adb:2680 with SMTP id bd38-20020a056808222600b003642adb2680mr14431577oib.5.1673526143997;
        Thu, 12 Jan 2023 04:22:23 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n24-20020a9d7118000000b00661ad8741b4sm9030832otj.24.2023.01.12.04.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 04:22:23 -0800 (PST)
Received: (nullmailer pid 3055045 invoked by uid 1000);
        Thu, 12 Jan 2023 12:22:22 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <878ri84lc6.wl-kuninori.morimoto.gx@renesas.com>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <878ri84lc6.wl-kuninori.morimoto.gx@renesas.com>
Message-Id: <167352605035.3051151.10083276065810564823.robh@kernel.org>
Subject: Re: [PATCH 11/10] ASoC: dt-bindings: renesas,rsnd: tidyup rcar_sound,src
Date:   Thu, 12 Jan 2023 06:22:22 -0600
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 12 Jan 2023 01:01:45 +0000, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Some SRC is not implemented on some SoC, thus
> interrupts/dmas/dma-names are not mandatory.
> This patch solve it. Without this patch we will get below error
> when 'make DT_CHECKER_FLAGS=-m dt_binding_check'.
> 
> dtschema/dtc warnings/errors:
> ${LINUX}/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dtb: \
>  sound@ec500000: Unevaluated properties are not allowed ('rcar_sound,src' was unexpected)
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> 
> Link: https://lore.kernel.org/r/167344317928.394453.14105689826645262807.robh@kernel.org
> Reported-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 4 ----
>  1 file changed, 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dtb: sound@ec500000: Unevaluated properties are not allowed ('port' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/878ri84lc6.wl-kuninori.morimoto.gx@renesas.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

