Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4F769459B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 13:16:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbjBMMQF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 07:16:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbjBMMPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 07:15:50 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55A321A48C
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:15:45 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso11113144wmp.3
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7nGDQUNd9dBhdPcaBB5lS2xMBZ0fK4Ssa5kfOoMGbws=;
        b=cIhaMCB4BlTai2KXgrCobcWsnPdz+t1msylr+Bi5g1qV9f5CT+aIUjFII8rpwW+nQN
         s4+9JDu40Rc29nuqwPlxdcoyMPerRfwAgzeW154mxfoACZw1XjqsDNHEN9ZhwNeRJCRr
         Mx709FYcp+F7NQYu40sRhmfObWT8j6gKJ8sVBdhVBy3fAFHgRfiJv4Kr9UrzUnx7PzDR
         Mg59T7dFDSJwPL7HBhroJMsaINYF0nwTCueDOu5M4vo9DOzfdY4TVbSZP7dH88YWkC8b
         Gn+q9E1A20+LmFXBsq+SS2SxlOsaP94aVgORrmpf2s/BRd8wcNZnDqHvldaKhT7FEqSX
         Zvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7nGDQUNd9dBhdPcaBB5lS2xMBZ0fK4Ssa5kfOoMGbws=;
        b=pP7pUBoCuZ0Gm1CAuaLkyGOEAnQmjfI56yd8cjK0LFMHLJS893PQ4ffM6Jp1yy6prD
         L9hnUSLDPTcF4cFQ7RdmfQ4+UWxxPr1WOg1RNqH/UFMjmG/cIEIxe/Ytj335QKd8Pzqc
         6t7b+dwqWHNgsltHrl1Kj2iBUvIGyoIEvJ5ngiIlz47ZdmDIwaJAE6c4O0oLSmaB0sJJ
         tmVyH2iO4mD8P7G9tzoBxOM1HGLsV4ItWO3VSUeN2L7xddvPB6E9yJSizMBYhVe4r67W
         1rO+4k2fr6H94EO2+ciNTeAbX+AaLjxOS3dsZrdqVU9ZBrVx+5y/O6wXR034nO8aGdV5
         wfLw==
X-Gm-Message-State: AO0yUKUGOlu42NeF0Vq0ly0URXJ/tQZqJsDaoac2UkSe8TWS1Wi8vhDn
        HaNZzflYmJ8jZnWo8MFMd3KYWA==
X-Google-Smtp-Source: AK7set9Unb3/mM6Jb8DIEP8nwSjvIRhez2tP5/wP/NsuECBWeVdd7MKxEHBBQDa3Cwub5BNcRvXK9Q==
X-Received: by 2002:a05:600c:43ca:b0:3d9:a145:4d1a with SMTP id f10-20020a05600c43ca00b003d9a1454d1amr18736425wmn.34.1676290543641;
        Mon, 13 Feb 2023 04:15:43 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a3-20020a05600c224300b003db01178b62sm16891996wmm.40.2023.02.13.04.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 04:15:43 -0800 (PST)
Message-ID: <0f5545ee-0d3f-96fc-99b4-9c757532a71d@linaro.org>
Date:   Mon, 13 Feb 2023 13:15:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 02/17] dt-bindings: arm: apple: apple,pmgr: Add t8112-pmgr
 compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>
Cc:     Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v1-0-cb5442d1c229@jannau.net>
 <20230202-asahi-t8112-dt-v1-2-cb5442d1c229@jannau.net>
 <5ebf96d9-689a-f915-29b8-31af891fc63f@linaro.org>
 <20230213115741.GA17933@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213115741.GA17933@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 12:57, Janne Grunau wrote:
> On 2023-02-13 12:10:36 +0100, Krzysztof Kozlowski wrote:
>> On 12/02/2023 16:41, Janne Grunau wrote:
>>> The block on Apple M2 SoCs is compatible with the existing driver so
>>> just add its per-SoC compatible.
>>>
>>> Signed-off-by: Janne Grunau <j@jannau.net>
>>>
>>> ---
>>> This trivial dt-bindings update should be merged through the asahi-soc
>>> tree to ensure validation of the Apple M2 (t8112) devicetrees in this
>>> series.
>>
>> No, the bindings go via subsystem. Just because you want to validate
>> something is not really a reason - you can validate on next. Don't
>> create special rules for Asahi... or rather - why Asahi is special than
>> everyone else?
> 
> We did that 2 or 3 times in the past without commnts that it is not 
> desired so I wasn't aware that this would be special handling.
> 
> Merging binding and devicetree updates together looks to me like the 
> most sensible option since dtbs validation is the only testable 
> dependecy of dt binding updates.
> Keeping them together ensures the dtbs validate without delaying 
> devicetree changes by one kernel release after the dt-bindings change 
> was merged.
> I suppose it works out most of the time if the merge request is sent 
> only if it validates in next. That still depends on the merge order in 
> the merge window but -rc1 should be fine.

BTW, your approach causes also bisectability with checkpatch on the
drivers or the delay of drivers... Therefore not much solved here.

Best regards,
Krzysztof

