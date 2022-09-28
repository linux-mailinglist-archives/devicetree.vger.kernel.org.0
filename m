Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A71285EDB67
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 13:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbiI1LKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 07:10:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234108AbiI1LJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 07:09:26 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CAEFA4BA4
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:08:11 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id c7so13888442ljm.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wt7HeQcTZwTLoOLSCkpQYpG8egAl8a4V/mvvqxRsA3Y=;
        b=BBWsdqOdsUexAenCSk8P17d4/n4sMKcS5LJhxE8MjVprjKH/JmNznzYiUd+18sa4dU
         J8VcucyMiaFLlIpyYKJuK0CWSvfTjA+uYIhQTDZOLZGWYS5MB/D2MzV0ksau+rUNhJrW
         05EyuQTPcTN9Jul+Rovq/NwhqBVsgF1Np2h2m2UjwDGD6/WwHv6/XIKjBdHKA9djBp0n
         k9ImAxvB23CNx+IK97IBuT8pX38Sx+LilQ2XR5SP1VFNGbYLaFqvX4ApK/fuyUuIFNl+
         98iOYI+RHv4Cs4iz43xpngWOt8FCxBBHC0EeQMp51jTqfIz/c8LCW07vPkyxSLKsnA+m
         920A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wt7HeQcTZwTLoOLSCkpQYpG8egAl8a4V/mvvqxRsA3Y=;
        b=pP2tijZKqX7C5EWRrT/rqv/s3dVPTcYTdJPBZu9L5wkh9xjUEcPqJxAYZKpHvrIpOF
         rU7KF4VnkHHidXeH5VL51dc8242AKJloZyAljyrUM9qvIGLoYtiNfA5LMmwbZi+Rr7OC
         fp3k4OCpscoIV7Rrumgv/reaUrxKwxR9vjaaGlyFei8oZHJv44lUJttlXVCDfmvfKIlk
         dI9pU+Bijt+L6XxjRhw5AnViQlBz0U5htSnoM91KyaM2gibJSto7qCcVmKOrmMLaEcuE
         hxfMsqlNsDFcenJoY2/xaSFjOtjfzTT2bk+oT4S9y1/ddcgcOmfNxmxi0qtuCAc+VMdA
         4hZQ==
X-Gm-Message-State: ACrzQf1IR/8O9sBxWl9/0bh4TQFGLt7MfF1NNe5vMVC6RqIeV6b6v+G4
        t2YgsDm+ZcV2IeRBOfo7cglTO/i3OlQXtw==
X-Google-Smtp-Source: AMsMyM50crKTFfkGGGN1iUB2NzPyKEU7GIPR2dEspXvGBhwtW2Y+/ZRnqjPezncevCzIsCLpivYQNw==
X-Received: by 2002:a2e:9b89:0:b0:26a:a203:3b54 with SMTP id z9-20020a2e9b89000000b0026aa2033b54mr12096253lji.478.1664363289982;
        Wed, 28 Sep 2022 04:08:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i14-20020a056512006e00b0049fff3f645esm445626lfo.70.2022.09.28.04.08.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 04:08:09 -0700 (PDT)
Message-ID: <33ce72be-a808-5a3c-a302-65f812bc03c2@linaro.org>
Date:   Wed, 28 Sep 2022 13:08:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916-samsung-j5-common: Add Hall
 sensor
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
References: <20220928110049.96047-1-linmengbo0689@protonmail.com>
 <20220928110529.96373-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928110529.96373-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 13:06, Lin, Meng-Bo wrote:
> Samsung Galaxy J5 2015 and 2016 have a Hall sensor on GPIO pin 52.
> Add GPIO Hall sensor for them.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  .../boot/dts/qcom/msm8916-samsung-j3.dts      |  4 +++
>  .../dts/qcom/msm8916-samsung-j5-common.dtsi   | 26 +++++++++++++++++++
>  2 files changed, 30 insertions(+)


>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -193,6 +211,14 @@ l18 {
>  };
>  
>  &msmgpio {
> +	gpio_hall_sensor_default: gpio-hall-sensor-default

suffix "state"

Best regards,
Krzysztof

