Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FB65A0FC0
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 13:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241053AbiHYL7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 07:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241314AbiHYL7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 07:59:01 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F26BA925C
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 04:58:59 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-11c59785966so24556897fac.11
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 04:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=C3ksoMVAhF0SARlPV7r54lmRKHUAobBMTAQrm7AT/tM=;
        b=df3O+OtFVG0oVQ4dP5DrwRnqZZbsckrmLXD1EtYISMVYkmS8GXaRHwTJXb//rBshpG
         zooElK8yzxFMdc3HooAYPOGJenGhf9b/blRZ8MWjHK9ClmEc7MSQgdy4FcOy5zuDr2hv
         VJFR0NDneb1ymMxBPaIqD5JbtqbPmWCTd/Bd66mFdNpfRko36VhUxqqRlWZWsrb/Rz4b
         pCII3xa3WTpcCRss0Cv0JygzSVcGe5vjjCfHMrsxJZPelQE+iOMc1i3tTFUfVOpzYr47
         jryjCSgvc9nvST57PObzKLgiyVwDngTwUVUhsfvp2HTsoAHI0DJLxfRJJ7XK3iIMQUR5
         Jtrg==
X-Gm-Message-State: ACgBeo2l79v/Ys1QMEN2uq2MyzraqCCEU+YdDhPDkS87v0xblVGSumiJ
        dC8Pz75sql80Px+cJwcBgw==
X-Google-Smtp-Source: AA6agR4geEZTypfQfwNJuWqdNb/dP03xWwxHgo17JQS9TVg6Xb0OaT6/1bbkdDHIJaWKl/VJypr/tA==
X-Received: by 2002:a05:6870:40d2:b0:11c:72cf:a0e4 with SMTP id l18-20020a05687040d200b0011c72cfa0e4mr1642729oal.249.1661428738558;
        Thu, 25 Aug 2022 04:58:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y3-20020a4ac403000000b0044b105cb3cdsm3542562oop.46.2022.08.25.04.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 04:58:58 -0700 (PDT)
Received: (nullmailer pid 263761 invoked by uid 1000);
        Thu, 25 Aug 2022 11:58:57 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
In-Reply-To: <20220825013258.3459714-9-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch> <20220825013258.3459714-9-andrew@lunn.ch>
Subject: Re: [PATCH v2 08/12] dt-bindings: nand-controller: Reflect reality of marvell,orion-nand
Date:   Thu, 25 Aug 2022 06:58:57 -0500
Message-Id: <1661428737.531900.263760.nullmailer@robh.at.kernel.org>
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

On Thu, 25 Aug 2022 03:32:54 +0200, Andrew Lunn wrote:
> The Marvell Orion NAND driver comes from before the time of the
> standardised NAND binding. The controller only supports a single
> device, and expects the NAND partition table to be directly in the
> controller node. This goes against the standardised NAND binding which
> expects a sub node per NAND device, which contains the partition
> table.
> 
> Since the partition table contains a reg property indicating the start
> address of the partition and its length, it needs #size-cells set to
> 1. However, for a list of nand devices, the reg value is the device
> number, requiring #size-cells of 0.
> 
> Add an exception to nand-controller.yaml to allow this #size-cells
> value when the compatible matches the orion controller.
> 
> In order that the example works, it needs a compatible string so the
> comparison can be made. Pick the first example in the directory.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../bindings/mtd/nand-controller.yaml           | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.example.dtb: nand-controller: 'reg' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

