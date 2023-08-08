Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 316F877457F
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbjHHSmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:42:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbjHHSmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:42:20 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03B0BE1A01
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:33:08 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9e6cc93c6so90281881fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691512353; x=1692117153;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UL57MaBdPM6++P437QDJfGupULs2TDGGdbQMca9U3hM=;
        b=Mc1MeFnqcl6b1VhngVaM7tjyQjHU6lrHipEw4+QW2FL1OJSCf3sdRkaAladm54o/ZH
         ew/mFQi2Z10gPgNVy2wB6Ch4DhNTfO5W4qWaSQ08Im6+HzsdjM14/D5A3EYCnrT0QmHi
         yIQOPQQtOpOBcWv8/vCxfqu5TxskFySXSroBflHRt6x7/jS3y+/EvrwdrxCTB1KVVtnA
         5qkqb4iRrPH6NRddIBg4B4ptXur44G3T8xUp+jN9c6Jdcrr/nVdNPWNPmLiLWlyb/kgF
         thcx6f+IPcRXBLBsHBrleQKB4QdXCfJbpahodAE7cWbeqxmGrOAT7DcbHCgpw5FIWp2v
         OBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691512353; x=1692117153;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UL57MaBdPM6++P437QDJfGupULs2TDGGdbQMca9U3hM=;
        b=AqAz8ZjdmNLaSQw0KpnkM+hruUzvJntfMV5p6QUcMDYFzFUn0OdLYkueuMZ2yTFpXw
         Y9yQIDHI5Fq06FLrH/AAwXSbzFhwAgDSbzZGFkAqtE6DiTw41kPFxpjcwDEm0aB5sb1T
         tWPMJBYa8K+wB4xQCDzOCz9GP1q3pGkCPXg5tHYbvnawDjkrHhJUC/57AcyJFqklpyQv
         va57Hx9j9FSkK8uVWZ85mU83ImEUpXEU3QZoA5oST7T+/4qhbyoepb05paXAiJVKFj25
         PtJ3b0XAK+OCFRPZT+zhXl+xzkS4iFxxHkCfI97qQz8B81mcrHAbo6rYSry2dBlxK5G9
         G2jw==
X-Gm-Message-State: AOJu0Yyhb+7HTpLX7W1XCmfMbJ+nk0ylIs/Dvi+QvkNUz/+mTOqPwrlo
        Qevbu1wqQ24GiZyVNE/aUfemYu7XcfNXCd63eSU=
X-Google-Smtp-Source: AGHT+IFluzaGKTZK8dhiGf/jIxAe/vY+rM3Cg47RyOvynYVtONEW1n8zg4Kg7M1SwOUHcoCqsotjVw==
X-Received: by 2002:a17:906:10cc:b0:99c:c50f:7fb4 with SMTP id v12-20020a17090610cc00b0099cc50f7fb4mr5853025ejv.1.1691480985744;
        Tue, 08 Aug 2023 00:49:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id os14-20020a170906af6e00b0098963eb0c3dsm6235990ejb.26.2023.08.08.00.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 00:49:45 -0700 (PDT)
Message-ID: <74abc9e0-ba9a-d7ec-4f1c-815f8e351701@linaro.org>
Date:   Tue, 8 Aug 2023 09:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/2] iio: adc: mcp3911: add support for the whole
 MCP39xx family
Content-Language: en-US
To:     Marcus Folkesson <marcus.folkesson@gmail.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Kent Gustavsson <kent@minoris.se>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Cosmin Tanislav <demonsingur@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        ChiYuan Huang <cy_huang@richtek.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Ramona Bolboaca <ramona.bolboaca@analog.com>,
        Ibrahim Tilki <Ibrahim.Tilki@analog.com>,
        ChiaEn Wu <chiaen_wu@richtek.com>,
        William Breathitt Gray <william.gray@linaro.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230807071831.4152183-1-marcus.folkesson@gmail.com>
 <20230807071831.4152183-2-marcus.folkesson@gmail.com>
 <ZNETcVNsEmvK0KKH@smile.fi.intel.com> <ZNHtMBG4yHpgL1kj@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZNHtMBG4yHpgL1kj@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 09:22, Marcus Folkesson wrote:

>>
>> ...
>>
>>> -	ret = mcp3911_config(adc);
>>> +	ret = device_property_read_u32(&adc->spi->dev, "microchip,device-addr", &adc->dev_addr);
>>
>> Why not spi->dev? Ditto for other uses like this.
> 
> After all, I think it is better to stick sith adc->spi-dev to be
> consistent with the rest of the probe function. Change to spi->dev
> should probably be a seperate patch.
> Do you agree?
> 

You can first simplify the usages and then add new family support
already using spi->dev.

Best regards,
Krzysztof

