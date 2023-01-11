Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93482665C97
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 14:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238454AbjAKNdG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 08:33:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238996AbjAKNcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 08:32:23 -0500
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 412051C40F
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 05:29:13 -0800 (PST)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1433ef3b61fso15472179fac.10
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 05:29:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wfcyeKV+jmJfxwF7NRjV8Nnjqq+j+TtjFkaEsE2MxJg=;
        b=YE+tcmb2NcOXBWKyEVD3vP/r0RN8Bxt66024zjQ2aUVpsPljrMEQCm3Ls++SW1mZwL
         Dxs36+F9K1BuPDEgkgySuhbvjWePABUB3H5olY4lzsBBgdLs+/ZdrjmQwYYqnHn70j/Y
         xGW7ekgOFacUTizkHqV+2tmoBZLm8NavJvKexa5okZmyFCiWVSBDFen9BnZXG0yEaRo6
         BCrlr6UIQBG7J/mH3DCZVPwXhU2+JJ9DojYZ1u19wNUeZF5gHVJcedMPYQnJb2hAZu0b
         avGlWsD8n4FKOd6XgTWtLbk2slV41d11ROJ5/FMmMJpse1mwFIW5Mg+zuHvsYpfBNf0q
         ifww==
X-Gm-Message-State: AFqh2kpWy7DqwCv85nPwVJJAfHHDzPEpMPAaTmQhYE73G1JhplgyMBXe
        ExxtNm/ehiDCxdO3ER5Dqh4J69FfjA==
X-Google-Smtp-Source: AMrXdXurr2Fkt7xIiSGu2+v4jLMmjbG5iQyzQgObyqO+r+3rDohu/0qojG9+9uV23VV7Y4jPZu7Hpw==
X-Received: by 2002:a05:6870:390e:b0:14b:e944:ac13 with SMTP id b14-20020a056870390e00b0014be944ac13mr34453421oap.15.1673443752372;
        Wed, 11 Jan 2023 05:29:12 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x19-20020a056870331300b00143cfb377b4sm7306519oae.6.2023.01.11.05.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 05:29:12 -0800 (PST)
Received: (nullmailer pid 408838 invoked by uid 1000);
        Wed, 11 Jan 2023 13:29:11 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <87r0w1ho26.wl-kuninori.morimoto.gx@renesas.com>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <87r0w1ho26.wl-kuninori.morimoto.gx@renesas.com>
Message-Id: <167344317928.394453.14105689826645262807.robh@kernel.org>
Subject: Re: [PATCH v2 08/10] ASoC: dt-bindings: renesas,rsnd: add missing
 playback/capture
Date:   Wed, 11 Jan 2023 07:29:11 -0600
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 11 Jan 2023 01:12:18 +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> renesas,rsnd.yaml is possible to use ports/port/endpoint if it is using
> Audio Graph Card/Card2 for sound. The schema is defined under
> audio-graph-port.yaml.
> 
> rsnd driver needs "playback/capture" property under endpoint, but it is not
> defined in audio-graph-port.yaml. This patch adds missing "playback/capture"
> properties under endpoint.
> 
> Without this patch, we will get below warning
> 
> ${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dtb: sound@ec500000: ports:port@0:endpoint: Unevaluated properties are not allowed ('playback', 'capture' were unexpected)
> 	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 25 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dtb: sound@ec500000: Unevaluated properties are not allowed ('rcar_sound,src' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/87r0w1ho26.wl-kuninori.morimoto.gx@renesas.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

