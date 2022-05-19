Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8C0952D126
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 13:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233051AbiESLHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 07:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237255AbiESLHq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 07:07:46 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2E6D99693
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 04:07:43 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id e4so5253322ljb.13
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 04:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Jl5t/pcladElqX8zO8Ph3rUwlPSiq0jHXhlbIcyf0qA=;
        b=J4uH4g94UNLs8ZXaC926XQBePWwNUri8DusahKIUeMGKdzikok5+qS3t6N1xMwT5ZB
         5SGYZDQumX1MM9+Bvm/3PNfeUVZ6UwGo35FyEracs40vtNzGzKaDeluj4ckmTWESQtCd
         1fczciM5SKyxTJKgDXy5NU0WBOpKVK+RrNcfEpx+vAs0L5vnbFaeQkSTw2FCZ+vVGJj9
         uklV5PznM1jghJspWRKs2nsZUfgUgEpB48BUpxzKmPLtl/Rpfg5q31+XDMryUpUPP807
         qXX//6W+ORQ4klsvwtUIiHwQrXZkvih52T76Tyic2AvYIoZkD3Gc4/cqPEpyYcJO/Cuw
         idxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Jl5t/pcladElqX8zO8Ph3rUwlPSiq0jHXhlbIcyf0qA=;
        b=2GI+BNeh8JCyv82VP+ZE7yte55sW1TjN2dmJ/w8wWAu2RX+NQDKceJJbTRa8WJJba+
         G5Kjq1YYhwJqhragrkUJkwLlmlbx+YvERQ/BAEyotek1540c+hKCc4yfMXpNdHu/4KmE
         C2JSggjfushAgJi2vSQZO+6FM1R5pyWxeM0Wimot9MOXGg24Yu2v68WSEbe+LTVjnCjC
         huJj5uxjgO1Kdwcn5V/es7JxRbRC4nfjXJFSsHvaNx5B2vES8px/g1eghpXzuINZwHX0
         uEja2kJ7OIpzjAM5utrEMdswFq3yv3WkYYcGOEiV9avF8Z+kfn/10cMSYw7t1kCUqFjX
         BZYw==
X-Gm-Message-State: AOAM530JY17Pyq5QqimTd8zoEn127G3x/qGLn1upmd9Lqv5/TR9LZe+C
        dOhlihwqLB0u8FXEodb6dIGnxQ==
X-Google-Smtp-Source: ABdhPJwGPUmphpHFY19wVaXtaFbG1yjx7j2/GS1lSfcEzJSNwSktEWFRO7bvv6ANjklirJbzWuIj0g==
X-Received: by 2002:a2e:b6ce:0:b0:253:d6f7:b319 with SMTP id m14-20020a2eb6ce000000b00253d6f7b319mr1126999ljo.3.1652958462311;
        Thu, 19 May 2022 04:07:42 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l22-20020ac24316000000b0047255d2113asm254487lfh.105.2022.05.19.04.07.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 04:07:41 -0700 (PDT)
Message-ID: <015c60e9-78f6-f0f0-5af0-733a78fbdf65@linaro.org>
Date:   Thu, 19 May 2022 13:07:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: Add PMP8074 DTSI
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        konrad.dybcio@somainline.org
References: <20220518184825.1034976-1-robimarko@gmail.com>
 <20220518184825.1034976-6-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220518184825.1034976-6-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 20:48, Robert Marko wrote:
> PMP8074 is a companion PMIC to the Qualcomm IPQ8074 series that is
> controlled via SPMI.
> 
> Since we now have support for the regulators inside of it add DTSI
> for it.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/pmp8074.dtsi | 38 +++++++++++++++++++++++++++

This file is not referenced by anything, thus not possible to compile
nor verify.


Best regards,
Krzysztof
