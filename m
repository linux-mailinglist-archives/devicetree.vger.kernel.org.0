Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC816629CD6
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:01:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbiKOPBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:01:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiKOPA7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:00:59 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C54324087
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:00:58 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id b3so24837914lfv.2
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F4jUAwmhTQdTrwQKeKo2XqBWyE1rzqyVY9EqrXd1rb4=;
        b=yWlfIKfy1RjmW4cqzHEQYZ0P6H3bTMh70oUTOEi7dAkF6t8/GEcAvUZrYY7ugZZsqp
         /Hdlt3APkEkt28div8SyumBc1+KVCvgc+INVTlcp1s0IjvJP1g3lG8iXVGjywGKjifnQ
         aBxGT/fImyqWcbDHuZo0DLe7CU3jeOKDALA+4i5GjRScq2+6OkW7Bae3IW6l4ALmAWyJ
         k8ItIm9bclRbK98aOf6+tZRbqG+vjjwR2z5J/m1NugPrip33q9SXyHy7JM2XyUf1ivkS
         4ygWO41BOOQG7sz54oV2TzccEwfKTVfRC/qbv8duc9T/J5XeHLurKqwVbKDi+C4ljgf1
         13Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F4jUAwmhTQdTrwQKeKo2XqBWyE1rzqyVY9EqrXd1rb4=;
        b=3Xg9x7UC/KZ77wmmwSWyP2HqL2+bCu5REuI2ow8fMsdR+lftVSgQyu4S2G8p0r20j8
         siTgkPn8b147RxqOWhLKtSeyoTJWPjzZ/0/Pgu8iALlTYz2CcaY22rnXdicF23uGyItk
         KBNbPM+VN6KeBqkPGQEy4vLvZU/+Q1xMtLH1Kwngot3ThofxOW1IoVixHKxDjRWMSNpR
         5X2bDkrc1d1hkVZg1tJVhB9rksR7z87HZWJ0KEhfUEfJWvMsnG0+7kLIEd6kGZRn2agQ
         Ag81hrdau/IIWxElOaS0bVZ/Hlkp7wA5j5usIsWD1qIgiKZnN1IKYuW9FZ4OqnbCACeU
         DIkA==
X-Gm-Message-State: ANoB5pkeEoWdBoJmJqPjvEwRcCO6lu56W4sEq2F73jPnDs3f3Tqa0JIw
        IyE0qSWTrZV1fIelE+W980Kheg==
X-Google-Smtp-Source: AA0mqf7YV/RWxvpJd+exJ8ozFBpdV0AmoKBtjMSdoMFabRmcv88VA/ScE0Y/rh2lP/33+6Vl6LgfIg==
X-Received: by 2002:ac2:5396:0:b0:4a4:6ee3:f57b with SMTP id g22-20020ac25396000000b004a46ee3f57bmr5439911lfh.17.1668524456417;
        Tue, 15 Nov 2022 07:00:56 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y29-20020a19641d000000b004a22599c4ddsm2234896lfb.268.2022.11.15.07.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 07:00:55 -0800 (PST)
Message-ID: <4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
Date:   Tue, 15 Nov 2022 16:00:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-4-andre.przywara@arm.com> <Y2ypy0CM8rJGu2g4@matsya>
 <4438485.LvFx2qVVIh@jernej-laptop>
 <52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
 <20221115104426.20728ba5@donnerap.cambridge.arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115104426.20728ba5@donnerap.cambridge.arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 11:44, Andre Przywara wrote:
> On Tue, 15 Nov 2022 11:03:24 +0100
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
> Hi,
> 
>> On 15/11/2022 07:01, Jernej Škrabec wrote:
>>> Dne četrtek, 10. november 2022 ob 08:35:39 CET je Vinod Koul napisal(a):  
>>>> On 06-11-22, 15:48, Andre Przywara wrote:  
>>>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>>>
>>>>> The F1C100s SoC has one USB OTG port connected to a MUSB controller.
>>>>>
>>>>> Add support for its USB PHY.  
>>>>
>>>> This does not apply for me, please rebase and resend
>>>>
>>>> Also, consider splitting phy patches from this. I dont think there is
>>>> any dependency  
>>>
>>> DT patches in this series depend on functionality added here.
>>>   
>>
>> DTS always goes separately from driver changes because it is a hardware
>> description. Depending on driver means you have potential ABI break, so
>> it is already a warning sign.
> 
> We understand that ;-)
> What Jernej meant was that the DTS patches at the end depend on patch
> 01/10, which adds to the PHY binding doc. I am not sure if Vinod's
> suggestion was about splitting off 01/10, 03/10, and 10/10, or just the
> two latter which touch the driver.
> 
> I can split off 03/10 and 10/10, rebased on top of linux-phy.git/next, and
> send that to Vinod.
> Then I would keep 01/10 in a respin of this series here, to satisfy the
> dependency of the later DTS patches, and Vinod can pick that one patch from
> there?

There is no hard dependency of DTS on bindings. You can split these (and
some maintainers prefer that way) and in DTS patches just provide the
link to the bindings, saying it is in progress.

The bindings should be however kept with driver changes as it goes the
same way.

Best regards,
Krzysztof

