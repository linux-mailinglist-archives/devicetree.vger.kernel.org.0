Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE2F76D989B
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 15:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236627AbjDFNwY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 09:52:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbjDFNwW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 09:52:22 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A5C4E71
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 06:52:21 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id y7so8349108ljp.2
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 06:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680789139;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fi3MbKEX3/1oXOmLA6/02HNxunRbR6J+mBMPZLKnID4=;
        b=T5KOLXwYzh6yxByWV2dKybcPjMqqgH9SwG/TckParRUN/PVAZamZQ1QZ4dSfB4tAMs
         lCNc1z1xB/sFxIzzJgYc65nNGgV0PaTgdAR7KHR8ecjDY1FdezuAziZKXZM+iv85621I
         i6ycuNMds3ze0uekYIadsGgk/OLthl6cVWedPqUMdpSzLY/sbRjalFaQbT/HlWXvhGrw
         kUeyP5x0OWgUjE3sXjHbTUH2OJ6aZQIgQ8irP6f011zLdDG3J1Og6PfzWkIOUGYf7Gni
         iYMpcvXJ91y+0q0GUS6tiH0uSgIOvSrNKb8IMWVI1r5eCv/9iZNTxJlS/M6c6V+dejBD
         G7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680789140;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fi3MbKEX3/1oXOmLA6/02HNxunRbR6J+mBMPZLKnID4=;
        b=Fju2nS80tbbwKqzbFWs+y0k07hJ6SNHWoGMr46pdOwQrvB9T6aK7RygW6unXAJmFTx
         nTtM9icf08Fx88jN1hxqeh/W8vI2YISP54mIKYi9VEtBV9c0QdrIBs8htSfCOoMUcf2V
         xR/yfvxLEJDE+9OHwaCGaufPBzrjlmGX6KVh5O86xpi7q5K8tNIuDKY+sp4EwNc27xKO
         2nX0rHJaV0XwTsEU5/oqbDd67kvgM8ckRQQVn0OtZa2apKQRFlvWKd05GSNgY61S3wsV
         S27GOjd7UMTRKKYV4MuRIfkRtf/87I1J96qFEzxk8X9IVusje6Nt1UpCgj1l8uyakxm7
         H53g==
X-Gm-Message-State: AAQBX9eE6DuxKm0adWUI/CVmrSgIwR4IXaEC65pRA1waJqmFPsyt7i7r
        ygy2YPqO3qFbyTHraqsNmZHyNw==
X-Google-Smtp-Source: AKy350YtOAzeOkwF1HQZlElfqcsFwRMN4c5y60bpJ2y5/F1fIAJg9bOYn481jfAhRCok7/++GyKBXA==
X-Received: by 2002:a2e:8058:0:b0:29b:aee8:29b3 with SMTP id p24-20020a2e8058000000b0029baee829b3mr3005558ljg.38.1680789139665;
        Thu, 06 Apr 2023 06:52:19 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id p3-20020a2e9a83000000b0029462e98c07sm295517lji.35.2023.04.06.06.52.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 06:52:19 -0700 (PDT)
Message-ID: <dfc5797a-784c-0a3e-a290-714fdf356713@linaro.org>
Date:   Thu, 6 Apr 2023 15:52:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 07/11] arm64: dts: qcom: sm6115: Add Crypto Engine
 support
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org
References: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
 <20230405072836.1690248-8-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230405072836.1690248-8-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5.04.2023 09:28, Bhupesh Sharma wrote:
> Add crypto engine (CE) and CE BAM related nodes and definitions to
> 'sm6115.dtsi'.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 2a51c938bbcb..ebac026b4cc7 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -650,6 +650,28 @@ usb_hsphy: phy@1613000 {
>  			status = "disabled";
>  		};
>  
> +		cryptobam: dma-controller@1b04000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01b04000 0x0 0x24000>;
> +			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			num-channels = <8>;
> +			qcom,num-ees = <2>;
> +			iommus = <&apps_smmu 0x94 0x11>,
> +				 <&apps_smmu 0x96 0x11>;
> +		};
> +
> +		crypto: crypto@1b3a000 {
> +			compatible = "qcom,sm6115-qce", "qcom,sm8150-qce", "qcom,qce";
> +			reg = <0x0 0x01b3a000 0x0 0x6000>;
> +			dmas = <&cryptobam 6>, <&cryptobam 7>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x94 0x11>,
> +				 <&apps_smmu 0x96 0x11>;
> +		};
> +
>  		qfprom@1b40000 {
>  			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>  			reg = <0x0 0x01b40000 0x0 0x7000>;
