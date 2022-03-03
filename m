Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3165A4CC441
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 18:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233955AbiCCRsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 12:48:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiCCRsK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 12:48:10 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 337922FFE0
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 09:47:24 -0800 (PST)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 027CF3F619
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 17:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646329643;
        bh=2Rk6IDnEpKrDZn0tnDLXFbhpCS29a53dJ0petiCnxJk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gFop3v08Wdpgac1Tq58eKWtgNSl5RgM0rRlQwgksJPY3IXwhHGlxeSsR1RD8h3/b3
         V7woEhxfkZYSmKHCs9ZcvNyUNolpsbqmo8XgoKiHf72xv8zP/zlEbRdfLTsDKHVCKi
         EDvUbJMhUHtgHC4BtRMQOk0kplqw869m5jzfBEtSSEhosy6GGnaN0d7yjNDIzx9NuN
         CsXC6h+Dv+0vduasYyYqVKwndI4Mj0qiWvyVLMpm943avmAzEIkMLPPoLIme0MwL1T
         mYfnYJai/3djnumnGxc9/xYTmoI6MKGKW1Y8LgAutWv6oiNX48GHQJczxcebRwR8jS
         uIgYJluCiT7Tg==
Received: by mail-wr1-f70.google.com with SMTP id a11-20020adffb8b000000b001efe754a488so2312799wrr.13
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 09:47:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2Rk6IDnEpKrDZn0tnDLXFbhpCS29a53dJ0petiCnxJk=;
        b=VrYTIt06/463BniYJDUdcuOGXXFYdgnno6D1a4uEqs+b1xkoIGMU9/4BijqufJybr3
         WxTavVZITOG9+1Ct2GlsBcomw6wYHkyskxDE1kKsgbFAlZnq3WxrKErXYKxh1PpxJzb+
         JxTx+rI3g3bPPazDjtNahUMHRURbAO5qZ7WbjU3EP72vJXid3hrA0TfZgoZRFhjWey/T
         6pjXqpL+F07PPcfj6cp941HuwW4OTq7cx6MwfEtQunlodWSbEgghIL5WvePjsXrVjFIj
         YspyU9LLFHntZhVUiYaas5JGNw9/XgfwVd+tSJvCAxmoc23p5mbltQdZtIqBUf1rBtwN
         bd6g==
X-Gm-Message-State: AOAM531VO7G3Mp2yf5z4iO36I4Id73R+8S2MKw8vYbV7MSQA441+Kmoh
        UJk3FStrTXCKCx/hrURJmP0G825i4XHqqyLWAJ85c1KEqMJkN/hrUG/+DJn86BANsqSY2D3dYRD
        vUuBc+hzK7pSIbnDuM77D0p1xz7/fPJvqCOhBkE0=
X-Received: by 2002:adf:a482:0:b0:1e3:3e5f:496c with SMTP id g2-20020adfa482000000b001e33e5f496cmr26704622wrb.606.1646329642676;
        Thu, 03 Mar 2022 09:47:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx1JyTYWXv1UeFV1M8iXV3BMYG27pFCFKsGv5kt36ZQ5uiYPCYSDl3Amiwvx/baX6CgrY7wiQ==
X-Received: by 2002:adf:a482:0:b0:1e3:3e5f:496c with SMTP id g2-20020adfa482000000b001e33e5f496cmr26704610wrb.606.1646329642455;
        Thu, 03 Mar 2022 09:47:22 -0800 (PST)
Received: from [192.168.0.138] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id m13-20020a05600c4f4d00b00386744cb31bsm4281441wmq.35.2022.03.03.09.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 09:47:22 -0800 (PST)
Message-ID: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
Date:   Thu, 3 Mar 2022 18:47:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Content-Language: en-US
To:     Georgi Vlaev <g-vlaev@ti.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        ldewangan@nvidia.com, nm@ti.com, vigneshr@ti.com
References: <20220303120017.30181-1-g-vlaev@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303120017.30181-1-g-vlaev@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 13:00, Georgi Vlaev wrote:
> Convert the TPS62360 regulator binding to DT schema format
> using json-schema.
> 
> Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
> ---
>  .../bindings/regulator/ti,tps62360.yaml       | 99 +++++++++++++++++++
>  .../bindings/regulator/tps62360-regulator.txt | 44 ---------
>  2 files changed, 99 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/tps62360-regulator.txt
> 
> diff --git a/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
> new file mode 100644
> index 000000000000..73674ef4d903
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/ti,tps62360.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TPS6236x Voltage Regulators
> +
> +maintainers:
> +  - Laxman Dewangan <ldewangan@nvidia.com>
> +
> +description: |
> +  The TPS6236x are a family of step down dc-dc converter with
> +  an input voltage range of 2.5V to 5.5V. The devices provide
> +  up to 3A peak load current, and an output voltage range of
> +  0.77V to 1.4V (TPS62360/62) and 0.5V to 1.77V (TPS62361B/63).
> +
> +  Datasheet is available at:
> +  https://www.ti.com/lit/gpn/tps62360
> +
> +allOf:
> +  - $ref: "regulator.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,tps62360
> +      - ti,tps62361
> +      - ti,tps62362
> +      - ti,tps62363
> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,vsel0-gpio:
> +    description: |
> +      GPIO for controlling VSEL0 line. If this property
> +      is missing, then assume that there is no GPIO for
> +      VSEL0 control.
> +    maxItems: 1
> +
> +  ti,vsel1-gpio:
> +    description: |
> +      GPIO for controlling VSEL1 line. If this property
> +      is missing, then assume that there is no GPIO for
> +      VSEL1 control.
> +    maxItems: 1
> +
> +  ti,enable-vout-discharge:
> +    description: Enable output discharge.
> +    type: boolean
> +
> +  ti,enable-pull-down:
> +    description: Enable pull down.
> +    type: boolean
> +
> +  ti,vsel0-state-high:
> +    description: |
> +      Initial state of VSEL0 input is high. If this property
> +      is missing, then assume the state as low.
> +    type: boolean
> +
> +  ti,vsel1-state-high:
> +    description: |
> +      Initial state of VSEL1 input is high. If this property
> +      is missing, then assume the state as low.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        regulator@60 {
> +          compatible = "ti,tps62361";

In-consisting indentation. Use 4 spaces for entire DT example.

Rest looks good.



Best regards,
Krzysztof
