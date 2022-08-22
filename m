Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD72F59CA5B
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 22:49:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231720AbiHVUtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 16:49:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231665AbiHVUtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 16:49:49 -0400
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A0410541
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:49:47 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id l5-20020a05683004a500b0063707ff8244so8503960otd.12
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=oQHOZMqVKnp2W2sw8n9L4xzk5Lz5acnoKChWoewOWxk=;
        b=xRs8lveKoGO+FRXJ+CeUFWotOjqupT/8VshP5qNuiFqP0s6xIrbWge/EvlmKlDht6c
         bVrF5aUJwf9RZ0z77Zwa4Hi8BaJd9m0VzYyNfLlFpJsmTL+0yivJlr2AdSXOLluuF26m
         hRXddHE3hlBV+rREn92F+CBVm+sQNvpcWKKV2BHDcrmYgkECv6xqcMMKa98K2I+kU5GT
         2892onnKz4YabG9d1hIQrRnv7Bf2A7ujgQ/V23oj1/ijdGFIX5D8JESpQaBNfg63Wkip
         7ZYzUMhVcqBV9K/5JBitPoJg/tae+vsf+p7HAmVaculLHoJciV5vScuuFgmtMCIJiVcH
         ke/Q==
X-Gm-Message-State: ACgBeo1M3CcWDvkKFJINGadVtyfuiogO4eLgcIPZ+e9XpjNO7c6DvXvg
        LTPMsdbL7jc27arRDzIcnSUNTg9qbg==
X-Google-Smtp-Source: AA6agR6jplfhaSFsNh/QvVDJ+gvb+o5+YCh/zBpAbdj/UTXjs0RZ6C0X1FXVa+4u8qa9CGfhwjjwsA==
X-Received: by 2002:a05:6830:1699:b0:637:1f6c:f9eb with SMTP id k25-20020a056830169900b006371f6cf9ebmr8577777otr.17.1661201386971;
        Mon, 22 Aug 2022 13:49:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b23-20020a056830105700b006373175cde0sm3192150otp.44.2022.08.22.13.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 13:49:46 -0700 (PDT)
Received: (nullmailer pid 810702 invoked by uid 1000);
        Mon, 22 Aug 2022 20:49:45 -0000
Date:   Mon, 22 Aug 2022 15:49:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 01/11] DT: RTC: orion-rtc: Convert to YAML
Message-ID: <20220822204945.GA808626-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-2-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820194804.3352415-2-andrew@lunn.ch>
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

On Sat, Aug 20, 2022 at 09:47:54PM +0200, Andrew Lunn wrote:
> Covert the text description to YAML. The clock is optional, Orion5x
> based boards don't have it, but kirkwood should.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../bindings/rtc/marvell,orion-rtc.yaml       | 48 +++++++++++++++++++
>  .../devicetree/bindings/rtc/orion-rtc.txt     | 18 -------
>  2 files changed, 48 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/rtc/orion-rtc.txt
> 
> diff --git a/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml b/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
> new file mode 100644
> index 000000000000..d240e67a4555
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/marvell,orion-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MVEBU Orion RTC Device Tree Bindings

Drop 'Device Tree Bindings'

Same on the rest.

> +
> +allOf:
> +  - $ref: "rtc.yaml#"
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - marvell,orion-rtc
> +      - items:
> +          - enum:
> +              - marvell,kirkwood-rtc
> +          - const: marvell,orion-rtc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    rtc@10300 {
> +        compatible = "marvell,orion-rtc";
> +        reg = <0xd0010300 0x20>;
> +        interrupts = <50>;
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/rtc/orion-rtc.txt b/Documentation/devicetree/bindings/rtc/orion-rtc.txt
> deleted file mode 100644
> index 3bf63ffa5160..000000000000
> --- a/Documentation/devicetree/bindings/rtc/orion-rtc.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -* Mvebu Real Time Clock
> -
> -RTC controller for the Kirkwood, the Dove, the Armada 370 and the
> -Armada XP SoCs
> -
> -Required properties:
> -- compatible : Should be "marvell,orion-rtc"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- interrupts: IRQ line for the RTC.
> -
> -Example:
> -
> -rtc@10300 {
> -        compatible = "marvell,orion-rtc";
> -        reg = <0xd0010300 0x20>;
> -        interrupts = <50>;
> -};
> -- 
> 2.37.2
> 
> 
