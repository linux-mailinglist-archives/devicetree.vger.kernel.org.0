Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB1754CFFE3
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 14:23:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240622AbiCGNXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 08:23:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241339AbiCGNXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 08:23:50 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9188831DC7
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 05:22:55 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E0BB73F614
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646659373;
        bh=7DE3CIcjsEOWGArllLnE/4SYWb481DICc4ujcmpZMCo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=qjWjgBR93wT+o+qNT1KqeEZVG2DjP1b1QwOatp9pgfYo5tkVl1LJfRhbSIO0Ev1oF
         nDXUG4CMXN2wpZXlxn5BBn44fVYkBwsLkJ1aLbDTPcGRL7NDYBzDeGSHD538JTNfKV
         IlNaqrwfRHNAuSuZytCKjUdxs+eRgQNjzPyyo6tR8IURb9gfeKVk0qZyAqFHfvEnaZ
         /a3B6TIa6cdXsBDl0g76mCZgKa/8m97QGcOyUiRzNIl+KydWehk9PdX/uuqFt6Rg25
         hAGVNP+OjY+8/WerHRMyJK1Uyq+rVvWD9RifrU2/e++pOLQeicgAr1aYNHkwZfePFC
         0GhjZZ0zNUMRg==
Received: by mail-ed1-f70.google.com with SMTP id l14-20020aa7cace000000b003f7f8e1cbbdso8570160edt.20
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 05:22:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7DE3CIcjsEOWGArllLnE/4SYWb481DICc4ujcmpZMCo=;
        b=yHisoXGK9NcbpmnGznICs6ki5aWtGcZjlDV4bSRQEhl6RbOnDugESoDpDkq8Kn67A3
         NsaZ8H9Urnh9kRGRJjCTQtqWfrlx4cpiKm2r2guk31QlhfOSaiAeIp0V/LEcZYrZcn33
         B25KVOqFk4HYlREkHwKEV5RqRWvQ8dk9wEXwMTuFEyXFWSbmEnYRQ+HjxF6iyThjtL0K
         pUoCkhE2MHZD5n5XdAf0AJlM+BmF0Fx3zl7TCOD5d7i4oCeUDXfJS+2p2sCNb2R14pOb
         bnc5NAzVGLFm/Q8pezVwrkYQoxZCa6/Cpyn8Tiwq4nvnwvJv3ns6TVYxX/xEK//r3uog
         PYzw==
X-Gm-Message-State: AOAM5332ncFxDhOTENV/VGBZ09Ya3LP/mLo07iWX7ksCYc9KD/DOYoLK
        2XHxW34U+7+tvvYgkjrbAvksYkungjF90bhF6HghYQgFfZ+2yY17+bsuw1xwoeMTSIikQL/FLOZ
        ZjfNmmTXUgvDZq+NWbsuZQ5CPh5wcFOx24PqKdsg=
X-Received: by 2002:aa7:cfd2:0:b0:416:b04:bb60 with SMTP id r18-20020aa7cfd2000000b004160b04bb60mr10963243edy.76.1646659373523;
        Mon, 07 Mar 2022 05:22:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwXxXeGEOYJaGgvq6dvSvl0b5LmE61OYrDSUPzwb/dvNqBwiKbTp6gV0bV0ZRCQ+AuRolvpWQ==
X-Received: by 2002:aa7:cfd2:0:b0:416:b04:bb60 with SMTP id r18-20020aa7cfd2000000b004160b04bb60mr10963234edy.76.1646659373332;
        Mon, 07 Mar 2022 05:22:53 -0800 (PST)
Received: from [192.168.0.142] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id h17-20020a05640250d100b004162ee0a7aesm2785236edb.38.2022.03.07.05.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 05:22:52 -0800 (PST)
Message-ID: <9e565eba-7678-1399-3cae-5335dc026e2c@canonical.com>
Date:   Mon, 7 Mar 2022 14:22:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: pwm: convert atmel pwm to json-schema
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>,
        claudiu.beznea@microchip.com, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        robh+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com
