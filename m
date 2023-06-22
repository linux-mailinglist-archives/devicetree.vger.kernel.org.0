Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74C5D73A494
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 17:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbjFVPSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 11:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231130AbjFVPSK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 11:18:10 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E51FE57
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 08:18:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-98d25cbbb43so109575266b.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 08:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687447083; x=1690039083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TP/3FQHMmn6RlV6mzj99uRIgWCscxlsWWyg8WN59HdI=;
        b=lJIK/yH3nbnXvWsDZuW+QWrf6YwAPDDc8/1G8lsfca1YAW88nTfJO8BXwgLKVc4saf
         dRUddeuJGjeXzDOEKUvXZUC/DZkf69bo8VrYUbMCY3XaTSO6CUYrvAI4MNL4UZkKzf7J
         iAUCXxZ6x5hw3A3hdhfxe7ARP3A6YOnLgmF2/jLT2D0T6VeTC/zQKjbBXX1xy+xX/Gmc
         Ay9g8RP4jpdK1vi4We93lj8Tuh2nph6vOOv1KuPXfScI3VlS1xYBQrEXEfsJWEzaKZvA
         56gnd/Q7FIEicLm7c84+9swor0NtEcWArj2+Q7L9DGh7NkXFXStHIPobtQYLa/IPTDbn
         E1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687447083; x=1690039083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TP/3FQHMmn6RlV6mzj99uRIgWCscxlsWWyg8WN59HdI=;
        b=cD/LpepmX8XBPK1PWMgD/b8unxFxA2lhRuzwTy50pejo0C1ac8kUjj+poDQtlZC6Ih
         I5MlyXagbXqBe+e0TRo/aVwoDxdzCcEJBmZ42ivFnp0HWiSXjB/FmTYDrW/9eI+Gy8Hg
         oaUps78uhxlkKnC5rkygcw90MkwzhnbQ+QXQR9+lt2C+prdKDApabRXgI9BKOuuKzP3F
         6BQ9xP5OGXNLCiC6VU2KaA/VPzFnvgN3GEyhWE84xCChe2vD6U5BnyDoE+H1Yk8chX36
         9blGkfeqSgDk8sLiamQdMfx/VVexQMPd6eKglT76U/xz2tiU63n7rDbPVUjRLZiv61YB
         cXTg==
X-Gm-Message-State: AC+VfDzlSmM/WBYdrti35TiaGI6GgyShkSM3Uz+ezGbC3tLY1DcdL7PR
        93C1XWTmsEuWj9RXDyZu/9xLhA==
X-Google-Smtp-Source: ACHHUZ7HTn1t0/6v5JA/MdJ0FjEHkC3btRqN4bImVtZYQPsAKKnKoK87PYfs9u5bd+kjU5xHuSTSpQ==
X-Received: by 2002:a17:906:6a07:b0:989:ca:a0a2 with SMTP id qw7-20020a1709066a0700b0098900caa0a2mr8810615ejc.69.1687447083554;
        Thu, 22 Jun 2023 08:18:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l15-20020a170906230f00b0098807b33996sm4679533eja.107.2023.06.22.08.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 08:18:03 -0700 (PDT)
Message-ID: <ac12c499-a4d5-74c7-42ec-f9789253108e@linaro.org>
Date:   Thu, 22 Jun 2023 17:17:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 6/7] arm64: dts: qcom: msm8916-samsung-fortuna: Add
 accelerometer/magnetometer
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, soc@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Joe Mason <buddyjojo06@outlook.com>,
        Siddharth Manthan <siddharth.manthan@gmail.com>
References: <20230622000007.48219-1-linmengbo0689@protonmail.com>
 <20230622000418.48350-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230622000418.48350-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2023 02:05, Lin, Meng-Bo wrote:
> From: Joe Mason <buddyjojo06@outlook.com>
> 
> gprimeltecan and grandprimelte use a Bosch BMC150, and fortuna3g has
> ST LSM303C accelerometer/magnetometer combo.
> fortunaltezt and rossa have only ST LIS2HH12 accelerometer.
> 
> Add support for them.
> 
> Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
> [Add LSM303C]
> Signed-off-by: Siddharth Manthan <siddharth.manthan@gmail.com>
> [Move sensors to fortuna.dtsi. Disable them by default]
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> [Enable on grandprimelte. Add LIS2HH12]
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  .../dts/qcom/msm8216-samsung-fortuna3g.dts    |  8 ++
>  .../qcom/msm8916-samsung-fortuna-common.dtsi  | 80 +++++++++++++++++++
>  .../dts/qcom/msm8916-samsung-fortunaltezt.dts |  8 ++
>  .../dts/qcom/msm8916-samsung-gprimeltecan.dts |  8 ++
>  .../qcom/msm8916-samsung-grandprimelte.dts    |  8 ++
>  .../qcom/msm8916-samsung-rossa-common.dtsi    |  8 ++

Your split of patches is difficult to follow and understand. You bring
now, within your first submission, few boards. Then adding one feature
to this board is not a separate commit. Commit, so a logical change, is
adding a board. Please organize your patchset so it will be easier to
review. Now with such changes touching multiple files, seems not
organized correctly. Your previous patch added multiple boards in one
commit - also not easy to review.

One commit for the binding, one commit for each board. Optionally common
file could be a separate commit.

Best regards,
Krzysztof

