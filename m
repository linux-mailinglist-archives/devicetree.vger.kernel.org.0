Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DD5758B729
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 18:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233487AbiHFQ6V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 12:58:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233962AbiHFQ6R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 12:58:17 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12CA113CCF
        for <devicetree@vger.kernel.org>; Sat,  6 Aug 2022 09:58:05 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id t22so5362064pjy.1
        for <devicetree@vger.kernel.org>; Sat, 06 Aug 2022 09:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=gwFfS7FgstQLbRyJIK3YRj+mJRK29ux6Bl+pErHZDnY=;
        b=kXnYRlqgtGyktsODjODWihItFMICAbPOj95ikmPuA4ZKki2dyIvj64m5ESMfxVr5wS
         zoo2rCjSc5qpGU/Hsxx+o7jSeF5kCv+4LzxBRL3vb5MncTAzoL2FO14yBwpwJCzbm95h
         cSmonlhRGCEtW5F025mqyohVfvuoe+AXRTp91OmTQ/PwiDPi8oANfe0ejeaveJgoH9ai
         +mtu746bV/XAHwpnw84D6xZfmPP6/OvFt4bvgujSDMROGB2FfHJuLQv8w+9DU4qydSzf
         12hcFpMSbcnDLfZLm3HTQvTzAQ6HHtet+Z2RW+5fjh4QY52U5PsEYzCiEIDrvZsTCY2V
         V8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=gwFfS7FgstQLbRyJIK3YRj+mJRK29ux6Bl+pErHZDnY=;
        b=o6XO2yFBQ+5pEVawF6X9OxoUHAkrP6hnzt2H44cNnNHAjEIwxQWL7ctYj/JhNQ6RsJ
         YgtfrYBpEerX/nwa26cvkgGRciigedTkkzusproUIBhCPSpUH9LLd5HalrMrohtSMwXD
         hx/9TlH/HnVhGlWT05twUPAVhAHh8Yqp2xsLr3iq1MTK1KlciNM+4o7fTHgCc46F/jFY
         8v6dgttYIIgXxdwL7g7FHnBlGBxWibUSPmQhDi2s+fS1/KFW1/ael5Q0lF07lkJ9+vfb
         ulI4MP+ljLEU4ebnlCy8I4OaLtxa2Sfm0r3RknRlT4/mosmeIv/KF8aPrUnmOHarWFpz
         +s8w==
X-Gm-Message-State: ACgBeo1xgsg5ROLN6M8lK/YIZTfX3LVD1kPGklugvyp+OrnY5MBZDRlY
        EBcnQF1fCbeuJ5rel1wAOQH5
X-Google-Smtp-Source: AA6agR5GiSlxh2cmlWyeDiHHjzxfvaCgZ9HYTvYeOKAiYpTa/s1YAOHFRmxWKcrx16+h4JnQNfJcjg==
X-Received: by 2002:a17:90a:4805:b0:1f5:39ab:29a9 with SMTP id a5-20020a17090a480500b001f539ab29a9mr12901550pjh.202.1659805084471;
        Sat, 06 Aug 2022 09:58:04 -0700 (PDT)
Received: from thinkpad ([117.202.188.20])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090322c100b0016d93c84049sm5347778plg.54.2022.08.06.09.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Aug 2022 09:58:04 -0700 (PDT)
Date:   Sat, 6 Aug 2022 22:27:58 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s:
 move HID pin config
Message-ID: <20220806165758.GR14384@thinkpad>
References: <20220805092317.4985-1-johan+linaro@kernel.org>
 <20220805092317.4985-6-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220805092317.4985-6-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 05, 2022 at 11:23:15AM +0200, Johan Hovold wrote:
> The HID pin configurations belong in the HID nodes rather than i2c bus
> node.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts   | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 85efce641a4e..76ba2d5fa17e 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -177,7 +177,7 @@ &qup0_i2c4 {
>  	clock-frequency = <400000>;
>  
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&qup0_i2c4_default>, <&ts0_default>;
> +	pinctrl-0 = <&qup0_i2c4_default>;
>  
>  	status = "okay";
>  
> @@ -185,9 +185,13 @@ &qup0_i2c4 {
>  	touchscreen@10 {
>  		compatible = "hid-over-i2c";
>  		reg = <0x10>;
> +
>  		hid-descr-addr = <0x1>;
>  		interrupts-extended = <&tlmm 175 IRQ_TYPE_LEVEL_LOW>;
>  		vdd-supply = <&vreg_misc_3p3>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ts0_default>;
>  	};
>  };
>  
> @@ -203,24 +207,32 @@ &qup2_i2c5 {
>  	clock-frequency = <400000>;
>  
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&qup2_i2c5_default>, <&kybd_default>, <&tpad_default>;
> +	pinctrl-0 = <&qup2_i2c5_default>;
>  
>  	status = "okay";
>  
>  	touchpad@2c {
>  		compatible = "hid-over-i2c";
>  		reg = <0x2c>;
> +
>  		hid-descr-addr = <0x20>;
>  		interrupts-extended = <&tlmm 182 IRQ_TYPE_LEVEL_LOW>;
>  		vdd-supply = <&vreg_misc_3p3>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tpad_default>;
>  	};
>  
>  	keyboard@68 {
>  		compatible = "hid-over-i2c";
>  		reg = <0x68>;
> +
>  		hid-descr-addr = <0x1>;
>  		interrupts-extended = <&tlmm 104 IRQ_TYPE_LEVEL_LOW>;
>  		vdd-supply = <&vreg_misc_3p3>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&kybd_default>;
>  	};
>  };
>  
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
