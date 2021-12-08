Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60EFA46CCA4
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 05:42:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244256AbhLHEpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 23:45:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240064AbhLHEph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 23:45:37 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E235EC061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 20:42:05 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id 7so2420967oip.12
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 20:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=z2aGa9ea1fQKEBlxlZHZH2LZbqY+PGQN/EgiDfeUvZI=;
        b=kcrPIhVSCR/eug/X87zA7XxPJUgw5oUon7Hfau8KrUypzwXm3GmLeSh26M6Xqf74z2
         MYLQbEIkFPi3io56Cy5WdeUgH2Cgcsroh0EbwkxSaZXwg2lZp/zf1M4NcmoBkKhzdRZn
         k9bHJPR1WmNll4H8Ni7tsd7l0wQwMhhh35Foc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=z2aGa9ea1fQKEBlxlZHZH2LZbqY+PGQN/EgiDfeUvZI=;
        b=2Peh1Xln8MK6FUEhWeumKC0OjpH0iFFG54jSc/gz6ePe1JMl258mWN0wGKQSNgCbjk
         avQmnGMaro9TyuNVoCcniZnA2I7brPcxj2mlmCUPtYUAm/VRQrgb8r9GoTdzyRiwyKi0
         HuSW1lncz6asWlWdc/1Vu/LT5Ks7SfKDUjPdJL+EFA+anWsvcDh3Wr/TKy8XuUO8Ki/R
         PiJ5pfLeyfZUj++rk1tZSgpJIu2xOnyinAY8bdmwxKNvCq3lF0hw1a50Ik4vBu9AFEGW
         PqPcGBu47kdPAMug5yiEcrSxeAYWbgTcWbeTbi8R+CPzwJEzRi24g8c3Ze5JGL+IZtDu
         p7Rg==
X-Gm-Message-State: AOAM531Y/9HmpYlsWgWrVmx+PNMbliNQ7Oe8zeMWwcAFoke7YpygXYXK
        uVu5TdEFbqIveeTCEiddiDeHBO7+p1JhU4Xjo9nYgg==
X-Google-Smtp-Source: ABdhPJydPbyP8O5WMcKuKUG7MmFxq5NwKsvFIHMO4Xot01k2ixm8Z7KDay4g11U4GKhYH3TZwVwG85ABC5hPSq2Ejr4=
X-Received: by 2002:a05:6808:211f:: with SMTP id r31mr9369804oiw.64.1638938525227;
 Tue, 07 Dec 2021 20:42:05 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 7 Dec 2021 23:42:04 -0500
MIME-Version: 1.0
In-Reply-To: <20211208004311.3098571-5-gwendal@chromium.org>
References: <20211208004311.3098571-1-gwendal@chromium.org> <20211208004311.3098571-5-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 7 Dec 2021 23:42:04 -0500
Message-ID: <CAE-0n50Jz0qu+8tog3ex5K+LL4fBTxOxnM0u5TNq5E8M+kRNAQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] dt-bindings: iio: Add sx9324 binding
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Rob *crosses fingers*

Quoting Gwendal Grignou (2021-12-07 16:43:10)
> Similar to SX9310, add biddings to setup sx9324 hardware properties.
> SX9324 is a little different, introduce 4 phases to be configured in 2
> pairs over 3 antennas.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---
> Changes in v5:
> - Use consistent field naming, prefixed with phX.
>
> Changes in v4:
> - Use const instead of single enum
> - Specify ph0-pin better
> - Recopy type information for phX-pin
> - Fix cut and paste errors.
>
> Changes in v3:
> - Remove duplicate information.
> - Use intervals instead of enum.
> - Fix filter description.
>
> Changes in v2:
> - Fix interrupt documentation wording.
>
>  .../iio/proximity/semtech,sx9324.yaml         | 161 ++++++++++++++++++

Please add Rob for dt binding review. I'm not sure if the
semi-autonomous robot runs without Cc robh+dt

