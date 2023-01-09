Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCC96627B6
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjAINuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:50:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236855AbjAINtc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:49:32 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C14D32EA2
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:49:31 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id bu8so13043294lfb.4
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XQ++tXnAAnj4m7JM+pf48esO3W6svpjP4CzYNi5gjuA=;
        b=P1t1ZIq0yzDJEN8nuVNvuK3RJDYGdKS/K3WMkwHh4S1IfW4KbYkMt4yN4l3ar99T6u
         DSRsCRw/D++IMBvAjPc+cN+PoONcOYHHTCIi5Ea19LfRhdV5yn47vkkXF4gnVFOWY0pP
         NI+K6aBCU+UTwT6JWgUAW+6d+ZKoEzNuC+fM/QfHmpqB3PcecNkeLkwWzw/sv2H9fsTW
         5N5Ff44rdvrDIBE5VaEb281wKDTtCy8ujwyFAhYctDYbA8SpcyQQhM2+FcOZDOXL2uF2
         LAzw1q50rXJhhA+3uhQdCfNrFkIP0pYzMSkDe0lDU90MTHjQjRyUS+VnP4nu7hrIImns
         NNTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XQ++tXnAAnj4m7JM+pf48esO3W6svpjP4CzYNi5gjuA=;
        b=vCEBTqdNyP7rVhXCL8/aXQXZZD7m1lw4dEtU4yfEDKDTeMfm8YQEkL3+/NLrMuLNln
         6M/a8wWxaOwizNXHrSOE4GBysJTrlL2GWGy/bdFHKoRLUHOKnSq8jQ9v4ibu0PeJlu61
         0LTZFXCUOUxETGf3ZFBUZq0IGzRMYaWWp4iLOzNoO4GnSpNbTSbksJYPBA/nnUK3jL3p
         +Y7ycBahIPxWVpFUJhzIUVS2FoI5+Mg1WqTyAkTW0MRDN6r/iJzpBTo5eZhhcvpzbW/r
         z4Ltmgs4rgoPNNQf2VA234M5/aB+Xw/6BcmmnD4a/0Tnbqc6eGRiGESkS/SYLghvyfqU
         XL2w==
X-Gm-Message-State: AFqh2kqdufRhuWtK9lTi4CG2b1zRtTpCP7GeQ5iCDy/y94oePnL1bcdz
        8DR1YX1pFnkZyxXIe/qqBBVCVQ==
X-Google-Smtp-Source: AMrXdXu9C4VmnuquuZKtg4t9IstWGTTnPCNJc8c7t5T828Id9ByIz0TNJd0x2bN5rJxUsfiy3bpouw==
X-Received: by 2002:a05:6512:2601:b0:4ca:f9e4:5cac with SMTP id bt1-20020a056512260100b004caf9e45cacmr17837865lfb.14.1673272169387;
        Mon, 09 Jan 2023 05:49:29 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id c7-20020a056512324700b004b55da14ba8sm1615421lfr.291.2023.01.09.05.49.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 05:49:28 -0800 (PST)
Message-ID: <d3c473e3-3553-0aa9-cbca-f65a11604fff@linaro.org>
Date:   Mon, 9 Jan 2023 14:49:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 12/12] arm64: dts: qcom: sm8250: drop the virtual
 ipa-virt device
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     Georgi Djakov <djakov@kernel.org>, Alex Elder <elder@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230109002935.244320-1-dmitry.baryshkov@linaro.org>
 <20230109002935.244320-13-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230109002935.244320-13-dmitry.baryshkov@linaro.org>
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



On 9.01.2023 01:29, Dmitry Baryshkov wrote:
> Drop the virtual ipa-virt device. The interconnects it provided are
> going to be represented as <&rpmhcc RPMH_IPA_CLK> clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index b3ab2896a6cc..af298dec0568 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2215,13 +2215,6 @@ ufs_mem_phy_lanes: phy@1d87400 {
>  			};
>  		};
>  
> -		ipa_virt: interconnect@1e00000 {
> -			compatible = "qcom,sm8250-ipa-virt";
> -			reg = <0 0x01e00000 0 0x1000>;
> -			#interconnect-cells = <1>;
> -			qcom,bcm-voters = <&apps_bcm_voter>;
> -		};
> -
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x40000>;
