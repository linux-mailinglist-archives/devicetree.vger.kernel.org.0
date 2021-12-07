Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 165B046C1E6
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 18:35:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235281AbhLGRi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 12:38:57 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:45844 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbhLGRi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 12:38:56 -0500
Received: by mail-ot1-f51.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso18962066otf.12
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 09:35:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=evQCwdaP2y5SAVzbZM5yHp44AqB58AFRWcJm7u9Fgns=;
        b=pegj8RyPGcHVbM5sWNM/GlzZ8X+6ZcfSs38MCWtEuJ3nqcxe722kprKFW+eMVmNDEA
         EyLTfCVgtXJQ+DFTr4QsxZ0mN+CVUcEe7E7vepN82j9N9YwEa2iBhgreIpI8/DIgBBuW
         D4ZDv20KadbYrT6JcBR/uZP5eREbHwEzRVlls2oBZK34pbbiFgGEnrelWpRqPC3t99FD
         HKIL3y//QRdQONhxEt8QBScUDWzZjjpaNzR79zn7GTy0uZVrbIP/PR+pybb2shwCp8Ax
         xPf133OmPVl0rJEXf8YbiRx5Mk9BekWOesFN6GRPZeJyHRMIHN9mAjBnWlngPQUD8bzl
         R6pQ==
X-Gm-Message-State: AOAM5325PbgiystXivTtIrF82idH6TL2aEn7wickB2uqyvXgrOM4bAAm
        cLOxBLwP0C3xkWJOwSWAAS1ymcUuGA==
X-Google-Smtp-Source: ABdhPJz7gUdeAkJ3KsOMCfUi8L5o+QdYvS5nCcBJk2mDneUo7vRG73k9G/g68+96JlYwvI/dKfu2Eg==
X-Received: by 2002:a05:6830:148c:: with SMTP id s12mr36188760otq.105.1638898525717;
        Tue, 07 Dec 2021 09:35:25 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id a3sm37157oti.29.2021.12.07.09.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 09:35:25 -0800 (PST)
Received: (nullmailer pid 519632 invoked by uid 1000);
        Tue, 07 Dec 2021 17:35:23 -0000
Date:   Tue, 7 Dec 2021 11:35:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [RESEND, PATCH v6 1/2] dt-bindings: sound: tlv320adc3xxx: New
 codec driver
Message-ID: <Ya+bW3zVcac99FbZ@robh.at.kernel.org>
References: <alpine.DEB.2.21.2112011603080.30606@lnxricardw1.se.axis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.21.2112011603080.30606@lnxricardw1.se.axis.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 01, 2021 at 04:09:17PM +0100, Ricard Wanderlof wrote:
> 
> DT bindings for tlv320adc3xxx driver, currently supporting

Bindings are not for a driver, but h/w components.

> Texas Instruments TLV320ADC3001 and TLV320ADC3101 audio ADCs.
> 
> Signed-off-by: Ricard Wanderlof <ricardw@axis.com>
> ---
> �.../bindings/sound/ti,tlv320adc3xxx.yaml����� | 137 ++++++++++++++++++
> �include/dt-bindings/sound/tlv320adc3xxx.h���� |� 28 ++++
> �2 files changed, 165 insertions(+)
> �create mode 100644
> Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
> �create mode 100644 include/dt-bindings/sound/tlv320adc3xxx.h
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
> b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
> new file mode 100644
> index 000000000000..c4fed6335230
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
> @@ -0,0 +1,137 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,tlv320adc3xxx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TLV320ADC3001/TLV320ADC3101 Stereo ADC
> +
> +maintainers:
> +� - Ricard Wanderlof <ricardw@axis.com>
> +
> +description: |
> +� Texas Instruments TLV320ADC3001 and TLV320ADC3101 Stereo ADC
> +� https://www.ti.com/product/TLV320ADC3001
> +� https://www.ti.com/product/TLV320ADC3101
> +
> +properties:
> +� compatible:
> +��� enum:
> +����� - ti,tlv320adc3001
> +����� - ti,tlv320adc3101
> +
> +� reg:
> +��� maxItems: 1
> +��� description: I2C address
> +
> +� '#sound-dai-cells':
> +��� const: 0
> +
> +� '#gpio-cells':
> +��� const: 2
> +
> +� gpio-controller: true
> +
> +� reset-gpios:
> +��� maxItems: 1
> +��� description: GPIO pin used for codec reset (RESET pin)
> +
> +� clocks:
> +��� maxItems: 1
> +��� description: Master clock (MCLK)
> +
> +� ti,dmdin-gpio1:
> +��� $ref: /schemas/types.yaml#/definitions/uint32
> +��� enum:
> +����� - 0 # ADC3XXX_GPIO_DISABLED������ - I/O buffers powered down and not
> used

