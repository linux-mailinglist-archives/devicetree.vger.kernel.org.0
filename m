Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 320C1571EC2
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 17:17:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230491AbiGLPRs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 11:17:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233153AbiGLPRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 11:17:24 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32DB9C1655
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:12:23 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id d12so14438110lfq.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FiFkU4mtsNMfFIb99Kyl4YKF0xVr8LFESHMNv5yOiro=;
        b=EQ/TF9qYYwlLAcO2ZviT1k6qc/VqInz5ERRkhyrsBi6dF+xJhJORcGJz7gMRx/PjKl
         p/C+PwHpO3s1AbBKfptcD8VVn1ui73ew69bGaWVROOf2+pr97zI4T1BDm1VunZL8NJnk
         f63yaybXdjvzlnkcmKhrRwuX3XiwqaFJ9DKzKKSZEdCCqNp9kuYS+/6QkM1ORYvsfqg2
         g4BLvWwKZsWigB5JrPcBZ4bp5aOI1g7OViJTOxiv7JSOrlMGwsaEgckqEMKm+PVXregE
         MgqoQVQMOZeexN3A/otCm4oZqyhluKsMbpqXBG7HfbH2+2qviyOfRa9MoQ1JYrT/WaIQ
         sCTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FiFkU4mtsNMfFIb99Kyl4YKF0xVr8LFESHMNv5yOiro=;
        b=W4Ei3cPOaVlrpW38TlMjs6LaSq5BaoeB7gZ+MSjtwYdAn1ltSIE2QHxz85T88xHW+p
         103AzkaJ8sWFgaeqjsN2IetD95louDvCYS30Do4WQZRS4G7U7mSBdEOS1bi+g23vUzUc
         WojNA74Z/m+kGXq7+hMF09GMALkH/6IKcPaeob9ECR4fEGkcVzpk4U6IyplYzhHZ2OSF
         WT3x/tigmyXCH41p/KFhzoCM/AW0RuC3J8bNoLonyU4LigdA1isBf8wFxxCKCPEqyrSc
         SM5qxnRZNhw28IutGy2q3ZwzcHZXZVDKNBVtYtS2RszTIGWzahKTAA0C4ryFjQkgFqDP
         gp7Q==
X-Gm-Message-State: AJIora/NNcUQA27o8MQIw2KKrH3mo6L0kSk204eue584YFqBpu00W6iS
        QfR4inQwHVvzaCv118Y80e4KYw==
X-Google-Smtp-Source: AGRyM1t0l7x/rCjC6lSD6LEP8zBtApvjhPsSOa6RpcuLkpgzQsIqIo44tpbIn6jIqUtwKONToFV0JQ==
X-Received: by 2002:a05:6512:2241:b0:479:6426:15af with SMTP id i1-20020a056512224100b00479642615afmr14829398lfu.631.1657638741569;
        Tue, 12 Jul 2022 08:12:21 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id c5-20020ac25f65000000b00489dd78bdacsm1388358lfc.299.2022.07.12.08.12.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 08:12:20 -0700 (PDT)
Message-ID: <82d4507a-d092-8cb0-2e88-4290661d114d@linaro.org>
Date:   Tue, 12 Jul 2022 17:12:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] media: dt-bindings: media: i2c: document OV4689 DT
 bindings
Content-Language: en-US
To:     Mikhail Rudenko <mike.rudenko@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220712141925.678595-1-mike.rudenko@gmail.com>
 <20220712141925.678595-2-mike.rudenko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712141925.678595-2-mike.rudenko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 16:19, Mikhail Rudenko wrote:
> Add device-tree binding documentation for OV4689 image sensor driver,
> and the relevant MAINTAINERS entries.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  .../bindings/media/i2c/ovti,ov4689.yaml       | 122 ++++++++++++++++++
>  MAINTAINERS                                   |   7 +
>  2 files changed, 129 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
> new file mode 100644
> index 000000000000..6bdebe5862b4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
> @@ -0,0 +1,122 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ovti,ov4689.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV4689 CMOS Sensor Device Tree Bindings

s/Device Tree Bindings//

> +
> +maintainers:
> +  - Mikhail Rudenko <mike.rudenko@gmail.com>
> +
> +description: |-

No need for -

> +  The Omnivision OV4689 is a high performance, 1/3-inch, 4 megapixel
> +  image sensor. Ihis chip supports high frame rate speeds up to 90 fps
> +  at 2688x1520 resolution. It is programmable through an I2C
> +  interface, and sensor output is sent via 1/2/4 lane MIPI CSI-2
> +  connection.
> +
> +allOf:
> +  - $ref: /schemas/media/video-interface-devices.yaml#
> +
> +properties:
> +  compatible:
> +    const: ovti,ov4689
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      External clock for the sensor.

This goes to clocks instead.

> +    items:
> +      - const: xclk

No need for clock-names for such case.

> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as Digital I/O voltage supply.

s/Definition of the regulator used as //

It's redundant...

> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as Analog voltage supply.

Ditto

> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as Digital core voltage supply.

Ditto

> +
> +  powerdown-gpios:
> +    maxItems: 1
> +    description:
> +      Reference to the GPIO connected to the powerdown pin (active low).

s/Reference to the//

> +
> +  reset-gpios:
> +    maxItems: 1
> +    description:
> +      Reference to the GPIO connected to the reset pin (active low).

The same.

> +
> +  orientation: true
> +
> +  rotation: true
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +    description:
> +      Output port node, single endpoint describing the CSI-2 transmitter.
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +

Best regards,
Krzysztof
