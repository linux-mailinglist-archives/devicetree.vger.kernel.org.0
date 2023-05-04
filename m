Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97D3C6F6723
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 10:19:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbjEDIS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 04:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230173AbjEDISL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 04:18:11 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4809A4EC6
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 01:13:40 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc37e1525so251083a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 01:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683188018; x=1685780018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rgT8v649IirpSjf4jMADgqadHZLtrQOg8IyuCZ1GjX4=;
        b=f3uaQODTfanE4H3yXcKCQ+MUm8L88eD/sjScnm5KoCMGX7CF5baC0QhsDlr8u83fpU
         DdesAZz/EDD63p33LpvOFnDfNkH4KkkhwP809MQ80LxdSjSASzYwju5EtXkyc7a/K1S/
         F6BxnS2zrYhwREZWzET9wB9jHh2OBHP9tZHzRcDn4gllAfBWFSDnoGvvVPUaOm4uBfr1
         8mGOGXyxJSj7orOcTC1oRNqSbxiD4P1O68ogZbvlphA9bKnyrFeGwdEpthsPjMJWFzTJ
         W2U01iB6G1L3K6Pl789nzWUNa25jhwdD0Uial0BTRjXjVnysH4usGod1emaj7K4UFA4X
         e29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683188018; x=1685780018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rgT8v649IirpSjf4jMADgqadHZLtrQOg8IyuCZ1GjX4=;
        b=kilJXbPXdE8jZi4Bxl3eJMjG3AbCUd9rYuDKFO6NUc4ajN+G6T3t7S+tazbTGg0Wb6
         9WbnZJmLACFB2PhYXR91XRJq90vVsQev8Iok/F30XVVr9zNnP+wBKVNDJ8kTrJBzKqPP
         jcNBz3rDfzcv4pxFm6YmPQGRQlPUQdnftVbw8xctEp1f+xZZ+zE/3w9w5CZ9AB+QYKPi
         jxh/dcIrErusD4O8gz0l+oGH+wGUg4ySqwP+rF/2OWW7Nv+fNueUbJXAB5TzbK9fWlOx
         +6GouvrRLrncVu3lfC9Ekhjb8yRxG9f1Oi3yCHJFVAvPJE9JQlQLQ6R024iBNe82nXF3
         GWuw==
X-Gm-Message-State: AC+VfDzaZyGUWIlFTN16frzYyBmJC0UAIIrUEYk1tWGxW5UOfk0jNn85
        yLRE6JywOU7Xv0xqE7J4Jxk1Zg==
X-Google-Smtp-Source: ACHHUZ5whnux0wz7ahrLBselL6V9g3SPyXGGucFRUolXKD+khNpR1RLVZPEP27QlEcuUvhTxHdFOFQ==
X-Received: by 2002:aa7:d754:0:b0:506:c2b2:72fc with SMTP id a20-20020aa7d754000000b00506c2b272fcmr754216eds.7.1683188018451;
        Thu, 04 May 2023 01:13:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id d18-20020a50fe92000000b0050470aa444fsm1579929edt.51.2023.05.04.01.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 01:13:37 -0700 (PDT)
Message-ID: <51f877c8-e536-2c79-9494-23030911d851@linaro.org>
Date:   Thu, 4 May 2023 10:13:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To:     Johannes Zink <j.zink@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Cc:     kishon@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
        s.hauer@pengutronix.de, vkoul@kernel.org, haibo.chen@nxp.com,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, linux-phy@lists.infradead.org,
        shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
        jun.li@nxp.com, patchwork-jzi@pengutronix.de
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
 <20230412133921.GA2017891-robh@kernel.org>
 <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
 <67d283f3-d0db-5fc0-79e9-e7531d591aab@pengutronix.de>
 <0a5d631a-037e-5158-82dd-e53d478befea@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0a5d631a-037e-5158-82dd-e53d478befea@pengutronix.de>
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

On 04/05/2023 09:32, Johannes Zink wrote:
> Hi Rob, hi Krzysztof,
> 
> [snip]
>  > gentle ping - any opinions on this? Shall I just send a V2 along the 
> lines of the phy-stm32-usbphy.c?
> 
> This would be something like (example for the trim-hs-current, taken 
> from pyh-stm32-usbphyc):
> 
>        st,trim-hs-current:
>          description: |
>            Controls HS driver current trimming for choke compensation
>            - <0> = 18.87 mA target current / nominal + 0%
>            - <1> = 19.165 mA target current / nominal + 1.56%
>            - <2> = 19.46 mA target current / nominal + 3.12%
>            - <3> = 19.755 mA target current / nominal + 4.68%
>            - <4> = 20.05 mA target current / nominal + 6.24%
>            - <5> = 20.345 mA target current / nominal + 7.8%
>            - <6> = 20.64 mA target current / nominal + 9.36%
>            - <7> = 20.935 mA target current / nominal + 10.92%
>            - <8> = 21.23 mA target current / nominal + 12.48%
>            - <9> = 21.525 mA target current / nominal + 14.04%
>            - <10> = 21.82 mA target current / nominal + 15.6%
>            - <11> = 22.115 mA target current / nominal + 17.16%
>            - <12> = 22.458 mA target current / nominal + 19.01%
>            - <13> = 22.755 mA target current / nominal + 20.58%
>            - <14> = 23.052 mA target current / nominal + 22.16%
>            - <15> = 23.348 mA target current / nominal + 23.73%
>          $ref: /schemas/types.yaml#/definitions/uint32
>          minimum: 0
>          maximum: 15
>          default: 0
> 
> If you think something along these lines is acceptable, I would like to 
> prepare and send a V2.
> 

Go with Rob's approach, so something as you wrote above.

Best regards,
Krzysztof

