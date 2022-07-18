Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF84578765
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 18:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234006AbiGRQ33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 12:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235833AbiGRQ3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 12:29:10 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AA506157
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 09:29:09 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id v12so16042283edc.10
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 09:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=p7pWLAV1+Jo01P2PszLjix2k8+8wiIBYrBevvM4YujQ=;
        b=mlG1TbQqqwcERWKzLkIGYvFqUap8L7nnZp9/GE8wf610wRPfxSIvP+br5cyXEKr65U
         qUDgxVG0wbWa9xOBocxxgg5Ii/FCC58NcF68/9ZG3s1Wsu57+uzG1sgvbzfFwMS8ZTOn
         5P/dr/pFtkzndqEHP/yfULBN2EoNpklYHgOoMFc97o3slAyid9wn+wHPyjewTRPTPImF
         s2+elcC/TAQhWsWXopLfIssLC29xfCHiKBKcFZSjczk+/jnEs/gt3/Y3fNC63Y2Ol3a/
         DdlWwTjyluGVAEazjdhgyTaz+AILsicqQCCExAb9qVV6rWxgXt6Knm64dpRFsAMfp6ut
         kbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=p7pWLAV1+Jo01P2PszLjix2k8+8wiIBYrBevvM4YujQ=;
        b=ool55l0+FLLIBiucmI2iaQfLzsMx3NjCooCN9yyklAp81CY8VsrAowkvcXfbYrPy1Y
         V0jFMrMFpL0fEKFsl0bVFp2hISQpkz+rL8Iv7Ll6xjeY5Qtgv7VyDKgqLU0oDe+WPSRO
         0nQRd74ZIXzWlwdRXMDTg0AfEzDK5CmMyMnt/E0XyPS3KtzRelS7x0/8Fcs5xbfPihIl
         E5WNWaB0ufxReQX1usERzknADddnmPiBUIq69JLnC8hv/iYJZGfKKjaZ3nXV2IANIUhX
         Zx+vh3hpg2+aAEH7/1BW0UQQQ0qwBNksW4c5I58DLag35x7xVT8k9F+caEaauELFhPWv
         bJ2g==
X-Gm-Message-State: AJIora+34oMSOyTw/LA5HuY+C1gQp/pCWdycGdrq1E04u0zgn20RE4YZ
        A7jvFDylR//ZHmcdZ+6IegI=
X-Google-Smtp-Source: AGRyM1t62HHUb7rWXqn4N8eMW3zV6/j2vpaIx4s/F4T4c7s4AcQ22Z1r8sF7retPhVh15wMX55928Q==
X-Received: by 2002:a05:6402:1914:b0:43a:d59b:5e79 with SMTP id e20-20020a056402191400b0043ad59b5e79mr37919538edz.124.1658161747667;
        Mon, 18 Jul 2022 09:29:07 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id w5-20020aa7d285000000b0043586bee560sm8841341edq.68.2022.07.18.09.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 09:29:07 -0700 (PDT)
Message-ID: <1642745f-714e-fe30-9aac-3dd58aa58b07@gmail.com>
Date:   Mon, 18 Jul 2022 18:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] dt-bindings: arm: Add Asus GT-AC6000 based on BCM4912
To:     Rob Herring <robh@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220713121234.32604-1-zajec5@gmail.com>
 <20220718142521.GA2901770-robh@kernel.org>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20220718142521.GA2901770-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.07.2022 16:25, Rob Herring wrote:
> On Wed, Jul 13, 2022 at 02:12:34PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> It's a home router, the first BCM4912 SoC based public device.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
>> index b817051c491d..40bb5223740b 100644
>> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
>> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
>> @@ -31,6 +31,7 @@ properties:
>>         - description: BCM4912 based boards
>>           items:
>>             - enum:
>> +              - asus,gt-ax6000
> 
> The subject says it is gt-ac6000. Which is wrong?

The correct name is Asus GT-AX6000. I fixed that in following patch:
[PATCH 1/2] dt-bindings: arm: Add Asus GT-AX6000 based on BCM4912
which was accepted instead of this one.


>>                 - brcm,bcm94912
>>             - const: brcm,bcm4912
>>             - const: brcm,bcmbca