Cc:     linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220307130307.106102-1-sergiu.moga@microchip.com>
 <20220307130307.106102-2-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307130307.106102-2-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 14:03, Sergiu Moga wrote:
> Convert PWM binding for Atmel/Microchip SoCs to Device Tree Schema
> format.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  .../devicetree/bindings/pwm/atmel-pwm.txt     | 35 -----------
>  .../devicetree/bindings/pwm/atmel-pwm.yaml    | 62 +++++++++++++++++++
>  2 files changed, 62 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/atmel-pwm.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/atmel-pwm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/atmel-pwm.txt b/Documentation/devicetree/bindings/pwm/atmel-pwm.txt
> deleted file mode 100644
> index fbb5325be1f0..000000000000
> --- a/Documentation/devicetree/bindings/pwm/atmel-pwm.txt

I would prefer for new files to switch to common DT conversion:
vendor,name.yaml

You have there another PWM bindings for Atmel, so the name should not be
just "pwm" but something more specific, maybe "at91sam-pwm"?

> +++ /dev/null
> @@ -1,35 +0,0 @@
> -Atmel PWM controller
> -
> -Required properties:
> -  - compatible: should be one of:
> -    - "atmel,at91sam9rl-pwm"
> -    - "atmel,sama5d3-pwm"
> -    - "atmel,sama5d2-pwm"
> -    - "microchip,sam9x60-pwm"
> -  - reg: physical base address and length of the controller's registers
> -  - #pwm-cells: Should be 3. See pwm.yaml in this directory for a
> -    description of the cells format.
> -
> -Example:
> -
> -	pwm0: pwm@f8034000 {
> -		compatible = "atmel,at91sam9rl-pwm";
> -		reg = <0xf8034000 0x400>;
> -		#pwm-cells = <3>;
> -	};
> -
> -	pwmleds {
> -		compatible = "pwm-leds";
> -
> -		d1 {
> -			label = "d1";
> -			pwms = <&pwm0 3 5000 0>
> -			max-brightness = <255>;
> -		};
> -
> -		d2 {
> -			label = "d2";
> -			pwms = <&pwm0 1 5000 1>
> -			max-brightness = <255>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/pwm/atmel-pwm.yaml b/Documentation/devicetree/bindings/pwm/atmel-pwm.yaml
> new file mode 100644
> index 000000000000..f5378a2226bd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/atmel-pwm.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/atmel-pwm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel PWM controller

title: Atmel/Microchip PWM controller

> +
> +maintainers:
> +  - Claudiu Beznea <claudiu.beznea@microchip.com>
> +

allOf including pwm.yaml

> +properties:
> +  compatible:
> +    enum:
> +      - atmel,at91sam9rl-pwm
> +      - atmel,sama5d3-pwm
> +      - atmel,sama5d2-pwm
> +      - microchip,sam9x60-pwm
> +
> +  reg:
> +    description: |
> +      Physical base address and length of the controller's
> +      registers

Skip description, it's obvious.

> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    description: |
> +      Should be 3. See pwm.yaml in this directory for a
> +      description of the cells format.

Skip description, it's obvious.

> +    const: 3
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#pwm-cells"

Skip pwm-cells, required by pwm.yaml.

> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +        pwm0: pwm@f8034000 {
> +                compatible = "atmel,at91sam9rl-pwm";
> +                reg = <0xf8034000 0x400>;
> +                #pwm-cells = <3>;
> +        };
> +
> +        pwmleds {

Skip this node. No actual benefit. All clients are the same.

> +                compatible = "pwm-leds";
> +
> +                led-1 {
> +                        label = "led-1";
> +                        pwms = <&pwm0 3 5000 0>;
> +                        max-brightness = <255>;
> +                };
> +
> +                led-2 {
> +                        label = "led-2";
> +                        pwms = <&pwm0 1 5000 1>;
> +                        max-brightness = <255>;
> +                };
> +        };


Best regards,
Krzysztof
