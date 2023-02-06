Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E528468BE6C
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 14:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbjBFNiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 08:38:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbjBFNiL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 08:38:11 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0169F7EC5
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 05:38:02 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u10so5636879wmj.3
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 05:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DW5xIzDAlaqJ04zBHkh0b92U5lflvWAO92XKGwEKU5Y=;
        b=bSWeC5l1ZnhloD9pViA4eZ06vF048CD0QrsuMGohmjoEdjujSLDH6TN+3NYQpLM2MR
         Dcn0qtVOz5niKRruCweIrXIpgK9dnaDpi5hn7rDrmyO/D6JOuYNn4VTqVLEU5R2Su3bQ
         AmySw49oa62aCQZVYUjqyDLn8KFGn7CCrRi3w4HxqYJKYvAd3rW1hCC2rbFKJevOL0ce
         PmC8Znyi+d4H7RkfZ+85LWNglJooGYve4k8re3LhvvKCdl57rmS2U45jXCqS95IldAed
         Bt9iLW7BuXh2X7RnU8h8GGsuTJoVzbQyLEpR60MMSakDwZTPFcrj8NUbjeM5Wlnb8z6n
         mazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DW5xIzDAlaqJ04zBHkh0b92U5lflvWAO92XKGwEKU5Y=;
        b=Nz2OUmSioWbb1sS8TUiVDS/j1NBH+VxFve6vZVWPipqnpVERIsFXUYZ9Yu2tLYNZzP
         uvSZ8B1U1Xl41MVCcJ2FIpS6B497hYgOA64yTKZA7rDsXZ6n78EcV+WlMSOZ0cQUYctS
         F8VHG/uaQw1vBX5IY2vBE2u0GYw2JgV4yQdLeDCPh+/g0UjiGV66RgULoN7j+hg39ynE
         a8SU+uNFuW03yW2ieKDikL/seW2m1/67JY+fNrzcEwQQ1uVlzcWB3hyMgJM44+lkw4hw
         AdBqt1PlCwURt2kXXCrGwihteVhNJLYn+nhHqnjRatAu4WAhhFCgXfE66Lv4xhtTB94N
         JW7g==
X-Gm-Message-State: AO0yUKUNVg6yJykrGwmFRgjvSJ0hyYOFCHrMV1L2F+QLSd0tWRnP7upx
        7nQzQ/B0hl2vh+ACKNwea24kog==
X-Google-Smtp-Source: AK7set//gdZmReMOcaX54beG0/NnOQdcfCJs38N8/yhBTeYYIBxa6j/jll44UwH4fPFQZ5KHwIUqDA==
X-Received: by 2002:a05:600c:3d1a:b0:3db:2858:db84 with SMTP id bh26-20020a05600c3d1a00b003db2858db84mr19192022wmb.34.1675690681613;
        Mon, 06 Feb 2023 05:38:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l16-20020a1c7910000000b003dc1d668866sm15664502wme.10.2023.02.06.05.38.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 05:38:01 -0800 (PST)
Message-ID: <01240b5a-15a8-31be-d8e7-5150d1a26522@linaro.org>
Date:   Mon, 6 Feb 2023 14:37:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/4] dt-bindings: input: Add CP2112 HID USB to SMBus
 Bridge
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jikos@kernel.org, benjamin.tissoires@redhat.com,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        ethan.twardy@plexus.com
References: <20230205145450.3396-1-kaehndan@gmail.com>
 <20230205145450.3396-2-kaehndan@gmail.com>
 <8eadde99-28b5-5d21-7c15-119797f11951@linaro.org>
 <CAP+ZCCfA4uMMvw9UtcN5TL7faFWgGrVT6U8RKFs=tUB8iGAQMQ@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP+ZCCfA4uMMvw9UtcN5TL7faFWgGrVT6U8RKFs=tUB8iGAQMQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 14:15, Daniel Kaehn wrote:
> On Mon, Feb 6, 2023 at 1:59 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 05/02/2023 15:54, Danny Kaehn wrote:
>>> This is a USB HID device which includes an I2C controller and 8 GPIO pins.
>>
>> I actually wonder - which part of CP2112 is input or HID related? The
>> manufacturer advertises it as USB to SMBus bridge, so it is an I2C
>> controller, thus should be in i2c directory.
>>
> 
> That's a great point - - the device is technically a USB HID device,
> and since HID is usually used for input devices, it's lumped in with
> hid and input devices on the driver tree. Though, since dt bindings
> and Linux are separate, I see how it would make sense to classify it
> differently on the bindings side. Though I wonder, since it has both
> an i2c controller and gpio controller, should it go under mfd? Or,
> since i2c is its "primary" use, going under i2c would be fine?

mfd directory is rather Linuxism and we use for strictly multi-function
(not dual-function) devices like PMICs. Manufacturer calls it I2C
bridge, so this looks like the main function of the device.

Best regards,
Krzysztof

