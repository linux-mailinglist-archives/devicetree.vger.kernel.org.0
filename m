Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49A83763ECC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 20:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232018AbjGZSqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 14:46:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbjGZSqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 14:46:20 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C683026A8
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 11:46:14 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-31758eb5db8so110615f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 11:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690397173; x=1691001973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iIA6tFVPEntX943eMtnDQw8/WnIhuSeyz957fgQQqX8=;
        b=lX6sERAD4wcvWMyA4J84ZRhjADmLtuE5k4rBD1HZHR8UkmkzFNXEXEOKg3v5e9r7yh
         jD+SFFs3nkGh6U1m8v45pXXwbGnw2qhn35drwAtJ7P9pOb29VJU3GtNWbPUtywIMY7R0
         trHwx+XMi8Spz+Z/IWMM3vkhtP63zxmHpnMdk+4ahFhh/sgTmN2C5mh44YyMXCJUrx/7
         MFa6xFvsEsO/A4e3rmRkH5khO09hPbQQOPSJg1bW/6jrMglV3BRqrJZc3P1VlO1bCZ1p
         Q8hePQg3KBY8QWvDUcMti8L7y1mEPZ9eVFK8wcOc3i9Xo4EKR3KNVPFxa+ak9PxmEuR4
         FNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690397173; x=1691001973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iIA6tFVPEntX943eMtnDQw8/WnIhuSeyz957fgQQqX8=;
        b=LXzuQ9z+WMkAJsGdoeWFSGoplSa03BkDy4QjOy7vzv+9dBZ4cr1ug+kg6QUWlH7qQw
         wT4OmMS15WCSnAVMe2Vvl71Ix6WEr37y75I2cdgJSoiatGNsmkT/QCbHbWUlQlbMFjdJ
         FjzjnKJcNkCxBZjiXzA7Y1oD42qYmfxcYEQr/MN9fwL3gIh8GVtlpQ3VcgCKRHD6V1Cq
         wVPHrfvRV/w9at9yAtd3wQcF9+MluZV5mhk8v9Cmz23y8FR5duARc/O2R9K6pPEKAqi+
         dBYNVY70XgfOMizdJ1EN+jH3tNa7rtU9n1cTjQqZ9qfpx90jzVdG1AgXIk9baF//NOWs
         oFJg==
X-Gm-Message-State: ABy/qLatVeUr1Qfnz2uz6CaS2hpNJRp3buY9SbaBVw5BqvhlrCPkO5z6
        jPEl5XaXYQ24166FsSVj/OVt1gWhWXzz+sc9+bs=
X-Google-Smtp-Source: APBJJlGW4bH5/K7JaooshRZKm4IUB76EFrDboLrwrdIOUTH+aSUijKHPgZDjSB07D7Aki8ddkV1S+Q==
X-Received: by 2002:a5d:6184:0:b0:317:6220:ac13 with SMTP id j4-20020a5d6184000000b003176220ac13mr1005wru.32.1690397173194;
        Wed, 26 Jul 2023 11:46:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id q4-20020a170906a08400b00992d0de8762sm9921111ejy.216.2023.07.26.11.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 11:46:12 -0700 (PDT)
Message-ID: <8bd8fa38-551b-35dc-cb6b-7c5fd79dc0a0@linaro.org>
Date:   Wed, 26 Jul 2023 20:46:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V2] arm64: dts: qcom: sm8150: Fix the I2C7 interrupt
Content-Language: en-US
To:     qaz6750 lzy <qaz6750@outlook.com>, andersson@kernel.org,
        agross@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <SY7P282MB378740C6070900BEBF5D0D7CB203A@SY7P282MB3787.AUSP282.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SY7P282MB378740C6070900BEBF5D0D7CB203A@SY7P282MB3787.AUSP282.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2023 10:42, qaz6750 lzy wrote:
> I2C6 and I2C7 use the same interrupts, which is incorrect.
> In the downstream kernel, I2C7 has interrupts of 608 instead of 607.
> 
> Fixes: 81bee6953b58 ("arm64: dts: qcom: sm8150: add i2c nodes")
> Signed-off-by: qaz6750 lzy <qaz6750@outlook.com>
> ---
>  [v2] Fixed issue of not using full name

You mentioned your full name as a bit different, so I am not sure what
improved here.

Best regards,
Krzysztof

