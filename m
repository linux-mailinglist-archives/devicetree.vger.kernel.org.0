Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 447BE6552AD
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 17:20:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbiLWQUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 11:20:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbiLWQUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 11:20:24 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B0B7EB5
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 08:20:22 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id g13so7625897lfv.7
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 08:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oU40CxH2TB61B5fapK2ced9BYlQ6qteB/AGOTUGiMf0=;
        b=tq2DCVyLjcoEIIY72N4YbfJZrXeEyadoTD/5nM8ejjsgpQ+43ETWdhV8Xv5hCE0mxE
         DV/j4DEMSdxy1hxK1fkewDvSGNJ/e1yHMqGUSz3B/pODGOZl5QnU6RF20KwWo17zENd4
         Q3QkH7HeWCrQBgHdSDc87KDFb8Wtwi97bbVqqzTQdeNToJTAwx3FNJ8NRkV0EJOB6Sxd
         9AiUvZGKRM5cq07VLvNQ3f1YPcVfDEIjcgD1Hqv+UFy1Z6/Xy5OU8PNs8hJQSBZxHm36
         96Dt8ddn838b25aSbyhAz/HmN0j9ThDThDM9JGimHvXH7pPg/Mkl+Zzchac5mAfPaCeV
         mhvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oU40CxH2TB61B5fapK2ced9BYlQ6qteB/AGOTUGiMf0=;
        b=OdWcgZM0u+4Ua8/3fKsDLR38hnjypXaOTiO0v/6HyWDA4Z4vGCdXYzIdiuYQ9ez4yd
         SkBP4FNjzhlzzWImpaYm6asiGknDc1+M7AoCA4XzHUEDoPjFkprgLNU7Na/LIBpq3tnI
         kCaJbgtrsN6tmk7udPFOMDQKckKOSFN5vpfbv+BTFSesksiJKweuqFwf7NdVLbwV7ir5
         0qYIBuSLxYwnHiPiBUaJfUOzn5KAF87WHiqK1PSwHZQHpj5eLP964HpL3Y1qnu9k3lN1
         q60phTH/Qd8tH3CdzwslR/shJxOohzPKS5CWS8oWvR8gX461GS/P4Z1wHk8SOj3xsFj2
         XLow==
X-Gm-Message-State: AFqh2krB1on5DHOUQXl14SF/1snekJTJgd4rduWgaQnPYNWOJt+T0isy
        2WLIlMhitE63C8wKzVcCYc7ypg==
X-Google-Smtp-Source: AMrXdXuPSRMbw5x3dpCkI/VoUYALnwH+IEHU2ANiAlFdiN2zOzGfh6Oc0YcNHSfejHHPuFgoV0Re3Q==
X-Received: by 2002:a05:6512:3589:b0:4b1:feb:a338 with SMTP id m9-20020a056512358900b004b10feba338mr2832952lfr.46.1671812420986;
        Fri, 23 Dec 2022 08:20:20 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id s7-20020a056512214700b004b57bbaef87sm569757lfr.224.2022.12.23.08.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 08:20:20 -0800 (PST)
Message-ID: <32d38511-88fd-894b-ed10-1f3ebfb2baed@linaro.org>
Date:   Fri, 23 Dec 2022 17:20:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8350: align MMC node names with
 DT schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
 <20221223161835.112079-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221223161835.112079-4-krzysztof.kozlowski@linaro.org>
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



On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
> The bindings expect "mmc" for MMC/SDHCI nodes:
> 
>   sm8350-sony-xperia-sagami-pdx214.dtb: sdhci@8804000: $nodename:0: 'sdhci@8804000' does not match '^mmc(@.*)?$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 245dce24ec59..18aa4bd073f3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -2369,7 +2369,7 @@ compute-cb@8 {
>  			};
>  		};
>  
> -		sdhc_2: sdhci@8804000 {
> +		sdhc_2: mmc@8804000 {
>  			compatible = "qcom,sm8350-sdhci", "qcom,sdhci-msm-v5";
>  			reg = <0 0x08804000 0 0x1000>;
>  
