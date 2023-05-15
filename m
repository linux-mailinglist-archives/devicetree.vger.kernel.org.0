Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54F48702A0B
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 12:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241032AbjEOKH1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 06:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240972AbjEOKHG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 06:07:06 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299D826AB
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 03:06:24 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-96adcb66f37so428480266b.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 03:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684145182; x=1686737182;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B2hjpXzaWeM8OT7/yysLcClGVQFFFKoxwvBr9CBiXm0=;
        b=BGiDtiloaV0WzQ3uHy4knefdHmJU85un1qrGqD9miGs79g3shQ31A8PRnGtjJ6S4cL
         KhzcPGZoA7ABjuSOuh5At7Q39EfK63v7WaL++PrV7t59z5yHPvB/ZklYzLDFfJGnlR+R
         bpslU+v3kPne8rbftHd71wrEEOeGyDp7z+3vIvcERHc6JNQudKVKNxGA3777Fzt0J0Gg
         z3mli3vXAubfR6w8aoQyJwYRJcF3XLOuTAoe0a/piJxJttHpAJNRKj2x2wcaLpNoBAHz
         LuUQSD09m3VF9wON+XX31yp20oiqJV6ypuzQ9BxuonDZnTaOr6nqkuYqT0rmFBFQlWw7
         bLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684145182; x=1686737182;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B2hjpXzaWeM8OT7/yysLcClGVQFFFKoxwvBr9CBiXm0=;
        b=SH7c7+sEmdrvzc09kbbW4wKOWr3ttiBAqdPI4dg2iflLpCl9SUT66PLUrHSZEcgDhX
         0rvXbS2dqOiMIBMpW1KoYIZzpUQl3WQWeB7S9V0Vj4r0IryduiqueuMVhO+5KLl2F7wM
         9WZ/24+0DUhRUMmKt8oFfKtmmOj3y/g3tYtx+BfT9VoQyegWo/H5PYVP4d4S5h+kjmM7
         haMbf7ND8daIr+59IAlYjlPkCJAmj2CEv/0lKPJ3lEabe0cHacoe55Fko/At7YTRK8Qw
         4XPN+8mL+sgZUxGTdHrH7Pkso/qAtSagH0C6CLJ1vJjxz+315fGLzroG+cljlR4xQysv
         CggA==
X-Gm-Message-State: AC+VfDxdrZJ/j5En8e2UCrp/oS2lspxvGnU7geXyD7t35z1lLaymTX1M
        VQNWX2730nU/DJUy8LxZ/jTVwg==
X-Google-Smtp-Source: ACHHUZ4sgPSj3/bY/sz0i8Il1c6eLwrf8kl8HHpsjyXJB0xJi8Gxcu96OyGJ+tDfG3La5Lgd6wWFZA==
X-Received: by 2002:a17:906:4784:b0:94f:7486:85a7 with SMTP id cw4-20020a170906478400b0094f748685a7mr34326781ejc.31.1684145182522;
        Mon, 15 May 2023 03:06:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id kz23-20020a17090777d700b009659fed3612sm9193781ejc.24.2023.05.15.03.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 03:06:21 -0700 (PDT)
Message-ID: <4a04ef11-d87d-4464-a907-badc920d595d@linaro.org>
Date:   Mon, 15 May 2023 12:06:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH V8 1/4] dt-bindings: clock: document Amlogic S4 SoC PLL
 clock controller
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
        Conor Dooley <conor+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     kelvin.zhang@amlogic.com, qi.duan@amlogic.com
References: <20230515031557.31143-1-yu.tu@amlogic.com>
 <20230515031557.31143-2-yu.tu@amlogic.com>
 <590560c9-4da6-bbd4-6aac-de57ab5403ba@linaro.org>
 <8c6ad0a9-7820-c7a2-bd3b-1eee87d96728@amlogic.com>
 <33f5ff59-db7b-7576-64cb-972c0dfb0f7b@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <33f5ff59-db7b-7576-64cb-972c0dfb0f7b@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 09:57, Yu Tu wrote:
> 
> 
> On 2023/5/15 15:35, Yu Tu wrote:
>> Hi Krzysztof,
>>      Thank you for your prompt reply.
>>
>> On 2023/5/15 14:32, Krzysztof Kozlowski wrote:
>>> On 15/05/2023 05:15, Yu Tu wrote:
>>>> Add the S4 PLL clock controller dt-bindings in the s4 SoC family.
>>>>
>>>> Signed-off-by: Yu Tu <yu.tu@amlogic.com>
>>>
>>> This is a friendly reminder during the review process.
>>>
>>> It looks like you received a tag and forgot to add it.
>>>
>>> If you do not know the process, here is a short explanation:
>>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
>>> versions. However, there's no need to repost patches *only* to add the
>>> tags. The upstream maintainer will do that for acks received on the
>>> version they apply.
>>>
>>> https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540
>>>
>>> If a tag was not added on purpose, please state why and what changed.
>>
>> Yes. I don't know the process. So I need to add Reviewed-by: Rob Herring 
>> <robh@kernel.org>. And resend V8?
>>
> 
> I would like to ask you again by the way. I'm not sure if I can just add 
> the TAG. Because I actually changed the V8.

Your changelog in cover letter does not describe it. It only mentions
vaguely "change patch series". Describe exactly what changed.

Best regards,
Krzysztof

