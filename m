Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB59A50DACB
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 10:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233342AbiDYIEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 04:04:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231424AbiDYIEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 04:04:31 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45EBA16588
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 01:01:27 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id gh6so3951573ejb.0
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 01:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vUPD6VhzeB7zQVubYjnWfebnf/uKU9eOqTOFGR1Ibsc=;
        b=lvCvkXXeSMP0tsuNy/214D6eqt9aD4AP4kyhlANYk6wvP/lfyVKxMOKuupaMEawFHW
         e7XYuzXCH6SetnjxuswZtomM+a4U9wp1eLRzOvM1OAiLy421XGtZFX4rL1lv2SUrfKZF
         jt1BZzSupgtwCYaaUCoK/RDDfoxh3mgcvI0Wf7eDKK1BFOkHogXmTCxFCAtrx1AxgFo4
         mWIIPYe2dC6JSucSpJd4VRVTlRQKGfSYrHMTMkGGaCm7m654XI9AMfJymeUr77hXZlOl
         9AGSaTOp3dUUsc8xlE2F35q+P4+qHEMXPMzxAHJhFWjBCef0mzEh0UeZSu45AvV23xSa
         3XiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vUPD6VhzeB7zQVubYjnWfebnf/uKU9eOqTOFGR1Ibsc=;
        b=n9sNJklJ8zBlzDe5/co+DUgHu9B84I5287FBbv53+my4R9iNLx2+hrFEn1eYzQ0eqz
         r7tOaPq8MFsUvLNgIChmTG+rYjZu9XzN+qq0vESZonnWbOjGDspbHy5A7j0XG2nhN7mv
         yd+ECcOZEWSDnqjQ/bVI6vpzPxQGujokaYh6sE7ZkfZCJC8EbkgSO+C7DuFsTjSHZevb
         yzyVJPBRx8HA+hTo6D4B9XX3B6yH+VCVG2ctm8cv9Nci1AFr9VwFX8Hb/LT69hC5BD9x
         gy99FIzm+2QOlNr1w6fRA2YP00P8ITQBFVtTk6eB0MimcKApb8Fa40AcIN+qj1QMxygT
         1N/A==
X-Gm-Message-State: AOAM533RXYw9QBIw/Qm1UGKKUxd4NRctghDR2JbVqaV4R8XqNywTGxUk
        15TMBeE4LOlASLUtsjoGZ5lbwg==
X-Google-Smtp-Source: ABdhPJz/QT1MiqhW4PVFNiEaRMSLsnIjsG6Zz64ueE1ZdzHZK45v/bDUNqYA5+0xSFwuO/sBTSEO0w==
X-Received: by 2002:a17:907:1b05:b0:6f0:18d8:7be0 with SMTP id mp5-20020a1709071b0500b006f018d87be0mr15148939ejc.561.1650873685852;
        Mon, 25 Apr 2022 01:01:25 -0700 (PDT)
Received: from [192.168.0.240] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g16-20020a170906521000b006d58773e992sm3351837ejm.188.2022.04.25.01.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 01:01:25 -0700 (PDT)
Message-ID: <fe4b42c9-f747-145a-5fce-9be6fc3e19af@linaro.org>
Date:   Mon, 25 Apr 2022 10:01:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 2/2] regulator: richtek,rt4801: parse GPIOs per
 regulator
Content-Language: en-US
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220425072455.27356-1-krzysztof.kozlowski@linaro.org>
 <20220425072455.27356-3-krzysztof.kozlowski@linaro.org>
 <20220425075812.GA29439@cyhuang-hp-elitebook-840-g3.rt>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425075812.GA29439@cyhuang-hp-elitebook-840-g3.rt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 09:58, ChiYuan Huang wrote:
>>  
>> -	priv->enable_gpios = devm_gpiod_get_array_optional(&i2c->dev, "enable", GPIOD_OUT_HIGH);
>> -	if (IS_ERR(priv->enable_gpios)) {
>> -		dev_err(&i2c->dev, "Failed to get gpios\n");
>> -		return PTR_ERR(priv->enable_gpios);
>> +	for (i = 0; i < DSV_OUT_MAX; i++) {
>> +		priv->enable_gpios[i] = devm_gpiod_get_index_optional(&i2c->dev,
>> +								      "enable",
>> +								      i,
>> +								      GPIOD_OUT_HIGH);
>> +		if (IS_ERR(priv->enable_gpios[i])) {
>> +			dev_err(&i2c->dev, "Failed to get gpios\n");
>> +			return PTR_ERR(priv->enable_gpios[i]);
>> +		}
>>  	}
> You can directly removed all about 'enable-gpios' in probe phase.
> Just keep of_parse_cb to get per regulator 'enable' gpio. 

We cannot, it would break the ABI and make the change backwards
incompatible.


Best regards,
Krzysztof
