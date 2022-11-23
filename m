Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05586635F84
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 14:28:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237391AbiKWN2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 08:28:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236360AbiKWN2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 08:28:10 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF0E2C78E3
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 05:07:02 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id b9so21317847ljr.5
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 05:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ccqh3dfGzML1aBGj7t/YrqY2QT7pR2uNL+e7DNuF1s=;
        b=NTz8FoNtJ/3ZrpELLvCYWVTs1l2QYVefQOUUa43xmopc3UEmPvePHMJSVKHqy/sqJ5
         qY92VBAkQjFaYJngeKZGTzNUNHJvkBkLJC8lisKE8S/bv/zckV1tg3G7HrQG8steUfvq
         VelhR4nq3DQHY0mQNijfoW149T5Dvz06H48Qhsnq9ajy6PhnZv7jFc0I1hbnGoVHr3QH
         uqccIGYC5o1uugg7zDi5pr1imEa3DLPyPzXFpFhBh/XLh0CCLoelejWsd3ZHd3X6MAbf
         7MHD/5U0VZKi8R7jNpJ/MW7o77ATRMQAfsxc+nfY7XAnOoyh8RCAfBC4hDZbYH8vXgQF
         KiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ccqh3dfGzML1aBGj7t/YrqY2QT7pR2uNL+e7DNuF1s=;
        b=IaIwRd35hYSDPwYNbMBxIaaebOYNAzwfFE/aZO/qs+DgxIBTKlxXXehiqib6fW2LHb
         TnvwFkVEu+0UFCMkvxn+v1spIjOLJ2MHRPGmlRwvPAzjC53t5wIkFRYbYyFmuUaxL74v
         DbGsCmoiPfX+3elVqKB1EsNauFBK3bJO8YhRqBNdBcGJPsXUNx75nJumOzw6dqp2RfYB
         po+IvA7DucnZBacIlUUkCPtKcupL0LLqOYSoca+wsjOnRGL2Dlmjtsvvikvc8RE9u9Tn
         9gjZcyaUDoUX0BUvQncbnQMe7aE4fs2ix8lMvMtynhUbLCMdZuuOB7trlvkkIfpsy5jO
         gipQ==
X-Gm-Message-State: ANoB5pn8UGe/7Ejk06wYWVdoOxZBDl9y5WAvaaKZKLhJ+8isSwkwt28S
        D8mUL6ngktlNBUWB7Ms95Am05A==
X-Google-Smtp-Source: AA0mqf5NaHTNZWztbivNnH1bVjzcoFbgIS8edaP6RX+ZaLqm31IxoNIMjBsE8vCZBviPdnlqNqQTNQ==
X-Received: by 2002:a2e:bd17:0:b0:277:50a:bd5c with SMTP id n23-20020a2ebd17000000b00277050abd5cmr8965045ljq.6.1669208821202;
        Wed, 23 Nov 2022 05:07:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j23-20020ac253b7000000b004a62ff61b3dsm2904375lfh.252.2022.11.23.05.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 05:07:00 -0800 (PST)
Message-ID: <2418f79c-ae56-9e4e-46e2-f1ca757642ee@linaro.org>
Date:   Wed, 23 Nov 2022 14:06:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH V5 3/4] clk: meson: s4: add s4 SoC peripheral clock
 controller driver and bindings
Content-Language: en-US
To:     Yu Tu <yu.tu@amlogic.com>, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     kelvin.zhang@amlogic.com
References: <20221123021346.18136-1-yu.tu@amlogic.com>
 <20221123021346.18136-4-yu.tu@amlogic.com>
 <09a443b3-4e27-a751-ba2c-057d69363a13@linaro.org>
 <cf7295c7-3ec6-3017-0c21-167da06e3214@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cf7295c7-3ec6-3017-0c21-167da06e3214@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 12:22, Yu Tu wrote:
> 
> 
> On 2022/11/23 18:09, Krzysztof Kozlowski wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On 23/11/2022 03:13, Yu Tu wrote:
>>> Add the peripherals clock controller found and bindings in the s4 SoC family.
>>>
>>> Signed-off-by: Yu Tu <yu.tu@amlogic.com>
>>> ---
>>>   .../clock/amlogic,s4-peripherals-clkc.yaml    |  105 +
>>
>> No, this is total mess now.
>>
>> Additionally, you received a lot of feedback but your changelog says only:
>> "V3 -> V4: change format and clock flags."
>> so you ignored entire feedback?
>>
>> That's not the way to work with patches.
> 
> Hi Krzysztof,
> 	You can check the previous email reply. Now I don't know who to follow 
> your advice or Jerome's. I'm confused. Maybe you need to come to a 
> conclusion. So I can change it in the next patch.

I don't understand your comment. You received a lot of things to change
for your v3. You said here "change format and clock flagS", so all other
feedbacks from me were ignored? They were not contradicting to Jerome's
comments, so either you implement them and mention this in changelog, or
you keep discussing.

Best regards,
Krzysztof

