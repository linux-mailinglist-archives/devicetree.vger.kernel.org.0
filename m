Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9B8A5593F8
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 09:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbiFXHMK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 03:12:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiFXHMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 03:12:09 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8700647A8
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 00:12:07 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id c65so2162150edf.4
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 00:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=2gnwhLkz//Lr9PwS+PlyoY2fhYDAe2RIemWacp+cIxw=;
        b=KWHKUG0NXbook3uGdrrcwExPIs859eoqcM8phquK3Kl8hEXRSIi7nrSPBMWE0x3fKi
         SoGNjhtF7g5GAcjGbzI0MytmCMVGg+p3g0NMSyAwYhO+9VPwZzIKWNx0BvPVX14Wtqnh
         NQetHwhDwRF8cR4IVHxYjH5sJzF/vFbVMjYqQ+QTMYksii1OEO17kSqIqRvZDFB/u5vm
         ev9DVQr2N4I+hOjvDcuD4BbiFm1bTrMFuuLkZDYaMEN4b+kZGBhDiW7drkSpBEJ2Nv1S
         B2k0pZ/pMzSRxMjzke5boTaX3XHDN9juBPwlQDoVmG+TGeAPFqFHMPXgCqMAXzRfGJ9q
         jkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=2gnwhLkz//Lr9PwS+PlyoY2fhYDAe2RIemWacp+cIxw=;
        b=fmHC+sEXq5W7Guq9cs11X0kY6cZj/wFrjLXpOXCeeH3l+22SY1VG98av8yAS+F05kE
         S3EAWBP71PIbG/NqOSg3sOic8iZuv2LljphtV24meSld2m+iSZ1ecHjoi+mw3v4Hvy4L
         5RiaRwXlz2FZJf/MHoGX0UWeJPalq8tHrthQY73ZvfEllrLxH/gskr0s2xOFgQKHqlHI
         Zcco2FQNZ0QG5qiPMy61SK0Y8/cC5MzyPEQYE5RMifUw8CqnvH/aW0RDJOSJaVj3bHvK
         PtwWN74UwS2aKPMOLB1eEIYdEjGzB85ZLdeFP55hpy/WdMMvmt5o38v3Pj+M4pR7gwor
         wW1w==
X-Gm-Message-State: AJIora81obji7VTK0CEk65tcsBdR96mS6JDTt6YDZdr7c3t8XExuef19
        uO0jq3dVPY2FjWLxFugL/w9Dhw==
X-Google-Smtp-Source: AGRyM1slPp5YhKubruMtrStgiaOe29+R5gvoqEqIxtmRCwIsImiR2RA+0bdWl4Ky8ykAKUrV+iSovw==
X-Received: by 2002:a05:6402:2422:b0:435:6707:7f1f with SMTP id t34-20020a056402242200b0043567077f1fmr15931322eda.38.1656054726537;
        Fri, 24 Jun 2022 00:12:06 -0700 (PDT)
Received: from [192.168.0.233] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e7-20020a170906044700b007030c97ae62sm598868eja.191.2022.06.24.00.12.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jun 2022 00:12:05 -0700 (PDT)
Message-ID: <0378a9e1-a2f9-5c7d-2fdd-0a78ff237db9@linaro.org>
Date:   Fri, 24 Jun 2022 09:12:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: (subset) [PATCH 7/7] ARM: dts: aspeed: centriq2400: use qcom
 compatible
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Steven Lee <steven_lee@aspeedtech.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Ken Chen <chen.kenyy@inventec.com>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Wang <David_Wang6097@jabil.com>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
 <20220529104928.79636-7-krzysztof.kozlowski@linaro.org>
 <165589305701.29629.10216921074802952879.b4-ty@linaro.org>
 <CACPK8XfxXi8kQr+vxta8rD6SBgxLf_oBjAH0UkPBacQta552YQ@mail.gmail.com>
 <84cba0c8-fb31-3314-5e2c-7a0c13030b9a@linaro.org>
In-Reply-To: <84cba0c8-fb31-3314-5e2c-7a0c13030b9a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/06/2022 09:05, Krzysztof Kozlowski wrote:
> On 23/06/2022 07:34, Joel Stanley wrote:
>> On Wed, 22 Jun 2022 at 10:17, Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
>>>
>>> On Sun, 29 May 2022 12:49:28 +0200, Krzysztof Kozlowski wrote:
>>>> "qualcomm" is not a documented compatible and instead "qcom" should be
>>>> used.
>>>>
>>>>
>>>
>>> Applied, thanks!
>>
>> What tree did you apply this to? Did you get review from the maintainer?
> 
> Tree was mentioned below.
> 
>>
>> This board is unmaintained and unused. I would prefer it removed
>> rather than meaningless fixes be applied.
> 
> I can drop the patch. I'll send the patch to remove the board.

Does your answer also means that you are planning to take these? I am
going to prepare a pull request to arm-soc so need to know whether to
keep these or not. I don't have any particular need of handling these
patches by myself, but I want the issues to get fixed.

Best regards,
Krzysztof
