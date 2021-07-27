Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EED853D7832
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 16:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236723AbhG0OLf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 10:11:35 -0400
Received: from mail.kernel.org ([198.145.29.99]:56354 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236591AbhG0OLd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 10:11:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8ABAC61AE3
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 14:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627395093;
        bh=VpJMplRVrFvOTow2w64OsoH5oa6qz6cIKOQJRWZNjNo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=QGCjH49MSo58hCd4AAdQ4FDbEq9v17Hs2Jx+2yDo5Js89qNkyaNA8yJfwO4BsUcSK
         +G1zEOXHUd7kcCgpTWjRxIZ6w1FvOrVactSq2RQnhBz8kBXgcWbvLVLJJKgYP8tL1W
         J+MUsK+bB1RNNQ9umodMaokqDBnY52S/n8vKFlDDulK/BL/c0pjw2JfBKj/PJx1u+I
         ABs7f+uoqDT3iK6Ono8qV1cevKeYjKne4hUB7ukFWtLImzIb1yfwOClj7083yYDyvJ
         NiRqlT9vuCX00pYMfoIvwmpx4uSP1YEsn5fg7IMqkzhk0u3hx9gUnEXdLgT6s4etiE
         2uTkxwMaJZWHA==
Received: by mail-ej1-f48.google.com with SMTP id go31so8526370ejc.6
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 07:11:33 -0700 (PDT)
X-Gm-Message-State: AOAM531979KX+ZD6zX0uk4dWN9cT36Qn8PY/UbEdObDMeYcl6zvfoa/O
        ZBR8NsVUrLvmgnbupKoTob+Hv887mKgdug57rQ==
X-Google-Smtp-Source: ABdhPJyKtVuL7tdBzksPqst7LgiYnlIMeoTC6m38eEyC8piWIsBkOSn+PaYUKIyqF3Nlta4d/Oum8Bpmkr9DQKdlajI=
X-Received: by 2002:a17:906:b750:: with SMTP id fx16mr15651177ejb.108.1627395092122;
 Tue, 27 Jul 2021 07:11:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210727080721.2619791-1-linus.walleij@linaro.org>
In-Reply-To: <20210727080721.2619791-1-linus.walleij@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 27 Jul 2021 08:11:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL=zCuFZw7n1hrG36SvumsudgkUrpDJaY4UGjvmGi-9pw@mail.gmail.com>
Message-ID: <CAL_JsqL=zCuFZw7n1hrG36SvumsudgkUrpDJaY4UGjvmGi-9pw@mail.gmail.com>
Subject: Re: [PATCH 1/2 v3] bus: ixp4xx: Add DT bindings for the IXP4xx
 expansion bus
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 27, 2021 at 2:09 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This adds device tree bindings for the IXP4xx expansion bus controller.
>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Add syscon as second compatible. The device contains a set
>   of misc registers apart from the chip select control.
> - Add required "native-endianness" flag on the node and describe
>   why.
> - Change bool flags into enum [0, 1]. The reason is that we
>   need to be able to indicate clearly that we want an option to
>   be zeroed as the OS will read/modify/write the config from the
>   bootloader/power-on-defaults which sometimes means disabling
>   things that would only be possibel to turn on with flags.
> ChangeLog v1->v2:
> - Drop unevaluatedProperties: false from the node match.
>   additionalProperties: true will be the default.
> ---
>  ...intel,ixp4xx-expansion-bus-controller.yaml | 168 ++++++++++++++++++
>  1 file changed, 168 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
>
> diff --git a/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> new file mode 100644
> index 000000000000..bd569670bca9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> @@ -0,0 +1,168 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/intel,ixp4xx-expansion-bus-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel IXP4xx Expansion Bus Controller
> +
> +description: |
> +  The IXP4xx expansion bus controller handles access to devices on the
> +  memory-mapped expansion bus on the Intel IXP4xx family of system on chips,
> +  including IXP42x, IXP43x, IXP45x and IXP46x.
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  $nodename:
> +    pattern: '^bus@[0-9a-f]+$'
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - intel,ixp42x-expansion-bus-controller
> +          - intel,ixp43x-expansion-bus-controller
> +          - intel,ixp45x-expansion-bus-controller
> +          - intel,ixp46x-expansion-bus-controller
> +      - const: syscon
> +
> +  reg:
> +    description: Control registers for the expansion bus, these are not
> +      inside the memory range handled by the expansion bus.
> +    maxItems: 1
> +
> +  native-endian:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: The IXP4xx has a peculiar MMIO access scheme, as it changes
> +      the access pattern for words (swizzling) on the bus depending on whether
> +      the SoC is running in big-endian or little-endian mode. Thus the
> +      registers must always be accessed using native endianness.
> +
> +  "#address-cells":
> +    description: |
> +      The first cell is the chip select numer.

typo

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>
