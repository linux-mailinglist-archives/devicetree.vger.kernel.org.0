Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15A114CD7C3
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 16:29:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240103AbiCDP3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 10:29:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237248AbiCDP3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 10:29:51 -0500
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88AE11B7609
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 07:29:03 -0800 (PST)
Received: by mail-oo1-f49.google.com with SMTP id h16-20020a4a6f10000000b00320507b9ccfso9746593ooc.7
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 07:29:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=J5ioJmCSVVWCtbo+u6o5MHD3cE9Z/JYc9eT4jBLaSTU=;
        b=pxPkVF3SImKZ6IpP3tIOnHiHsMZg6J7EvnnME2i38H4sqIBTZapknM7U+Bjg/MKq7K
         gxHnm+FxKFhHB93gruB6qLoZhzu0Ac4KHWLhTpURs6gosSlH22nVxWrS4dMazQGxFsz6
         O/ZI0pGvPhtL/l5jKWFkvaefS5MsbqVrsAVk+8IsEsOhbGaSKkWoQwvq/dfPpNDCuk0N
         gsHcrzCQFhJBXXDQlO2Eng5iBUqlLlW5mEUfHsOANK0v5k91tl/3pnuCUq9SIoXtDPyJ
         S3kUexfNwSihQwkNj+bIrWxVIHHV7lSkvkwPBNBigDK+T0jsu6qIpnm66dBeEj6788dg
         xi3w==
X-Gm-Message-State: AOAM532PS90qaS7zNkhOHWWXWIHpMAD2QdBtonJi/Q5zNLdPqV2qgPuQ
        Nw+WVBppcr51S+RGcIR7qw==
X-Google-Smtp-Source: ABdhPJxuZOHatViaL6tiAhK4OShzYUiPIoRUY4TN0tNXWjvpW9YkoKjUjPortO9oOaQCOPdVHFxMNg==
X-Received: by 2002:a05:6870:a406:b0:d9:b303:7dc2 with SMTP id m6-20020a056870a40600b000d9b3037dc2mr6864276oal.23.1646407742846;
        Fri, 04 Mar 2022 07:29:02 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e3-20020a056870c34300b000d9d83493bfsm590564oak.8.2022.03.04.07.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 07:29:02 -0800 (PST)
Received: (nullmailer pid 3970571 invoked by uid 1000);
        Fri, 04 Mar 2022 15:29:01 -0000
From:   Rob Herring <robh@kernel.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Linus Walleij <linus.walleij@linaro.org>
In-Reply-To: <20220304000311.970267-3-joel@jms.id.au>
References: <20220304000311.970267-1-joel@jms.id.au> <20220304000311.970267-3-joel@jms.id.au>
Subject: Re: [PATCH v2 2/2] dt-bindings: gpu: Convert aspeed-gfx bindings to yaml
Date:   Fri, 04 Mar 2022 09:29:01 -0600
Message-Id: <1646407741.272520.3970570.nullmailer@robh.at.kernel.org>
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

On Fri, 04 Mar 2022 10:33:11 +1030, Joel Stanley wrote:
> Convert the bindings to yaml and add the ast2600 compatible string.
> 
> The legacy mfd description was put in place before the gfx bindings
> existed, to document the compatible that is used in the pinctrl
> bindings.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
>  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
>  .../devicetree/bindings/mfd/aspeed-gfx.txt    | 17 -----
>  3 files changed, 69 insertions(+), 58 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
>  delete mode 100644 Documentation/devicetree/bindings/mfd/aspeed-gfx.txt
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1600723


display@1e6e6000: 'memory-region' is a required property
	arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-opp-zaius.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-supermicro-x11spi.dt.yaml

