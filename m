Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05B2571EFD4
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 18:56:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbjFAQ4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 12:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjFAQ4T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 12:56:19 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383B4E56
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 09:55:58 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-97454836448so55474166b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 09:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685638556; x=1688230556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/9PhABrR6fbuT1S1oyIuPZW5VFgQbeU/P+IYi+AHHxM=;
        b=ffZXKYwLf5T1O2JvWMZdIWhRi7SWjAPrvhw6AL6FlT1bG2FLKbU8LX68ph7e3LO04U
         dU0rRDYbrveOU6ArfGhxfOLABRs2IHbfoby2DxZgAs86Y9xgm2Bz6MkxmTFh0uZotOlr
         CpBbV70cVmqyHYXRn5dfEu06K1RrnQc0B65w8dp4o3x3hVSHqwXMddY+I6OdXIITVbLh
         wagj+12DMz6Zvies9MQnbslGC4lzfDHT+hrH1o/RcDSO3+dpYJN1XPzXdQRATYrdVfpI
         TSximRQqSXxMHjLDol5p1/cvuNwXunbRaV7yApHcxtcA54c1/WoUiTSehetLPYX13zRc
         GHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685638556; x=1688230556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/9PhABrR6fbuT1S1oyIuPZW5VFgQbeU/P+IYi+AHHxM=;
        b=QQcvVHU9IbQ25sswTpEon8O5ZpW0LxEVV7eSWoKLQZJ/BQPRMozU4zN9PGO8LivVzH
         k7a9QZXuBu2KXaxE4u4vGLQW4kouLQRLgI3mYv7TkKQu+XfDnlJV4KeNfFV25UQC5i3S
         TW0mzm4JXfFO/ucs1m1qK6z1YD6xqPIKtaaFeC2KJWpI8iFVb9QXXA3s5AIPuOuIw0EH
         hDOstl/lI9KBdtDZ7dV4yrbzrjYYculg/5oDdKQRm7vOYXhVNnAdVLpBTHyGhsHKu8Oj
         WkZFCj56S8fIRRSQa6WoxnTtTo2WNgdDU3i7Kx4VsYYjO7UUoLD4qPjpO2nXKK8o0ZEz
         1QNg==
X-Gm-Message-State: AC+VfDxGYmh84EnvuVcWgLSoCKebhxtlVt/RNIUwZJJWJPOr3OAlD5Sp
        XU07RDbhyMREvQ9z532a1c/6aA==
X-Google-Smtp-Source: ACHHUZ6ygqoysrjPFxzcfm1Ac5L9I1KaJ4mwEF6HXcgsykWw+pw5MRf0NYhA4AB2O0EcNhhoiAnYUQ==
X-Received: by 2002:a17:907:86a4:b0:973:e4c2:2bcd with SMTP id qa36-20020a17090786a400b00973e4c22bcdmr8555945ejc.18.1685638556663;
        Thu, 01 Jun 2023 09:55:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id a6-20020a1709063a4600b00973fac6065esm6693089ejf.223.2023.06.01.09.55.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 09:55:56 -0700 (PDT)
Message-ID: <3589e3fc-2add-52d7-68bd-2b41a9cba4af@linaro.org>
Date:   Thu, 1 Jun 2023 18:55:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: arm-smmu: Add SM6375 GPU SMMU
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230531-topic-sm6375_gpusmmu-v1-0-860943894c71@linaro.org>
 <20230531-topic-sm6375_gpusmmu-v1-1-860943894c71@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531-topic-sm6375_gpusmmu-v1-1-860943894c71@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 17:04, Konrad Dybcio wrote:
> SM6375 has a "Qualcomm SMMU V2" implementation for its GPU SMMU. It
> does not however qualify for the qcom,adreno-smmu compatible, as it can
> not do split pagetables. It consumes a single clock and a single genpd.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

