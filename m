Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B20F5F0A6D
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230521AbiI3Laz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231458AbiI3L3y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:29:54 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9313DF0D
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 04:20:53 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id k10so6394257lfm.4
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 04:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tSS0OwapmGCYXAOpgg6xlNApn7RpwyeG1gXGqydrbJ4=;
        b=RnNLp5XOC5FP1l1QOpxkRAxm3SlY4+bFuwv0pJvVxm9o2BmI7JrUaMTpc0m30QGvQG
         d1Z+Dk2GdC95Rwi8IFxxd2jGsY0fNMHD5rwNXWrvw/HOyxMGCYhj8XhlnOqerGM3QkIP
         gKm+aRIpScjhv4OapLjH9oPyK+vtEVwNy+8dUrcrWMPeWtYXiJLJ5zVeGeJaUwHJpYIo
         cggQFA664pyFL5A46dvED+9oxamy1IrFZaziE2EoKL93Cbh8a8GD8leRWDV56UED7sIN
         +/EsrEDdSojmlNWOTBRHXMKkoKVTroqXqpOmYJhh1L0otqOa6iiMr9otpnOz+UYMlhpJ
         ZUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tSS0OwapmGCYXAOpgg6xlNApn7RpwyeG1gXGqydrbJ4=;
        b=6Bk0M++bBaDhoSl8qKVvAv7KGgVEeaxxALzgZCT3xzcpzSwQKgFdcPeh73Ht2dKZjR
         WFFxS4ho98D6HoiuYbYEytAwy4f05K2m1q+4TOoGTwuH65JOuTqF9+RDtPfaTvyM4GAx
         +gPNNyd9+GjJPnn/zmPBvXmIptoF+00dBqCRO06WBcvPT5erAN8F9Jg7jL8Wfy0AqlW4
         FkO9lbEtsqrh1Fm1+8BG3Zo6ZaUcaG4V2PrS84RKp5fkTV4Nup59ERgPk5Rsxx+4SA+y
         +pvigcbaoMldNu1HdPBzNy9c2Ib6KzpqdI/4cD5ZAO/dzyFr3y0LC7s78gtEhqxSuGyl
         DpGw==
X-Gm-Message-State: ACrzQf1u1XbEk4+5g/UuBwxG74E7HmDsTa7TstH2GE7WMQ/a5xJTf/Hm
        dQ3jQ1FrRrE++2j5xChgQyUeXw==
X-Google-Smtp-Source: AMsMyM5+Br4pooYTCe1wcBue2LneLOWrbvkc2W5kR2lwYUem3rqWngE6Go7DjWuEqVmBFTIhyvEK3g==
X-Received: by 2002:a05:6512:3503:b0:496:55d:a186 with SMTP id h3-20020a056512350300b00496055da186mr3040836lfs.340.1664536851811;
        Fri, 30 Sep 2022 04:20:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j22-20020a056512109600b0048af397c827sm258553lfg.218.2022.09.30.04.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 04:20:51 -0700 (PDT)
Message-ID: <a0254559-a76d-de87-3458-e7dc148a8daf@linaro.org>
Date:   Fri, 30 Sep 2022 13:20:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 4/4] arm64: dts: smaug: Add display panel node
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, sam@ravnborg.org,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonathanh@nvidia.com,
        arnd@arndb.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20220929170502.1034040-1-diogo.ivo@tecnico.ulisboa.pt>
 <20220929170502.1034040-5-diogo.ivo@tecnico.ulisboa.pt>
 <23bc38b8-ed67-d243-9739-f07b7411be3a@linaro.org> <YzbPz8mL0Yo+vgSS@orome>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YzbPz8mL0Yo+vgSS@orome>
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

On 30/09/2022 13:15, Thierry Reding wrote:
> On Fri, Sep 30, 2022 at 12:51:07PM +0200, Krzysztof Kozlowski wrote:
>> On 29/09/2022 19:05, Diogo Ivo wrote:
>>> The Google Pixel C has a JDI LPM102A188A display panel. Add a
>>> DT node for it. Tested on Pixel C.
>>>
>>> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
>>> ---
>>>  arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 72 +++++++++++++++++++
>>>  1 file changed, 72 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
>>> index 20d092812984..271ef70747f1 100644
>>> --- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
>>> +++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
>>> @@ -31,6 +31,39 @@ memory {
>>>  	};
>>>  
>>>  	host1x@50000000 {
>>> +		dc@54200000 {
>>> +			status = "okay";
>>
>> You should override by labels, not by full path.
> 
> Why exactly is that? I've always stayed away from that (and asked others
> not to do so, at least on Tegra) because I find it impossible to parse
> for my human brain. Replicating the original full hierarchy makes it
> much more obvious to me where the changes are happening than the
> spaghetti-like mess that you get from overriding by label reference.

Sure, it's entirely up to you. I forgot your preference.

But it is a really nice way to have duplicated nodes and mistakes (which
happen from time to time).

Best regards,
Krzysztof

