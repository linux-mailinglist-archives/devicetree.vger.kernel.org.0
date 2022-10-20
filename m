Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9748E606002
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 14:18:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230081AbiJTMSp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 08:18:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbiJTMSo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 08:18:44 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A7419188D
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:18:42 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id p11so1357850qvr.12
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6P29Au+mNsUaLWGRFWpA1rpC+F5XcqKKfHLDcUXt2LM=;
        b=gX0c4gwqfE3LYsCNebzbubSDDy44gkgCDd/bgcEYCNFxJ3S3V+Os771bMGcp2U4SQa
         /YTGk8l7AdlBYLAjV4+LpSfweRGV0Ee/1DEuBzUXa4cRaF42Owp8B7he2aHeYARRSXez
         tqijng7a14Hgs8m1Ozz/SfS09dRAdLNP1QWHIXPahDZFyoqiEIpplf/Fq5p5rrp0CDAN
         ky/rLt6V0kKS5J8acDZh9vnF/XIAvFuF+8RxNp/PXd8A3FVPc7sTTG7tDR0aLbCrCyjA
         zDqMRJ6s+IUg7ggVW2OtRNRp7iogxPq+lFMQWwZ3513MQytj8dgURnKL+1E7kWrM5+Ty
         /Zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6P29Au+mNsUaLWGRFWpA1rpC+F5XcqKKfHLDcUXt2LM=;
        b=uQqPKRRGDvGNPF6MWDjiJDY2/T73WhXiUqxZ+MQ6ViGJbEg9XKCZ0+ZrFmiXBNMNjP
         8Y4nxL1WgaSf0eeyTXGEwd4C1cWv53E5nMEVW3jQVhwZIKG3fOzg+jlFfeKROfzWpwhE
         ogl+RmmFRVqCMRmaK2sKYMCmnW8lhPq5rIup2cm9nNtLgepnUeqbSljPyCH9HWiK1hS8
         DUulB+EwSQu1PCgxV9cjkNEIAdpGaCYGmkgl3+UTTjw/SJhuD71YHXAny2HSpsTg+MEN
         YafioZlaPzGpEBgIgrGblTzFkheRMAQbf5WFj4AZaMMUeWGKdb6bgG4hHlYNYRLi16P5
         GT7Q==
X-Gm-Message-State: ACrzQf237px3FF8BeURHXnBKXzzkNTxLmKVzVvu5OfKpem2Q1qJNEb4Q
        rFeVqkfzEIWUKoiPh0NfhV2Rrg==
X-Google-Smtp-Source: AMsMyM6cXFBCkNgP0DqHpNDj7XnN6Spz2TY86LLtTMXRJIAvMaTzzlwSmMWcFPK2MjNbKNTmSJkqtw==
X-Received: by 2002:a05:6214:2242:b0:4b1:ccb3:aced with SMTP id c2-20020a056214224200b004b1ccb3acedmr10831498qvc.51.1666268321693;
        Thu, 20 Oct 2022 05:18:41 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id g8-20020ac87f48000000b0035cf31005e2sm6172602qtk.73.2022.10.20.05.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:18:40 -0700 (PDT)
Message-ID: <ea6893f6-be39-697c-4493-7f1c0ed6708d@linaro.org>
Date:   Thu, 20 Oct 2022 08:18:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: fsl-imx: document suspend in
 wait mode
Content-Language: en-US
To:     Andrej Picej <andrej.picej@norik.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
        linux@roeck-us.net, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-imx@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, s.hauer@pengutronix.de,
        wim@linux-watchdog.org, robh+dt@kernel.org
References: <20221019111714.1953262-1-andrej.picej@norik.com>
 <20221019111714.1953262-3-andrej.picej@norik.com>
 <7508670.GXAFRqVoOG@steina-w>
 <56118d35-dfe6-f46b-9fc7-28aca6530fb5@linaro.org>
 <d93503b7-fa65-d2ae-461f-56d68bf312e0@norik.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d93503b7-fa65-d2ae-461f-56d68bf312e0@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 02:23, Andrej Picej wrote:
> Hi Alexander and Krzysztof,
> 
> hope I can reply to both questions here.
> 
> On 19. 10. 22 17:51, Krzysztof Kozlowski wrote:
>> On 19/10/2022 09:00, Alexander Stein wrote:
>>> Hello Andrej,
>>>
>>> Am Mittwoch, 19. Oktober 2022, 13:17:13 CEST schrieb Andrej Picej:
>>
>> Missing commit msg.
>>
>>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>>> ---
>>>>   Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml | 5 +++++
>>>>   1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
>>>> b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml index
>>>> fb7695515be1..01b3e04e7e65 100644
>>>> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
>>>> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
>>>> @@ -55,6 +55,11 @@ properties:
>>>>         If present, the watchdog device is configured to assert its
>>>>         external reset (WDOG_B) instead of issuing a software reset.
>>>>
>>>> +  fsl,suspend-in-wait:
>>>> +    $ref: /schemas/types.yaml#/definitions/flag
>>>> +    description: |
>>>> +      If present, the watchdog device is suspended in WAIT mode.
>>>> +
>>>>   required:
>>>>     - compatible
>>>>     - interrupts
>>>
>>> What is the condition the watchdog is suspended in WAIT mode? Is this specific
>>> to SoC or platform or something else?
>>>
>>
> 
> Sorry, what exactly do you mean by condition?

Ugh, I also cannot parse it now...

> When the property 
> "fsl,suspend-in-wait" is set the watchdog is suspended in WAIT mode, so 
> this is defined by the user. Didn't want to apply it for all the 
> supported machines since there could be devices which depend on watchdog 
> triggering in WAIT mode. We stumbled on this problem on imx6 devices, 
> but the same bit (with the same description) is found on imx25, imx35, 
> imx50/51/53, imx7 and imx8.

I meant, what is expected to happen if you do not enable this bit and
watchdog triggers in WAIT mode? IOW, why someone might want to enable or
disable this property?

> 
>> And what happens else? When it is not suspended in WAIT mode?
>>
> 
> When you put the device in "freeze"/"Suspend-To-Idle" low-power mode the 
> watchdog keeps running and triggers a reset after 128 seconds. So the 
> maximum length the device can stay in this mode is limited to 128 seconds.

And who wakes up the system before 128 seconds? IOW is there a use case
of not enabling this property?

Best regards,
Krzysztof

