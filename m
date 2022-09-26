Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB9A95E9CBE
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 11:01:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234675AbiIZJA7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 05:00:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234678AbiIZJAb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 05:00:31 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0024A3ED70
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:00:25 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id q17so6615153lji.11
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=H/+p8mEjTwGAnb/er9H9+Y9nICJTLPjXS5T+tZ95rMU=;
        b=yWk5mtILlu3UvcdbLmm79SFegmsJXf79HETgiwCQ49OfGUVYLDRDxJgp6KNj6ZWq6I
         wl1QKuo2YW6aAu2vuWbTFaNy+rnl0GETB92Xl5HLwDYj2xWQRxbUNa6AYKaFbGlKSOJP
         fRPtWx2sWdT9uRSvCxOJTa8LXNPAsE+vD+G+5Q/v2fHpZrv6q28Na6Bl59LFNZ4H0/fx
         jHSimE65fahojWlVaKqh/w6U8OvKwa28aX9dLyhGOgoxHI900egLGVmUgoXGb9ClVUfx
         hFBPm44nbfoD5datkprKhBq7CPWD/ZoVtFw1D07pD4Ya0nN17+kxo0DaKcyJUFRfhie7
         2qoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=H/+p8mEjTwGAnb/er9H9+Y9nICJTLPjXS5T+tZ95rMU=;
        b=Btfsie0XUyYy+jgqQrEMYLY/eW5Yn5zha3SVWsJgzYQCgKEOxK9ARKEiInxRIXHcnm
         2I5iCAer6tTQOI1FgikGml4dWtEswMTaTpdnCOZk7GFefx+Vb8kTnebQx5My9MarI9oY
         ILgJnU1X1tKAwB3qkKkjzRpayAhLaAgDbCJfol0l0c2MHVE/raYOnw4pEStXU5D2Clmb
         3UN0XL/L6vuY9XDgzCuGQ/Aw7WwOj4EEr2OB6iWWqeEoM4OEzeXgXLH0q5+19v4bhO1e
         4Awzlw0a9pp3Sm0ecyjIxHHFvmkxlY8DEfvkI2z5+O0zXxa4SqsJNmWPBy9oB2SnEXDi
         SBhQ==
X-Gm-Message-State: ACrzQf0Hdt5gDoSm6mMJXdZtLj71o8uAqqyS0udfprOIGXhnycAhy27X
        zMQ5hY8Z4PNOKEaF4riaB1Samg==
X-Google-Smtp-Source: AMsMyM4hKXV+6qWzL83RKzUGTSpmbkXzzGWkD9OMFsddwepE9ZoNPCkOgJjaueWAjP7n5XAsGppkGA==
X-Received: by 2002:a2e:b74f:0:b0:26c:426c:60fc with SMTP id k15-20020a2eb74f000000b0026c426c60fcmr7372576ljo.432.1664182823526;
        Mon, 26 Sep 2022 02:00:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512068c00b00498fe38ea0fsm2466878lfe.174.2022.09.26.02.00.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 02:00:23 -0700 (PDT)
Message-ID: <f1057c78-39a2-6b26-f3c9-51cd99450dd2@linaro.org>
Date:   Mon, 26 Sep 2022 11:00:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add nodes to support WoW on
 WCN6750
Content-Language: en-US
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220926045735.719-1-quic_mpubbise@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220926045735.719-1-quic_mpubbise@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 06:57, Manikanta Pubbisetty wrote:
> Add DT nodes to support WoW (Wake on Wireless) feature on WCN6750
> WiFi hardware on SC7280 SoC.
> 
> Signed-off-by: Manikanta Pubbisetty <quic_mpubbise@quicinc.com>

Thank you for your patch. There is something to discuss/improve.


> ---
> Changes from V1:
> - Rebased on ToT
> 
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 212580316d3e..3f6a3f575339 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -752,6 +752,17 @@ wpss_smp2p_in: slave-kernel {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		wlan_smp2p_out: wlan-ap-to-wpss {

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

> +			qcom,entry-name = "wlan";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		wlan_smp2p_in: wlan-wpss-to-ap {
> +			qcom,entry-name = "wlan";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
>  	};
>  
>  	pmu {
> @@ -2004,6 +2015,8 @@ wifi: wifi@17a10040 {
>  			qcom,rproc = <&remoteproc_wpss>;
>  			memory-region = <&wlan_fw_mem>, <&wlan_ce_mem>;
>  			status = "disabled";

status is the last.

> +			qcom,smem-states = <&wlan_smp2p_out 0>;
> +			qcom,smem-state-names = "wlan-smp2p-out";

Are these valid properties for this node? Did you check with bindings?

Best regards,
Krzysztof

