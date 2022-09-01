Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64FC65A907F
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 09:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232649AbiIAHjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 03:39:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233946AbiIAHjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 03:39:04 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9006D11823D
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 00:39:02 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bx38so16961404ljb.10
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 00:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=M4HvfQcPdaPA2OH09fXKeYQ8XRsv26I21TWdMvoyVdA=;
        b=NKDbhY9mJ3EuT6p6bKAiQiIFsWqv6BrU/dCgxS5wRAFJSwbMlQMlteSiBh3MWpiQ1s
         farZ+guCytYZIHC5b/ZMTdUt4m94dHmK8r0hbPUccprNAxHwilr+jAHFYHly/0GZC6jq
         26vh+u82rKUDuhZYYMF+mLPbjHGz1Ul1Hzcv6Kn23I1k/53UySRypjGQlog1+7xBorn3
         KOZ+txL461fpIW4ehZAbPbutyxv2+oOFXtpgsT2LXli/iZtugWdUoYTLlV9OAj3D6hb4
         Bs0s1X8tPiPR/NTm0CFTdaOW4OHmEdnEMucD6esCnh9wkxvIlS6OJbgQ2GpyzywNaNET
         6bWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=M4HvfQcPdaPA2OH09fXKeYQ8XRsv26I21TWdMvoyVdA=;
        b=EanKpN02+n/vc8qhPKutEi/4MMWndcJz3btBdufXmbPfoP1+YAEcwr8Tr19DW8FfDy
         I6/7kn6NPQFsoSqp/ID10Y/oJ+nnS7vl5ADPBnBjRiJQk4VnszgthQ0gc3eLXWabZ79W
         0eCkMN6Ihc9NtYInx78bMENtoujj5yXu4NoHcu1qfH6itAHNkw2O5UBCOGbX2uXTB1zN
         FhdjUs2zkVxkRg14OpoOfpB+H3LdXHMkYkAsE+IS7maJaFObDvRtN+gJz0MjFtL1Q495
         fR/P6Hm9jEeD9VKKEkyKrGvIo8SQtkyI4bc8fnHgvNTGTyMtsPqb3aTjfnU5Y3+XPEbo
         W8Yw==
X-Gm-Message-State: ACgBeo0THU2S5R/oi58TxqHIiNuQQky8CqGENZ15dnX+6SF/2CouDX2i
        vkqXtob6UA+UA/yXkGzptuE5mQ==
X-Google-Smtp-Source: AA6agR6O+X3XGQw/vOCFuS+z1Fe50p+2SMsAmdfnJCNcvafIN14inBCe9BGHwMGGY+3EjsngPYck7Q==
X-Received: by 2002:a05:651c:198e:b0:25e:6d28:3a0f with SMTP id bx14-20020a05651c198e00b0025e6d283a0fmr9944631ljb.321.1662017940934;
        Thu, 01 Sep 2022 00:39:00 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id c2-20020a056512104200b004949e28273fsm91447lfb.206.2022.09.01.00.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 00:39:00 -0700 (PDT)
Message-ID: <d0111cb8-1104-73a4-aacf-ff0cd803d571@linaro.org>
Date:   Thu, 1 Sep 2022 10:38:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: Add description of camera
 control interfaces
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220901073504.3077363-1-vladimir.zapolskiy@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901073504.3077363-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 10:35, Vladimir Zapolskiy wrote:
> Add description of two CCI controllers found on QCOM SM8450.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 142 +++++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
