Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F190E68EF2B
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 13:40:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbjBHMky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 07:40:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjBHMkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 07:40:52 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B47D3A879
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 04:40:51 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id j25so13080384wrc.4
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 04:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SoZzOz36xn+BgE1e6kZnc3ii3Vw8oIG1xUizj+g3lJs=;
        b=PCWnnJ0O1JCCUgSraQE5Zv4V3gCiohSzwp1M51kueo0+pADF9LJnBKoPvU8rulV4ff
         asNUYcrfBk50sj68ZIagE0QKYvSvTArr1yj+nzsRrPElGXsFVXoHrPM1PVILajirPILw
         uQz0I7/FeQtL+XgttTblL/w8njJt3BJClsyCvIwBfIx+lfnpLCCqsnOI1Flj+UhP1+nK
         RLCP2vr1gvOzMzi2LGL6aX/jkIS6PB7Cdvfts8H16PeLX7GjQLsl4qX0F4Esg9wJKubP
         MN2ddFA2uLacaJIC4z6pDKdwtwAw/m7TGD2KFjAGgLA7sSlcBCmMYKMzRqcFPIrAVIr7
         KDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SoZzOz36xn+BgE1e6kZnc3ii3Vw8oIG1xUizj+g3lJs=;
        b=6bIwOtALLYc85iZ3SI0yguuho3h8otUpJW8H8m223X1JffWRNW7MWHLOFOnQvrZqy/
         OVabPZ9zAz8032f0I8KcHFHiTEKCc1ED9NGPNkcugqCIDYCEA0tVSwROhLLfA7Zq01TF
         pmtYRq230zytWJsJyTmUuAEuuAygbaOPZQjzFS+6TQsyVrfqJTa2bx8MdJTeG1hjGc/+
         IYM22Zgmj2E6Zj39uuOIlveNJSodAmqluD/iKj0Ou5GFTwqZ6ChH7qrsZeffaW3wwEyB
         PBpLw9wX4RvckGfX3K83McHHrABS3651joU537+jV9PAJeVC6TYr4poDopWAMopHzufK
         oZSA==
X-Gm-Message-State: AO0yUKVMAAZQDbjEKoGphVHVIkbQd48o32tP+M3gx2HH7+Kc3+LZI16i
        DFWVm6K6bQukz9eFRFubYkN4zw==
X-Google-Smtp-Source: AK7set98/DHovmfyhRgw7rfcf1Kqy4IHwDZOKbv09SNFqZ8LFy392y2+i2ttuEXDWAWA4pWoTvZo7Q==
X-Received: by 2002:a05:6000:1141:b0:2c3:db5b:727d with SMTP id d1-20020a056000114100b002c3db5b727dmr7667367wrx.53.1675860049313;
        Wed, 08 Feb 2023 04:40:49 -0800 (PST)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id r6-20020a5d4986000000b002bfc24e1c55sm13360757wrq.78.2023.02.08.04.40.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 04:40:48 -0800 (PST)
Message-ID: <61db3f1c-b780-4385-f991-ebb4c3423791@linaro.org>
Date:   Wed, 8 Feb 2023 13:40:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: fr, en-GB
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
From:   Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 27/01/2023 à 14:02, Heiner Kallweit a écrit :
> On 27.01.2023 08:59, Neil Armstrong wrote:
>> Hi,
>>
>> On 26/01/2023 15:03, Heiner Kallweit wrote:
>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>> see [0]. This was confirmed to be fixed by using level-triggered
>>> interrupts.
>>> The report was about SDIO. However, as the host controller is the same
>>> for SD and MMC, apply the change to all mmc controller instances.
>>
>> Thanks, I applied it in for-next so it runs on the CI tests.
>>
>>>
>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>
>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>>
>> I think we should find a better Fixes or perhaps split in 3 so it targets the
>> right commit adding the nodes for each family.
>>
> This would be the cleanest option, right. Practically it shouldn't make
> much of a difference. The chosen commit is from 2019, SDIO interrupt
> support has been added just recently, and regarding MMC/SD it seems no
> problems caused by edge-triggered interrupts are known.

I understand, but the Fixes tag must reflect what commit introduced the breakage,
so either keep a single patch but list all commits introducing the MMC, SD & SDIO nodes
on the 3 families, or split in 3 and specify the commit introducing the MMC, SD & SDIO
node on each family.

I'll prefer the later.

If the patch isn't applicable for older kernels, it doesn't matter as the stable team
will only apply the fix on a tree if it applies and builds.
If you target an older release you can submit them a patch reworked to apply
correctly if the original patch is already only Linus master tree.

And don't forget adding the Tested-by tags.

Thanks,
Neil

> 
>> If the test doesn't report any breakage, I'll probably ask you that.
>>
> Sure.
> 
>> Neil
>>
> Heiner
> 

