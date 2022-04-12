Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D70014FCC2C
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 04:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241222AbiDLCIm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 22:08:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238348AbiDLCIl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 22:08:41 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D587338A6
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 19:06:25 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id r8so17656550oib.5
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 19:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xxag4ZIW149CcrXtrH0YzGowXRWMVfXwU6q0iOTY4aw=;
        b=QcU2pNfiNQyR3sB69cLBKlINF0W9SjcbPiSADwFAeeYgc9S8GzTKpj5yOXGpuNhb4S
         9clWPUha0Qjh8ipiB9i8VypSgCAd615ATTObJEPg+1guSmoZD+PEeADqlBbKVRq3p7fB
         6rPqpqdMq1YnLaNSEQ7cQTO1Q9+U2FYqCmjpqgxG0lTCDA1IMv1YRBXt9mKFAW7ciaJi
         odq5/bGzXnYndNIGKpBkRtCVcbbqokKanyUl41zaMaaiZsivqdKsQ/HjnPFpFfeo3R9g
         mr6DtVWAxQ/W7+ZYrAYEGqrlS1EXS+DhKL3gemY8Lq/TlXJrF9mIEJPNhzA7in1z/daH
         DKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xxag4ZIW149CcrXtrH0YzGowXRWMVfXwU6q0iOTY4aw=;
        b=IZtzqaOEGms8uPfHX1aP+vhme6CJ2NI7Qfd6VFxhvmpPRybd/u3QaWYxWJZljhGYLj
         0D6XtWn7Lft3XNccWjcbujFpgiMMebJ0TFqzErgCuBKsyaCvYK4czoPLobsxxDPJJ/Aq
         9ZDIPoTLleISbp6FhZrg6QOMJzDTvNMwfDqdnwrGIBsCnHDwjD2lXWhKhYVzujvpwPSk
         bGippKduxKK6MYoVlGVwmGE/ovk1zYJN+mPGfkJD8SxjaSj+ewLQrG3/v9dcbavyaJHB
         o+LNbHVF37g0vC9MFpB7j5vWLIM7yxExjHLMn2hFQ7kUAsMZUdfk7yBFZ1kH5Mz4Yr0U
         SIfw==
X-Gm-Message-State: AOAM531k4r3wnGN4uzD59JTnJjhFLnHJBBoBhLV3AkWo78HaUCCRqUWc
        AUwdvFjGMZHTa3uFpvleC/ez6B05wCl3Cnhz
X-Google-Smtp-Source: ABdhPJyIOOATx5tnUyjLEexHhSq3mQk5MU+VJABvfqdqLvwOCzIaV+Htgt5wD+3GArSO8C7sr8z9BQ==
X-Received: by 2002:a05:6808:128c:b0:2da:3751:7639 with SMTP id a12-20020a056808128c00b002da37517639mr856602oiw.294.1649729184542;
        Mon, 11 Apr 2022 19:06:24 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x20-20020a4ac594000000b00329a02f2f34sm4925186oop.16.2022.04.11.19.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 19:06:23 -0700 (PDT)
Date:   Mon, 11 Apr 2022 21:06:22 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8250: camss: Add CCI definitions
Message-ID: <YlTeng8OcnvUnILZ@builder.lan>
References: <20220409164556.2832782-1-bryan.odonoghue@linaro.org>
 <20220409164556.2832782-5-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409164556.2832782-5-bryan.odonoghue@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 09 Apr 11:45 CDT 2022, Bryan O'Donoghue wrote:

> sm8250 has two CCI busses with two I2C busses apiece.
> 
> Co-developed-by: Julian Grahsl <jgrahsl@snap.com>
> Signed-off-by: Julian Grahsl <jgrahsl@snap.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 82 ++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 91ed079edbf7..98e96527702b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -3150,6 +3150,88 @@ videocc: clock-controller@abf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		cci0: cci@ac4f000 {
> +			compatible = "qcom,sm8250-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg = <0 0x0ac4f000 0 0x1000>;
> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK_SRC>;
> +			clock-names = "camnoc_axi",
> +				      "slow_ahb_src",
> +				      "cpas_ahb",
> +				      "cci",
> +				      "cci_src";
> +
> +			pinctrl-names = "default", "sleep";
> +			pinctrl-0 = <&cci0_default &cci1_default>;
> +			pinctrl-1 = <&cci0_sleep &cci1_sleep>;

I would prefer that you include these in the same patch.

> +
> +			status = "disabled";
> +
> +			cci_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci1: cci@ac50000 {
> +			compatible = "qcom,sm8250-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg = <0 0x0ac50000 0 0x1000>;
> +			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_1_CLK>,
> +				 <&camcc CAM_CC_CCI_1_CLK_SRC>;
> +			clock-names = "camnoc_axi",
> +				      "slow_ahb_src",
> +				      "cpas_ahb",
> +				      "cci",
> +				      "cci_src";
> +
> +			pinctrl-names = "default", "sleep";
> +			pinctrl-0 = <&cci2_default &cci3_default>;
> +			pinctrl-1 = <&cci2_sleep &cci3_sleep>;
> +
> +			status = "disabled";
> +
> +			cci_i2c2: i2c-bus@0 {

Are these names (the label) used somewhere in the schematics? How about
cci0_i2c0 and cci1_i2c0 instead (unless these names are defined by some
documentation)?

Regards,
Bjorn

> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci_i2c3: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>  		camss: camss@ac6a000 {
>  			compatible = "qcom,sm8250-camss";
>  			status = "disabled";
> -- 
> 2.35.1
> 
