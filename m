Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DB3E51A280
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 16:46:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351448AbiEDOuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 10:50:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233712AbiEDOub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 10:50:31 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D63720F67
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 07:46:55 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id q23so2371853wra.1
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 07:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Z42/fsT5SHrg845Q2k3w98eqH6zbPIzfs0XsQfbP87M=;
        b=RV6N4wSlfVsEAsSSv0kF6RIXeIyA7Tl4QRrua8UAsiVnPF3fpfrhHSAbD9Vxo+734F
         BDXFJd8WUdg6f3dKe5uMfoT1uXaIy/yXicnMH3MbKi0qiH13avRMTh3L5aSE9PZkaBBz
         //kOVj46nMsHYN2cNwqFZl2an7703BXI8LsdXW8pvkDqjf7czlRFep/xIqMcs2eEdx3P
         YILwgkR3zLsPk63sJbQpgrUq+kbVDTRAiPshVGv7Um1cPg+xM5MliiwC+czRbw7XZifR
         vY/AzxwVSdbX2i4Tqg5opFw31Qz2MppTUzkaBy4TZt9lwrGRlJnlFIUF1BI/3Mi2XoMp
         28zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z42/fsT5SHrg845Q2k3w98eqH6zbPIzfs0XsQfbP87M=;
        b=ITQ+pzLgfrdDSeSbsIWSRChFQ7hnPMYe3VpLymYuy4XHJhw7HXJl07UplyCKeeYAXn
         v1Tk+vMpnW2DDbzq4VUYPOQFynlTILEUAVGnYEgp1+TuO1cYLBGgJgiQ0IwVr01wzSOU
         CO2mxctv81IC49M9on9glPNc0JV89ZcM7VTNSs2VkbQ+Rh+aBvxxF33v5hiurSCH1MYi
         9M6RfUUJrKBC8GarnE0dv1fmbnshsSB22K+clniTEWSPHkB6n6QPuq4m2s1lq8Xlsmll
         AKFAcdIy21g6KlAudFE45dmYeKEr5vDnDMphsjiNmrf0ORUgGvBSvWdu7pw94iDvDPlt
         mRjQ==
X-Gm-Message-State: AOAM53139YK4jEY6sYIUr/1wtaHdUoAHoJDGzH2iKumBxn0Vl183iobH
        3wA4CYROC2Qh7/wfvIc89LK41A==
X-Google-Smtp-Source: ABdhPJxXXf8a7etiffjEzo/TeSDj3vhLMXwoPds1iqBJCqcniTdXO+Q8YopvGH2gEu9QxLzPhuyj5A==
X-Received: by 2002:a5d:5228:0:b0:20a:d7e9:7ed8 with SMTP id i8-20020a5d5228000000b0020ad7e97ed8mr16037956wra.687.1651675613704;
        Wed, 04 May 2022 07:46:53 -0700 (PDT)
Received: from [192.168.0.215] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e15-20020adffc4f000000b0020c8d8252dasm135126wrs.103.2022.05.04.07.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 07:46:53 -0700 (PDT)
Message-ID: <18d1032c-1fee-9de5-bd25-752ff9c39200@linaro.org>
Date:   Wed, 4 May 2022 16:46:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] media: dt-bindings: ov5675: document YAML binding
Content-Language: en-US
To:     Quentin Schulz <foss+kernel@0leil.net>
Cc:     shawnx.tu@intel.com, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Quentin Schulz <quentin.schulz@theobroma-systems.com>
References: <20220504135543.59522-1-foss+kernel@0leil.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220504135543.59522-1-foss+kernel@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 15:55, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV5675 CMOS image sensor from Omnivision.
> 
> Cc: Quentin Schulz <foss+kernel@0leil.net>

Don't Cc yourself in commits. This goes to the Git history, so
assumption is that the "other you" knows that you sent it. :)

> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> 
> v2:
>  - fixed incorrect id,
>  - fixed device tree example by adding missing dt-bindings headers,
>  - fixed device tree example by using vcc_1v2 for dvdd supply, as requested
>  in datasheet,
> 
>  .../bindings/media/i2c/ovti,ov5675.yaml       | 139 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 140 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov5675.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5675.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5675.yaml
> new file mode 100644
> index 000000000000..29df2f82c631
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5675.yaml
> @@ -0,0 +1,139 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2022 Theobroma Systems Design und Consulting GmbH
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ovti,ov5675.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV5675 CMOS Sensor Device Tree Bindings

s/Device Tree Bindings//

> +
> +maintainers:
> +  - Quentin Schulz <quentin.schulz@theobroma-systems.com>
> +
> +description: |-
> +  The Omnivision OV5675 is a high performance, 1/5-inch, 5 megapixel, CMOS
> +  image sensor that delivers 2592x1944 at 30fps. It provides full-frame,
> +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> +  serial data output (up to 2-lane).
> +
> +properties:
> +  compatible:
> +    const: ovti,ov5675
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      Input clock for the sensor.
> +    items:
> +      - const: xvclk

Just "xv" is preferred.

> +
> +  clock-frequency:
> +    description:
> +      Frequency of the xvclk clock in Hertz.
> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as digital power supply.
> +
> +  reset-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.
> +      This corresponds to the hardware pin XSHUTDOWN which is physically
> +      active low.

Needs maxItems

> +
> +  port:
> +    type: object

Open other bindings and compare how it is done there. This looks like
/schemas/graph.yaml#/$defs/port-base

> +    additionalProperties: false
> +    description:
> +      A node containing an output port node with an endpoint definition
> +      as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +    properties:
> +      endpoint:
> +        type: object

Missing ref

> +
> +        properties:
> +          data-lanes:
> +            description: |-

No need for "|-"

> +              The driver only supports 2-lane operation.

Please remove references to driver. It's not part of hardware.

> +            items:
> +              - const: 1
> +              - const: 2
> +
> +          link-frequencies:
> +            $ref: /schemas/types.yaml#/definitions/uint64-array

The ref should be already provided by video-interfaces.

> +            description:
> +              Allowed data bus frequencies. 450000000Hz is supported by the driver.

Again, skip driver reference. However you need to describe the number of
items.

>
Best regards,
Krzysztof
