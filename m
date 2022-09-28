Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FAF95EDE95
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 16:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234291AbiI1OQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 10:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234290AbiI1OQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 10:16:09 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45E0C61D93
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:16:07 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id a2so20572439lfb.6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=CbzFSxJkM1Scz7I3rjC3ZF0jcJs5LYZVzMElwREpYZU=;
        b=OLUgtvoVpmT65VJruvf4qFV8n58qZbD9+3hPgSDX6L2a/doi2j5Ur5Z/xMBi/3Dl0K
         4QKSg9LPVATngQWBjGMyHo5FfnQRkfcXumQOJmONyRFR3qUtCRqiN+l7r7SzcxBPoYuw
         UqBe9b2SOlgAIcRYWCJtE0oD+9xrw5yfCRVFn4rVYFJjudycAG/mK3j5XbxWKc6y88yq
         AhF3gcNzDxJh/1YFvP6fc3l1PzrmK5cdyQV1uq2maU9yAP1HnFvH44TMcjELhzmygPDC
         QSxOMisI2mOYosCz33fTvhBk8n50bQFskdrQyjIsUWoZbZMfD4sOkV1ZBnhr+buh0HJt
         AgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CbzFSxJkM1Scz7I3rjC3ZF0jcJs5LYZVzMElwREpYZU=;
        b=FMNcw1hsFCWXMmLTvemuZVFjLaq8dYZe9oRyQckIylm9z0+JrnyN5OG/2jaNwKlWTG
         zYMmlwWeKZnq7dUKHmYpFL7iLnXvLVuFvqpagX4sLx8EB162cS8SbK6YGNJ9m3nWNsIO
         Oy2WOvm5za5T1ALmlvGOEtZ879Zm0zMz0QYjxipX1k/KJ06/hchUa9N1AyVxc2jeZMhK
         WXQGYdkoPZQHN9UHGKsTdoRpFsPETd58m9SwWl7PeHX7UXbmgzEPvLKYAEeVFpg5IJxF
         HNJu7E9XtNEVETqu7HRpIubXiFjrVWYKI1ijyVM8qfpxLZXply4/RjMQ1EyB5sUpcKwP
         iboQ==
X-Gm-Message-State: ACrzQf0q+WffdFu387xQVFty7WVDomL6wundlBkk0tvAhuYpxDJPFZBQ
        Pf7NYMecDyyfsKI/YcqBuM8YDQ==
X-Google-Smtp-Source: AMsMyM6FhI84bKm5oQLgQrMOGz+oGA/Q8YtV23VYxHJ1LIZc9+Sz5Cc8gcl9Vq+dUxMIpQ/gksiN6A==
X-Received: by 2002:a05:6512:3b0b:b0:49a:d44b:428 with SMTP id f11-20020a0565123b0b00b0049ad44b0428mr14325599lfv.0.1664374565421;
        Wed, 28 Sep 2022 07:16:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u20-20020ac25194000000b00498fd423cc3sm481496lfi.295.2022.09.28.07.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 07:16:04 -0700 (PDT)
Message-ID: <dcdd6a86-e486-e535-543e-3789ef8d81ce@linaro.org>
Date:   Wed, 28 Sep 2022 16:16:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: msm8916-samsung-j5-common: Add
 initial common device tree
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
Cc:     Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        Josef W Menad <JosefWMenad@protonmail.ch>,
        Markuss Broks <markuss.broks@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        "Lin, Andy Gross" <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220928110049.96047-1-linmengbo0689@protonmail.com>
 <20220928121717.102402-1-linmengbo0689@protonmail.com>
 <20220928123816.104641-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928123816.104641-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 14:39, Lin, Meng-Bo wrote:
> The smartphones below are using the MSM8916 SoC,
> which are released in 2015-2016:
> 
> Samsung Galaxy J5 2015 (SM-J500*)
> Samsung Galaxy J5 2016 (SM-J510*)
> Samsung Galaxy J3 2016
> - SM-J3109/SM-J320Y/SM-J320YZ
> - SM-J320N0/SM-J320ZN
> - SM-J320P/SM-J320R4/SM-J320V/SM-S320VL

No need to repeat it in every commit.

> 
> Add a common device tree for with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - UART (on USB connector via the SM5703 MUIC)
> - WCNSS (WiFi/BT)
> - Regulators
> 
> The three devices (some varints of J3, all other variants of J5 released
> in 2015 and J5X released in 2016) are very similar, with some differences
> in display and GPIO pins. The common parts are shared in
> msm8916-samsung-j5-common.dtsi to reduce duplication.

The same.

> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  ...6-samsung-j5.dts => msm8916-samsung-j5-common.dtsi} | 10 ++--------

Thanks for using proper format options. However your patch is not
bisectable - kernel is broken here.


Best regards,
Krzysztof

