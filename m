Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA5C79ED7F
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 17:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbjIMPml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 11:42:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbjIMPm1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 11:42:27 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEE461BE3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 08:42:00 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52eed139ec2so7290740a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 08:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694619719; x=1695224519; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4tNjhlH206IzUUkrLOTH6KtlKVYXz/q75ZTuPPcqMFk=;
        b=bW8NusU89EZJsgt42ImLk94G48WYqRmo11u07ePqNgGzHxLbAlDmBMit5T8ErBYZvx
         ShxPKx449XRRik6ik88s4JXeb0A6p8bJDGDgtyphzPHmLGrCIqxTFZLS6ZDcS1cfo7VS
         eUjc+XqpnkxjDQfPMkpWtJCoUDQzwVYcNc+auowlwkztLeWEw5EwJPpnBm2XBMdV60e1
         l5DEH0duMsd1Lfz9b50fJp64Vty9ERU4VUUV072z6njW2G2bm8oN+lOSZg0GXZwWRPDS
         JdAr+CQueysiZJ8CvTYSnzk3J+Qm700u4VG1mR0d44bUcvqbFf7SQ1RHCACQDaVGNChw
         xOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694619719; x=1695224519;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4tNjhlH206IzUUkrLOTH6KtlKVYXz/q75ZTuPPcqMFk=;
        b=AK80vDUGK2CkuOxQAjhIeqLqFHhKUyFJCmOMwqWSlfw8htXHqeN3fJYaNPIqUq4nUj
         ALM1AFf1+r5ko4gY0LFuXEk/BaTBy0wtb/6ZqWRdqZn9NZMb836j1BG76l38op4eyndM
         H8t2Xn1dBQ0HbH9KjmOapnkwppP4vutlFYa4JQ8y+5X6MS49EGdjMkhnSS3pExkQEPq4
         CxisAQ5EIvOGTXOiaklb3dMFi4hgFS9RUigL/2zuBlTM0QIMd9mTtBHLm2ZCViFAVQFR
         vsxg+4+03/btKfGtsDqWEffjyevNehmref8GTOU39EPnIYiGPKndOdQosco2n6KWBD/z
         K4kA==
X-Gm-Message-State: AOJu0YzUrW8tqwYW02f7F3khmQR6Qn0nqXFdHG28PdRX7vV9mFyIO6iW
        MPrrGFvFaDuGYGwqBHWzNLK9dg==
X-Google-Smtp-Source: AGHT+IE/Qamlm4QU08NosxmsDomDBqURds6+LWtMhxScI4jMdvKLNkx5zTwjQJgqvPSmZB1yXEVn4g==
X-Received: by 2002:a17:906:5181:b0:9ad:7f8b:21b with SMTP id y1-20020a170906518100b009ad7f8b021bmr2468995ejk.13.1694619719145;
        Wed, 13 Sep 2023 08:41:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id kf4-20020a17090776c400b0099c53c4407dsm8580766ejc.78.2023.09.13.08.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 08:41:58 -0700 (PDT)
Message-ID: <11c822f3-96f1-17d6-6c2a-feaa950aeea1@linaro.org>
Date:   Wed, 13 Sep 2023 17:41:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Minerva: Add Facebook Minerva CMC
 board
Content-Language: en-US
To:     Yang Chen <yangchen.openbmc@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        joel@jms.id.au, andrew@aj.id.au, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        patrick@stwcx.xyz, Jerry.Lin@quantatw.com, Eddie.Chen@quantatw.com,
        EasonChen1@quantatw.com
References: <20230912140532.3797736-1-yangchen.openbmc@gmail.com>
 <20230912140532.3797736-3-yangchen.openbmc@gmail.com>
 <1bfdc230-e358-6aa4-7d60-03b5477a6be9@linaro.org>
 <CALFa7M_GvCgmEZxvo_ZSYoCPOe+9-tQt3KHn=_cu3n7psP+PTA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CALFa7M_GvCgmEZxvo_ZSYoCPOe+9-tQt3KHn=_cu3n7psP+PTA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 15:57, Yang Chen wrote:
> Hi Krzysztof,
> 
>> +
>> +&i2c15 {
>> +     status = "okay";
>> +
>> +     eeprom@50 {
>> +             compatible = "atmel,24c128";
>> +             reg = <0x50>;
>> +     };
>> +};
>> +
>> +&adc0 {
>> +     ref_voltage = <2500>;
> 
> There is no such property in the bindings.

Fix your email setup. This is my response, not yours.

> 
>> +     status = "okay";
>> +     pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
>> +             &pinctrl_adc2_default &pinctrl_adc3_default
>> +             &pinctrl_adc4_default &pinctrl_adc5_default
>> +             &pinctrl_adc6_default &pinctrl_adc7_default>;
>> +};
>> +
>> +&adc1 {
>> +     ref_voltage = <2500>;
> 
> NAK, there is no such property.
> 

So who says what?

> Thanks for your advice, I will change this property to
> "aspeed,int-vref-microvolt" which is defined in the binding in the v2 patch.

No, why? Drop it. There is no user.

Also, do not top post.



Best regards,
Krzysztof

