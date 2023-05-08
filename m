Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C12A56FA243
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 10:31:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjEHIbC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 04:31:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbjEHIbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 04:31:02 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 896E21707
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 01:31:00 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f139de8cefso26421574e87.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 01:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683534659; x=1686126659;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bj0Lw2kox19ii2BM01KlnNMvqL1S4dwAiyFt2I0KjpM=;
        b=JZGSLHB9MIYiGCrQCgu4CqzDve0wTy93hMJVCfnNsIg1e/oqMnEnuKZEjGWR7bs7cw
         wfJ8mC5hmtQJMzFIerLt205IFxVfsoCteL9MbnHixWLjRat8FN3FHeByYWulJI5nse+n
         XVxWvVrQgdCTXGXQPid3/2FfcJopHt43b38my1vwvUf01TJiN1YjXn+q37RSFi4TYAO9
         aDNST8R5MPSiSCKGwws5Qi3bGUiXg+rLaRFlhpUHLtrTpmX3YA1zcsW6vm6FOoXFlgna
         EWO8+OU0NAQaJXsDR6KfFam/VKu2N9I98M/8QewTteeTKYONYftaD56MxhGplbAFkQwV
         wHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683534659; x=1686126659;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bj0Lw2kox19ii2BM01KlnNMvqL1S4dwAiyFt2I0KjpM=;
        b=dcWeVISSBUATJsJdoeHxE8rziBNWxNI2BFj5KlfrHJm9KlwvS9e/QKVJ0H8rey9g4k
         I2d7g+8OmIYuSiA96DsPTZVS/8Yu+oRt6wAn0Not5c5Z32abZ4IZkf+UQLJH4V2Fy2Ok
         Y9mjl/fRHhl2UgFjVX9elxEijMMxNuve/YrJxL0WSJdVxh5qNRanXuzZN2HrZ2+BiVSf
         rYOyCreanBNltK/efV0UkmAloycSHWR7ZU5p8C2glM+cqzCSX7FaxzpNBRuNtsBFa/OD
         a/xizG9np0nzUuNaceg7ukRtxtta0o7rGl7k4wZJtavwIoMoDsURsp6p6q/dGAkEfAzc
         VUdw==
X-Gm-Message-State: AC+VfDztYuc9qAx24jPuv5rMN8dbYugx5+9S/awReWckYK3O4JmL2u8x
        g7kHyRFRDathwEvYOH5E5d2Fcw==
X-Google-Smtp-Source: ACHHUZ6d24zxoVca00fKR8vFgULu7VtObta6oV9gpaKWuTbbc7CK6t+VDpL4OjXEIRruPoM0kJT4+A==
X-Received: by 2002:a19:f00d:0:b0:4ee:dc5a:42f7 with SMTP id p13-20020a19f00d000000b004eedc5a42f7mr2907935lfc.24.1683534658808;
        Mon, 08 May 2023 01:30:58 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id a17-20020a19f811000000b004f13634da05sm1215359lff.180.2023.05.08.01.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 01:30:58 -0700 (PDT)
Message-ID: <8cdecc51-2a42-4b82-9eb3-2ab77860c5d4@linaro.org>
Date:   Mon, 8 May 2023 10:30:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8974: add ocmem clock to GPU
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
 <20230507190735.2333145-2-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230507190735.2333145-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7.05.2023 21:07, Dmitry Baryshkov wrote:
> To get GPU working with the OCMEM, the oxili_ocmemgx_clk clock should be
> enabled. Pass it to the GPU to get it to work on apq8074/msm8974 boards.
> 
> Fixes: fe079442db63 ("ARM: dts: qcom: msm8974: add gpu support")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Uhh.. this clock should be managed by RPM with:

type = MEM
id = 2

just like it's defined for 8994 today.

Could you try adding it in rpmcc and confirming?

Konrad
>  arch/arm/boot/dts/qcom-msm8974.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
> index 834ad95515b1..fb661c1bd3d5 100644
> --- a/arch/arm/boot/dts/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
> @@ -2104,8 +2104,9 @@ gpu: adreno@fdb00000 {
>  
>  			clocks = <&mmcc OXILI_GFX3D_CLK>,
>  				 <&mmcc OXILICX_AHB_CLK>,
> +				 <&mmcc OXILI_OCMEMGX_CLK>,
>  				 <&mmcc OXILICX_AXI_CLK>;
> -			clock-names = "core", "iface", "mem_iface";
> +			clock-names = "core", "iface", "mem", "mem_iface";
>  
>  			sram = <&gmu_sram>;
>  			power-domains = <&mmcc OXILICX_GDSC>;
