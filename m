Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAF5A4EB6F3
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 01:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233414AbiC2Xph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 19:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbiC2Xph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 19:45:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CF6ADFDE7
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:43:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E952360C44
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 23:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C14CC36AE2
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 23:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648597432;
        bh=2nAUqSFanbBaaW6KEpWotDLeC5ACkBBVsF6/FqW2Izk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qhCaj9l9f0Pzx6MrI/e1AHjyMOSiyPsrnc9tojcaj0ifaiqWz4t6H848mpFpvPPxR
         gB0PX9XjrnMtw8UJsEYLBCZAprE5dqqvr8b/rwn4xE6uzVZLfxFJINMvm2e90vj/X/
         NqBgvceMBncJt/PEzgP1nUL+oaXnYquBKm/qVuNkkOleGb4OtoYCzfEzWWDxK3n3N6
         nYN6BawC6lXPgIb3L/6RFxM/fN472f5KBIJgpw9dUcx3Vp3inIf6MNDjUFauXyhQRz
         D6ry1MZZPYEyqg61sPDAYsN2+UQrpJbI7Rui0Qd4CFTaReZ55xee/RHYJQVPxM/kPj
         PI2UNWco+kRvg==
Received: by mail-ej1-f44.google.com with SMTP id bi12so38265218ejb.3
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:43:52 -0700 (PDT)
X-Gm-Message-State: AOAM53051kNwVrK5UntQxw19h3tq6kG6KK0aqa8e8eRI9gTf92iUg/qA
        bQu7UurPqEMrY59CVtKQkr/ts2ff2ogY+67FEA==
X-Google-Smtp-Source: ABdhPJykK9/0tOIVSYiSP0SL+Av110luJAmVEAGtAyxFHWow18L+iO2I9LkQzuu4zuZXp3BdXR+vXGvo5EUZkWbeewo=
X-Received: by 2002:a17:906:d204:b0:6d6:df17:835e with SMTP id
 w4-20020a170906d20400b006d6df17835emr36631070ejz.20.1648597430572; Tue, 29
 Mar 2022 16:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220329213519.801033-1-rui.silva@linaro.org> <20220329213519.801033-2-rui.silva@linaro.org>
In-Reply-To: <20220329213519.801033-2-rui.silva@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 29 Mar 2022 18:43:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLavmG2rtXL9EN86uhxYbhr7CbKj+43Ji7qRCKbAMu-bw@mail.gmail.com>
Message-ID: <CAL_JsqLavmG2rtXL9EN86uhxYbhr7CbKj+43Ji7qRCKbAMu-bw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 29, 2022 at 4:35 PM Rui Miguel Silva <rui.silva@linaro.org> wrote:
>
> Convert the smsc lan91c9x and lan91c1xx controller device tree
> bindings documentation to json-schema.
>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/net/smsc,lan91c111.yaml          | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> new file mode 100644
> index 000000000000..5976f4fa4a80
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/smsc,lan91c111.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Smart Mixed-Signal Connectivity (SMSC) LAN91C9x/91C1xx Controller
> +
> +maintainers:
> +  - Nicolas Pitre <nico@fluxnic.net>
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: smsc,lan91c111
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg-shift: true
> +
> +  reg-io-width:
> +    enum: [ 1, 2, 4 ]
> +    default: 2
> +
> +  reset-gpios:
> +    description: GPIO connected to control RESET pin
> +    maxItems: 1
> +
> +  power-gpios:
> +    description: GPIO connect to control PWRDEWN pin
> +    maxItems: 1
> +
> +  pxa-u16-align4:
> +    description: put in place the workaround the force all u16 writes to be
> +      32 bits aligned
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: true

This is only allowed on incomplete, common schemas. Instead use:

unevaluatedProperties: false

As that allows for properties defined in ethernet-controller.yaml.

> +
> +examples:
> +  - |
> +    ethernet@4010000 {
> +          compatible = "smsc,lan91c111";
> +          reg = <0x40100000 0x10000>;
> +          phy-mode = "mii";
> +          interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +          reg-io-width = <2>;
> +    };
> --
> 2.35.1
>
