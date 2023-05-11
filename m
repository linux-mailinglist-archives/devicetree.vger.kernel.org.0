Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBD756FF553
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 16:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238061AbjEKO7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 10:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238132AbjEKO7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 10:59:30 -0400
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51523D053
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 07:59:03 -0700 (PDT)
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-44fc0b53a8aso5376654e0c.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 07:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1683817138; x=1686409138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpO6U7Z1mcKtQslpBIHzR8nzCY5JK29I5far4gQgMlo=;
        b=kKN3/B2JbJVf5rKF4ZI6Zg9LF1s3E60sEfHVHP9UbUqP9yq81zQWR60MUMAJ4fAfjN
         Gel8g1Xnxi5hayYrGVJI40UDFzephMAweqGfKfUYQBSTsicEj2WmtQ15Rg2DjcVLV/ld
         NaoHkM6cRUtI/ikfsF7kNKqRQEFLtO7xLZQLhCRJr/FqGZFoO38bZJsHlKmPZGs8Bik9
         jREETS8YKz8fyWWk0OsvFSm22XIOIIuwCKzo+5kZdjzIULNACR10MRIn0DBvrzPKpDCQ
         kwL2St4jWiYuFot2AnULe5bPxqNQGH/B5ovtEXrDZEfkRVNN4ZlS2lx8ZoTgaWefQNc6
         LplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683817138; x=1686409138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VpO6U7Z1mcKtQslpBIHzR8nzCY5JK29I5far4gQgMlo=;
        b=VgOmLVK7jGqhPBrPf9Vi4E9PEjkbaiPCaL48YMgWzCaReMFkhCulh+UQ6QoD2Y198M
         t0AHVOBgnM5IhaE2Np9M2Ua+lta0UDfH5nPlWjTJ8ZOI87whD8ik/Be8VYHytwAH0cGZ
         lYaMxJdKa7L2Zlr7QZ9f304lgLnJT7DpOYAPgdFnVnuJIfIYvErn54d8ajDlLLb//DtE
         w0QkQl/Pi4eOJDWhnnbZbHDWnQNUElWHBcmoIljX62L7Z+98gq70ofpqbd7FWmraTgns
         vvDKHyiHSqHgToSuDrfDYRULLHqpUpAwWtROMY9le9y7NDoWgIOV6RCTPI3uU8JgjeV5
         X1dw==
X-Gm-Message-State: AC+VfDy2PhwhVtnB7i6W7wjGkUGP/rIz4r1liBIjOoT+pZg7FyTOZ2Hx
        9pSVRmivG9x0Uc1eGttmbtc7SWK1HiQfOpuaUZyefw==
X-Google-Smtp-Source: ACHHUZ7MMZXbQEYaI0ke/9+cA4R2GurFJnuqHXbPsB3wyk49ZXE7ZZzuwXH49+QFkWCEgSBps0X9X5IGzCMlfeGTxTU=
X-Received: by 2002:a1f:c905:0:b0:43f:c280:c10b with SMTP id
 z5-20020a1fc905000000b0043fc280c10bmr8367140vkf.7.1683817138527; Thu, 11 May
 2023 07:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230426-stmpe-dt-bindings-v4-0-36fdd53d9919@linaro.org> <20230426-stmpe-dt-bindings-v4-1-36fdd53d9919@linaro.org>
In-Reply-To: <20230426-stmpe-dt-bindings-v4-1-36fdd53d9919@linaro.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 11 May 2023 16:58:47 +0200
Message-ID: <CAMRc=MdsBiV3AvzSPtCuR58w0N9z7o+hUrBDtXUC4a++pECb8w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio: Convert STMPE GPIO to YAML schema
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee@kernel.org>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 8, 2023 at 2:35=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> This rewrites the STMPE GPIO bindings to a YAML schema.
>
> We add the properties that are used in the widely used
> STMPE GPIO device nodes found in the wild, most notably
> interrupt support, so interrupt-cells and
> interrupt-controller is now part of the bindings.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v3->v4:
> - Realize that there were actually some old bindings so we
>   need to get rid of them as part of this patch.
> - Fix blank lines after description: keyword.
> ChangeLog v2->v3:
> - Use a compact hog node schema backed by the standard hog
>   schema.
> ChangeLog v1->v2:
> - New patch split off from the MFD patch.
> ---
>  .../devicetree/bindings/gpio/gpio-stmpe.txt        | 17 -------
>  .../devicetree/bindings/gpio/st,stmpe-gpio.yaml    | 53 ++++++++++++++++=
++++++
>  2 files changed, 53 insertions(+), 17 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-stmpe.txt b/Docu=
mentation/devicetree/bindings/gpio/gpio-stmpe.txt
> deleted file mode 100644
> index b33f8f02c0d7..000000000000
> --- a/Documentation/devicetree/bindings/gpio/gpio-stmpe.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -STMPE gpio
> -----------
> -
> -Required properties:
> - - compatible: "st,stmpe-gpio"
> -
> -Optional properties:
> - - st,norequest-mask: bitmask specifying which GPIOs should _not_ be req=
uestable
> -   due to different usage (e.g. touch, keypad)
> -
> -Node should be child node of stmpe node to which it belongs.
> -
> -Example:
> -       stmpe_gpio {
> -               compatible =3D "st,stmpe-gpio";
> -               st,norequest-mask =3D <0x20>;     //gpio 5 can't be used
> -       };
> diff --git a/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml b/=
Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
> new file mode 100644
> index 000000000000..22c0cae73425
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/st,stmpe-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectonics Port Expander (STMPE) GPIO Block
> +
> +description:
> +  STMicroelectronics Port Expander (STMPE) is a series of slow
> +  bus controllers for various expanded peripherals such as GPIO, keypad,
> +  touchscreen, ADC, PWM or rotator. It can contain one or several differ=
ent
> +  peripherals connected to SPI or I2C. These bindings pertain to the
> +  GPIO portions of these expanders.
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: st,stmpe-gpio
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  gpio-controller: true
> +
> +  interrupt-controller: true
> +
> +  st,norequest-mask:
> +    description:
> +      A bitmask of GPIO lines that cannot be requested because for
> +      for example not being connected to anything on the system
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +patternProperties:
> +  "^.+-hog(-[0-9]+)?$":
> +    type: object
> +
> +    required:
> +      - gpio-hog
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - "#gpio-cells"
> +  - "#interrupt-cells"
> +  - gpio-controller
> +  - interrupt-controller
>
> --
> 2.34.1
>

Applied, thanks!

Bart
