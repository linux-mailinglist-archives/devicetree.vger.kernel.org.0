Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF6A509A12
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 10:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386342AbiDUIEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 04:04:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344890AbiDUIEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 04:04:14 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C610326F5
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 01:01:25 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id b24so5427547edu.10
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 01:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=MjMj7j2b58g3Fs2GDoRx9AQenU1ytemGpXtMCrxETUc=;
        b=NYdGQxPPwnRdIBVwF7pPrMR6GN1BDIcM0wDpBYNTF+2n4Gad4PqA8rEEzED/xk+1eZ
         0lK1WjBy/qAX+TXrQ9FmP/n605QPm6LIUb/UsG8afL/FClUWaRvec/X4CyIxCtEKTgYO
         dYYgoG+shjdDoy+zLXCAY2BZDZgZ33JGo0aady4rulQeCfiBwZsbBsyRYAchXtrns/A1
         RA6WiEvyzMX4/E4z8oOLj8yKedcICvBAatoOyNtI+4sm1ax121UKcpFFPVP9OrPbIoga
         kMpy0my6M1Wg/f9Oczhtb6NdZS69ufzTgEP7bKH2SOdQNZxyNKmHtJxZ9PY1NoFfznf7
         UOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MjMj7j2b58g3Fs2GDoRx9AQenU1ytemGpXtMCrxETUc=;
        b=5ZIiTxMzrtiuZAA2QUiNVFaBPxiDjoNUXhs8GmwXfxCc2ctfk9IDoaS99yU6UEQEs3
         kNr3twFhRHiOXP59MZJi811TgEiRsc4WEg32kyuw4aJnnNFOnuAY0b5ag/90dDymkERe
         0JnfFcDs+vYrrcZAwldLxjxzc9Kdxrgi27OCtjcqukUIVuDoHgYpJyrgNwlOYZcWq3ik
         kaCIGkRNe4OdDdx/rxtU5OGoyh+o+EdB9zhbZAlxbGuyYEMbEZRROndvPf1lg5TcciD1
         gw42DGk1XTfNsni3R5I0qcWrVGsHcSgLK3fXvKdfY3SNebK81yBIiChRljvLrnOfKQQT
         44CQ==
X-Gm-Message-State: AOAM532KavZXrqcCuMIxZXH4ptcr/ZZRkOpRsLr4iSAYbKQaXqPMJFxD
        X82C/z43PuLSInlqZzHhF2oxGvwN4LUs6Q==
X-Google-Smtp-Source: ABdhPJyarBv6DNgivhvvzolW+CQw8vVO1R8UHNq38QMh0dgBHplqLk+dS95uG2+e9Egg0If3tYFQzA==
X-Received: by 2002:a05:6402:2547:b0:423:f342:e0e3 with SMTP id l7-20020a056402254700b00423f342e0e3mr17476265edb.371.1650528084407;
        Thu, 21 Apr 2022 01:01:24 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j10-20020aa7de8a000000b004215209b077sm10565025edv.37.2022.04.21.01.01.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 01:01:23 -0700 (PDT)
Message-ID: <f7c5c3f9-0083-c0b0-dc49-e66139268312@linaro.org>
Date:   Thu, 21 Apr 2022 10:01:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] arm64: dts: mt8183-kukui: align SPI NOR node name with
 dtschema
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org
References: <20220407142143.293740-1-krzysztof.kozlowski@linaro.org>
 <165044570803.75184.17759035800452933385.b4-ty@linaro.org>
 <38f29c29-e3c2-240a-23a0-509c4febf1ca@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <38f29c29-e3c2-240a-23a0-509c4febf1ca@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 14:35, Matthias Brugger wrote:
> 
> 
> On 20/04/2022 11:10, Krzysztof Kozlowski wrote:
>> On Thu, 7 Apr 2022 16:21:43 +0200, Krzysztof Kozlowski wrote:
>>> The node names should be generic and SPI NOR dtschema expects "flash".
>>>
>>>
>>
>> Looks like no one wants to take this, so let me take care of it.
>>
> 
> First thing would have been a ping on the patch, don't you think? 

And what does it change? The operating-points clean up [1] was sent in
August last year, then in this April, and you responded only when I
wrote pick-up. The Google cros-ec clean up was sent in Feb and two weeks
later pinged [2].

Pinging and resending apparently does not help. It's okay, happens, we
are all extra busy and we all pretty often do it as part of
community/hobby/spare time.

> Anyway as I 
> said the last time, if you take DTS patches for mediatek

I don't want to take the patches for Mediatek. But I also don't want to
resend and ping each one of them because it did not work in the past.

> , I'd need a stable 
> branch I can merge so that we don't have any merge conflicts in the end.

Can you just pick the patch?


[1]
https://lore.kernel.org/all/?q=%22arm64%3A+dts%3A+mediatek%3A+align+operating-points+table+name+with+dtschema%22

[2]
https://lore.kernel.org/all/?q=%22arm64%3A+dts%3A+mt8183%3A+align+Google+CROS+EC+PWM+node+name+with+dtschema%22

Best regards,
Krzysztof
