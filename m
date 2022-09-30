Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7522F5F0953
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 12:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbiI3Kvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 06:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232068AbiI3KvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 06:51:01 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B3BC1A408D
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:32:50 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id i26so6189167lfp.11
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VCcjqI6lIu04HFhLKmRbYa9mB8gAqC8jVTskBWTzJXo=;
        b=FHYSBxlEjRIKM8t17O7AXtrYySgUtZjTPoXBCaVIsnNxCcsyKanEZ40nuiWCkTPfA3
         hoP6JdjjZh3JqFv0tn+sz+5JWzoxEVSRSrLFZ0JQ22UrIhdP/xg7saUtV+EazvbQBL9T
         I3V6zY9pyFYm93PhnGorlOkjbvJsZVpfhZlLH6yTVDMtqANOr0XcgmMXRX36e0TymXQz
         I0WL1lWBKkiyz5pZ6kkuliZcqkgc459DiUjr/DZlvZCaqZSfjDfx/Qe+lyzF0Qk7JRnE
         b16j/UmDTeKADHzTpCx1hsXzLZz8cQ9XJ6/akhlUqtsQ4jZGJLzAIsdeXPn1DuDEBDv1
         D2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VCcjqI6lIu04HFhLKmRbYa9mB8gAqC8jVTskBWTzJXo=;
        b=exeXdcnbySZti9Dcjpm3sEQ2dpYKWmZ3GW4PrksF7PIt2ngZ/ZlfhZ5H4mUeIMft7u
         YEg5GWddEvcN1rgIfRn2G6BUmNJ06tFS7bh/+fVyNmyh4V9KBsb63wBPwvFZckxkviT7
         1UGpw8pBvANlurag+5cpRmBAdeidfmhRfDAdmQc0kfuu9HovjcCdsoBqWK7nHrKbaF31
         puuzuL/Jadx52rMKdAaaen1b8TtpgQUMDOct6tFCXmb1KjPB38C6zRsLY23XpfPzIH19
         ZzAFvP+D1U4nqJxliuxOJl576o3hb5Sc+Bhk4cw3w2g8RGYxlm9OGJ6wocuGNlAXJX/8
         0rng==
X-Gm-Message-State: ACrzQf1u3HMfWAAr11dOHgRV1n8LIdceRX42DvUC0KwzQTdd4xYezLBG
        KTJweY6ilhajc8rWMJZDdLgwqw==
X-Google-Smtp-Source: AMsMyM5s7ML6znk6zMTOl8dbaSCTLirncMLsCAGUYXeuPUEtGi4SXx9smkRDdsjGWoaplzPyHYYkKw==
X-Received: by 2002:a05:6512:3128:b0:499:3c1d:f9e with SMTP id p8-20020a056512312800b004993c1d0f9emr3124332lfd.634.1664533902120;
        Fri, 30 Sep 2022 03:31:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k29-20020a192d1d000000b0049e9122bd0esm253963lfj.114.2022.09.30.03.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:31:41 -0700 (PDT)
Message-ID: <5a7816e8-9ee8-a2c6-04a1-d27807ace0f2@linaro.org>
Date:   Fri, 30 Sep 2022 12:31:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: xlnx,versal-wwdt: Add binding
 documentation for xilinx window watchdog device
Content-Language: en-US
To:     Srinivas Neeli <srinivas.neeli@amd.com>, wim@linux-watchdog.org,
        linux@roeck-us.net, shubhrajyoti.datta@amd.com,
        michal.simek@amd.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        git@amd.com
References: <20220927110257.41963-1-srinivas.neeli@amd.com>
 <20220927110257.41963-2-srinivas.neeli@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927110257.41963-2-srinivas.neeli@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 13:02, Srinivas Neeli wrote:
> Add documentation for the binding of window watchdog device.
> 
> Signed-off-by: Srinivas Neeli <srinivas.neeli@amd.com>
> ---
>  .../bindings/watchdog/xlnx,versal-wwdt.yaml   | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/xlnx,versal-wwdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/xlnx,versal-wwdt.yaml b/Documentation/devicetree/bindings/watchdog/xlnx,versal-wwdt.yaml
> new file mode 100644
> index 000000000000..986455efa6f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/xlnx,versal-wwdt.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/xlnx,versal-wwdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Versal window watchdog timer controller
> +
> +maintainers:
> +  - Neeli Srinivas <srinivas.neeli@amd.com>
> +
> +description:
> +  Versal watchdog driver uses window watchdog mode. Window watchdog
> +  timer(WWDT) contains closed(first) and open(second) window with
> +  32 bit width. Write to the watchdog timer within predefined window
> +  periods of time. This means a period that is not too soon and a
> +  period that is not too late. The WWDT has to be restarted within
> +  the open window time. If software tries to restart WWDT outside of
> +  the open window time period, it generates a reset.
> +

Missing ref to watchdog.

> +properties:
> +  compatible:
> +    enum:
> +      - xlnx,versal-wwdt-1.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  timeout-sec: true

This can be dropped.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false

and this then can be unevaluatedProperties:false

> +
> +examples:
> +  - |
> +        watchdog@fd4d0000 {

Use 4 spaces for example indentation.

> +           compatible = "xlnx,versal-wwdt-1.0";
> +           reg = <0xfd4d0000 0x10000>;
> +           clocks = <&clock25>;
> +           timeout-sec = <30>;
> +        };
> +...

Best regards,
Krzysztof

