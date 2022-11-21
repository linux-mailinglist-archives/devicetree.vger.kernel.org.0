Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1F4B631D97
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiKUKB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:01:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbiKUKBW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:01:22 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDB62D1C7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:01:07 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id d6so18029512lfs.10
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbtHPApmQUwyLY+NteriHp6diPQNyQrfx1nSqtQwt50=;
        b=dMhqk2ZdCil2vZxUmWDjaXR3q5/acvKH+JJE2YCqUdUCnqV8zjELCO91dKZAmVl4TF
         J73M3olid+lKGvLaaEYJhB/es3KKKOMfQusxBD90OEk8zJ/T5ej32G6TOMRTszrpxUfc
         0RCcuXFwhbVoVpZLajXg2Gl/coeWKtYcvVw5jb/C4Qd5nzuFyChoE8ys2tSV/SKa7avV
         pVHpP3kD/PvdzNPkiCFopMm6YMWRfPvGIrR2+7QQJrpxnAUYtVuetTBrf9eYaZdSqB4s
         Ol+rAsSODxzTDNlnPrZG4ZnYZPrgbZz95q4vRihyBcySpiwhv3QgMYmsYt/mgyzh98AU
         z/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gbtHPApmQUwyLY+NteriHp6diPQNyQrfx1nSqtQwt50=;
        b=67lfVgDR9zaSuPBzBgLs8oW5+GHtKajJb1Ddr7fCtyN5iqMmXiHSYvxSkempHfkxXa
         Ihv4Misaq9hTDmm3cGn2uz4i6Tr5l1U0j5GR9x74NGEAKBI70LHZNOsEE9Tkw0Btn3eF
         OeDu0cA92/byxMy4jSoUZv+vf7GccVshfLpelJ/2k82QUssdLtIFcFqtgjq3saFowlxO
         /bDjK0PHwYw+/lYw2cg9XtH+8g5cU8sQl769kED+D26+JxBaK3hjE7VwcJ7YycbWXNsx
         AHazNxPF+kKNtJ3KWIdDIUweibPvsv8dMBxQEAEogsQXJ52H/FaRmoafTzbg1VI9kNdi
         /EzQ==
X-Gm-Message-State: ANoB5pmK12Nso2qzFU3S/NcTfr8gyqVWEfA6JEzKD+pTHl0263jJdX0o
        z69Okuv+gSQCP0my36lEbpR9eA==
X-Google-Smtp-Source: AA0mqf5hFBitL/P8iew0BmL3fFbe6Ge5pRqKalhO+kAvAJpDsl0lH24qhrd97pBlxZRF8PWJtjxxpw==
X-Received: by 2002:ac2:4216:0:b0:4b4:a5b5:1a04 with SMTP id y22-20020ac24216000000b004b4a5b51a04mr5434071lfh.142.1669024864787;
        Mon, 21 Nov 2022 02:01:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k12-20020a0565123d8c00b004979df1c1fasm1954500lfv.61.2022.11.21.02.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:01:04 -0800 (PST)
Message-ID: <e08d6dba-2072-a8ad-3bfc-50d25e29537d@linaro.org>
Date:   Mon, 21 Nov 2022 11:01:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add GPLUS
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20221121004813.3883-1-linmengbo0689@protonmail.com>
 <20221121005118.4191-1-linmengbo0689@protonmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121005118.4191-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 01:52, Lin, Meng-Bo wrote:
> Add vendor prefix for GPLUS.
> https://www.gplus.com.tw
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

