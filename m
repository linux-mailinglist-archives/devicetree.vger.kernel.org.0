Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E82D66569F5
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231220AbiL0Lay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:30:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbiL0Lan (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:30:43 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459D4A1
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:30:41 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bq39so11437315lfb.0
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VXMhLcKfKzWw0oHXnh35yzuW1kpXbkLLBZjvh8oDJEw=;
        b=TmS6Idtmj7gkjIZtZZwacuweBL8Ts34juarY0OPoVWc117eHWKPOdaQogOpwSAJpqD
         9J9cadMc0cX4exv+6BNXN+MqRc6Kil4+KvMhmclvdcFTyk5TnRyIIIypRvcN/ZvTB1PS
         fBb+NomEjI7ZujSsXUqQz87qXlNgyvLmAKyEHNSYv+zVXraVgV98QAh13RGcbv/odwEQ
         jtoOna03X13UJLZ6nc8mKxOtYSSmOO7p76qMYngh+zo6+NScB/bvpf4pEklSzbFJj2t4
         mM5EupLmekpB9XVrL19qEmsMhJiEeadLkbIZln8K5VsEI7JQ4d4gYzR8NTtP3wPDQmuH
         McJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VXMhLcKfKzWw0oHXnh35yzuW1kpXbkLLBZjvh8oDJEw=;
        b=ZuBh0VGL0cBEn75zDm88H/WMCO224LxclkAmVIjqeoAp4bgPwfI3sQVHNopFIvB2do
         j+ZFcNJqnp09+FwUebnWFJo85C/y6wAjyvqZeR6FnNUkCw6t4fUBGiC+f/p7oIgoIIml
         oZq5WLUJ1MuK1xjZswmLU9QlxARGmvKN4PwTg4MNny3/F2GOqg1uYU2r0k9v98su4gFX
         Iaj3QLGZt07IFSqAH77lS1ECQpewxykOWP0dPY0Idd3IzkQDIwjVoRDsNP/3ua4qy9UQ
         tq07ZvRTVBfl4mC2yOHPe+25AeCVsCgGXTuDNYkyAQnnu0h27bypGXm94KM+vJofUcuJ
         74zg==
X-Gm-Message-State: AFqh2kr16gs2XXmiOnyNQsCs9GR4X6LvNo5GtPa2m5+a1AQjl99+mzFR
        YXK7t0vGJ9M/eFfrVpPkyd+CEZ+r2aamaDdB
X-Google-Smtp-Source: AMrXdXuDFQD2cwkfhw2f26SzySLn167KjIIblKX26xknVaNeM8P3vq5eWMJou03msaRyoS4uPM2btg==
X-Received: by 2002:a05:6512:c14:b0:4b5:abe3:c63d with SMTP id z20-20020a0565120c1400b004b5abe3c63dmr7182137lfu.42.1672140639659;
        Tue, 27 Dec 2022 03:30:39 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id n18-20020a05651203f200b004b4f2a30e6csm2226056lfq.0.2022.12.27.03.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:30:39 -0800 (PST)
Message-ID: <dc30c057-fa58-39c8-eed8-090dff484fef@linaro.org>
Date:   Tue, 27 Dec 2022 12:30:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] ARM: dts: qcom: msm8974: add xo clock to rpm clock
 controller
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20221227001547.2830656-1-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221227001547.2830656-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.12.2022 01:15, Dmitry Baryshkov wrote:
> Populate the rpm clock controller node with clocks and clock-names
> properties.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-msm8974.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
> index 8d216a3c0851..81636c76e068 100644
> --- a/arch/arm/boot/dts/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
> @@ -307,6 +307,8 @@ rpm_requests: rpm_requests {
>  				rpmcc: clock-controller {
>  					compatible = "qcom,rpmcc-msm8974", "qcom,rpmcc";
>  					#clock-cells = <1>;
> +					clocks = <&xo_board>;
> +					clock-names = "xo";
>  				};
>  			};
>  		};
