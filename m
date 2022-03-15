Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC0C4D913B
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 01:24:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239747AbiCOAZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 20:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239663AbiCOAZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 20:25:27 -0400
Received: from mail-vk1-xa29.google.com (mail-vk1-xa29.google.com [IPv6:2607:f8b0:4864:20::a29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E4573C720
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:24:16 -0700 (PDT)
Received: by mail-vk1-xa29.google.com with SMTP id h10so9168500vkn.4
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9+FOSvDg+ZUh5vunVEqGtFAxwPurKxeLhtmDXEkBmug=;
        b=OkbxfUcCvuK0TIeWEhVllcozSpDI+atGFo1gj7JDGcq7W/bia8MXWEnCfQbkKBF6NL
         nTPUUorDchFrNA5oATz4P5IbFvCHKqp6D61Hfor5tDNi/RjsQf3FPVrfqERdCy6+2DHE
         Zwyi+cOw/B7l0+TvugAGX8IRU7395eDn22VUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9+FOSvDg+ZUh5vunVEqGtFAxwPurKxeLhtmDXEkBmug=;
        b=65BxN6ZYiv3//IsmI43ft0mXq/fpJydqKE9c4Xu7JJzqSvV2M5pit7sTnD2tpSdB91
         buSsM5UsfZrSAGvijjshAh5bOn5F/8lKLXfZw17xg24CUIZ0OdE0Dgh70zmAC1VVpUYg
         Uc/KHmqUaZWi8AlbvBVwjXHJcvqM5Oxu+Rf5N1bX7rXh4TheMwFI3t+4r6WAVARa9b3C
         dyLLi2ki4GpJuAKb+4JNgwcEAIALgmIuyFjSi3v1PlIlU/7dkNN2Fm0Uuez5bb3vgPzm
         jeKOeB9ht6ApWtwhjKxyUIfMe0ovIdWNns7EVeR39Alx7+2pI9Riy6SvHvBNYlCTxGEl
         4AwA==
X-Gm-Message-State: AOAM532NTKxTeijtnzo/H0WP76gKMCLLjbHGXV0dVXaVSlWDaiuWuSzU
        BsBILrdVjUkBD4UMQZO6NDjD/qmy+NXPkQ==
X-Google-Smtp-Source: ABdhPJxlCyDsoRrplmvUkce3zAj/obPR2eyMCF9TAUbbYPDHhoQWx2sIPVvs8EaFy2JlqVInaPDe7w==
X-Received: by 2002:a05:6122:983:b0:337:efa6:156a with SMTP id g3-20020a056122098300b00337efa6156amr10282716vkd.23.1647303855305;
        Mon, 14 Mar 2022 17:24:15 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id d25-20020ab01099000000b0034a439c29c5sm2553095uab.12.2022.03.14.17.24.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 17:24:14 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id x19so704671uaf.1
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:24:14 -0700 (PDT)
X-Received: by 2002:ab0:67d7:0:b0:345:6bac:4f15 with SMTP id
 w23-20020ab067d7000000b003456bac4f15mr9498820uar.43.1647303854018; Mon, 14
 Mar 2022 17:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220314232214.4183078-1-swboyd@chromium.org> <20220314232214.4183078-2-swboyd@chromium.org>
In-Reply-To: <20220314232214.4183078-2-swboyd@chromium.org>
From:   Alexandru M Stan <amstan@chromium.org>
Date:   Mon, 14 Mar 2022 17:23:38 -0700
X-Gmail-Original-Message-ID: <CAHNYxRwFYBbgxUqz79jYXbDxSd-r+NdHWQPucEyuNK83U577xw@mail.gmail.com>
Message-ID: <CAHNYxRwFYBbgxUqz79jYXbDxSd-r+NdHWQPucEyuNK83U577xw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Benson Leung <bleung@chromium.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        chrome-platform@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 14, 2022 at 4:22 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Add a binding to describe the fingerprint processor found on Chromeboks
> with a fingerprint sensor.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Craig Hesling <hesling@chromium.org>
> Cc: Tom Hughes <tomhughes@chromium.org>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
>
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> new file mode 100644
> index 000000000000..05d2b2b9b713
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/google,cros-ec-fp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ChromeOS Embedded Fingerprint Controller
> +
> +description:
> +  Google's ChromeOS embedded fingerprint controller is a device which
> +  implements fingerprint functionality such as unlocking a Chromebook
> +  without typing a password.
> +
> +maintainers:
> +  - Tom Hughes <tomhughes@chromium.org>
> +
> +properties:
> +  compatible:
> +    const: google,cros-ec-fp
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 3000000
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: reset signal (active low).
> +
> +  boot0-gpios:
> +    maxItems: 1
> +    description: boot signal (low for normal boot; high for bootloader).
Maybe add "active high, same polarity as the fpmcu sees physically".

> +  vdd-supply:
> +    description: Power supply for the fingerprint controller.
> +
> +  google,cros-ec-spi-pre-delay:
> +    description:
> +      This property specifies the delay in usecs between the
> +      assertion of the CS and the first clock pulse.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - default: 0
> +      - minimum: 0
> +
> +  google,cros-ec-spi-msg-delay:
> +    description:
> +      This property specifies the delay in usecs between messages.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - default: 0
> +      - minimum: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - reset-gpios
> +  - boot0-gpios
> +  - vdd-supply
> +  - spi-max-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +      #address-cells = <0x1>;
> +      #size-cells = <0x0>;
> +      ec@0 {
> +        compatible = "google,cros-ec-fp";
> +        reg = <0>;
> +        interrupt-parent = <&gpio_controller>;
> +        interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> +        spi-max-frequency = <3000000>;
> +        google,cros-ec-spi-msg-delay = <37>;
> +        google,cros-ec-spi-pre-delay = <5>;
> +        reset-gpios = <&gpio_controller 5 GPIO_ACTIVE_LOW>;
> +        boot0-gpios = <&gpio_controller 10 GPIO_ACTIVE_LOW>;
This should say GPIO_ACTIVE_HIGH, since there's no inverting going on
either with a real inverter, or the convention (of 'N' being in the
pin name).

It might be easier to reason about if there's no invesion going for this signal.

Consider it like an enum instead of a verb (unlike active_low
reset-gpios which can be considered: in reset if it's set):

enum boot0 {
        normal = 0,
        bootloader = 1,
};

> +        vdd-supply = <&pp3300_fp_mcu>;
> +      };
> +    };
> +...
> --
> https://chromeos.dev
>
--
Alexandru Stan (amstan)
