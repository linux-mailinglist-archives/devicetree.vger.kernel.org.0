Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3BB566C96B
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 17:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233848AbjAPQtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 11:49:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233863AbjAPQt3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 11:49:29 -0500
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06BF430B38
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 08:36:14 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id o66so23814011oia.6
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 08:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0hnUZ60mVRJhXUg94NvWH4Vacuvk8BAE/8ADy6vgTsQ=;
        b=2s28cBfelBLqC/XwpO7gPC7NfWIcKi1DQzJJlpuCxpH+WShCbALcCJr67I3jlgZ/yq
         yYExAUglllm5SU/EjDowFbVCBJQyU+SvzDAVELEFL66CwqTTJPr21E/Yk+HFyUl83SOM
         dSPLs71z4Y6f17248N70jNS5hgQ3dO8o+cz1UqMm54jA1MfyFQKiJmDAdfWrLIGQeXA6
         AFYbMhFxAhdnlEhT6VN7CfEVaY/F/eroR9LOw0EIDhgGU6gYivHOcedrOWKECeilCjP8
         7FtK76KqKcj26AuA5smlOvGSSm/kznziypCQkF31pP9imnpEqMQ1N/xB67C9Q1QqeVSF
         H6EA==
X-Gm-Message-State: AFqh2krCcBFvGco7DIaXLEWa8MxI3m/DkEYblLD9G3aAqWkWjLHELDzW
        0vZgZUXHzGeuaTcJ7hChYg==
X-Google-Smtp-Source: AMrXdXuK0z8g2M52j0b3QBVJOrcC5GBevcSNZ828P23dAscXDIb9r3LrG8OccvrQIzRmTnN3zLnsAQ==
X-Received: by 2002:a05:6808:ec6:b0:35e:df32:64b1 with SMTP id q6-20020a0568080ec600b0035edf3264b1mr12091899oiv.21.1673886973800;
        Mon, 16 Jan 2023 08:36:13 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e26-20020a0568301f3a00b006770e855c61sm5535920oth.31.2023.01.16.08.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 08:36:13 -0800 (PST)
Received: (nullmailer pid 606179 invoked by uid 1000);
        Mon, 16 Jan 2023 16:36:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
In-Reply-To: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
References: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
Message-Id: <167388663660.594049.3734030156353623535.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Date:   Mon, 16 Jan 2023 10:36:12 -0600
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 15 Jan 2023 15:19:31 +0100, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  ...,meson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} (91%)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/phy/amlogic,g12a-usb2-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

