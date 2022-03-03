Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FCFA4CBF12
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 14:44:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230001AbiCCNpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 08:45:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbiCCNp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 08:45:29 -0500
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0476F18A7B5
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 05:44:44 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id s5so4798710oic.10
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 05:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=LVNw/ls/eRTKLlhsyPvmLuEhSjvK3qoiS6H5MeDHqG8=;
        b=NSXT10qSPBMYqjxPIR3fxMzXIElW/Vf+HBoMFqeOOcY2Ao+FU3LroZEsodueHuLWiT
         Kqo9+eO7ruxOv53Y9NAu8PMCygj0FcLsZBx3gebbgK/f1SVOuyiIXah17wH6nq6g6vHk
         0cZWgUIoyk9ErLw+NATiGXBNYHbMmWEUxq5/IxC7TGlYpU+6P08TFQ6EuXvHDZZrvng9
         OPzouWP8JI62mCPmcESCCbR3ECcy6V3vaYc++vtBUEFb5w032ktlB/G9nrgvYEgT/x62
         Ea225vd2nd2/FF5WP88sjoi9YZfEwOVFL3CB5DpDDn2qPB2AcU1hvHubyCJyK8CyXPna
         rOoA==
X-Gm-Message-State: AOAM533E9je5v4N6yzCnl5C5IYRQqCMQOWAHemjxIlNYQwb3+b0gZibQ
        L3qPjfwcAk+Zlj7GXqMKsQ==
X-Google-Smtp-Source: ABdhPJx0CQYL45E+PUGvxlwfgLWgVgDXqpMXflVyMKx2X8GxGOtkUMWtghvxFxrOusZN0vqOERPaXw==
X-Received: by 2002:a05:6808:1804:b0:2d4:c904:a83f with SMTP id bh4-20020a056808180400b002d4c904a83fmr4513034oib.103.1646315083234;
        Thu, 03 Mar 2022 05:44:43 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s14-20020a05680810ce00b002ca4eddde1esm1089063ois.11.2022.03.03.05.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 05:44:42 -0800 (PST)
Received: (nullmailer pid 1495434 invoked by uid 1000);
        Thu, 03 Mar 2022 13:44:38 -0000
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     mbrugger@suse.com, lee.jones@linaro.org, heiko@sntech.de,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        strit@manjaro.org, Chris Morgan <macromorgan@hotmail.com>,
        robh+dt@kernel.org, arnaud.ferraris@collabora.com
In-Reply-To: <20220302232612.25455-4-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com> <20220302232612.25455-4-macroalpha82@gmail.com>
Subject: Re: [PATCH 3/3 v4] dt-bindings: mfd: rk808: Convert bindings to yaml
Date:   Thu, 03 Mar 2022 07:44:38 -0600
Message-Id: <1646315078.984067.1495433.nullmailer@robh.at.kernel.org>
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

On Wed, 02 Mar 2022 17:26:12 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. clock-output-names varies
> in maxItems depending on whether or not the clock-cells is 0 or 1. For
> the rk805, rk809, and rk817. This preserves behavior with the existing
> driver handling setting the clock for these specific PMICs. When this
> driver is corrected and the devicetrees updated this logic can be
> removed (since the rk805, rk808, and rk817 only have one actual clock).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
>  6 files changed, 1372 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.example.dt.yaml: pmic@1c: regulators: Unevaluated properties are not allowed ('DCDC_BOOST' was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt

See https://patchwork.ozlabs.org/patch/1600127

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

