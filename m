Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E78E76D294E
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 22:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233025AbjCaUVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 16:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232462AbjCaUVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 16:21:38 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3736CDCC
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:21:37 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id t14so24342312ljd.5
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 13:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680294096;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qzELrsCrqv8grDnMcAf3s0dPIr8Q7GcoNz7aYHYm22o=;
        b=NuFk4aD7xMfyEJV92Dfjv2ZaTBMqr8gcBE/JuUOXXKu4iyV51zbgdlsgvenD7NTzdB
         yMEpHSizIDvc0rqM4zNydzt49A88cBwpBkU0HHfurqgxbUJgKxl6/2tyRPj0pSyMJdzp
         wxVLzw72eOmKNlWhV4TwgQkZhHS1YiXJr97veOiFG3AskT/HVyAIv0/LALrcVy6wh0rb
         dHP2/LKna2bhILoomohVwts8P60ZJ+dQNUODpAhw3AReQNWXRFbqThqFnVXT/wgCz72Y
         rmpm5ZmoH5UP6546c6h9q5n+0AORHiYNoOJfhvE5kTf3hIZCaFCnfO6S1X5r/cZwwQU6
         2TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680294096;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qzELrsCrqv8grDnMcAf3s0dPIr8Q7GcoNz7aYHYm22o=;
        b=pThDCCtveYT1YtXm/IZT1xUyGkzWFI83xch1kg0S3npJUq0JwibCC18XscFQTkzaqS
         Hz6KnREOpzmzubqK2OBx5GfMiwHmZjs3cgDG6SYUVifoDldLOAsbyYEm7GuLggQMMWu1
         8TA5e6OUFQ6LbLFlU5UTHoqtd5O8uM3uSMA7nGyDY1nIaGooawwZuuswwqeqcl1mFDIe
         l3E/C4Z0Ieei7YjKXouGNWyw8E/I0dCw60cbI0kzpISERVqnTzOOwAkf4ItXdOcLTIOi
         XsDVCRIA02lynrvF0E2uPUjYPwKSmKKEfbzN8oM/CdvAgfid2S5JzOdLeOWTBA6/OeKQ
         9q6w==
X-Gm-Message-State: AAQBX9cb3dOOeheRZFIcQ4ArYJ+KbBFwp8LiM+Gt5HCZ7Kk6gsLJLhHW
        H1WXen2ZOyD/Kr/57xOFc8+apg==
X-Google-Smtp-Source: AKy350a0aA0l383SjrgsrToSYWm3xuhMG+cOFy8JceFJBfVgoyuB9iI0CsuBeLRC+AzJLx1136H9fg==
X-Received: by 2002:a2e:984e:0:b0:293:4b60:419c with SMTP id e14-20020a2e984e000000b002934b60419cmr2876914ljj.18.1680294096118;
        Fri, 31 Mar 2023 13:21:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j7-20020a2e8007000000b0029839faa74fsm502824ljg.134.2023.03.31.13.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 13:21:35 -0700 (PDT)
Message-ID: <6a1b0764-9b91-602c-057d-95ac5939af1d@linaro.org>
Date:   Fri, 31 Mar 2023 22:21:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: i2c: cadence: Document reset property
Content-Language: en-US
To:     Lars-Peter Clausen <lars@metafoo.de>, Wolfram Sang <wsa@kernel.org>
Cc:     Michal Simek <michal.simek@amd.com>,
        Shubhrajyoti Datta <Shubhrajyoti.datta@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org
References: <20230330180448.269635-1-lars@metafoo.de>
 <6b997dfa-1377-8d2e-ce4f-3f8f7407e6b4@linaro.org>
 <292e5efd-1a10-d1e6-0185-1ce113eee233@metafoo.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <292e5efd-1a10-d1e6-0185-1ce113eee233@metafoo.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 19:11, Lars-Peter Clausen wrote:
> On 3/31/23 02:42, Krzysztof Kozlowski wrote:
>> On 30/03/2023 20:04, Lars-Peter Clausen wrote:
>>> The Cadence I2C controller has an external reset that needs to be
>>> de-asserted before the I2C controller can be accessed.
>>>
>>> Document the `resets` devicetree property that can be used to describe how
>>> the reset signal is connected.
>> You could add it also to the example to have complete picture (and
>> validate your change).
>>
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
> When I resend with it added to the example, do you want me to keep or 
> drop the acked-by?

Keep the ack, please.

Best regards,
Krzysztof

