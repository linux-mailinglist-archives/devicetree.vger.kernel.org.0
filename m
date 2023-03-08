Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71D066B1043
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 18:38:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjCHRiU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 12:38:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjCHRiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 12:38:18 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EAB421A22
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 09:38:17 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id cw28so68874316edb.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 09:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678297095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tgxVVauKSX/U0bXbgIYmNNiutoT4dF4ii6OJzRsRR5g=;
        b=LKOGfmcDc/Oi00y16H3E0LAnFCWwTtOkvxW58X5/dBkLhVKi1AfNpqzdgB0qZOKFxb
         zi43G5bvUy1MtJSWaK4d9n5rLBmEUyFLavRN2yZLp3f/yyHdHvtofvih2+k5CRbSYaVw
         LBr9iL5yJUBalFXCnsofumNgH7mhSQHMecZpBvggWG40GkK8pW/Qv4Q1IG1duQeiCvQd
         En0EXMllspN69GqJaOIrrcGXOcZvRvUbqDfkMSDy+GBeWYZYQPn5DYNe7+1rfhX9A7Cp
         DKsXM7v8Or3wUyGNBpCifYtWJsDMXShQ7w0oUEkn68ZcSE20rFgjIOotwSCxMY5ndzxS
         /eVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678297095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tgxVVauKSX/U0bXbgIYmNNiutoT4dF4ii6OJzRsRR5g=;
        b=uIpqjQ/DBbFTsKk+16PXZMARjl8qkFj5AcoDuU/aMuUqkaidVxDKggv7MvnvrfRt0B
         DmqyYz19nb/0Svs5pU2psHszVK/mjkv5yz7UmVLuy2UELgwZ2ycy2Xd3i8+GIvyQYS9k
         oHBBx+fGFJjSyq5rLFJy2THbNXDr6+Ds0DGqejA0KmhOr7oUiOhsF2xOHC3wHJjIAgHZ
         G8dwFaBx8YYqom3pyIAK6NJOl30fkM4se2DHmGuq3lATdBAsHShGDDLe05RYgEFSEl3u
         P4g9zmrW7hSnHl+bODxyOecAPaSKKREaqgVK/4Ehv3Yx1mh2oHdWqMMXehoCtcTa6A+x
         ImEQ==
X-Gm-Message-State: AO0yUKUSAB7t4JgH03DOgD2zE9aPRzy/41KtrcTJQ0selRNvFXl2AwiW
        GCNiFv0ImfRzGtxf0mx/y5/sJA==
X-Google-Smtp-Source: AK7set+MSguNLw31jMo/5DJC83u4ZFA9ITKY02ZD9u91ZIUPerVI8NeHyxpVSZtjEOGeLeSIdbh8JQ==
X-Received: by 2002:a17:907:a581:b0:913:f170:c0e with SMTP id vs1-20020a170907a58100b00913f1700c0emr9688379ejc.20.1678297095561;
        Wed, 08 Mar 2023 09:38:15 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id bt5-20020a170906b14500b008cca31606a8sm7810251ejb.51.2023.03.08.09.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 09:38:15 -0800 (PST)
Message-ID: <976f0b41-c302-f2f2-eb6c-959c62ba3b72@linaro.org>
Date:   Wed, 8 Mar 2023 18:38:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Content-Language: en-US
To:     Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Brian Norris <briannorris@chromium.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Tianling Shen <cnsztl@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
 <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
 <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 17:09, Vasily Khoruzhick wrote:
> On Wed, Mar 8, 2023 at 3:31 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> index 35f74eda30ae..0813ad22dc76 100644
>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> @@ -201,6 +201,11 @@ properties:
>>>                - friendlyarm,nanopi-r4s-enterprise
>>>            - const: rockchip,rk3399
>>>
>>> +      - description: FriendlyElec NanoPi R5S board
>>> +
>>
>> Does not look like ordered alphabetically. Are you sure this is correct
>> place for it?
> 
> Hmm, strictly speaking, "FriendlyElec NanoPi R5S board" should go in
> between of "FriendlyElec NanoPi R2S" and "FriendlyElec NanoPi4 series
> boards" if we want it in alphabetical order, not after "FriendlyElec
> NanoPi4 series boards" like in this patch. But it doesn't look nice
> (because R5S will go before R4S).
> 
> There is already similar ordering (alphabetical/chronological for
> model) for Radxa Rock Pi - "Radxa ROCK Pi S", "Radxa Rock2 Square",
> "Radxa ROCK3 Model A", "Radxa ROCK 5 Model A".
> 
> However if you want me to sort it strictly alphabetically, I can send a v2.

No, it's fine, I also got a bit mislead by R2S (I thought it is RS2).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