Your patch is corrupted because your mailer wrapped lines.

> +����� - 1 # ADC3XXX_GPIO_INPUT��������� - Various non-GPIO input functions
> +����� - 2 # ADC3XXX_GPIO_GPI����������� - General purpose input
> +����� - 3 # ADC3XXX_GPIO_GPO����������� - General purpose output
> +����� - 4 # ADC3XXX_GPIO_CLKOUT�������� - Clock source set in CLKOUT_MUX
> reg
> +����� - 5 # ADC3XXX_GPIO_INT1���������� - INT1 output
> +����� - 6 # ADC3XXX_GPIO_SECONDARY_BCLK - Codec interface secondary BCLK
> +����� - 7 # ADC3XXX_GPIO_SECONDARY_WCLK - Codec interface secondary WCLK
> +��� default: 0
> +��� description: |
> +����� Configuration for DMDIN/GPIO1 pin.
> +
> +����� When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
> +����� ALSA control "GPIOx Output" to appear, as a switch control.
> +
> +� ti,dmclk-gpio2:
> +��� $ref: /schemas/types.yaml#/definitions/uint32
> +��� enum:
> +����� - 0 # ADC3XXX_GPIO_DISABLED������ - I/O buffers powered down and not
> used
> +����� - 1 # ADC3XXX_GPIO_INPUT��������� - Various non-GPIO input functions
> +����� - 2 # ADC3XXX_GPIO_GPI����������� - General purpose input
> +����� - 3 # ADC3XXX_GPIO_GPO����������� - General purpose output
> +����� - 4 # ADC3XXX_GPIO_CLKOUT�������� - Clock source set in CLKOUT_MUX
> reg
> +����� - 5 # ADC3XXX_GPIO_INT1���������� - INT1 output
> +����� - 6 # ADC3XXX_GPIO_SECONDARY_BCLK - Codec interface secondary BCLK
> +����� - 7 # ADC3XXX_GPIO_SECONDARY_WCLK - Codec interface secondary WCLK
> +��� default: 0
> +��� description: |
> +����� Configuration for DMCLK/GPIO2 pin.
> +
> +����� When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
> +����� ALSA control "GPIOx Output" to appear, as a switch control.
> +
> +����� Note that there is currently no support for reading the GPIO pins as
> +����� inputs.
> +
> +� ti,micbias1-vg:
> +��� $ref: /schemas/types.yaml#/definitions/uint32
> +��� enum:
> +����� - 0 # ADC3XXX_MICBIAS_OFF��������������� - Mic bias is powered down
> +����� - 1 # ADC3XXX_MICBIAS_2_0V������ - Mic bias is set to 2.0V
> +����� - 2 # ADC3XXX_MICBIAS_2_5V������ - Mic bias is set to 2.5V
> +����� - 3 # ADC3XXX_MICBIAS_AVDD������ - Mic bias is same as AVDD supply
> +��� default: 0
> +��� description: |
> +����� Mic bias voltage output on MICBIAS1 pin
> +
> +� ti,micbias2-vg:
> +��� $ref: /schemas/types.yaml#/definitions/uint32
> +��� enum:
> +����� - 0 # ADC3XXX_MICBIAS_OFF��������������� - Mic bias is powered down
> +����� - 1 # ADC3XXX_MICBIAS_2_0V������ - Mic bias is set to 2.0V
> +����� - 2 # ADC3XXX_MICBIAS_2_5V������ - Mic bias is set to 2.5V
> +����� - 3 # ADC3XXX_MICBIAS_AVDD������ - Mic bias is same as AVDD supply
> +��� default: 0
> +��� description: |
> +����� Mic bias voltage output on MICBIAS2 pin
> +
> +required:
> +� - compatible
> +� - reg
> +� - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +� - |
> +
> +��� #include <dt-bindings/gpio/gpio.h>
> +��� #include <dt-bindings/sound/tlv320adc3xxx.h>
> +
> +��� i2c {
> +������� #address-cells = <1>;
> +������� #size-cells = <0>;
> +������� tlv320adc3101: tlv320adc3101@18 {

audio-codec@18

> +����������� compatible = "ti,tlv320adc3101";
> +����������� reg = <0x18>;
> +����������� reset-gpios = <&gpio_pc 3 GPIO_ACTIVE_LOW>;
> +����������� clocks = <&audio_mclk>;
> +����������� gpio-controller;
> +����������� #gpio-cells = <2>;
> +����������� ti,dmdin-gpio1 = <ADC3XXX_GPIO_GPO>;
> +����������� ti,micbias1-vg = <ADC3XXX_MICBIAS_AVDD>;
> +������� };
> +��� };
> +
> +��� audio_mclk: clock {
> +������� compatible = "fixed-clock";
> +������� #clock-cells = <0>;
> +������� clock-frequency = <24576000>;
> +��� };
> +...
> diff --git a/include/dt-bindings/sound/tlv320adc3xxx.h
> b/include/dt-bindings/sound/tlv320adc3xxx.h
> new file mode 100644
> index 000000000000..3b3fa43fa961
> --- /dev/null
> +++ b/include/dt-bindings/sound/tlv320adc3xxx.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

