Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C172C3D1BAC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230345AbhGVB3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 21:29:41 -0400
Received: from mail-il1-f180.google.com ([209.85.166.180]:41612 "EHLO
        mail-il1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbhGVB3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 21:29:40 -0400
Received: by mail-il1-f180.google.com with SMTP id p3so4039367ilg.8
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:10:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Fbou3WhEPhFN0PVcEqddlTgEjen1pBXU/lqHkeYDrHQ=;
        b=hlCpWJcQig5lUEsrXaeHKdrM7iXKGgrpTUcBkhy/y0R8lWn53ViTi1oq4qGmQ5u7or
         7jIpxKguhJLRmR5HlHCgfNg35PdX6YzgrxyJRPDkA2RXxVHWswulTYaF5kjFc3VdfwZ4
         E0diV/4zj8yqgU1oS+1w4naFYPpmpwC57Q/hQsRJ2ueboiEElpUOtYyq4H37HjTwP2eh
         9djKZ75HXxKKgsJahpzU/4gJy6AHgDkRgkL7vg1BYUh9ejPyAVic3awK46IMiLvzcOvT
         NZVdtrhU81aEA7RM2m4DZLC9FriIQ4sY/Z0xgO9VvHIVfIWk8e9/ZGzvNPgI1XW/0jBK
         +M7g==
X-Gm-Message-State: AOAM530VrBli/AX9JI+HD3/D/bPZVo40rdb45MRXlt7kEARgeLkNyBvV
        ROKQzRqTbAAznvRibxG1R8XRcOg/1A==
X-Google-Smtp-Source: ABdhPJyOwdbv63xN6sedvJfnOHtUG7C4FC7exmgUxDhqTp20Io0JGzJAFb8PbH4TL2OoBttCxjAhGA==
X-Received: by 2002:a92:c7d0:: with SMTP id g16mr25598385ilk.278.1626919815770;
        Wed, 21 Jul 2021 19:10:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f7sm1247665ils.42.2021.07.21.19.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:10:15 -0700 (PDT)
Received: (nullmailer pid 3145331 invoked by uid 1000);
        Thu, 22 Jul 2021 02:09:56 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-sunxi@googlegroups.com,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
In-Reply-To: <20210721140424.725744-25-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-25-maxime@cerno.tech>
Subject: Re: [PATCH 24/54] dt-bindings: mfd: Convert X-Powers AXP binding to a schema
Date:   Wed, 21 Jul 2021 20:09:56 -0600
Message-Id: <1626919796.977899.3145330.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:54 +0200, Maxime Ripard wrote:
> The X-Powers AXP PMICs are supported by Linux thanks to its device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/mfd/axp20x.txt        | 272 -------------
>  .../bindings/mfd/x-powers,axp152.yaml         | 381 ++++++++++++++++++
>  2 files changed, 381 insertions(+), 272 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/gpio/x-powers,axp209-gpio.yaml'
xargs: dt-doc-validate: exited with status 255; aborting
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.example.dt.yaml: pmic@68: '#interrupt-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.example.dt.yaml: pmic@68: 'interrupt-controller' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.example.dt.yaml: pmic@68: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
make[1]: *** Deleting file 'Documentation/devicetree/bindings/mfd/x-powers,axp152.example.dt.yaml'
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/gpio/x-powers,axp209-gpio.yaml'
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/mfd/x-powers,axp152.example.dt.yaml] Error 255
make: *** [Makefile:1418: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/gpio/gpio-axp209.txt: Documentation/devicetree/bindings/mfd/axp20x.txt

See https://patchwork.ozlabs.org/patch/1508269

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

