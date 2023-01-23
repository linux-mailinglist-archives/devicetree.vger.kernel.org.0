Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFB1B67825E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232233AbjAWQ5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:57:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231804AbjAWQ52 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:57:28 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 789622CC42
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:57:26 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id mg12so32225032ejc.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qs+PmdCaa0Oqr95NZq++4uVVYKEKDJ91l4ijJEaTst8=;
        b=geR+2FaMDDlT/WgzMf7kyTloZZO3xPIQ/oqdt5EIQwnr6PorP9r0Du1JisgGyZ9xTb
         6yl0C9VFDch5/qrQSDpKUuPPf/4vdpoTtdnfb4KTAypNS0fjiGIN9l71Z+xI7P+TFhok
         epAtFMxn4CjtR+sr2O4FsFZpTyuAvBt5dWdDZm5t+kQcwG2hl/mllyJuBLckrXB20Sq+
         Tdl4ig7Oi22Xw9iVTHshTod2IDscC7ThsLzT6EbkiAtrcCFSm1nlv2k3WurMTxkw/HRM
         OKAGaC6zDjTrFM++HSX6/LLMK++cfOOAiKq5PSgMc/F43q4BGhc+eHraAkkbJwW7uis0
         r5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qs+PmdCaa0Oqr95NZq++4uVVYKEKDJ91l4ijJEaTst8=;
        b=LVNwsLdwbWYu1SeMrt9QfFz6TblQa5sycURubf9MPfN8HiTbiP8eSWsMiTWNBs4Dtx
         swEUmk8Zt+OEEf1mmzd7mqO75PVlrPESYMEevIn0ERfZcJt8bBSWPu2ebUeeO2llLtqY
         IO3BZDSCUTLPxhycHc7hEa08IcfRepDLARzgZs7ltxn4aDLErI2nq7GZLIEcGVzX7Q2a
         vtQgaqMjNysGCKFRV3wyY4aZ8r3CFd99pAu4riC3YECi0u/6N8uAUGZg8Ce/GwN2iFCX
         B6Lpm45l1n8RUktmkJm0QmSa8P50fuyxt3C7eAq78QK1zjabv6tq6eU2k8bWnZ5FdhgG
         1QTA==
X-Gm-Message-State: AFqh2krt0naTcjos4HgmAHOXms9O0wjIetWotV2ISFrmSWlfAjN8Jnla
        Ir1fVUJe4Wv/cP1xXf03e55VwQ==
X-Google-Smtp-Source: AMrXdXurF26/WD+AXN2fCfpei/bQ2eG8irXZnCNrkdttoZhRiwGLMq+O6BiSC47v3lAbam4CncX+8Q==
X-Received: by 2002:a17:906:a09:b0:7af:1139:de77 with SMTP id w9-20020a1709060a0900b007af1139de77mr32057359ejf.4.1674493045126;
        Mon, 23 Jan 2023 08:57:25 -0800 (PST)
Received: from [192.168.1.101] (abxi24.neoplus.adsl.tpnet.pl. [83.9.2.24])
        by smtp.gmail.com with ESMTPSA id i21-20020a1709064fd500b008779570227bsm5542285ejw.112.2023.01.23.08.57.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 08:57:24 -0800 (PST)
Message-ID: <4afc4f62-dfa8-89e3-e5cc-9dae3290b0b3@linaro.org>
Date:   Mon, 23 Jan 2023 17:57:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: Add smp2p nodes
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org
References: <20230121200454.1423567-1-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230121200454.1423567-1-bhupesh.sharma@linaro.org>
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



On 21.01.2023 21:04, Bhupesh Sharma wrote:
> Add the adsp, cdsp and modem smp2p nodes to sm6115.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 72 ++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 50cb8a82ecd5..3c66f998a81b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -345,6 +345,78 @@ rpmpd_opp_turbo_plus: opp8 {
>  		};
>  	};
>  
> +	smp2p-adsp {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <443>, <429>;
> +
> +		interrupts = <GIC_SPI 279 IRQ_TYPE_EDGE_RISING>;
> +
> +		mboxes = <&apcs_glb 10>;
> +
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <2>;
> +
> +		adsp_smp2p_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		adsp_smp2p_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
> +	smp2p-cdsp {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <94>, <432>;
> +
> +		interrupts = <GIC_SPI 263 IRQ_TYPE_EDGE_RISING>;
> +
> +		mboxes = <&apcs_glb 30>;
> +
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <5>;
> +
> +		cdsp_smp2p_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		cdsp_smp2p_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
> +	smp2p-mpss {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <435>, <428>;
> +
> +		interrupts = <GIC_SPI 70 IRQ_TYPE_EDGE_RISING>;
> +
> +		mboxes = <&apcs_glb 14>;
> +
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <1>;
> +
> +		modem_smp2p_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		modem_smp2p_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
>  	soc: soc@0 {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
