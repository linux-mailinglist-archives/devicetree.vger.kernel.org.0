Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23EA9699675
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 14:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjBPN64 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 08:58:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjBPN6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 08:58:55 -0500
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E8926AF
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:58:54 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id w11so1727156oiv.5
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:58:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+ViCQNNU/x441WaeFAdW3KxGJXeuOAm5VDmC6mRNH38=;
        b=MIcO2RrCgFwxF+/J+nYnZurm0Gu2nZ3OPXM008ZS5od4xGUoeXJ76BJcN0GLQOKdBN
         vbEnACVOr3koHPvyGAN3SdoGWdsNx/c1VL+iVWOmtJmQyTb7bBFb4o+rS2vbVY2Pww7z
         1kV5PLjBi5gBp8qh0j8dCnHBGv4U4Z4Hz2+0qR8xk3ubqOwPR2NOYI0Jd0Ij63+GBI/s
         rZLRxwCVeBiwwB07/dhPGp9y9tBTUL/oHTcC/4R1Mohbs4TQ+//asBH1nxm/i+2TLzWb
         GbVRbhow8pDEgmAqctnkYoXFYtqI5hqSRUuxvOjg/EWiVU1+T7ZsHAzWarQjk8mT0qFS
         PDHA==
X-Gm-Message-State: AO0yUKXwJUsA81AhRuUUfnicAQBRj9NqNeunvdWxqPkP1oYDeJNeIdx6
        ZduuqbU0cWbOiqF6ZxUTVQ==
X-Google-Smtp-Source: AK7set9+niocv5iHjmV2FG/y98pgRCFH2p2yv+ry0Fn7siDHXOUJyBElG7qV3ToHWtp0pb59Wz8ocA==
X-Received: by 2002:aca:1e0f:0:b0:364:f5da:54b7 with SMTP id m15-20020aca1e0f000000b00364f5da54b7mr2478772oic.36.1676555934095;
        Thu, 16 Feb 2023 05:58:54 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n23-20020aca2417000000b0037d8dbe4308sm546196oic.48.2023.02.16.05.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 05:58:53 -0800 (PST)
Received: (nullmailer pid 2312585 invoked by uid 1000);
        Thu, 16 Feb 2023 13:58:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i3c@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Vitor Soares <ivitro@gmail.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>
In-Reply-To: <82d750f53df622d8986e9a07053c7ee27dee61a2.1676532146.git.jk@codeconstruct.com.au>
References: <cover.1676532146.git.jk@codeconstruct.com.au>
 <82d750f53df622d8986e9a07053c7ee27dee61a2.1676532146.git.jk@codeconstruct.com.au>
Message-Id: <167655476600.2292444.1311837457935007933.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: i3c: Add AST2600 i3c controller
Date:   Thu, 16 Feb 2023 07:58:52 -0600
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 16 Feb 2023 15:41:52 +0800, Jeremy Kerr wrote:
> Add a devicetree binding for the ast2600 i3c controller hardware. This
> is heavily based on the designware i3c core, plus a reset facility
> and two platform-specific properties:
> 
>  - sda-pullup-ohms: to specify the value of the configurable pullup
>    resistors on the SDA line
> 
>  - aspeed,global-regs: to reference the (ast2600-specific) i3c global
>    register block, and the device index to use within it.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> 
> ---
> changes from RFC:
>  - add vendor prefix to global-regs properties
>  - add item description on global-regs property
>  - drop global reg node from example
> ---
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.example.dts:30.31-32 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:434: Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1508: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/82d750f53df622d8986e9a07053c7ee27dee61a2.1676532146.git.jk@codeconstruct.com.au

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

