Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 435426BB996
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 17:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjCOQXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 12:23:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbjCOQXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 12:23:24 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C17F27AB5
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 09:23:22 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id h8so33946848ede.8
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 09:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678897401;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2KR1l+mivREKlKJVQszhSO/59cdZ+zWncaBYgWs9bYk=;
        b=RD4NWk2T0KyTGKPN8KbwaCS3EOuKy0YIuX1mTK+FDbbbX554i+wSIT1w83c7uHErD1
         N6ExHgMEZ8wG/P8UAJ/tyx1TAsHPkbHvBukHvH4VM7AfvvxYouwR62tjBwr4FhjBBptl
         ZaTHLvCMkUXnHx+738ZFzq/3T/UeAK+hww80eBmfcq65Y+zgv96pbLQt0iO6vz7h7osL
         IY2qpHioYsNJPmVBXDQUbni8BPaSXQRpc3o7w+ucvNXvbtjcJWRXp8rCm1DhosM0qPrA
         Hq88Qqj3eX/KMoaxJ+jCOGJdzFhpK39Tya1eXN15cHuEx2cGFPNnpxhiAOq4CFYPbvNu
         EBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678897401;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2KR1l+mivREKlKJVQszhSO/59cdZ+zWncaBYgWs9bYk=;
        b=EjAjaqhs0kzplD9Ur1FmCek08KiE0lm5mRy7Ck0q86d63Z5urqNevdV4Xly8wEU28w
         n4ej6WGnxP5ABfpZ2brTEq5QgjVA6S+TAGDn7Odxb9MmtUrNnq5OE5KLEmwhYrvL5o1t
         9FmoVEP4dtNbnGCvmIpgmOSeUMG/xOwgyQYgWPZaGcrR5ilXXFBJCAZrEXLYZNHu2Ifv
         17xuiVL3sHC3esy9+xOylK5tzY741cYiq7gzUFFqpXu1UyAx8v23eBiC4MQSxBeoxd19
         K+IeOuixKt6qX8QvJW9X9Be5h1QTIit2926xODVHdEWDvHluvejQGr7nG61ZNGZ78P0+
         j4mw==
X-Gm-Message-State: AO0yUKUEs4dwXC/s4EnO09YXTIy16Ls7MR+kVkcHdDkUlN4TZ3FIebvC
        7FdBNVXRU7vy4BoJ+Smem5oa4Q==
X-Google-Smtp-Source: AK7set/OGPRMMBpyR3Rx3rRvYwZzR4DAjyw3vUTcgFEho5ss29hDJ9UsDKaiNns/bkb9xdbVYXOXZg==
X-Received: by 2002:a17:906:34c2:b0:922:cb10:ad06 with SMTP id h2-20020a17090634c200b00922cb10ad06mr6427553ejb.43.1678897401102;
        Wed, 15 Mar 2023 09:23:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id v1-20020a170906488100b008d8f1b238fdsm2719423ejq.149.2023.03.15.09.23.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 09:23:20 -0700 (PDT)
Message-ID: <ce7ff8d4-0d5a-74e6-02cf-4d63b8dd9176@linaro.org>
Date:   Wed, 15 Mar 2023 17:23:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: cisco: add device tree for Cisco CrayAr
 Argos.
Content-Language: en-US
To:     "Daniel Walker (danielwa)" <danielwa@cisco.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        "soc@kernel.org" <soc@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "xe-linux-external(mailer list)" <xe-linux-external@cisco.com>,
        "Marcin Wierzbicki -X (mawierzb - GLOBALLOGIC INC at Cisco)" 
        <mawierzb@cisco.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20230315010920.2473206-1-danielwa@cisco.com>
 <d6f7a967-a0ea-c5d0-93f5-683e02673ed1@linaro.org>
 <20230315144654.GY15751@zorba>
 <f852216a-51ec-4c9c-19b5-7de7c9ce321f@linaro.org>
 <20230315155322.GZ15751@zorba>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315155322.GZ15751@zorba>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 16:53, Daniel Walker (danielwa) wrote:
> On Wed, Mar 15, 2023 at 04:30:51PM +0100, Krzysztof Kozlowski wrote:
>> On 15/03/2023 15:46, Daniel Walker (danielwa) wrote:
>>> On Wed, Mar 15, 2023 at 07:38:52AM +0100, Krzysztof Kozlowski wrote:
>>>> On 15/03/2023 02:09, Daniel Walker wrote:
>>>>> From: Marcin Wierzbicki <mawierzb@cisco.com>
>>>>
>>>> Also few nits: subject: drop full stop.
>>>  
>>> I don't know what your asking here.
>>
>> I am asking to drop full stop from Subject.
> 
> Do you mean the period at the end of the line ?

Yes. Subject is not a full sentence.

https://en.wiktionary.org/wiki/full_stop


Best regards,
Krzysztof

