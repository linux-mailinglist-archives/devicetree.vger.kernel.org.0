Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C634783FC7
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 13:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235100AbjHVLnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 07:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235109AbjHVLnB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 07:43:01 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40616E6E
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 04:42:37 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99c4923195dso567367566b.2
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 04:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704459; x=1693309259;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBng5C2dnihMAm7NsUCEA4IxSsW7kmSlLCvvdXqyKNI=;
        b=Q9/KNEeiK1MnW/VpATo99XcdowbhPp1AoE+rEsQfauE0G9EUxkPiRs/Z7io/aB2ZNs
         APR80hjLD2cGmMtZq3xh0yB1DsXvXE3eHNJ0XF+6PaPBRlC3BmveI+7lXrc6m66spXFv
         Ogt51Tu5IlZF47vZMKJKOyohUEx2LE98zqgksVPWIqowxjabI2Fz06lUbhHsGSqr9caz
         4oPISz+3/dAhhRDwFGBQK7KeL0XmZMUoMAqu5go0bzeiLceH+NK0XIo9r2Sm8b6bUAvE
         nOHlDE2m4qSX475Qz4mKaelnviavdnNjxQ2vnCGem6N1Nv1mPssJJGp/hbccyRgNTUP0
         j5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704459; x=1693309259;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nBng5C2dnihMAm7NsUCEA4IxSsW7kmSlLCvvdXqyKNI=;
        b=ZZZneXf59RTE3j4rx9ZXkbA28EmlGoJAdvu4/syADkcCwNyjcrMY22/8jnligwABd4
         NHhatpcko6CpC3ZgN1udWPZ1RsIMv+rwdHib9YWu6dbN73tAd3/vaUCYRlxrei7fSYsv
         GpQa3uqqf0tfxwV0FdBttib7WUJ+oBRh6xMDWs1Gfoe+2IXDVPK1ClgqmQokdSgn06JN
         P5JkKNERUOj+9nJQGi5MWJhLaktlvEWt8jq+sFMAXlSxeJe1zI61wr9hspDNMuilKKoZ
         aFQCO8ap5Dj4V7+tgeGRMpVrCrxxRitLOj5+PB6iTneX5WBSI4bEvdKWSkJfC83RFs4H
         xcZQ==
X-Gm-Message-State: AOJu0YydYEltQik96mONj0uplbvRUNBkf5OeKKRqUSavmuAv/JhMxzrm
        wUsB2Rn3fh3832b7F5q1vA6qvg==
X-Google-Smtp-Source: AGHT+IFG3rO+15qihlKOOHB8w6sqz7+J7b3+hnWU015v6n8UbWpjoVH0nhN0Oq7y6bAU+O32z7s7Iw==
X-Received: by 2002:a17:907:2722:b0:99e:16eb:32d2 with SMTP id d2-20020a170907272200b0099e16eb32d2mr6455999ejl.62.1692704459221;
        Tue, 22 Aug 2023 04:40:59 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id jp23-20020a170906f75700b00989828a42e8sm7987229ejb.154.2023.08.22.04.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:40:58 -0700 (PDT)
Message-ID: <8792cced-62bc-d887-8b14-05f967f7f4ed@linaro.org>
Date:   Tue, 22 Aug 2023 13:40:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v9 2/4] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
        nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <cover.1692699472.git.quic_varada@quicinc.com>
 <556ee6c73a4235f52d071d98a344792daeadd228.1692699472.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <556ee6c73a4235f52d071d98a344792daeadd228.1692699472.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 12:29, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9:
> 	usb2@8a00000 -> usb@8a00000
> 	"make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed

I asked about W=1.


> v6:
> 	Remove clock names
> 	Move the nodes to address sorted location
> v5:
> 	Use generic phy instead of usb-phy
> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom dtbs_check' passed
> 	'DT_CHECKER_FLAGS='-v -m' DT_SCHEMA_FILES=qcom dt_binding_check' passed
> v4:
> 	Change node name
> 	Remove blank line
> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
> v1:
> 	Rename phy node
> 	Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
> 	Remove 'qscratch' from phy node
> 	Fix alignment and upper-case hex no.s
> 	Add clock definition for the phy
> 	Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
> 	in dwc3/core.c takes the frequency from ref clock and calculates fladj
> 	as appropriate.
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 8bfc2db..e6baf69 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -145,6 +145,19 @@
>  		#size-cells = <1>;
>  		ranges = <0 0 0 0xffffffff>;
>  
> +		usbphy0: phy@7b000 {
> +			compatible = "qcom,ipq5332-usb-hsphy";
> +			reg = <0x0007b000 0x12c>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		qfprom: efuse@a4000 {
>  			compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>  			reg = <0x000a4000 0x721>;
> @@ -290,6 +303,48 @@
>  			status = "disabled";
>  		};
>  
> +		usb: usb@8a00000 {
> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;

Still wrong address. I pointed it last time. Please fix it instead of
just sending the same. If you do not agree, keep discussing. I could
have make a mistake, but ignoring error and not responding is not the way.



Best regards,
Krzysztof

