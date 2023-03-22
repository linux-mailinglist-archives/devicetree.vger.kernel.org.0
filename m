Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A069E6C4485
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 09:01:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230017AbjCVIBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 04:01:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbjCVIBm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 04:01:42 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D5D023A4E
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:01:39 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso10842305wmo.0
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1679472098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e2bpCu2JkDxdB1j+Upo++Ty9Q2a+W+RFaVVRjPXt9MM=;
        b=x872nMvEYBCBHKT76hXne8vpGCgaWD4I74cu5OV3jp4KtTykj63AxTuDw+GvyLK6TZ
         ttytHBtlURPVQ1rwRRlV5oRCXcPGVM4RbqvoZPXBZwY4EL5HKpXLDGNRGhcLuv9TzLmd
         QClsavyNjf6NxzBQptz0oU139JJiuP027ji/YWARz452wspPU3XJuYjeSs8H4gDxNCs+
         WIqXq2vRZx7oFKAscT5pl4CDIj+VOYANla/ki+JcywhjqRgb/Yqd+p7psyvSFEIwB0GN
         F16BnTbYXbFb5iobP3euQvrGFU1t+SItoMp/6w34X7yOS7zrY0YNkzF5aJGtpG1PgLJk
         zYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679472098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e2bpCu2JkDxdB1j+Upo++Ty9Q2a+W+RFaVVRjPXt9MM=;
        b=wLE88WUnsjT1W4Ff8zZWrROr+W7KJwBxBk7hMOyLDgYihNlP1WGz6W3uJ2D7l5UuiN
         h66m9lprPKnURgDkFuPOrMe7gFIWmmgggtrb6dbM2L1InVRXsrgfvWMKjFMOQbEv6HD8
         OG1frfqkzxBasws++wwgT3OHPDMDAl3tU6Zi4qyODZC+IxNUIfvBSu5PyGR8GkYQQ0+C
         xKqCObTUaCvFyWd0f0PmteuYDiDHNnG9Nhx1hnKgEAmKCEg2lr990K5WKyYis3gtqAJv
         JvHqniY1eEtMswI4ct34RvaalNaV/zBst9ftRmCy9jWWEcSYsnqwIsJAkAFiwAVg6Dde
         BWpg==
X-Gm-Message-State: AO0yUKXfoggsz2HU6ipGfzThXxaneawcg9Angdq6tJt+OzjhDL42CaFO
        Q2UhYMWh5Ipd6jRRkh6XNq0YUg==
X-Google-Smtp-Source: AK7set/tU9CJSSgPwA3UuQn1UgSF4EB8Y1MOo5/jP2r4Gkp5gmRYRG+jHuM50BGr6jx3OTRVYoT9YQ==
X-Received: by 2002:a05:600c:295:b0:3eb:25ff:3446 with SMTP id 21-20020a05600c029500b003eb25ff3446mr4283251wmk.4.1679472098083;
        Wed, 22 Mar 2023 01:01:38 -0700 (PDT)
Received: from [192.168.1.70] (151.31.102.84.rev.sfr.net. [84.102.31.151])
        by smtp.gmail.com with ESMTPSA id fc6-20020a05600c524600b003ee04190ddfsm7743179wmb.17.2023.03.22.01.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 01:01:37 -0700 (PDT)
Message-ID: <bffba580-e737-8996-4812-3c76c880acc9@baylibre.com>
Date:   Wed, 22 Mar 2023 09:01:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: Add TI TPS6594 PMIC
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net, arnd@arndb.de,
        gregkh@linuxfoundation.org, derek.kiernan@xilinx.com,
        dragan.cvetic@xilinx.com
Cc:     eric.auger@redhat.com, jgg@ziepe.ca, razor@blackwall.org,
        stephen@networkplumber.org, davem@davemloft.net,
        christian.koenig@amd.com, contact@emersion.fr,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com
References: <20230321171020.74736-1-jpanis@baylibre.com>
 <20230321171020.74736-2-jpanis@baylibre.com>
 <88a6856e-c766-d4a5-1882-5350fd0e248a@linaro.org>
From:   Julien Panis <jpanis@baylibre.com>
In-Reply-To: <88a6856e-c766-d4a5-1882-5350fd0e248a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/22/23 08:34, Krzysztof Kozlowski wrote:
> On 21/03/2023 18:10, Julien Panis wrote:
>> TPS6594 is a Power Management IC which provides regulators and others
>> features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
>> PFSM (Pre-configurable Finite State Machine) managing the state of the
>> device.
>> TPS6594 is the super-set device while TPS6593 and LP8764X are derivatives.
>>
>> Signed-off-by: Julien Panis <jpanis@baylibre.com>
>> ---
>>   .../devicetree/bindings/mfd/ti,tps6594.yaml   | 231 ++++++++++++++++++
>>   1 file changed, 231 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
>> new file mode 100644
>> index 000000000000..4e4565a68e40
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
>> @@ -0,0 +1,231 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/ti,tps6594.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI TPS6594 Power Management Integrated Circuit
>> +
>> +maintainers:
>> +  - Julien Panis <jpanis@baylibre.com>
>> +
>> +description:
>> +  TPS6594 is a Power Management IC which provides regulators and others
>> +  features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
>> +  PFSM (Pre-configurable Finite State Machine) managing the state of the device.
>> +  TPS6594 is the super-set device while TPS6593 and LP8764X are derivatives.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ti,lp8764x
> Does x stand for a wildcard? If so, then fix it. Compatibles should be
> specific.

OK, I will remove 'x' in next version.

>
>> +      - ti,tps6593
>> +      - ti,tps6594
>> +
>> +  reg:
>> +    description: I2C slave address or SPI chip select number.
>> +    maxItems: 1
>> +
>> +  ti,primary-pmic:
>> +    type: boolean
>> +    description: |
>> +      Identify the primary PMIC on SPMI bus.
>> +      A multi-PMIC synchronization scheme is implemented in the PMIC device
>> +      to synchronize the power state changes with other PMIC devices. This is
>> +      accomplished through a SPMI bus: the primary PMIC is the controller
>> +      device on the SPMI bus, and the secondary PMICs are the target devices
>> +      on the SPMI bus.
>> +
>> +  system-power-controller: true
>> +
>> +  gpio-controller: true
>> +
>> +  '#gpio-cells':
>> +    const: 2
>> +    description: |
>> +      The first cell is the pin number, the second cell is used to specify flags.
>> +      See ../gpio/gpio.txt for more information.
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  ti,multi-phase-id:
>> +    description: |
>> +      Describes buck multi-phase configuration, if any. For instance, XY id means
>> +      that outputs of buck converters X and Y are combined in multi-phase mode.
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> No improvements here. As Rob pointed out, this looks like coupled
> regulators.

I used 'oneOf' logic to handle mutual exclusion. But it seems that I did not
understand what you and Rob expected.
Does some generic property already exist for 'coupled regulators' ?

>
> Best regards,
> Krzysztof
>

