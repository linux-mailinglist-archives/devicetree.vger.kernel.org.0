Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F9FD5E6684
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 17:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbiIVPLo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 11:11:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbiIVPLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 11:11:44 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55EFCE7220
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 08:11:43 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a8so15137183lff.13
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 08:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Of/e/DsUwQnje7nUDH51LGdhhqQxwCXjdyhF7cE+gag=;
        b=I2vNRQe3j/Px5N3sFjqPR6lVPdC43kbX0JVwSBnodAPsKjm6aZcgUTcfZPPLIxjPJq
         rTqS+6BrxwDe9jkdY50RosndBK1v02E/l2DvK6PHM1ooiggIi+hWUSx3PxsSO0pe0Vtx
         mGA7ztHQkO3HZdEoBXvNTJVaH3Q4oKhB2slfIDRplJw1pF5HYfM8FhRU9+2wMgiof2Oh
         4zLUlyd9Yk7eb/Gt7hq7Xiwbb/+d0wHeB2yZdNE9HW8nGEa3+yVzlOCALUeRlBUrGwzQ
         9IB7Qf299GPaNsWTg6rrzDOsQR6QjjC8eXRpLZR9QolcEc193egGY+poRylxDpFAGSdu
         aaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Of/e/DsUwQnje7nUDH51LGdhhqQxwCXjdyhF7cE+gag=;
        b=mXCejJJyvqQL/sfFo9DOsT96eT8kN6ZxLxn4ffnMJx89xGRhHN8XVASg6fo+kxA7JL
         X1pR1m1TgFiATQub7Hmel3X93y6xgcysQ+QdYrzU8Fag6QmEA4Ea7wK6BYb5zarP+yTB
         Rds06MAQNGN+WelhSIZFEDulsKBCfOHwrrUnfchSYwrsp2b/OM2KcyagC8b6MoDC/D8p
         D5dxBTRb+62RMu+ZZfLuQS6P8+IQsdh3RK5dGLqLVFEAPZDg8REc52uIyoU5RD8LqULj
         rdzLXjzWbJvpeFXOSZExAkSfrsyaHyX8kOS3xoovfp4Y/8uTNojCmYa5fCR/nTcgDMWz
         N65A==
X-Gm-Message-State: ACrzQf1KCL2ydoeyt0Y3mjsK/Xtfy5ES3KGOEk9ahJDZHq1ZxZT2DvEE
        YUea5B0IIYwdb+0YHMUY8HBMag==
X-Google-Smtp-Source: AMsMyM591w0zWpr3juijfm3T/ihjcOQsPJL2NwnWKmKlNoP/1XyxjUhwTKQEcIHQ1/3q7RGUkpmP/w==
X-Received: by 2002:a05:6512:3d29:b0:498:fcd5:571a with SMTP id d41-20020a0565123d2900b00498fcd5571amr1533152lfv.70.1663859501564;
        Thu, 22 Sep 2022 08:11:41 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b004998d9ccb62sm982335lfo.99.2022.09.22.08.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 08:11:41 -0700 (PDT)
Message-ID: <02f44228-866a-f096-1e90-dfbd31660491@linaro.org>
Date:   Thu, 22 Sep 2022 17:11:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 1/2] dt-bindings: display/panel: Add Sony Tama TD4353
 JDI display panel
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220922135902.129760-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922135902.129760-1-konrad.dybcio@somainline.org>
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

On 22/09/2022 15:58, Konrad Dybcio wrote:
> Add bindings for the display panel used on some Sony Xperia XZ2 and XZ2
> Compact smartphones.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Thank you for your patch. There is something to discuss/improve.

> +
> +  reg: true
> +
> +  backlight: true
> +
> +  vddio-supply:
> +    description: VDDIO 1.8V supply
> +
> +  vsp-supply:
> +    description: Positive 5.5V supply
> +
> +  vsn-supply:
> +    description: Negative 5.5V supply
> +
> +  preset-gpios:

How about bringing them closer to common GPIOs:
panel-reset-gpios
?

> +    description: Display panel reset pin
> +
> +  treset-gpios:

touch-reset-gpios


Best regards,
Krzysztof

