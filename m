Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4653652B4E8
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 10:38:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233187AbiERIaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 04:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233194AbiERIaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 04:30:20 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2EABA9B6
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 01:30:18 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id v8so390920lfd.8
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 01:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kRadtUZAQLBYTGDUxJ60Vvdw9+6O5D4lVBl2phBDBpk=;
        b=La+f8DZoz5ddbyHccUuuef342TgVW/6LBrjgN6B9jHYqhOzsCazPYAg38AbpdFWgJ0
         s+6mviCvbXsDLq2Zz1ix+wt5wZwI+uBcRHgCCiCap5nKOvsUxO3aPK6TsA70cwtBQVNI
         IxfGxYy2lljI0DIWpy3f1SIcVsgDHnWkuP0/G4Q8QTIWH3wXRPexO+ZtqGZNFp4lVCCm
         vlc12TYNIX3pdk0O9fs2WSbMWhWqYfZ0Af6v2PvLmIKfnCTcy/7w+onrjb5ZFU9+uOId
         Tse4YEcLwltGhp9RCqRL21s0MQF5s9gBrWLXrqm6IxAmVwmSWS9MkldgKvURY/TSnWPr
         lNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kRadtUZAQLBYTGDUxJ60Vvdw9+6O5D4lVBl2phBDBpk=;
        b=ahvx+fC08Ez86UuPcBTs6JCLSkItC6b/iB2pXGkdUr8uf2svyiBuH/ylkhdrwFYeE2
         /T2NoOmgdqb+7/g5iW5aG9br972+Xb6Jl2YmE6Xk0QTYMdrNezr4KgB0zcXaTq8VcCkr
         e/bwnakDBsbbggMI6C0lQb7yU+Vf3an8m6ST7QxbpPiBIflUm2JSfjSrbeRQwekCT7gK
         KRo/+R+7cQ8laonc8aB2PVu4r0IrErtw6uWACaQZ01psh1PHledMzLE4cBD8Jpx/2dPy
         C+xSlJdfRED96Au5Z6sSBi7F6dJwADGscCdyMlZcZWx8fNfr1+gX5RffbEhS19P3NY+h
         aUxQ==
X-Gm-Message-State: AOAM531V/WVnH+5yenWfS9apdnjMutkBKoQIbZwR9Aee3/No5aIT0oYU
        42GRrai9VUueUT34Wpo7n5EPRQ==
X-Google-Smtp-Source: ABdhPJyW8+626+tgJiuY25uoZrldwGJCtXS28K6kLDUFBPF9E/s5NTP+xLm8hyMyRPeOKDXaCROqMw==
X-Received: by 2002:a05:6512:22c1:b0:46b:a2b7:2edd with SMTP id g1-20020a05651222c100b0046ba2b72eddmr20314533lfu.133.1652862616925;
        Wed, 18 May 2022 01:30:16 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f4-20020ac25084000000b00477a61abff4sm8196lfm.63.2022.05.18.01.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 01:30:16 -0700 (PDT)
Message-ID: <bfb0f17f-4e78-65ad-898c-b6c07b04db38@linaro.org>
Date:   Wed, 18 May 2022 10:30:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/2] leds: aw21024: Add support for Awinic's AW21024
Content-Language: en-US
To:     Kyle Swenson <kyle.swenson@est.tech>, pavel@ucw.cz,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20220513190409.3682501-1-kyle.swenson@est.tech>
 <178182e1-edd1-9f27-6441-a0a9fabde567@linaro.org> <YoPrLbGBnSuYgEzF@p620>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YoPrLbGBnSuYgEzF@p620>
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

On 17/05/2022 20:36, Kyle Swenson wrote:
>>> +static const struct of_device_id of_aw21024_leds_match[] = {
>>> +	{ .compatible = "awinic,aw21024", },
>>> +	{},
>>> +};
>>> +MODULE_DEVICE_TABLE(of, of_aw21024_leds_match);
>>> +
>>> +static struct i2c_driver aw21024_driver = {
>>> +	.driver		= {
>>> +		.name	= "aw21024",
>>> +		.of_match_table = of_match_ptr(of_aw21024_leds_match),
>>
>> of_match_ptr causes this being unused. kbuild robot probably pointed
>> this out... if not - of_match_ptr goes with maybe_unused. You need both
>> or none, depending on intended usage.
>>
> Ah, yes, the kbuild robot did point this out to me, and I had planned on
> fixing by adding 'depends on OF' to the Kconfig.  Perhaps that isn't
> correct or complete (or even relevant)?
> 
> I'll do some investigating and determine if I need to use of_match_ptr
> or not and I'll fix it either by removing it or adding maybe_unused in
> the next version.

Your has i2c_device_id so it could bind without OF, however obviously
aw21024_probe_dt() will do nothing and return 0.

Therefore it is up to you if you want to add dependency on OF. If you
add, please add it with "|| COMPILE_TEST".

Then in both cases you need to handle the case of building (not running)
a driver without OF: using maybe_unused+of_match_ptr() or nothing (thus
always referencing of_device_id). Which one to choose matters less.
Using it causes the code to be smaller for !OF case, which might matter
for some distros which build everything as module. Not using it allows
to match the driver on ACPI systems, although I am not sure if this is
relevant.

I don't have recommendation on that - just be sure there are no warnings.


Best regards,
Krzysztof
