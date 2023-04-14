Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1BC06E1D9D
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 09:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjDNH4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 03:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjDNH4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 03:56:13 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF4E7280
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 00:56:10 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id xd13so9632897ejb.4
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 00:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681458969; x=1684050969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jO+txe0/tju7TBj8YyUNP1mhhIUo+JM8IABYNNwZkrU=;
        b=P2p1Pab0C8LFNjEyySM/Keqgkei3qF4Z8GHYSoWA8GmQTkzPhxJa/4AklwidKiap4I
         r6NjChvpg3OHYZzdwfzPIFKnH/nzDlAmzMzGOdeWIkKcRLQCH4juzGJOad/vqsqGBlqk
         nlyPEvpzhirFoLSut2BvpV0i3iMt5Hsn3wSzMq7Wf4cWzuW6ytOcBAn5+lYTiHLVDEXG
         vAv6Ghskc1agCXPWAyV5dlu80Ejxzf9nhb20cm6H7fOi6Z2Vrddg6T4Q0IfA34DVyraj
         o1n23Hp/P8hRMQxhmKeXkFquKOF42bCFTozbjEI/7MeqhWtKPhF5SHB5mAFeGsNPsmvt
         gONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681458969; x=1684050969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jO+txe0/tju7TBj8YyUNP1mhhIUo+JM8IABYNNwZkrU=;
        b=C2gqDbyhlKNNAsrq96WPK8rf3wVeMLA4oGHLXvoPqYaKTyQNAS+aBObYmnimQKbnzw
         yak7mChNKuaT7zci9IfDeMDqVgMIu0SsjGjKeuf5gb2/fmbtvkoJH4Mu1ML67JgZQrMr
         7weilTo08f4QgVoywyNGjCrPGG51o9MIciB3+UnQr/pZxQMoDzzZjFToPz24Ny/hWYI2
         kZ4IomfyCz7+w0OEnbuSBVVhh3PcoWfZw4XE+M97BZ/REYfr+IWZ7k0xaJVv4pBeaAfn
         flwkhmV41+ZJeWdm9CcGs+EIrfwIxf/wnmxMzATJ3t+4nG+fsEmbPPoMR/PGpxaFKeXG
         mGhA==
X-Gm-Message-State: AAQBX9f8ZqzqOeHN8wKxlgBFN9Uw+kEPD177P+nE/xWjMXEUGlAg6GVv
        DmfZ+xDI1apHT+6oNyfiRjzSXA==
X-Google-Smtp-Source: AKy350ZgBFckEN9fwytkjaYI9qzUHXg8J2Y+dj5ceEZhD0V/5bXD+O4dL45kZIF0pZIK7aNwp2tMlA==
X-Received: by 2002:a17:906:2449:b0:94a:8f3a:1a77 with SMTP id a9-20020a170906244900b0094a8f3a1a77mr5107342ejb.8.1681458969092;
        Fri, 14 Apr 2023 00:56:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id 7-20020a170906328700b0094e1344ddfdsm2073873ejw.34.2023.04.14.00.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 00:56:08 -0700 (PDT)
Message-ID: <577ecd98-94eb-3795-4859-ffad03192f89@linaro.org>
Date:   Fri, 14 Apr 2023 09:56:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 5/8] dt-bindings: iio: adc: qcom,spmi-vadc: Allow 1/16 for
 pre-scaling
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, linux-iio@vger.kernel.org
References: <20230414-pmi632-v1-0-fe94dc414832@z3ntu.xyz>
 <20230414-pmi632-v1-5-fe94dc414832@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414-pmi632-v1-5-fe94dc414832@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 01:17, Luca Weiss wrote:
> The channel ADC5_USB_IN_V_16 is using 1/16 pre-scaling on at least
> pm7250b and pmi632. Allow that in the schema.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

