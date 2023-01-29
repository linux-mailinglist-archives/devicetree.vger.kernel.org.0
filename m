Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70FA867FE71
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 12:09:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjA2LJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 06:09:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233855AbjA2LJu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 06:09:50 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AFC61CACD
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 03:09:46 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id q8so6234659wmo.5
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 03:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gc8SDGto0OzJBEGuEb9CULJeiUF5CRN2IIi0l9n2zpQ=;
        b=e82j+RSP9A4XtrP/ZnOWynWBRLU+tKjFj4UJMV/j3iOswAr8UkgQVYUBpfyllONkam
         Xd/IiJmPqZY0U3Brhz9BzU7OQGn2IZpvxdmjbjQ9Cfp95grnCrlU76gkhgrH8fe3ivX0
         1smLCC+Ka9SlvLSudqxdwGCQEBJvKyy1Nv+E3ieHpy+4ZG073/Kf8+SjbUPqoO2ickQC
         egucudgchGf1jnajBbBZRryu/63mLJk8gFxQcIfXAHBBQ8DATZ03DGzhG8TBbXimgGQm
         Oh/Vt1XGQLTmQFlBqnspF0QlvbrBp8VRZDxBNIHNn2t8UQK12jYA8lNx1+GuG0mV1NAR
         88gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gc8SDGto0OzJBEGuEb9CULJeiUF5CRN2IIi0l9n2zpQ=;
        b=Ze6ZVcCetIxUWM4pAAx2O6+PHZDjXXzYgndQSmMlX4e51BKDoORMAxe04zg74gRroq
         dShVeXGj+nHvwteEfMJZw3fPDQUzliQXdNV7NnoUidS4aTGPKtezDVjABf7wgqqWJPlQ
         bX43WNTDewdazoxZfjtSEIi0onsCxVry5+GUXcp4LPdQhnAf+wq1JfQJWzmGkfBz4fB0
         6ccTnuJqw5LsC6GrDVBMbAhRZ0iZOD2FvsOW8jNRV/KvgqBOFdua5FfbosRwUsOg3qfP
         kqz9PpRG9LMeevLjhYc+PqH99ZYAyokIklnJc+47VustWyfozbmASbO5MUWdmukpY1TF
         folQ==
X-Gm-Message-State: AO0yUKWeNjcCRTi27rE02n/tFpS2b1CLptJA5dgKhVEYMo4sxya01CGA
        UlTv1ruY0B9ul+Kj6uEnviSlGw==
X-Google-Smtp-Source: AK7set8/AsBKCYFzmR/S5fISt5iR0GjEJFsa734bylubU21q4y8z51HpBj0/zG/eRBCyBX1B3tr5Pg==
X-Received: by 2002:a05:600c:34d0:b0:3dc:4313:fd1e with SMTP id d16-20020a05600c34d000b003dc4313fd1emr6498435wmq.34.1674990584773;
        Sun, 29 Jan 2023 03:09:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b48-20020a05600c4ab000b003db1ca20170sm597349wmp.37.2023.01.29.03.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 03:09:42 -0800 (PST)
Message-ID: <062325ab-348b-6186-7979-5076c338cd95@linaro.org>
Date:   Sun, 29 Jan 2023 12:09:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Content-Language: en-US
To:     Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20230128112432.132302-1-strit@manjaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230128112432.132302-1-strit@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/01/2023 12:24, Dan Johansen wrote:
> As other rk336x based devices, the Rock 3 Model A has issues with high
> speed SD cards, so lower the speed to 50 instead of 104 in the same
> manor has the Quartz64 Model B has.
> 
> Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
> rock3 model a")

Don't break the tags, one line please.

> 

And drop the blank line between tags.

Thanks.

Best regards,
Krzysztof

