Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503C26FF4EF
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 16:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbjEKOuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 10:50:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238597AbjEKOtq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 10:49:46 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE6BE710
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 07:48:36 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc2feb320so13563203a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683816514; x=1686408514;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N0lfFs0fI//pMtIuen9dWfRi/CQXFUiQ87w8iR2kEQ4=;
        b=ee6ReohcdKtHzMX4Il1SxxYW/4EIKTeBtclivjZNcGDTVgnn0dtlZ58A9QJEG41fub
         87bPHyFGkr0YBMc7MGgFJ390dYvv7Rk3Ts4ZyD/ame48ImPvtesSPg0ecyrw5o91hZCn
         8VB8pGJ0IJBjE2TalK8iqP9rH/BqwXOWrpZxKlJGLIpf23oPXM1NplRxs0gjomZEKT8/
         eK7cRqldc+ZZ8n8xrnjbpUv4hibV+dAU8S/oAEd23vvTyeP5C2DUiVKXY0Rd9CoWF31Y
         o9B9WKra88JlKMuu6uICJ5AsZ7a66gry4YfSiRZ/yufSnGrfPzdOm9cELtYYG5Q3pRkn
         HsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683816514; x=1686408514;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N0lfFs0fI//pMtIuen9dWfRi/CQXFUiQ87w8iR2kEQ4=;
        b=Th3+NFL0OLUMAbe8p4JmPXO2nLgfus4GCsUnOVrBZwl3mWjizb8SuDYosikcXOTx4n
         Jviy93KJ5z+UgnR2ioUV8VfAhnu3WV2PZxfKoyARIZtFDaggAlceKPDUnJnsF7EmPj83
         uKD5K1q3rgaNW5ZcspF6wheG85e7NZVG2Su3pNAGGA8Z0pl1TXWZW+PjDkuMF1nF8563
         WRguL8YFPh67njpcNFFt+MumFAyh/PDQdP7Ghklq/zcjVs74c5G/lMhfYYJp7CfYsARC
         PsqAaeTh7AI7BRR4OwMJDw+U1jA5Q9ba6H5tNBRCbcTInVxO3x8drujVxV/uzB/+niLS
         0rlg==
X-Gm-Message-State: AC+VfDzS49DMMAHspkSgGvEq/ZmPZZmMyhTHhQt86lnvJQcnOkp3vERk
        VU8G49IVzzIClgaioZglbZ6WxA==
X-Google-Smtp-Source: ACHHUZ5SvCEOd79yMZBuWOdQEKZfi1ooo8OMgkXarqDS2HjcJIA8fsyYDjZAWVoqIcFsSADtl9+21Q==
X-Received: by 2002:aa7:c6c9:0:b0:50d:f881:1afc with SMTP id b9-20020aa7c6c9000000b0050df8811afcmr1725396eds.23.1683816514512;
        Thu, 11 May 2023 07:48:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7cd:1be6:f89d:7218? ([2a02:810d:15c0:828:d7cd:1be6:f89d:7218])
        by smtp.gmail.com with ESMTPSA id b17-20020aa7c6d1000000b004fd1ee3f723sm3030633eds.67.2023.05.11.07.48.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 07:48:33 -0700 (PDT)
Message-ID: <3e62d34b-a439-ac42-83a1-deb26ade63ff@linaro.org>
Date:   Thu, 11 May 2023 16:48:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [EXTERNAL] Re: [PATCH v2 2/5] ASoC: dt-bindings: Add tas2781
 amplifier
Content-Language: en-US
To:     "Ding, Shenghao" <shenghao-ding@ti.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Shenghao Ding <13916275206@139.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "perex@perex.cz" <perex@perex.cz>,
        "pierre-louis.bossart@linux.intel.com" 
        <pierre-louis.bossart@linux.intel.com>,
        "Lu, Kevin" <kevin-lu@ti.com>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Xu, Baojun" <x1077012@ti.com>, "Gupta, Peeyush" <peeyush@ti.com>,
        "Navada Kanyana, Mukund" <navada@ti.com>,
        "gentuser@gmail.com" <gentuser@gmail.com>,
        "Ryan_Chu@wistron.com" <Ryan_Chu@wistron.com>,
        "Sam_Wu@wistron.com" <Sam_Wu@wistron.com>
References: <20230508054512.719-1-13916275206@139.com>
 <ca9d45cf-8a84-4fbc-e1dd-c96eef36fe25@linaro.org>
 <ZFyBzHWo3ORKAskX@finisterre.sirena.org.uk>
 <ca2ed8e9-850a-56c5-e395-72e5861b9c71@linaro.org>
 <3c48d5e47aff478b8ce8998d7efe001b@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3c48d5e47aff478b8ce8998d7efe001b@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2023 15:19, Ding, Shenghao wrote:
> 
> On 11/05/2023 07:49, Mark Brown wrote:
>>> Missing minItems, but...
>>
>>>> +    items:
>>>> +      minimum: 0x38
>>>> +      maximum: 0x3f
>>
>>> ... So these are fixed? No need to encode them in such case...
>>
>> I'm not sure I understand your concern here, there's up to 4 possible 
>> values from 0x38-0x3f which has more than 4 possible values.
> 
> Aren't the addresses going to be incremented by one (up to 8 of devices in total)?

With your style of replies, it looks like you wrote it...

> 
> No, the i2c address order is not always monotonic increase or decrease, sometime it would be disorder, according to the application.
> Each device would have eight possible i2c address, the final address depends on the hardware connections.

OK, the question about the broadcast is still there - cannot it be deduced?

Best regards,
Krzysztof

