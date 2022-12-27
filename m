Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 587996569D8
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:21:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbiL0LVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:21:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiL0LVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:21:53 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37AA42DD3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:21:52 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id g13so19195927lfv.7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7NIOi1csHwxEK2LTmxJo1dwW6FjXdwFHjzoVnu+2p+g=;
        b=PFdusdlLlCSwdPHpgyxbFiQXPjDl2KMVGPbMbmxLN2i6JFcVdEndJsXVPMIqdPMPFP
         U+qLxWJBYFM6cqYaruYEXyOXFcUS3z/VdZsUPvBOoON/+Brlpo/Btb53i9D3xY446qm1
         ++Tas+AIEA/guELY15bNgKUHwn71L3AQUoK9bniHD7EVUKEic6p4EzhAcgJnYSsOKoxZ
         13rLwNpALv2dtGveXj8bzUBJNouxm0bo77PBf0f7I9Jixaav7K3UBsUvk6rgEg3LgMzd
         S0D+iccF/1A9Kh5xQ9ddF61VtuOFRTujqMdRguyjYtJICo5MfsaKhqzbhR70Uk7fiBsI
         rdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7NIOi1csHwxEK2LTmxJo1dwW6FjXdwFHjzoVnu+2p+g=;
        b=XGRa2MSPqjwzeXWPlwvDJZ2gUgBCqlXqC37R2qtuEodVXINNFiq0IPkXfJGGtCJzl7
         s4hTunZ+F7Cl002yaSTsxS8Rh7MG243DGGQB+CcjPY2A4RCFe3XWxREUEYfDEpyvX9QV
         InGBxTiTeWDsHW4Mx+26XU5YB9RudQOQN7hhlDyBgvAKXZ2NZL+s1DIwkt97nEM/ZCEA
         SVwiAsXTqAlc8/vai9a1nCrpa9WLD/hgfE9eu6dMXpRxdHHz7cXWuNnyLeCsiidwrQhl
         QfN2qq/l3MVIUbZQQW5bAkBf/Csd74HVdTSGtdWUMZVWI5NzuNWuKpYKW4imiqlJtXJa
         LgPA==
X-Gm-Message-State: AFqh2krqGhGh2/mf2G63uWLxS69L4hPShKt9dg5sDmI37ipHxNg+vp1I
        /71VNXn15IPAQfGAND2Ry27M7A==
X-Google-Smtp-Source: AMrXdXsnHCInet3Mg0cf8EY0QPpb6fg2YWsiY1F2Ki+RLZ7mrDDGt642tm61OYt0l2qWy0+hBLjNGQ==
X-Received: by 2002:ac2:44a4:0:b0:4b5:5da1:5225 with SMTP id c4-20020ac244a4000000b004b55da15225mr5457293lfm.50.1672140110631;
        Tue, 27 Dec 2022 03:21:50 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id d1-20020a193841000000b00492c663bba2sm2220843lfj.124.2022.12.27.03.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:21:50 -0800 (PST)
Message-ID: <c68892bf-3ede-63b4-996d-b8ac77b42c46@linaro.org>
Date:   Tue, 27 Dec 2022 12:21:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8450: re-order GCC clocks
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221224154255.43499-1-krzysztof.kozlowski@linaro.org>
 <20221224154255.43499-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221224154255.43499-4-krzysztof.kozlowski@linaro.org>
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



On 24.12.2022 16:42, Krzysztof Kozlowski wrote:
> Bindings expect GCC clocks in other order:
> 
>   sm8450-hdk.dtb: clock-controller@100000: clock-names:1: 'sleep_clk' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index e1df3dad70fb..bb84bf3899b5 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -731,13 +731,13 @@ gcc: clock-controller@100000 {
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&sleep_clk>,
>  				 <&pcie0_lane>,
> -				 <&pcie1_lane>,
> -				 <&sleep_clk>;
> +				 <&pcie1_lane>;
>  			clock-names = "bi_tcxo",
> +				      "sleep_clk",
>  				      "pcie_0_pipe_clk",
> -				      "pcie_1_pipe_clk",
> -				      "sleep_clk";
> +				      "pcie_1_pipe_clk";
>  		};
>  
>  		gpi_dma2: dma-controller@800000 {
