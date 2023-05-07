Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 582D76F9B94
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231934AbjEGUl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbjEGUl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:41:56 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F48B2D52
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:41:53 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f24ddf514eso549411e87.0
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683492112; x=1686084112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Qsh+WDrWs66LoSbRmdKZ5wnMnJmv7Gda9Tt69BxujA=;
        b=IOy+PnEwdSVS/Uw+VY5bD8G6m3H4Q/nzAgIYS6ZcUOaZ/3Rj5We+TZIk676WDoij0D
         iGG2xB2AjUXbn1Bky9v9b7hRMx17CUD0Ii6QT5lHynhdHgeQsy4WbFpzENngnFHa0t11
         bjvWkVOeMql2b3qyWvuD5I/PMi+ecm3t9mhjtSaa+eE0FV4zJJkjjli9WgMzdGW1vOqx
         shAtdZKvTxLs4I/SHpqDtf/KuqFy5IyQwojMMYuBf00WP1+QoF+WhkH72oGXAOuKJSoW
         IoJ4jweQLoL4OEjsUCynujLUNY6wq7F/rCE9xsEV5jzQHRfomyR9+h60CI/ZIG6LRZ/J
         +NYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683492112; x=1686084112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Qsh+WDrWs66LoSbRmdKZ5wnMnJmv7Gda9Tt69BxujA=;
        b=I158XSHO8l62IujdluWHKkF91qj3hl1Rv11cFb4UZKqzQqC9QXm4+L8bluKgQcJOK0
         g1utiV9c8kzoRSdtY5Hqa+3fQm7ACGTGrAjrrYscXpQjFxegIjRVWjVHinhlzgOi+5bI
         pPSypfVfCv/7IK/uOYxW4dOgeXURI+yivtpylSX8L0Lmr1ZQKGvhgoQ6szO+oFaql0RU
         07Vl5fOc20LnaUpPzopdF5SLZ+40p8BT2LicxNqIqeGKZtQKQcTt7KFJ1oGwj9lUhsX2
         UD7XEjC9Wo8wOzSbyaUaoXEdDdKokqztIKGIsrfrcJrzxEbKwxVjLyUcbuAfcUxf2TcS
         IGjg==
X-Gm-Message-State: AC+VfDzCVefVsEShxGspoPIHqdCfA9FhbLt/EuOoxnqkFI44HvLwtBNv
        HQJ3ZKyzidjeOCMi7wLJBe10Kg==
X-Google-Smtp-Source: ACHHUZ7VEV7wT8lTz7DhTfK2lOp+OB1Aq8mBaJo0x3t+nuLvH8YDSi2d8X1ej/NLQGcxMmY0fn9MPw==
X-Received: by 2002:ac2:4359:0:b0:4f1:5010:4b34 with SMTP id o25-20020ac24359000000b004f150104b34mr1518829lfl.18.1683492111710;
        Sun, 07 May 2023 13:41:51 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id d17-20020ac25451000000b004f138c4de81sm1073869lfn.149.2023.05.07.13.41.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 May 2023 13:41:51 -0700 (PDT)
Message-ID: <8c69fa82-0566-0294-b25a-7d59502b625a@linaro.org>
Date:   Sun, 7 May 2023 23:41:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 5/6] ARM: dts: msm8226: Add tsens node and related nvmem
 cells
Content-Language: en-GB
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230507201225.89694-1-matti.lehtimaki@gmail.com>
 <20230507201225.89694-6-matti.lehtimaki@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230507201225.89694-6-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/05/2023 23:12, Matti Lehtimäki wrote:
> Specify pre-parsed per-sensor calibration nvmem cells in the qfprom
> device node rather than parsing the whole data blob in the driver.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> ---
>   arch/arm/boot/dts/qcom-msm8226.dtsi | 113 ++++++++++++++++++++++++++++
>   1 file changed, 113 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I did not manually check all the offsets, but they look sane to me.

-- 
With best wishes
Dmitry

