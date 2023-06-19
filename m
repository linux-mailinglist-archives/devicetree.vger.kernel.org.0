Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC98735874
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 15:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231296AbjFSNY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 09:24:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230491AbjFSNY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 09:24:26 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C51F618D
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:24:23 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f86bc35f13so1881295e87.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687181062; x=1689773062;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nbs88plVsUd4xdwxXZarFikrtg+WtL8ASFB3o26qdY8=;
        b=zRoLWvOhqo3e8HtRy3x36Wp5I7h8NdYiedTh/quX2lJXMWwokofNV5atE7sRMo+noK
         YIdrsQ2QNbhejcAjeNJ2n1pNBxGYJR4WBI/3lTumgFQD71q4X2g5iGnrzLU+kHuhbVLd
         luhpfdKGNgUmQkz1AG6wOi+JIrfiHzVGrRPFx8JL66KFB7hwNYLBtAMZ7H5nYeSqDypi
         tON0vpSqlPIjd1DlsUrFW4zTz1keV0h6PLfr6qVe06J5Vx97G5lklBrHb5ywJVn2L1Gh
         eGfUZ3xGZW/mGh+2WVTo7zVgXBmv9O4FsB3Vas7DoT5ugPJVACJP+r+SW+TwZGQfSpsy
         6qXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687181062; x=1689773062;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nbs88plVsUd4xdwxXZarFikrtg+WtL8ASFB3o26qdY8=;
        b=W/H6Crq3O/V9Bu1bjUeMA3BIJQHcoEF/rl4jSVMRaNls5/pIYqxmnKMSZ6AtPBzPeo
         jYoJyp79unhBcfy6A1MLzhF1EVd1AxQbwSD5mJFL+yi32/yoTfffHjwJsN3gr0c53v8P
         ic63rkMrfpXTzuxmpl/rQ9eH7oGUVuVMcpqWZnLc6x3iCWK3+8JtgJSW/VG2KFus3wx8
         mFOLyEr9Bim64yiIVzRttTiChn4NhsUsyouTT+2XTOy+uQ++EECS2wlsmXo4FEDocMzA
         QQbERyDadtsrTIfJKWa8SfV1aqYjamwyqXlF8kBaZBOjC3GEQtG0t2UvE2Z0xPExDHpt
         AcLA==
X-Gm-Message-State: AC+VfDyBKOunteDLcFVeZEIc80j2pYczNekwbSRDPT9hwgTpZ04pTURi
        lrn0WcH6RYsIJOsKatWmno9xzfOfZKbZDKItGbc=
X-Google-Smtp-Source: ACHHUZ7LjAQHZ0XtFbfxf3EQdhikILIuRyEeHGTfD8Vua4HJTM0h3/POqJgflc6ZAbs/yGObjjtJXw==
X-Received: by 2002:a19:e34a:0:b0:4f4:c973:c97d with SMTP id c10-20020a19e34a000000b004f4c973c97dmr4502713lfk.25.1687181061951;
        Mon, 19 Jun 2023 06:24:21 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id z7-20020a19f707000000b004f508e8a9acsm4272678lfe.301.2023.06.19.06.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 06:24:21 -0700 (PDT)
Message-ID: <4e558ea5-84cf-c7d4-19c2-f6e72f497c74@linaro.org>
Date:   Mon, 19 Jun 2023 15:24:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8350: add APR and LPASS TLMM
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230616190222.2251186-1-krzysztof.kozlowski@linaro.org>
 <20230616190222.2251186-3-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230616190222.2251186-3-krzysztof.kozlowski@linaro.org>
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

On 16.06.2023 21:02, Krzysztof Kozlowski wrote:
> Add audio-related nodes: the APR in the ADSP (same as on SM8250) and
> LPASS TLMM pin controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Bindings for SM8350:
> https://lore.kernel.org/linux-arm-msm/20230616185742.2250452-1-krzysztof.kozlowski@linaro.org/T/#t
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 82 ++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 33b7ef8fd78a..9650cecb1370 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -15,7 +15,9 @@
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>  #include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
> +#include <dt-bindings/soc/qcom,apr.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/thermal/thermal.h>
>  #include <dt-bindings/interconnect/qcom,sm8350.h>
>  
> @@ -1780,6 +1782,20 @@ tcsr_mutex: hwlock@1f40000 {
>  			#hwlock-cells = <1>;
>  		};
>  
> +		lpass_tlmm: pinctrl@33c0000 {
> +			compatible = "qcom,sm8350-lpass-lpi-pinctrl";
> +			reg = <0 0x033c0000 0x0 0x20000>,
'0' for addr, '0x0' for size :/

The rest of the file uses '0', please do that

> +			      <0 0x03550000 0x0 0x10000>;
> +
> +			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +			clock-names = "core", "audio";
> +
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&lpass_tlmm 0 0 15>;
> +		};
> +
>  		gpu: gpu@3d00000 {
>  			compatible = "qcom,adreno-660.1", "qcom,adreno";
>  
> @@ -3189,6 +3205,72 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  				label = "lpass";
>  				qcom,remote-pid = <2>;
>  
> +				apr {
> +					compatible = "qcom,apr-v2";
> +					qcom,glink-channels = "apr_audio_svc";
> +					qcom,domain = <APR_DOMAIN_ADSP>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					service@3 {
> +						reg = <APR_SVC_ADSP_CORE>;
> +						compatible = "qcom,q6core";
> +						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +					};
> +
> +					q6afe: service@4 {
> +						compatible = "qcom,q6afe";
> +						reg = <APR_SVC_AFE>;
> +						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
Missing newline before subnodes

> +						q6afedai: dais {
> +							compatible = "qcom,q6afe-dais";
> +							#address-cells = <1>;
> +							#size-cells = <0>;
> +							#sound-dai-cells = <1>;
> +						};
> +
> +						q6afecc: clock-controller {
> +							compatible = "qcom,q6afe-clocks";
> +							#clock-cells = <2>;
> +						};
> +					};
> +
> +					q6asm: service@7 {
> +						compatible = "qcom,q6asm";
> +						reg = <APR_SVC_ASM>;
> +						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
ditto

> +						q6asmdai: dais {
> +							compatible = "qcom,q6asm-dais";
> +							#address-cells = <1>;
> +							#size-cells = <0>;
> +							#sound-dai-cells = <1>;
> +							iommus = <&apps_smmu 0x1801 0x0>;
> +
> +							dai@0 {
> +								reg = <0>;
> +							};
> +
> +							dai@1 {
> +								reg = <1>;
> +							};
> +
> +							dai@2 {
> +								reg = <2>;
> +							};
> +						};
> +					};
> +
> +					q6adm: service@8 {
> +						compatible = "qcom,q6adm";
> +						reg = <APR_SVC_ADM>;
> +						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
ditto

The rest looks ok I think

Konrad
> +						q6routing: routing {
> +							compatible = "qcom,q6adm-routing";
> +							#sound-dai-cells = <0>;
> +						};
> +					};
> +				};
> +
>  				fastrpc {
>  					compatible = "qcom,fastrpc";
>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
