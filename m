Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CCA85EDE8C
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 16:15:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234242AbiI1OO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 10:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233952AbiI1OO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 10:14:58 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44A74367BB
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:14:56 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a3so20529573lfk.9
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 07:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cspDeevpPJ1L2vxkt9oS5ElGKDzO8T58Eksezra9JNU=;
        b=Gc5rPQV2F/mvkZ2LrFAvaLv7zTokv0/af0pGD5W5w1/+bZj6HXHGkwR3ntyw1qw4Tl
         07sR8w3GfByDEAIlbyLhlFZdhNpAJMjfZSYe107GxK0OqXGpUuOfqH+yHZ5EdsQTJ2WC
         UoZyvbzw3PW/HjcxHnam+N+Rp0ZxQUPmnQTH1UkB3tn11U2/0hI6VrDdfTD2EawGWdoN
         Du6t2rHBHNVKMJDyJRaLOn6LtrsQWt7pTKU2o1mXobKBG4CRVYomr8tyXclH9mXQc39k
         SwiKtpEYist1pMjWKuItihkebPkOQuk1uU354DM0e6sxJ/OS2JpSl652tmUphzjcu+Xs
         oUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cspDeevpPJ1L2vxkt9oS5ElGKDzO8T58Eksezra9JNU=;
        b=kCcazT0oOqoZ5OuSe7GQyhoz5dJxUXGzBg7kQjOLhTN2gUTK7nRJaafev5BPhlGEd4
         g2liUcHVS9U418px3nMIOQeEt7dCTcdDB7W5r8UVHdhY6RJK92D4X9SNP0mpHZG8TPS5
         grOECeYrSZiyAqNHnsnofgkKTnd/B1GQ0TwzKbu6hTOiPUyyVHzuyh6wQ0KXek8pCbYc
         51wxAhOVJfIMVUd1ezQ22jd8Vi+Yi2Ha/ZRJ7tpvPtoB/V753um90NpLEvOPQa1guz9b
         O+tTIiz4dz8IwwcIYNcqOXzWcvXmAYoauECx6yRH4F2bxv1PR0z4ZNBYp4c2mCjZggT7
         usyw==
X-Gm-Message-State: ACrzQf1JXzqckByC16QiyFRJH3SwLaJ89Zg2KzI7gLL/m71w8deyGndS
        0m2pWnrpYML+Oo18W0Tm2pFPnA==
X-Google-Smtp-Source: AMsMyM7TkgecYP0kzsTwnJuuUBJ+m4BurndPCyCih7w/L9uizfXh+LeQ5hSAyxIN8hdiXkTH5PbCyw==
X-Received: by 2002:a05:6512:3b86:b0:499:4d:2c0b with SMTP id g6-20020a0565123b8600b00499004d2c0bmr12870796lfv.607.1664374495836;
        Wed, 28 Sep 2022 07:14:55 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g5-20020a2eb5c5000000b0026bfc8d4bbbsm451726ljn.125.2022.09.28.07.14.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 07:14:55 -0700 (PDT)
Message-ID: <265c74d0-ded6-fceb-9978-b46b167f7626@linaro.org>
Date:   Wed, 28 Sep 2022 16:14:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/4] dt-bindings: qcom: Document bindings for new
 msm8916-samsung-j5 devices
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
 <20220928123759.104582-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928123759.104582-1-linmengbo0689@protonmail.com>
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
> Document the new samsung,j3/j5/j5x device tree bindings used in their
> device trees.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