Dual license please.

> +/*
> + * Devicetree bindings definitions for tlv320adc3xxx driver.
> + *
> + * Copyright (C) 2021 Axis Communications AB
> + */
> +#ifndef __DT_TLV320ADC3XXX_H
> +#define __DT_TLV320ADC3XXX_H
> +
> +#define ADC3XXX_GPIO_DISABLED��������� 0 /* I/O buffers powered down */
> +#define ADC3XXX_GPIO_INPUT������������ 1 /* Various non-GPIO inputs */
> +#define ADC3XXX_GPIO_GPI�������������� 2 /* General purpose input */
> +#define ADC3XXX_GPIO_GPO�������������� 3 /* General purpose output */
> +#define ADC3XXX_GPIO_CLKOUT����������� 4 /* Source set in reg. CLKOUT_MUX
> */
> +#define ADC3XXX_GPIO_INT1������������� 5 /* INT1 output */
> +#define ADC3XXX_GPIO_INT2������������� 6 /* INT2 output */
> +/* value 7 is reserved */
> +#define ADC3XXX_GPIO_SECONDARY_BCLK��� 8 /* Codec interface secondary BCLK
> */
> +#define ADC3XXX_GPIO_SECONDARY_WCLK��� 9 /* Codec interface secondary WCLK
> */
> +#define ADC3XXX_GPIO_ADC_MOD_CLK������ 10 /* Clock output for digital mics
> */
> +/* values 11-15 reserved */
> +
> +#define ADC3XXX_MICBIAS_OFF����������� 0 /* Micbias pin powered off */
> +#define ADC3XXX_MICBIAS_2_0V���������� 1 /* Micbias pin set to 2.0V */
> +#define ADC3XXX_MICBIAS_2_5V���������� 2 /* Micbias pin set to 2.5V */
> +#define ADC3XXX_MICBIAS_AVDD���������� 3 /* Use AVDD voltage for micbias
> pin */
> +
> +#endif /* __DT_TLV320ADC3XXX_H */
> --
> 2.20.1
> 
> --
> Ricard Wolf Wanderlof�������������������������� ricardw(at)axis.com
> Axis Communications AB, Lund, Sweden����������� www.axis.com
> Phone +46 46 272 2016�������������������������� Fax +46 46 13 61 30
> 
> 
