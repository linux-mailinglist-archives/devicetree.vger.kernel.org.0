Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E2636F976F
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 10:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjEGIHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 04:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230526AbjEGIHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 04:07:16 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2229512E8B
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 01:07:15 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-965ab8ed1fcso612697566b.2
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683446833; x=1686038833;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BPCDpA9ON3RbTUJjWYPJh7fPUugTZXUrag6brzxvZjU=;
        b=MV1Rn4JZg0E/0wPwKg5LUYpXfczpW2IBak6tuxhJqYghHy2Ci7zcXALAgkdwzXHivH
         iChtB/zp5ys3zXL1LTQTvG2GQ/MQWby7w/z7u/+rIC4GEH3rKuQuimN+J6QiZgIJAENS
         eG6Xk3inB3pjrbdwutVCrtOVObNPScCNj4rYf+BPT9DqtYjUAoVV1RG6m3ktHYlmiesu
         7KKtwufgRgeWzvXEf0Jx4PxuLjRimgbyRcWZmMXQJXx7uZv1Jldti+/wxzVYKVqnC1hZ
         VswtVxRuq0MaDUGThOPLg3mvbnqTeIKtujJ9S6mDxt32ozApa/AgD8TQBLXiqlrCCCav
         WZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683446833; x=1686038833;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BPCDpA9ON3RbTUJjWYPJh7fPUugTZXUrag6brzxvZjU=;
        b=MGfa7ikqLxBrtYdFQIUyyvKCV9o0yzVQRo9z1J0U8Z8yHuU3TsK6j4sewOo7Z8z3cB
         GahS/Sd6FggFkO+MUxk6rKQW38jluy30yyieCqyvCxvRSVhpnG1BIPR9/IxMkbZbQEp5
         Adcdbi3EdZiULz8LWhLTZRkEcIybQIm9QaxBpnvW84SC4jRF+Ft9ZzGnAoesc05U3lJa
         W3+4tZt8NOISVaIVAEOlRRlMhGpIgtMUolyjTlWTjDOlHKne+KVa/a1lXSLPfQxzlNl8
         1fwzqrQDDOVQ5hDiYlOwCLCtstBHTv7CbKWvm3eEZWnXA4N7MXKRH/+aIWyL24rtC3tx
         fUfg==
X-Gm-Message-State: AC+VfDwCoFSQtnOXd3QhiTHfRYPblecNmoNpnXV+JFYQPn46UH4XXRzy
        P6AwxWcwU3/IY4SOOYkbKHu8ww==
X-Google-Smtp-Source: ACHHUZ4Hh4C+4JQeDZol3Tut9oWeVm/8kkfUix9/AkgjyNscJVuDTqOo0Wy0E77C60kSrnGRaSfZnA==
X-Received: by 2002:a17:907:9806:b0:958:5817:1e08 with SMTP id ji6-20020a170907980600b0095858171e08mr6362425ejc.11.1683446833604;
        Sun, 07 May 2023 01:07:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:183b:950f:b4d5:135a? ([2a02:810d:15c0:828:183b:950f:b4d5:135a])
        by smtp.gmail.com with ESMTPSA id ks22-20020a170906f85600b0094f67ea6598sm3343513ejb.193.2023.05.07.01.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 May 2023 01:07:12 -0700 (PDT)
Message-ID: <32aa46df-9ed5-7d2a-868f-a36414f54534@linaro.org>
Date:   Sun, 7 May 2023 10:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2] dt-bindings: usb: Add binding for Microchip usb5744
 hub controller
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com,
        ilias.apalodimas@linaro.org
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Piyush Mehta <piyush.mehta@amd.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <dd31f987316fb2739644628b5840a6d447b5a587.1683293125.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dd31f987316fb2739644628b5840a6d447b5a587.1683293125.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 15:25, Michal Simek wrote:
> The Microchip usb5744 is a SS/HS USB 3.0 hub controller with 4 ports.
> The binding describes USB related aspects of the USB5744 hub, it as
> well cover the option of connecting the controller as an i2c slave.
> When i2c interface is connected hub needs to be initialized first.
> Hub itself has fixed i2c address 0x2D but hardcoding address is not good
> idea because address can be shifted by i2c address translator in the
> middle.
> 
> Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
> Changes in v2:
> - fix i2c-bus property
> - swap usb2.0/3.0 compatible strings
> - fix indentation in example (4 spaces)
> - add new i2c node with microchip,usb5744 compatible property
> 
> It looks like that usb8041 has also an optional i2c interface which is not
> covered. But it is mentioned at commit 40e58a8a7ca6 ("dt-bindings: usb:
> Add binding for TI USB8041 hub controller").
> 
> i2c-bus name property was suggested by Rob at
> https://lore.kernel.org/all/CAL_JsqJedhX6typpUKbnzV7CLK6UZVjq3CyG9iY_j5DLPqvVdw@mail.gmail.com/
> and
> https://lore.kernel.org/all/CAL_JsqJZBbu+UXqUNdZwg-uv0PAsNg55026PTwhKr5wQtxCjVQ@mail.gmail.com/
> 
> the question is if adding address like this is acceptable.
> But it must be specified.
> 
> Driver will follow based on final dt-binding.
> 
> $ref: usb-device.yaml# should be also added but have no idea how to wire it
> up to be applied only on usb node not i2c one.
> 
> ---
>  .../bindings/usb/microchip,usb5744.yaml       | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> new file mode 100644
> index 000000000000..7e0a3472ea95
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/microchip,usb5744.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip USB5744 4-port Hub Controller
> +
> +description:
> +  Microchip's USB5744 SmartHubTM IC is a 4 port, SuperSpeed (SS)/Hi-Speed (HS),
> +  low power, low pin count configurable and fully compliant with the USB 3.1
> +  Gen 1 specification. The USB5744 also supports Full Speed (FS) and Low Speed
> +  (LS) USB signaling, offering complete coverage of all defined USB operating
> +  speeds. The new SuperSpeed hubs operate in parallel with the USB 2.0
> +  controller, so 5 Gbps SuperSpeed data transfers are not affected by slower
> +  USB 2.0 traffic.
> +
> +maintainers:
> +  - Piyush Mehta <piyush.mehta@amd.com>
> +  - Michal Simek <michal.simek@amd.com>
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: microchip,usb5744
> +  required:
> +    - compatible

I don't understand why do you need this select. It basically disables
schema matching for other ones.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb424,2744
> +      - usb424,5744
> +      - microchip,usb5744
> +
> +  reg: true

maxItems: 1

> +
> +required:
> +  - compatible
> +  - reg
> +


Best regards,
Krzysztof

