Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 508F7694A65
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 16:09:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjBMPJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 10:09:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231489AbjBMPJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 10:09:47 -0500
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A6A4232
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:09:46 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id b9so5125618ila.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:09:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LTZfJmfMcujhNKLGLoEwVmdMPFYjexvLBhWg/YGsbfM=;
        b=uxpfSFbUmg9RobyrjYPo0rRkjl5Hdv1+Fdevxgi1xc7QVph5xE0/WOq3q/yJSgg/PC
         Q8w19K0QGTkX8CZElu9yUNU2zlRPgk5tBOGENLdrqir+UuvoVLrfB7YJ/djXs7cBf/jt
         b8HGbEF//MWdxVyK2b88QMFoM7KnHVDWug1U365bJwopoHMlHan4hIHBVzf8e9IgQzWv
         R8wdLb6ziVI4ViRyxGjz5X08+1FGJh1FLF6pHvc7d3PN2DXheDl+hixXnjsesztzLBcb
         umgYcMf0OoNr0zB07bNyYnqg9YdJcKkiBXkHKS+6F4Dj4jDQ3qDHmrIR117+Ji48pqKw
         XWwg==
X-Gm-Message-State: AO0yUKXgbAAtvXvZRDDRidYIDZ+RAOuCBrFHE5a0uS5SF5aYmtrGX5Ux
        39qCc+di6m2my979QNvLpOnwvaqkIw==
X-Google-Smtp-Source: AK7set9GJakT0VAo6Ha4wp16ihDld2jGVNlZAeO8dCGg80o4dGpH05cwMWfC69+yzHtrLzrIGtdJQg==
X-Received: by 2002:a05:6e02:1b81:b0:315:2d37:993 with SMTP id h1-20020a056e021b8100b003152d370993mr9906162ili.3.1676300985739;
        Mon, 13 Feb 2023 07:09:45 -0800 (PST)
Received: from robh_at_kernel.org (c-73-14-99-67.hsd1.co.comcast.net. [73.14.99.67])
        by smtp.gmail.com with ESMTPSA id h26-20020a02c73a000000b00389d02a032dsm4014411jao.172.2023.02.13.07.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 07:09:45 -0800 (PST)
Received: (nullmailer pid 11615 invoked by uid 1000);
        Mon, 13 Feb 2023 15:09:41 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-aspeed@lists.ozlabs.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        devicetree@vger.kernel.org, Dylan Hung <dylan_hung@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-i3c@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>
In-Reply-To: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
Message-Id: <167630051588.6318.13648503218765402981.robh@kernel.org>
Subject: Re: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
Date:   Mon, 13 Feb 2023 09:09:41 -0600
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 13 Feb 2023 15:41:52 +0800, Jeremy Kerr wrote:
> This change adds a devicetree binding for the ast2600 i3c controller
> hardware. This is heavily based on the designware i3c hardware, plus a
> reset facility and two platform-specific properties:
> 
>  - sda-pullup-ohms: to specify the value of the configurable pullup
>    resistors on the SDA line
> 
>  - global-regs: to reference the (ast2600-specific) i3c global register
>    block, and the device index to use within it.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> ---
> RFC: the example in this depends on some not-yet-accepted patches for
> the clock and reset linkages:
> 
>   https://lore.kernel.org/linux-devicetree/cover.1676267865.git.jk@codeconstruct.com.au/T/
> 
> I'm also keen to get some review on the pullup configuration too.
> 
> ---
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

