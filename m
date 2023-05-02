Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B61206F3EB5
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 10:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233720AbjEBICe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 04:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbjEBICe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 04:02:34 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE80B469B
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 01:02:30 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-506c04dd879so5811840a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 01:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683014549; x=1685606549;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oQUxIAfwQMZY40FyM+H+UO+l99SEh1ZDa4uxL6+s0zc=;
        b=L1M8PDbsuV+7pDKq9vIgR+tJSHhQQikw16Lz/72cRwjHXO8lcZPvIvrcI6OXmSZXVO
         q7IyI/wy4OA8sivi3N5lDDfu3VO9GYpC7+tLYrR2Zc4MdJv+u4/kJ8IKvFqo3mXPlD/2
         uhXvH7M1z/2l5GoqB1sA7QMfMmoM2lhK5RXN8TMKIOq/aGYSKURUBVU/Wxy9NXAIy3zK
         0MUXLJPMlM22/HpLS8plDnTGN2jqWWeEVqJIOy+tnFWK+PFxf3IXb0jxptKZtZucMCxl
         0gf5ceO9SLAJNSqtdOqf6164TKeWbFmdeqmESCZBb2xgKy/cQ7ni5byJJOTF+k6yMArT
         7VlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683014549; x=1685606549;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQUxIAfwQMZY40FyM+H+UO+l99SEh1ZDa4uxL6+s0zc=;
        b=WcV/vMykFZrXxczwRDKn/8k2iLLSi6Nzk/07PxtE2YFIIpVdDKYs9WUFM7j7eurhmX
         GQCcghfJ3xA8IEvE5ulBkvRP8lEiCzroWr015Cc2WVPoZVAsOEOrEH8POsiPpelVUh/3
         tg3o6SuuCtZsldzGw+8GLJB86wv3Oo1M5oNVLXe+jrAfdSLdOX/9CRxJGJZhIyEjc+iV
         XtZkVuqIitq3tfJike9mi+3jb1XKVkg5l7YJQz8zCCRNS+sEfdpeqtR4UrJ4Y0VtidTw
         YsBnhWQNwq9aISh5IiSQQE4IZpgQKmV4+mAzQz+BEUwEPkNl57dBOT7YGnidGRj1QFK5
         WxpQ==
X-Gm-Message-State: AC+VfDyxI4rsYHofDa+MXvQdKlfWKj3hYl7lz8rYGBslAgOOkdLuoaP5
        Schvu86+RFtigxOawKA1lioqPA==
X-Google-Smtp-Source: ACHHUZ4CRKyariHkmw7Hkgp4Ze0lVtWuihm9qazkxsqYHRfnTZMXzKkOiv3a1b1iuqgz6Yl3oZ9Nvg==
X-Received: by 2002:aa7:d511:0:b0:506:a1c8:2bc5 with SMTP id y17-20020aa7d511000000b00506a1c82bc5mr7214079edq.15.1683014549455;
        Tue, 02 May 2023 01:02:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id v19-20020aa7d653000000b0050bca43ff55sm1205885edr.68.2023.05.02.01.02.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 01:02:28 -0700 (PDT)
Message-ID: <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
Date:   Tue, 2 May 2023 10:02:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/4] dt-bindings: trivial-devices: add
 traverse,ten64-controller
Content-Language: en-US
To:     Mathew McBride <matt@traverse.com.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230501064727.8921-1-matt@traverse.com.au>
 <20230501064727.8921-2-matt@traverse.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501064727.8921-2-matt@traverse.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 08:47, Mathew McBride wrote:
> Add the Ten64 family board controller[1] to the trivial devices list.
> 
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> 
> [1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 246863a9bc7e..638e16fc9f71 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -397,6 +397,8 @@ properties:
>            - ti,tps544b25
>            - ti,tps544c20
>            - ti,tps544c25
> +            # Board controller for Ten64 family mainboards
> +          - traverse,ten64-controller

This is not a ten64 device, but just component of the SoC, right?
Regular NXP LPC804 Cortex-M0 which you just program with different firmware.

Basically this means you describe the firmware in Devicetree...

Rob,

What are the guidelines for generic co-processors (some Cortex-M)
exposing just I2C line and nothing more? Do we want to describe the
actual firmware running there?

Best regards,
Krzysztof

