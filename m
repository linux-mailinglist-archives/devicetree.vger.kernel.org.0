Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3019B675035
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 10:07:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjATJHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 04:07:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjATJHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 04:07:30 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665B1EC4A
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 01:07:29 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id t5so4250311wrq.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 01:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+9cxosX/i5nv3EeDP+R/+smZUAdn9NQG0UWoxfN1zBA=;
        b=tAzBgOXegXMIff64cxp1KeBPq6FHZg/dktVY3gc2WeTpXyyTabEyuMhnkY4Ajfyg3q
         qU6mBjnCDTsEqtSoJHAkQ9cG2N4Qt6LiUFIhXDHPVQOTkzhg2ZI81vDlIGhL2JRA9A3e
         tw2GcXAroNgZN3/a5OvpTdddfTnLO3t9kVCnlzsZ7AjS5Kc2KgRHPiQwKpoFBsKoDxYN
         47rG4SVhVyRZc7fUW4R3WWzHYqjIwck/y1HqIU3yqXeEzyj3fNUUlpifTVLCWSaCXtiw
         Nxa0B4qi3JYsA8C3q4Q2JGl2FPstEoZWwNk2REzElun0BxxzQCC/kXOlJ2iczy0GvJwO
         wl5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+9cxosX/i5nv3EeDP+R/+smZUAdn9NQG0UWoxfN1zBA=;
        b=sm2G1VIL+Pp28WPDS0RORN2bbUVOjlUNakQ1ZQWS5poscTZG32yiWm0ddBITqbLHP1
         VUTBClJdIMk8W5AX9nTXc8wDF1pti3SE0RnbfWSJrYMp249pf5cTRV0oSHLrXEW58PJ0
         fYcndCOxFkTKLCCJOX2srl40R5o3Urlwlxicj08Xw3cnikHwqfHrB6l0wD7zKafQhEap
         XhWslsLvB2L4rCTroytyzrWkSkwjOOF33BEPDJGuvB1dJGCRHXnLeTTAn87tB1GkId8k
         9vfJXW75NUrMGqOafeHk/aIwdMLlqJip/R0IYHxVCEOQuQ7MuYL9uifff1+gk6xYwgHe
         Y4Nw==
X-Gm-Message-State: AFqh2kqPBgyzJHyuDOahSuGSe6qSufcr4NkWebPy52GSJHMiucG6UFQ1
        hdPNHi5fi9gSpCvymvt81FBH9w==
X-Google-Smtp-Source: AMrXdXsHwTJReQjKFzfioraTTDlbnBxvBKuyMDPfO/H6c7I+wvv/GRJ0uzqiO/nuw8Z4Ho3JJyOwVA==
X-Received: by 2002:a5d:6350:0:b0:2bc:7d12:7400 with SMTP id b16-20020a5d6350000000b002bc7d127400mr12788369wrw.36.1674205647883;
        Fri, 20 Jan 2023 01:07:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t13-20020adfe10d000000b002b6bcc0b64dsm23316547wrz.4.2023.01.20.01.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 01:07:27 -0800 (PST)
Message-ID: <fa9e401c-01d8-dd50-366e-ef582828797f@linaro.org>
Date:   Fri, 20 Jan 2023 10:07:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/9] dt-bindings: arm: fsl: add TQ-Systems LS1021A board
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-2-alexander.stein@ew.tq-group.com>
 <3c1b8078-1f23-aba7-f3b6-ddead64e85c8@linaro.org>
 <23586057.ouqheUzb2q@steina-w>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <23586057.ouqheUzb2q@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 09:58, Alexander Stein wrote:
> Hi Krzysztof,
> 
> thanks for your feedback.
> 
> Am Donnerstag, 19. Januar 2023, 17:59:20 CET schrieb Krzysztof Kozlowski:
>> On 19/01/2023 15:42, Alexander Stein wrote:
>>> From: Matthias Schiffer <matthias.schiffer@tq-group.com>
>>>
>>> TQMLS102xA is a SOM family using NXP LS1021A CPU family.
>>> MBLS102xA is an evaluation mainbord for this SOM.
>>
>> typo: mainboard
> 
> Thanks.
> 
>>> Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> ---
>>>
>>>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
>>> b/Documentation/devicetree/bindings/arm/fsl.yaml index
>>> 3ba354578e8f9..b54a920934c9d 100644
>>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
>>>
>>> @@ -1164,6 +1164,13 @@ properties:
>>>                - fsl,ls1021a-twr
>>>            
>>>            - const: fsl,ls1021a
>>>
>>> +      - description: TQ-Systems TQMLS1021A SoM on MBLS102xA board
>>> +        items:
>>> +          - enum:
>>> +              - tq,ls1021a-tqmls1021a-mbls102xa
>>
>> Can mbls102xa come with something else than tqmls1021a?
> 
> I don't expect this. MBLS102xa is the starterkit carrier board for TQMLS1021A 
> module. But the module can come on other custom carrier boards.
> This name schema is similar to e.g. imx8mp-tqma8mpql-mba8mpxl.dts

If mbls102xa has soldered module, I would drop some part of it. It's
really redundant. If it is a SoM, so module could be replaced, then it
would make sense.

> 
>>> +          - const: tq,ls1021a-tqmls1021a
>>
>> Why duplicating ls1021a? Can tqmls1021a come with something else? This
>> is redundant.
> 
> I agree this is somewhat redundant, but this follows the naming scheme 
> '<vendor>,<soc>-<module>' which is rather widespread for i.MX boards/modules. 
> TQMLS1021A is the module name I can't change, actually part of the series 
> TQMLS102xA.

Ah, you're right... the double ls1021a is a bit confusing but that's
indeed common pattern.

Best regards,
Krzysztof

