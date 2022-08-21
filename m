Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF5D59B646
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 22:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231289AbiHUUVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 16:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231666AbiHUUVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 16:21:31 -0400
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9DB01AF1B
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:30 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id m21-20020a9d6ad5000000b00638df677850so6472423otq.5
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=iaxo6mI6MQ0blu75zodjuU7hGLxxNwP+L6Nsy7KY648=;
        b=UFjTK2K0pYQExkKq5G/kXkw9ssep7IVPkANS1Oql0kAlZGdcSp4PeO8OQoeej1LfSh
         g0NmY2KsjX3vlanuxu7bR7OLuwxy10txaZtfDTQ00g3U+TE/MeNkLT+r7Khq3c6mz2Zd
         8ixuM+8gkR78n51ncEdGMdaeLy3RblzsgHb/wakLV0Cn9/8jLvXhAZ/p3TAGO0WnF3H1
         3E/aSkbuaqcbqATQbGBwijHA3omFTIqbTT5hnVT7KgM5vID6UyKlYGghLYtEKO1prhgg
         zgdNNgwG143eVtVGLMMePFKb1Ax67ZuzuIMo1p5YX36AYpmUX76iUv8uGwP9fE8yrE6Q
         Z3Dw==
X-Gm-Message-State: ACgBeo28rXymQEq+7Qoa6CVQWPHbVo1M2AyEM1I0ymenf8tzO8R8jQo9
        EwZDGkIt/Tf/boNLAhFPNg==
X-Google-Smtp-Source: AA6agR6B/vS8tD/6+Jrlxgmq2/b6A2aVtiurzDBKiqhbeXbTjYUcjTZUbmOgHM1PdAjoGBtOvb39+A==
X-Received: by 2002:a05:6830:1e33:b0:637:3143:d3b5 with SMTP id t19-20020a0568301e3300b006373143d3b5mr6443235otr.285.1661113290092;
        Sun, 21 Aug 2022 13:21:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w16-20020a4a3550000000b00435785e7b49sm2158106oog.19.2022.08.21.13.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Aug 2022 13:21:29 -0700 (PDT)
Received: (nullmailer pid 1729131 invoked by uid 1000);
        Sun, 21 Aug 2022 20:21:26 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Device Tree <devicetree@vger.kernel.org>,
        arm-soc <arm@kernel.org>
In-Reply-To: <20220820194804.3352415-8-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch> <20220820194804.3352415-8-andrew@lunn.ch>
Subject: Re: [PATCH 07/11] DT: nand-controller: Reflect reality of marvell,orion-nand
Date:   Sun, 21 Aug 2022 15:21:26 -0500
Message-Id: <1661113286.917877.1729130.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Aug 2022 21:48:00 +0200, Andrew Lunn wrote:
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
> comparison can be made.
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
Documentation/devicetree/bindings/mtd/nand-controller.example.dtb:0:0: /example-0/nand-controller: failed to match any schema with compatible: ['bar']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

