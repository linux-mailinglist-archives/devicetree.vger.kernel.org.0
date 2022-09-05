Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E57EF5AD7A2
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 18:37:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbiIEQhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 12:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbiIEQhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 12:37:14 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 278582E9E8
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 09:37:13 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id j14so13827386lfu.4
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 09:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vHhwCsZCW1W87izzKoQXEtZDJidSbg39faSi++Jz1EA=;
        b=Hs76dSqDWe4kvl6c/fDGzDD8lGCDDYfDRfroTV+KRedKvrHF8xcixnkpJZO0m+tbVG
         BD0/RDf4H3CKQqYg4ClY/wD3YsrS/YaY4GrkykGkg6zCEkAj746s1rLOlHyMCbRroD3T
         E0ZcwcY8qV1rHkc8hqApjyZyYOvYcUgWGTflcD0Jq1RQItH/op/+f89wf9YpWJ+fTnw1
         lqeu2yFF6q/1PolM+sSJRQlGHTdA7JZ7o+AtTFyvF6j+Hc+DGo89ZXDgFgjJBsj53H5Y
         rnzuk/MLK/iliwBXG9yvSCMdoLDGN0OTJpay8kfrj4e/UGbxwVh175RS8DhNa6J9BuJO
         9s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vHhwCsZCW1W87izzKoQXEtZDJidSbg39faSi++Jz1EA=;
        b=f6NM9cqXmDqDGqyPy72/u504Sl9ikJN9hCOPqw0VN/snnhaz5mZZhmv4wn97zfEfgM
         36ALOP5HZWgRoCHEmoD0aZsy+WAUJIb9N/E4bzAWxC8MR6d/P+ZYTbgxiTG47HPCaNDs
         nJe+i1WUV582gld81z4reA1P/e+Bj3rujz4RjJ/eYVd6RXiveMRY0taSYwCY/34zrLRV
         XNGnm4TrBdMKHG4ALj9C/sJXO9BvJ0wJJkZybzmo2FaeOi9CuXUaOxQpuSI1k790WsQ9
         JesviJm1ZKns19L0Rt5ytwJRftk4Soq15bFcGZVnx3saLikz7KN5H6mbOrfj0lxdb0Q/
         lncw==
X-Gm-Message-State: ACgBeo3bREIHj4o/YLBFG5Fyhb3aGpqdQD0fsvILUy098FSdzL27OcLN
        AVekpXjsrqqUfV4SmmXsNAFyvA==
X-Google-Smtp-Source: AA6agR5lJ+DfGwA5ugZIl+OLFvF4PHHsMPJLqsjuYjra9J+uDYhTHC7mRvCPUhR2Xqgbkgw5bH3eEg==
X-Received: by 2002:ac2:5a09:0:b0:495:79c7:f2f9 with SMTP id q9-20020ac25a09000000b0049579c7f2f9mr3203290lfn.422.1662395831506;
        Mon, 05 Sep 2022 09:37:11 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg34-20020a05651c0ba200b002618fbebbbcsm1474151ljb.47.2022.09.05.09.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:37:10 -0700 (PDT)
Message-ID: <bbfc49ab-bc55-c6d0-fb0e-1938ea13abb0@linaro.org>
Date:   Mon, 5 Sep 2022 18:37:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220822181009.GA80526-robh@kernel.org>
 <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
 <3175969.jE0xQCEvom@diego>
 <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFw2FSr4OfaZfxGcDcMxQHM1_=sPPRyJq+qd6mduwBY8yg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2022 07:27, Jagan Teki wrote:
>>>> Dual license please. Need an ack from Rockchip for that (and not just
>>>> on this one).
>>>
>>> Heiko or Kever.
>>>
>>> Can you comment on this?
>>
>> I guess this is more a question for Kever,
>>
>> @Kever can Rockchip allow that dual licensing for the dt-binding header
>> (MIT as second license I think - at least like all the other binding headers)
>> both in this patch and also in the other header-patches of this series?
> 
> Any comments on this?

https://lore.kernel.org/all/510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com/

Best regards,
Krzysztof
