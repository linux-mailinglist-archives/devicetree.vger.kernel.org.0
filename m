Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2304D7504E6
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 12:40:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232421AbjGLKj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 06:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232206AbjGLKjz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 06:39:55 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D98B1BC1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 03:39:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b5c2433134so7867011fa.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 03:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689158387; x=1691750387;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O/E17gR0NRv6xbVGP6Q/vcA5YPoNKAJhuiMOMg/O0kY=;
        b=yjcm5rS5TfcoO++yEfMBKTRSXvPWJDvkn9XH+ua74Q0WSkJR/NedMJaBff1GLpQ9zl
         wxZE6xmoWPJjEGLde4EscFAjJl17dUfX/HRJSIUcYv5mEexN2RRoVupVqZm3Qe42xTA9
         p9nalb0yTfziAfcvA+0GXVXP7tYs1S24/7C2rcK1yzWSL8KKqxN9X096fuRxeF3z7P21
         SrtE2/WqYxcOUxeUWKa8a2Rcoz4Th0IBat0soNwERrEZm4Ht9YadcTQudnudwXL5zKy+
         nI/Gywl+NVTMO4qScImU00zYVJr8oC89eVKNG6vdlB/5GSfZ/UIvHEKRBrFQcuSNPVOL
         /sRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689158387; x=1691750387;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O/E17gR0NRv6xbVGP6Q/vcA5YPoNKAJhuiMOMg/O0kY=;
        b=fEqkzqcLDohDupiVYDk+RzX9xPkDBhCRqVwVLeMx3qvPBq088bC3fjLq5Cg+hmtA+L
         CfPITGrkmty5UVyjjBaGF3+aQSfKJ4uUdkRHk+7MXaqXTLPWSynkDcg33G5yzhOMHoH8
         usbPWg4sXz13aB/L6vqyp5t1YwsGHIp54VFBfvNIdtFnIIu7ge3pQ4ZcpzH2uSk1kxR7
         91tmpQGqZK1BxGwqaOlAvD6qWBEcMR3j2QEvQEOs6KYnlx1mfYaOjLuJkIsez7Hgreoh
         JY7FJPX68ktuy6g/HjMrHTSHYOnZyb0nNnzFMzhv1wOP+pclFi5G3Wxt2d8Cmg1/VQZk
         t4Rg==
X-Gm-Message-State: ABy/qLbmpxHks4twed/g4sihBNVxV1ZRK34sA9pZyn8NM9vQ2ZqrEmSO
        GQbx+sbJimSUY0sv9NfzODxqPw==
X-Google-Smtp-Source: APBJJlF/w2ZtqwlejGDJFKlN7fYcwoKpwwuDmt3sJsDThkTfbVQk+lYfRCisc3NkiVsQPqiA90qsQQ==
X-Received: by 2002:a2e:908a:0:b0:2b6:da61:d5b9 with SMTP id l10-20020a2e908a000000b002b6da61d5b9mr586633ljg.14.1689158386803;
        Wed, 12 Jul 2023 03:39:46 -0700 (PDT)
Received: from [192.168.1.101] (abyk15.neoplus.adsl.tpnet.pl. [83.9.30.15])
        by smtp.gmail.com with ESMTPSA id x19-20020a2e8813000000b002b6d465583csm902983ljh.126.2023.07.12.03.39.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 03:39:46 -0700 (PDT)
Message-ID: <5c106f04-a452-db71-e3c6-e7b1c700136e@linaro.org>
Date:   Wed, 12 Jul 2023 12:39:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 03/14] arm64: dts: qcom: sdm845: Add missing RPMh power
 domain to GCC
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_asutoshd@quicinc.com, quic_cang@quicinc.com,
        quic_nitirawa@quicinc.com, quic_narepall@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_richardp@quicinc.com,
        quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com,
        bmasney@redhat.com, krzysztof.kozlowski@linaro.org
References: <20230712103213.101770-1-manivannan.sadhasivam@linaro.org>
 <20230712103213.101770-4-manivannan.sadhasivam@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230712103213.101770-4-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.07.2023 12:31, Manivannan Sadhasivam wrote:
> GCC and it's GDSCs are under the RPMh CX power domain. So let's add the
> missing RPMh power domain to the GCC node.
> 
> Fixes: 6d4cf750d03a ("arm64: dts: sdm845: Add minimal dts/dtsi files for sdm845 SoC and MTP")
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
The ratio of developers to lines of code changed is sus, but okay

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 02a6ea0b8b2c..9ed74bf72d05 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -1207,6 +1207,7 @@ gcc: clock-controller@100000 {
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> +			power-domains = <&rpmhpd SDM845_CX>;
>  		};
>  
>  		qfprom@784000 {
