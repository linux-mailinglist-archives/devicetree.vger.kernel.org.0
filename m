Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F2159B645
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 22:24:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231701AbiHUUVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 16:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbiHUUVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 16:21:36 -0400
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8711AF21
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:36 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id r10so4381109oie.1
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=8+Lg/igKaR8v2SkL2YWJ5Qceqs+kd79c7hfWvmZZIio=;
        b=IYAXUX8KgK7VGWbOVxzKB/Q4z46wWXM99XkOCHjWFj46F1Avj1s/Wcr8xCYkq0+bTq
         t2lDVBa3GVY47NIR3unPcHuOpwvoMgQsahDHLlU2Y9t8WsW3xsLYguO4Z8PFtWURzcRe
         ZZu9pdQhNvnZol/m6jgZTKajK2fdlG/56tVaIlqt/nX/OUepvC5JyyoKDcRIDZtWRGVu
         YlpEP5LVKXfUFHTAKXKO1zzAnzUS+zoLPahKI8NEjyDLv48D4A3OKoe6RYfBP4JNkMtl
         WLy5jQqjfg/Ru+wAk/rzVh3k+WM0Zs5vmlpAdNHk+RcXyVSbnURvCTJlnQKJsDRXGFvJ
         znuA==
X-Gm-Message-State: ACgBeo32j3wDSu7Y9jMreKvut6LnFWUiLpwUi4lOeIcpo3gvPCGDhvij
        EYrOIityl1tyfDCpLeEikA==
X-Google-Smtp-Source: AA6agR7vOF5gUm2QYImSlKkJuIZJ51nPvUua/dtCO+OhNU6xYD5EcC7VJfdUVLjhE+MsaWEK9l2Lbg==
X-Received: by 2002:a05:6808:1596:b0:344:9136:8b1d with SMTP id t22-20020a056808159600b0034491368b1dmr9990369oiw.250.1661113295369;
        Sun, 21 Aug 2022 13:21:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u21-20020a056870421500b0010830c24aaasm2666856oac.56.2022.08.21.13.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Aug 2022 13:21:35 -0700 (PDT)
Received: (nullmailer pid 1729136 invoked by uid 1000);
        Sun, 21 Aug 2022 20:21:26 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
In-Reply-To: <20220820194804.3352415-9-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch> <20220820194804.3352415-9-andrew@lunn.ch>
Subject: Re: [PATCH 08/11] DT: mtd: Convert orion-nand to YAML
Date:   Sun, 21 Aug 2022 15:21:26 -0500
Message-Id: <1661113286.930678.1729134.nullmailer@robh.at.kernel.org>
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

On Sat, 20 Aug 2022 21:48:01 +0200, Andrew Lunn wrote:
> This works for Kirkwood, but orion5x has an odd bus structure
> which results in some warnings.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../bindings/mtd/marvell,orion-nand.yaml      | 85 +++++++++++++++++++
>  .../devicetree/bindings/mtd/orion-nand.txt    | 50 -----------
>  2 files changed, 85 insertions(+), 50 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/orion-nand.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

