Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 75D39A93F0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2019 22:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730441AbfIDUnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 16:43:06 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:38410 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730405AbfIDUnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 16:43:05 -0400
Received: by mail-pf1-f196.google.com with SMTP id h195so33521pfe.5
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 13:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/wsxDOtmnb9U/NekdAlLR4oeHJRU38Z5gPTM6QnO4F4=;
        b=r4bC4okD7CNuq9BuMebOgwrGDybFlvfFhLFBIwlpf42JHRLdahnasXWiz4T5LA99LU
         2szH87RezwOyOLL9EKUyVa4cjjqAl3XmySbxKqHUVyRPiF3VPP8pbC2fnxjPwEpjPo3z
         mAP1Bb7s4IzTsQWgfoTAoq0LYVSYizde92oVBaCmSzJ/uMC5MhTyNcm36CPMUESC8SQh
         CzxQP/cXwFySn9hLysmCRG0wT+4dXwIXoMn6W+H7H0LSiR1YdbUd9xG+wNjXxxzzkJNu
         2m9P0Mfc6Hxbf08Gg13Ikkma+OvDXYSEQGdrXHpyG26aWe0JoK/8eZGHmzMpZPSKgDQU
         vy1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/wsxDOtmnb9U/NekdAlLR4oeHJRU38Z5gPTM6QnO4F4=;
        b=Fw4iV1wP4ghCVKP2F3T4POTXr+IYYmfid2uyQGF2HV/v2ick/aRJ9uv3dUSe88Q6ce
         7IJpVymRITIlNdB8wxd7UriqPFLK71jSUrTpBF/relNLEg5Aou42nSEm74FO3CxyD6yb
         qly4uYHkLdvzOeaBJTB64fiUlwQgWm+9A6WRUp9ZR1cWbLMwTACCiSJbXWulM3++Sz0S
         woFiR7aOb21hEGFrzkC/TIHbKX8Yu0TgTGf2lBkoUKSNwP/43BuzW5FFX+8k9/slq/ig
         o6Uhf9XW/Nshfpr/yUAG+ICCL8GQusXeFBUV2jyYydLzGpY8/HGfpXJV/yAjo8axDeEm
         SIAQ==
X-Gm-Message-State: APjAAAWH7PObIFZ8w9w2diVF/nBM9Ur7xcOGIApc+8QdeNwdMpIorS8l
        zjqIgVWHhabzpHL1Od14Vd5pGw==
X-Google-Smtp-Source: APXvYqz1x8IyyymHXIXgIk+a+BK4sSercU90VrV9KeSyLBl4ibAmtDI9sBm/qrTJHr7/y8s0AMFyaA==
X-Received: by 2002:a17:90a:fc89:: with SMTP id ci9mr168674pjb.48.1567629785147;
        Wed, 04 Sep 2019 13:43:05 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b3sm29860352pfp.65.2019.09.04.13.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 13:43:04 -0700 (PDT)
Date:   Wed, 4 Sep 2019 13:43:02 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>, agross@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904204302.GD580@tuxbook-pro>
References: <20190904113917.15223-1-lee.jones@linaro.org>
 <20190904115234.GV2672@vkoul-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190904115234.GV2672@vkoul-mobl>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 04 Sep 04:52 PDT 2019, Vinod Koul wrote:

> On 04-09-19, 12:39, Lee Jones wrote:
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -12,5 +12,6 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
> 
> Can we keep this sorted, so before mtp.
> 
> >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > new file mode 100644
> > index 000000000000..ad160c718b33
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > @@ -0,0 +1,454 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> Are we going to make this dual? or BSD..
> 

Sounds good, Rob wants dual license so lets flag it as such.

> > +&apps_rsc {
> > +	pm8998-rpmh-regulators {
> > +		compatible = "qcom,pm8998-rpmh-regulators";
> > +		qcom,pmic-id = "a";
> > +
> > +		vdd-l2-l8-l17-supply = <&vreg_s3a_1p35>;
> > +		vdd-l7-l12-l14-l15-supply = <&vreg_s5a_2p04>;
> > +
> > +		vreg_s2a_1p125: smps2 {
> > +		};
> > +
> > +		vreg_s3a_1p35: smps3 {
> > +			regulator-min-microvolt = <1352000>;
> > +			regulator-max-microvolt = <1352000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s4a_1p8: smps4 {
> > +			regulator-min-microvolt = <1800000>;
> > +			regulator-max-microvolt = <1800000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s5a_2p04: smps5 {
> > +			regulator-min-microvolt = <2040000>;
> > +			regulator-max-microvolt = <2040000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s7a_1p025: smps7 {
> 
> Any reason why we dont specify the mode and min/max voltage for this
> and few others below..?
> 

Iirc these values are not known from the tables provided by the
firmware. Label names are just "borrowed" from the MTP, so we can't
derive anything from there either.

I intended to review and clean this up before it was posted...

Regards,
Bjorn

> > +&i2c1 {
> > +	status = "okay";
> > +	clock-frequency = <400000>;
> > +	qcom,geni-se-fifo;
> > +
> > +	battery@70 {
> > +		compatible = "some,battery";
> 
> some,battery ..?
> 
> > +&qup_i2c12_default {
> 
> Please move the qup nodes up so that nodes are sorted alphabetically
> 
> -- 
> ~Vinod
