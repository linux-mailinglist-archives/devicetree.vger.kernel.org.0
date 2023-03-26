Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79AFD6C9503
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 16:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjCZOLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 10:11:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231921AbjCZOLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 10:11:24 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D25E469C
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:10:50 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-177b78067ffso6693473fac.7
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679839824;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=isj581EKKtFXMyvbwCU3W1lWUUdVSQFMbSeSm47zLrs=;
        b=5wo4S88ph/4h48xuSwrpbrXBgGOpTfxBHFAPc2QWdLLH+S++06jO6HNQUIQ25eNJQh
         2A/ZK5N9BKQD5o4cVPcJoQgML6kKJF/MsCb17pC6xI49Vulrnpma8g4AKAv1o6tFis81
         0p8KKDjAEpbWC+wyhoFPAio6kA6GY7bKGIsIdEloswJY12fB0zpYdQWsA3GDUHVfP/nt
         XuFnrDED+mwj82CnaRiTfgqvHBogF8pAiGVvO0h/xmqBesOcPfipriD6e3uoGq8GRCk0
         wf7SNdtHBv4jP2pnH50omLaI0G7aXcFXPZw8FSaCb1fDv/L/9m4DNMnaD/YhK6V/uXUX
         mh2g==
X-Gm-Message-State: AAQBX9c1CM3zfO+DnEzIN3nMDP/VSK2tiRBtij0XbP3RU/vydo6N0FYY
        Mv1+JM0GrRdPAdrPGjKagDr5Sx0+DQ==
X-Google-Smtp-Source: AK7set+dOu20sugG/VaeyBcVDuvM/o7dhtXx7A6BiZhrn0v54PpIdk48FWJ+/RzQN0svJIIGbMV6NQ==
X-Received: by 2002:a05:6870:4709:b0:17a:cbf2:a4c7 with SMTP id b9-20020a056870470900b0017acbf2a4c7mr6904745oaq.27.1679839824103;
        Sun, 26 Mar 2023 07:10:24 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k83-20020aca3d56000000b003646062e83bsm10211770oia.29.2023.03.26.07.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 07:10:23 -0700 (PDT)
Received: (nullmailer pid 380191 invoked by uid 1000);
        Sun, 26 Mar 2023 14:10:21 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Archana <craechal@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org
In-Reply-To: <20230325204944.7151-1-craechal@gmail.com>
References: <20230325203858.5981-1-craechal@gmail.com>
 <20230325204944.7151-1-craechal@gmail.com>
Message-Id: <167983964015.350388.16701701404607125624.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: convert ac97 controller child node
 codec to dtschema
Date:   Sun, 26 Mar 2023 09:10:21 -0500
X-Spam-Status: No, score=0.8 required=5.0 tests=FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 25 Mar 2023 20:49:44 +0000, Archana wrote:
> Convert codec bindings of an ac97 controller child node describing ac97 codecs to DT schema.
> Update example during conversion.
> 
> Signed-off-by: Archana <craechal@gmail.com>
> ---
> v1->v2:
> 1. Add newline at end of file
> 
>  .../devicetree/bindings/sound/ac97-bus.txt    | 32 ----------
>  .../devicetree/bindings/sound/ac97-bus.yaml   | 60 +++++++++++++++++++
>  2 files changed, 60 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sound/ac97-bus.example.dtb: /example-0/sound@40500000: failed to match any schema with compatible: ['marvell,pxa270-ac97']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230325204944.7151-1-craechal@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

