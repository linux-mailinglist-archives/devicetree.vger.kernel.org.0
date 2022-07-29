Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EF67584CF1
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 09:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230115AbiG2HuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 03:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiG2HuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 03:50:20 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4764513DE5
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 00:50:18 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id i10-20020a1c3b0a000000b003a2fa488efdso1487671wma.4
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 00:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to:content-transfer-encoding;
        bh=5lOAn0h02VH6KBbt82jLFJtiXqqsxvMuF0TBeD3/U/s=;
        b=ZBOLcnAHY9OMxqdtNB7a6+JfLEuMeEZ3yOldjwKnougUkx2y+HE5T/uo+ms/IUtSX+
         hm0CuK3s+kQ60h3jiAFfoDo2tWBj4gZiLbq8bIJyGpPlL25lmuZIMj897BxEKrZpTpTI
         E9sh1Q77sJwp7ku6A61eKtBf64LuDafWgFkKWdQi+YIqzxLEYNPx7pdqL3+Eg+4bnapA
         H/Vm+eD5uifdBrca5YuhJwb0mUPEKrtMlPXa5QW5ZlnipWRxajtglCgsvTB2IFs9uyMR
         iGP5wd/efqA0nVSw/PeHh/ZzEcxWxZYwmdlhnb9hAMzCCrCVV7+GQn4SgH8KqltgwUzB
         Vmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to
         :content-transfer-encoding;
        bh=5lOAn0h02VH6KBbt82jLFJtiXqqsxvMuF0TBeD3/U/s=;
        b=7g+AUBWhNSVNpJxhOIU3SQv6II0ljo1ENCwO97uJtBLcdaOx6KhKjHN/ws4bktbbh4
         QFGV7H4w30LjJtuDtVDIZRYVibIeIEQmIUDq9g0kBVikwowDxudwvGh6+fObHSiyT51j
         /liRo5J2qU+7vW1gnD2sF0WbmVYHi3hz9ZyZW3FgSCT1iGZjQQ8/PUfpnh05MMt1r9OQ
         rsQAlLiyDV26dzRF2PK+NqiE/SL0NXPoUIKPHOj5AJxawwN4Dqjf7J0dFq2owWWhsV8L
         yMLHO4D5x5fWLmE5qhTBhxp7qYJNlEVxPAY83jvMVmN5xyC1v8lHZOJ3UaYcpw8TgsM/
         j8qw==
X-Gm-Message-State: AJIora/xC5usqI5WMxS6UJ099o2eGt7jjCK6heW+YpCdu7h4UT5YMdLl
        HWcMHUNDzZYOTvB/cayTY432xA==
X-Google-Smtp-Source: AGRyM1udGOV6hEutqy9qMK9GUdJBG7rsDL3k+0eM+VMqDQV6f1A+Q0blzkBEsX7AJ7S6Ay6TVPxN5A==
X-Received: by 2002:a05:600c:3b29:b0:3a3:1fa6:768 with SMTP id m41-20020a05600c3b2900b003a31fa60768mr1512480wms.193.1659081016616;
        Fri, 29 Jul 2022 00:50:16 -0700 (PDT)
Received: from [192.168.43.135] (40.164.185.81.rev.sfr.net. [81.185.164.40])
        by smtp.gmail.com with ESMTPSA id q5-20020a1ce905000000b003a320e6f011sm3583283wmc.1.2022.07.29.00.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 00:50:15 -0700 (PDT)
Message-ID: <7c14ebff-b449-84fc-f3da-af394b3fa371@baylibre.com>
Date:   Fri, 29 Jul 2022 09:50:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH v3 2/2] iio: time: capture-tiecap: capture driver support
 for ECAP
To:     Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc:     devicetree@vger.kernel.org, jic23@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        mranostay@ti.com, robh+dt@kernel.org
References: <20220728175124.468461-1-jpanis@baylibre.com>
 <20220728175124.468461-3-jpanis@baylibre.com>
 <3033c2bb-bfe7-459c-2a2b-e99bf33b28b5@wanadoo.fr>
Content-Language: en-US
From:   Julien Panis <jpanis@baylibre.com>
In-Reply-To: <3033c2bb-bfe7-459c-2a2b-e99bf33b28b5@wanadoo.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28/07/2022 22:02, Christophe JAILLET wrote:
> Le 28/07/2022 à 19:51, Julien Panis a écrit :
>> ECAP hardware on AM62x SoC supports capture feature. It can be used
>> to timestamp events (falling/rising edges) detected on signal input pin.
>>
>> This commit adds capture driver support for ECAP hardware on AM62x SoC.
>>
>> In the ECAP hardware, capture pin can also be configured to be in
>> PWM mode. Current implementation only supports capture operating mode.
>> Hardware also supports timebase sync between multiple instances, but
>> this driver supports simple independent capture functionality.
>>
>> Signed-off-by: Julien Panis 
>> <jpanis-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
>
> [...]
>
>> +static int ecap_iio_remove(struct platform_device *pdev)
>> +{
>> +    struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>> +    struct ecap_iio_dev *ecap_dev = iio_priv(indio_dev);
>> +
>> +    if (ecap_dev->enabled)
>> +        ecap_iio_capture_disable(indio_dev);
>> +
>> +    regmap_exit(ecap_dev->regmap);
>> +
>> +    pm_runtime_disable(&pdev->dev);
>
> Hi,
>
> should these 2 functions be part of an error handling path of the 
> probe, or handled with a devm_add_action_or_reset()?
>
> Just my 2c,
>
> CJ

Hi Christophe,
That's right, that will be cleaner. Thank you for your suggestion, that 
will be done in next version.
Julien

>
>> +
>> +    return 0;
>> +}
>> +

