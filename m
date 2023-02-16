Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F9946990EF
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:18:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjBPKSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:18:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjBPKSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:18:22 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DA5D4
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:18:21 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id jg8so3946260ejc.6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7xRm+/4FpVvgULsREaJ7c5e2nJTQURFW8fIUCxaU0fg=;
        b=TmElzeXhZ8MfrNoiINxw/tdWJq2JGa6TL8u+fpv007IvJnZRydkm2lddBKE1nx2BJJ
         Rfv6dGu43MeuPWiqvwnEh5bxb7+qjyc/LzEX5x1vlgxKJF3OdhBEwql+A+97nHFA0Xa4
         IvUmUVjQostyxhOlmOZzCEeqa5ffZOfSuaj69rc5UgAYg+4/XpRFek4EnZKBBOZn871u
         vwzWNyQ8O3IZDGCt4XDzFwktjB46cBdlc3a7ipg9KSBXplNap+g0l6jyltHtPU9ieZe6
         Xx8KX7HD25nSAQT8aAwjNm3bT42KF9/yH/9VsVTwqQ5QPFXssZs3867EYV2HGO4kQSeV
         AWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7xRm+/4FpVvgULsREaJ7c5e2nJTQURFW8fIUCxaU0fg=;
        b=CSqTghc2bqWJONkRUyTYqPExvxTKC46o/N1zaC+5/tw8DookB6nrRgjvMvuBk9O2rC
         8rIpKeM4VOCNwbpRcUcbLIQrS9x128PRyJ7AwMTk+O1pNcZmNkzdgL/3lHWjQdLTMTIW
         aCaCsza9rnDjmXQGQkG5cfBUo5yJapXUjddSAVtQ+LQvxYT2a5peFpVhCT7NARNUW5Z3
         D/OkMG+DpwbZiH0G+8Vbr/QjjWHBcJGxQlXnYQrPZi3Y8y8UYjQKXjFPZoNtS9/BecCG
         iqHIUp3nwCi51Dduuv0BNEgMlqMgBMePDzTVhyU9TcIdh8d8EpFhC5XmwbBQnPnxuoVh
         Pn7A==
X-Gm-Message-State: AO0yUKV96TPhNK5xmBxrv8/VmklI1GzDONrWnrq0MiU+lAWdcFyCwyUP
        smEZT/pVmPmDuvbrbOobh7l5Xg==
X-Google-Smtp-Source: AK7set+DarsZaH/hWMGy/10viYDOBB2pRRqKtjz34oEaeF2il4rj0qe7sZICD8Ug1ebcxd/f0RjKUQ==
X-Received: by 2002:a17:906:3e56:b0:878:7f6e:38a7 with SMTP id t22-20020a1709063e5600b008787f6e38a7mr7620274eji.44.1676542700243;
        Thu, 16 Feb 2023 02:18:20 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x17-20020a1709064a9100b008b12614ee06sm610840eju.161.2023.02.16.02.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:18:19 -0800 (PST)
Message-ID: <fd2f372f-4a1c-72c0-574d-1d5ef99dbdbc@linaro.org>
Date:   Thu, 16 Feb 2023 11:18:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: sama7g5-pdmc: add
 microchip,startup-delay-us binding
Content-Language: en-US
To:     Claudiu.Beznea@microchip.com, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de, perex@perex.cz,
        tiwai@suse.com, Nicolas.Ferre@microchip.com,
        alexandre.belloni@bootlin.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230214161435.1088246-1-claudiu.beznea@microchip.com>
 <20230214161435.1088246-3-claudiu.beznea@microchip.com>
 <485d74fe-bfb5-c55e-724f-304476624abd@linaro.org>
 <954cdf90-c41a-4e21-31e0-88a0baf26065@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <954cdf90-c41a-4e21-31e0-88a0baf26065@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 11:15, Claudiu.Beznea@microchip.com wrote:
> On 16.02.2023 12:04, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 14/02/2023 17:14, Claudiu Beznea wrote:
>>> Add microchip,startup-delay-us binding to let PDMC users to specify
>>> startup delay.
>>>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>>> ---
>>>  .../devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml   | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml b/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>> index c4cf1e5ab84b..9b40268537cb 100644
>>> --- a/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>> +++ b/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>> @@ -67,6 +67,12 @@ properties:
>>>      maxItems: 4
>>>      uniqueItems: true
>>>
>>> +  microchip,startup-delay-us:
>>> +    description: |
>>> +      Specifies the delay in microseconds that needs to be applied after
>>> +      enabling the PDMC microphones to avoid unwanted noise due to microphones
>>> +      not being ready.
>>
>> Is this some hardware delay? Or OS? If OS, why Linux specific delay is
>> put into DT?
> 
> It's the delay used in software workaround that IP needs to filter noises.

Then this sounds like OS? Linux related properties usually do not belong
to DT.

> The IP is not fully featured to do this kind of filtering on its own thus
> this software workaround. This delay may depend on used microphones thus
> for different kind of setups (PDMC + different microphones) I introduced
> this in DT.

I understand your driver needs delay and I am not questioning this. I am
questioning why this is suitable for DT?


Best regards,
Krzysztof

