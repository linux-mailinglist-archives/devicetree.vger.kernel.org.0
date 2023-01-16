Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 726F066C96F
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 17:49:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233674AbjAPQtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 11:49:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233873AbjAPQta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 11:49:30 -0500
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CD902CFD7
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 08:36:17 -0800 (PST)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-15027746720so29314695fac.13
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 08:36:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1RrHwWKYfkgAWCmUrBIFJh6tv8lG1nhX54ZLrdcxVA8=;
        b=VWw5rZ4xdkXkMDlakaReJn1riVU9OQOOJ4GFwzMvIxtQ2/VBBGva2OCBJyfLz/7OQS
         CzMpGx03JQwxKzxxExycAm3we5U3YcNJlb9vqUpQtwI7QhqDwPv9vcZJcj57b6LRLv42
         G0dRvFPQSbmZwqY21CM6I47EQtwWLQKx5qngc+XypcvU78dJ49O7DHb+yMk6K9V/0Y5k
         qy+6RFxSNn4KEapJU7xO0SyoN6Wz+q4IHFPzM5WvzwccOH12xd41y1NH+9jNr+wUuaG3
         SByYZCUbCkLfiTl7W+SsYXKAUKc+XdLgDe9Kay7ylSxW8+z0WQXRZCxYytSz7ZHQwc/N
         rG9A==
X-Gm-Message-State: AFqh2kqxd7EClMhsE6syK4nWMcByCXwY46ovkvA7qbgZvH7WZKhiGpKM
        h+mr0TeX4TptG97k25srVw==
X-Google-Smtp-Source: AMrXdXuc2YR5XFDh+BjrSj9yCrSVAIET0KBbsCaLktdP4migZ/Nls+xg84R7aLjh9w7bkzh9R1hoTw==
X-Received: by 2002:a05:6870:348f:b0:15f:2854:3c69 with SMTP id n15-20020a056870348f00b0015f28543c69mr268945oah.29.1673886976626;
        Mon, 16 Jan 2023 08:36:16 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r18-20020a05687080d200b0012763819bcasm14590181oab.50.2023.01.16.08.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 08:36:16 -0800 (PST)
Received: (nullmailer pid 606182 invoked by uid 1000);
        Mon, 16 Jan 2023 16:36:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
In-Reply-To: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
References: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
Message-Id: <167388663742.594124.9073960952096608319.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
Date:   Mon, 16 Jan 2023 10:36:12 -0600
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 15 Jan 2023 15:24:12 +0100, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  ...12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} (90%)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/phy/amlogic,g12a-usb3-pcie-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

