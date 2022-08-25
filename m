Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148555A1917
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 20:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243630AbiHYSvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 14:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243511AbiHYSve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 14:51:34 -0400
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62AAEBB028
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 11:51:22 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-f2a4c51c45so26051063fac.9
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 11:51:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=X/cVd+KOZMnW5AEd2SXFiu5+u+UnvgqvwY4tvjFkN5w=;
        b=dTfNqdxvUqlMdz7MKIe7Lfl5on34EW55OYVFt9aactzpTNKk6clYSvkfeUCWjyiG07
         IRQvDhq2lHxxgfA4YQ7xa/LXI4bguaxukdMoeG/sDEAS9LS9fcKBK/0UIzjFNck90+ZX
         t5fwLJBlcjMqE0fsmbbmyNaKEr+TTV0k5ECvrrwhWoDhf5SRUXpdbBneve1VHfvRFuo6
         rYdl7ChTVXUy/mq0+ssZU+4APiGhtZ+HOzOxj7eCliPVDWpdktCvavKER1tbZniO1GRt
         4o8jPBOBcVaA/spCzDy+YcoGa9fUTGsA499KjY3o3yb/SEzTXFXY0jjP7lQ1eDPyFU15
         JsXA==
X-Gm-Message-State: ACgBeo29s6UXcoYpeFE08yoCwkSWnoj9eT5WVhBK32TElY5IDuMubwom
        9BuaCR4upNb1xn5SBmsFJA==
X-Google-Smtp-Source: AA6agR5at6NFTKiUyIw1Kb0xcXmMgTMvsyGSZx2gNvzl8dWpbxREgES9FDOSuEVhyNfyXQj8Dhkkag==
X-Received: by 2002:a05:6870:b148:b0:112:cfe1:5062 with SMTP id a8-20020a056870b14800b00112cfe15062mr227632oal.297.1661453481259;
        Thu, 25 Aug 2022 11:51:21 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f20-20020a9d0394000000b0063736db0ae9sm5573904otf.15.2022.08.25.11.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 11:51:20 -0700 (PDT)
Received: (nullmailer pid 1486937 invoked by uid 1000);
        Thu, 25 Aug 2022 18:51:19 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, devicetree@vger.kernel.org,
        robh+dt@kernel.org, alsa-devel@alsa-project.org, broonie@kernel.org
In-Reply-To: <20220825140412.2297211-1-daniel@zonque.org>
References: <20220825140412.2297211-1-daniel@zonque.org>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: max98396: Document data monitor properties
Date:   Thu, 25 Aug 2022 13:51:19 -0500
Message-Id: <1661453479.979911.1486936.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 16:04:11 +0200, Daniel Mack wrote:
> This device features a data monitor that puts the device in software reset
> upon a configurable set of events.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
> v1 -> v2: fix a typo and remove a stray blank line
> 
>  .../bindings/sound/adi,max98396.yaml          | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/adi,max98396.yaml: properties:adi,dmon-stuck-threshold-bits: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/adi,max98396.yaml: properties:adi,dmon-magnitude-threshold-bits: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/adi,max98396.yaml: ignoring, error in schema: properties: adi,dmon-stuck-threshold-bits
Documentation/devicetree/bindings/sound/adi,max98396.example.dtb:0:0: /example-0/i2c/amplifier@39: failed to match any schema with compatible: ['adi,max98396']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

