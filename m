Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1327870BFCD
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231196AbjEVN3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234304AbjEVN32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:29:28 -0400
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70BC8BE
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:29:03 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-394c7ba4cb5so2036597b6e.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684762135; x=1687354135;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KrA3Ml6N/DxHU4F4WrTTWrRDUWYpZNkeZlc7i6h9idA=;
        b=cBH200vmGMX4UAJ6JVxO+WQnG1H4sEprzH1m3gz7wZ26lTEff7rJZsw5wkuh7ysuyE
         GNTl+D+UUTKMs94JK0P67x5BzRfFNYRJLaVTdUrt1I6RoPclZOoPgH7k/j06NOQLti/Q
         USlAKaJfNecK34pYrh6WAizB84mHGOzrKWkZHFsz0mzAhuzPA1dzMty17cpefslFUBAJ
         eAg2hnZ/46eW2C8OJIGlTJOBc2a51rU4oZVA0LkPcI5aZtaJIXDw36nCNilDYTd04AZp
         rW8IG9JebVU3VdGlJQNZkVMHqIRgFTX7JCSM8WqM7DrT5RCKfDtM/Bz8AJNWOyMfwDAS
         v4cg==
X-Gm-Message-State: AC+VfDx36Qi/nthzOPXYp2VMcuqspfq+vulFwO+5/jRxKefqTvx1N6d3
        4NmTSGKSFTlQbBHgxcbxU+JmIH7xug==
X-Google-Smtp-Source: ACHHUZ4oLpuzMtiKP/k0dREQKTektw6NMBbQSKEMd5K4ucERyi184SQXpOwx55jZW95RwI5G6tEuvQ==
X-Received: by 2002:a05:6808:11:b0:398:19e6:56a7 with SMTP id u17-20020a056808001100b0039819e656a7mr695884oic.2.1684762135446;
        Mon, 22 May 2023 06:28:55 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z2-20020a4ade42000000b00549f4d87eecsm2288285oot.30.2023.05.22.06.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 06:28:54 -0700 (PDT)
Received: (nullmailer pid 2286362 invoked by uid 1000);
        Mon, 22 May 2023 13:28:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>, conor+dt@kernel.org,
        marex@denx.de, linux-arm-kernel@lists.infradead.org,
        shawnguo@kernel.org, krzysztof.kozlowski+dt@linaro.org
In-Reply-To: <20230522125129.526604-1-festevam@gmail.com>
References: <20230522125129.526604-1-festevam@gmail.com>
Message-Id: <168476213277.2286317.5027144003659805968.robh@kernel.org>
Subject: Re: [PATCH v5 1/4] dt-bindings: display: bridge: ldb: Adjust
 imx6sx entries
Date:   Mon, 22 May 2023 08:28:53 -0500
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 22 May 2023 09:51:26 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On the i.MX6SX there is a single entry for 'reg' and 'reg-names', so add
> some logic to reflect that.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - Replaced items: with const: for the single item (Conor)
> 
>  .../bindings/display/bridge/fsl,ldb.yaml      | 26 ++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml:84:12: [warning] wrong indentation: expected 10 but found 11 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230522125129.526604-1-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

