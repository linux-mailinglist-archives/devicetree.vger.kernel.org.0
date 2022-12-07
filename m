Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B485645ECF
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 17:25:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbiLGQZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 11:25:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiLGQZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 11:25:09 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 771D66720D
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 08:25:00 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id b3so29489166lfv.2
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 08:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nql757lIkNKMgh29KlchftDEO+8iEm6DjXp2cFlQuyc=;
        b=KX8r+idV8gUeTMX17Xo5wbujH3AatPmG1Mhjdaku7WRxMemhWzx2DwJjl+ykqYaaHy
         8MAQz/eFYWXafLnHduBmPLHfg3FmCNGEKUK7UZgSFlU+DvehtH63g7080VJhoCr3RG+U
         o8a22z7au3zktSz9GG+hpeIui0IVm0SXVEhBvakjUwt0Vvl9p1aaDTegVu6r/T3OEQq2
         dlok0Z/OqqAPz0Kkp9cXbYc9zniEkE/Blri9EDjM2mkxAx6JkIdhTmG/0OOlg4n33g8J
         i1tasp1sXJBNaKkBIQlAHbsd1uCxa7XDwI5Y6IsKbpyGL0c+AFlBnUwi9PTQ7rpNg8uc
         V8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nql757lIkNKMgh29KlchftDEO+8iEm6DjXp2cFlQuyc=;
        b=kh2lHc1T4Huj0DJP2Mo+OGmkXK6Avf+xV2kWeV+RwGxYrNgTUv3trxDvB7gdNoMLiO
         fTC4uJ7OPpSQ5qv0beowELEQ9aELE7wbqXrpavHikAmsbEKP7+AubDHIdiGmYbf+d9Nb
         eWh+MCFGHToe7pTF3Lc6O0Td6NC9LoZEpE176qN75ZaoioqAsHNiuDAiHemQ15j/Cu8l
         8IFmhvQ8oF7sVA9YumKgf4dFflrvS9l4EHIQxRJYvl9tkVEjuVZE/edp6mo118OgqMff
         6zOotOcwmGkBzeTji7gsij4exgZ/dlMWfTDwqJNJGlFZ3QkbTcE99PwOJJioVA2MkQ74
         oiWw==
X-Gm-Message-State: ANoB5pnTLI717nydw9PopuSy4UAGTmpvhk7z+Orz/aY9sJxObY9o9299
        3zXERDlKgMv8dTfzlmfW2Hds9g==
X-Google-Smtp-Source: AA0mqf7zSxUgQldDjSaRbMenVAc7EZI4EGwgLXUNQixxMvoLyqaKo2PvuNPV54yH7409kWDbEOvPmg==
X-Received: by 2002:ac2:4153:0:b0:4b0:f505:919b with SMTP id c19-20020ac24153000000b004b0f505919bmr29155780lfi.306.1670430298851;
        Wed, 07 Dec 2022 08:24:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j22-20020a056512399600b004b49025f96dsm2918652lfu.187.2022.12.07.08.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 08:24:58 -0800 (PST)
Message-ID: <af2e02d6-6700-6cd9-7ed2-efa23715e2bf@linaro.org>
Date:   Wed, 7 Dec 2022 17:24:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/2] dt-bindings: iio: accel: fxls8962af: add new
 compatible string
Content-Language: en-US
To:     Han Xu <han.xu@nxp.com>, Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Haibo Chen <haibo.chen@nxp.com>,
        Sean Nyekjaer <sean@geanix.com>,
        Clark Wang <xiaoning.wang@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        imx@lists.linux.dev
References: <20221207162045.669958-1-han.xu@nxp.com>
 <20221207162045.669958-2-han.xu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221207162045.669958-2-han.xu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2022 17:20, Han Xu wrote:
> add new compatible string for the NXP FXLS8967AF accelerometer sensor.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> ---
>  Documentation/devicetree/bindings/iio/accel/nxp,fxls8962af.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