>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
>
> diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> new file mode 100644
> index 00000000000000..ac9581b0d31364
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/proximity/semtech,sx9324.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Semtech's SX9324 capacitive proximity sensor
> +
> +maintainers:
> +  - Gwendal Grignou <gwendal@chromium.org>
> +  - Daniel Campello <campello@chromium.org>
> +
> +description: |
> +  Semtech's SX9324 proximity sensor.
> +
> +properties:
> +  compatible:
> +    const: semtech,sx9324
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      Generated by device to announce preceding read request has finished
> +      and data is available or that a close/far proximity event has happened.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Main power supply
> +
> +  svdd-supply:
> +    description: Host interface power supply
> +
> +  "#io-channel-cells":
> +    const: 1
> +
> +  semtech,ph0-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: |
> +      Array of 3 entries. Index represent the id of the CS pin.
> +      Value indicates how each CS pin is used during phase 0.
> +      Each of the 3 pins have the following value -
> +      0 : unused (high impedance)
> +      1 : measured input
> +      2 : dynamic shield
> +      3 : grounded.
> +      For instance, CS0 measured, CS1 shield and CS2 ground is [1, 2, 3]
> +    items:
> +      enum: [ 0, 1, 2, 3 ]
> +    minItems: 3
> +    maxItems: 3
> +
> +  semtech,ph1-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: Same as ph0-pin for phase 1.
> +    items:
> +      enum: [ 0, 1, 2, 3 ]
> +    minItems: 3
> +    maxItems: 3
> +
> +  semtech,ph2-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: Same as ph0-pin for phase 2.
> +    items:
> +      enum: [ 0, 1, 2, 3 ]
> +    minItems: 3
> +    maxItems: 3
> +
> +  semtech,ph3-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: Same as ph0-pin for phase 3.
> +    items:
> +      enum: [ 0, 1, 2, 3 ]
> +    minItems: 3
> +    maxItems: 3
> +
> +
> +  semtech,ph01-resolution:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    enum: [8, 16, 32, 64, 128, 256, 512, 1024]
> +    description:
> +      Capacitance measurement resolution. For phase 0 and 1.
> +      Higher the number, higher the resolution.
> +    default: 128
> +
> +  semtech,ph23-resolution:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    enum: [8, 16, 32, 64, 128, 256, 512, 1024]
> +    description:
> +      Capacitance measurement resolution. For phase 2 and 3
> +    default: 128
> +
> +  semtech,startup-sensor:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    enum: [0, 1, 2, 3]
> +    default: 0
> +    description: |
> +      Phase used for start-up proximity detection.
> +      It is used when we enable a phase to remove static offset and measure
> +      only capacitance changes introduced by the user.
> +
> +  semtech,ph01-proxraw-strength:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    min: 0
> +    max: 7
> +    default: 1
> +    description:
> +      PROXRAW filter strength for phase 0 and 1. A value of 0 represents off,
> +      and other values represent 1-1/2^N.
> +
> +  semtech,ph23-proxraw-strength:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    min: 0
> +    max: 7
> +    default: 1
> +    description:
> +      Same as proxraw-strength01, for phase 2 and 3.

We could have a single property then that uses index 0 for phase 0 and 1
and index 1 for phase 2 and 3 if we're worried about them being
different between the two joined phases. Same comment applies to the
resolution.

> +
> +  semtech,avg-pos-strength:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    enum: [0, 16, 64, 128, 256, 512, 1024, 4294967295]
> +    default: 16
> +    description: |
> +      Average positive filter strength. A value of 0 represents off and
> +      UINT_MAX (4294967295) represents infinite. Other values
> +      represent 1-1/N.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#io-channel-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      proximity@28 {
> +        compatible = "semtech,sx9324";
> +        reg = <0x28>;
> +        interrupt-parent = <&pio>;
> +        interrupts = <5 IRQ_TYPE_LEVEL_LOW 5>;
> +        vdd-supply = <&pp3300_a>;
> +        svdd-supply = <&pp1800_prox>;
> +        #io-channel-cells = <1>;
> +        semtech,ph0-pin = <1, 2, 3>;
> +        semtech,ph1-pin = <3, 2, 1>;
> +        semtech,ph2-pin = <1, 2, 3>;
> +        semtech,ph3-pin = <3, 2, 1>;

The comma should be removed. Have you run 'make dt_binding_check'?

> +        semtech,ph01-resolution = 2;
> +        semtech,ph23-resolution = 2;
> +        semtech,startup-sensor = <1>;
> +        semtech,ph01-proxraw-strength = <2>;
> +        semtech,ph23-proxraw-strength = <2>;
> +        semtech,avg-pos-strength = <64>;
> +      };
> +    };
