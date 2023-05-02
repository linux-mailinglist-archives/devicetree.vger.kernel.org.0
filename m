Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86496F41CD
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 12:37:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234035AbjEBKhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 06:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233870AbjEBKga (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 06:36:30 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A7959D8
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 03:36:07 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2a8c30ac7e3so34558541fa.1
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 03:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683023765; x=1685615765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R5SeO4KO3GWB1zcDZNvr4+FDiqxohtgvlKpp+R8U82o=;
        b=Idd0paRxxCY3MspEPDx6f2twKYyWsSXBHLFUFKd2iuMSK558630B+RNoQliqB1MaWP
         IIFwN2IeIyyDdFCfCBXtmdNQ06c+xrCDzYMxP7fWfVU3u9C5TD6a5XD2v0g4kkawYGBG
         IIb3QGiBRhQYymt6cOBwwM4+x0OGaer3ANx9iASGO9M0jYQ9Q21W5z12h1YIjG/nxeeh
         OFb9Dg8b75vWs6BwmEOC0ivORcwE04ajMCeytZJeVyy007Z2Lj31RHXDFfoQAScwbYvj
         ChMdvAFPO6KuqNSdEC9niYdJn6zPwa2vIKblbUGCHdf2wbWLrud/GE1qMlsnhptgfWey
         XMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683023765; x=1685615765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5SeO4KO3GWB1zcDZNvr4+FDiqxohtgvlKpp+R8U82o=;
        b=HzfIqHGP+v7+DuIiDVRAUBYA36bcqhZpqg+R8vkAa4z8R5HpIfXpZL9p4twcfUpeRl
         pjjcBI/NwAlVvBluWAZ8GaeBkf/miw35sBh/g+D+GafyZH4PdzDfe/0nnSCSiA9YKzAD
         nhEv4ZE35Kzs2HIbwif3x/WFq8bNGZiOPH0H6sKKrBFEhWOvYbshMLdGxpqqfRYoVr7P
         NOOCTG2kQTmr40PopzWtW7epWx3EAifPhSxjdKCT+slZ0q2QSgtP/swhjlvhNDfnzknx
         b72AEQ6IqsoWQaC/gPuQI9hCT4jAnRzgO7gDdyHh96UTPW99XZIFy4iZUvTGnGjFFQQv
         Q4lA==
X-Gm-Message-State: AC+VfDwmKhs6ERzGBfPse8IQIluaY9QLSAYynA0YDmMhmAEeXzS+bqOs
        pf/+S8Jwj+DABwHhhWN35o7Trg==
X-Google-Smtp-Source: ACHHUZ4acl68cTkDqaKwmcoX0Q2XYrrFgYMNcR1Xg03lVcffNENp+H3AqtVjDaG+/ou5CMF3D1P8Ow==
X-Received: by 2002:a05:6512:3cc:b0:4ed:cc6d:1da1 with SMTP id w12-20020a05651203cc00b004edcc6d1da1mr4555693lfp.36.1683023765640;
        Tue, 02 May 2023 03:36:05 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id j22-20020ac24556000000b004edc72be17csm5280795lfm.2.2023.05.02.03.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 03:36:05 -0700 (PDT)
Message-ID: <38b8139f-e0e3-cd1c-5f9d-49d45e4dc0dd@linaro.org>
Date:   Tue, 2 May 2023 12:36:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        kishon@kernel.org, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2.05.2023 07:35, Bhupesh Sharma wrote:
> Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index dc80f0bca767..eae3024ce003 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -222,6 +222,30 @@ &uart4 {
>  	status = "okay";
>  };
>  
> +&usb {
> +	status = "okay";
> +};
> +
> +&usb_dwc3 {
> +	maximum-speed = "super-speed";
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_hsphy {
> +	vdd-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +	vdda-phy-dpdm-supply = <&vreg_l15a_3p128>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +
> +	status = "okay";
> +};
> +
>  &xo_board {
>  	clock-frequency = <19200000>;
>  };
