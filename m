Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0AAF331540
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:53:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbhCHRwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:52:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231189AbhCHRwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:52:25 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26B02C06175F
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 09:52:25 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id t83so1886141oih.12
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UJ98E5rmZfHbLKJKvUQ3vbkulnFI/CkiQEts/LrvON4=;
        b=v9lT5uRiEW/JY9GU54oE8V/ushOzvh8RrkgIaeybKCLMB9r2PkD/u8cpiGo+pLtC1R
         QmVIgis+zFLmLv5/36OzcvD+zhu4mzqsH9CMsvNthKiQsd6nB+Enp72qlcaBOqsmeN3O
         5/bHoArg7C/VeqVpCmFWob+gMk14t8Makhp22YQCw82slhSJhtRPbtzk8TsnJVpkjbU0
         rtlNnQK6X2ncsFPqitnbAmEWx1hv68IZAVKPDow6WIeQeXJ2uenYQf0gK1pEBbwFoDNg
         k0BYvJZIURLObaUoe1M+pcc5sgKC8zLb9B5EJUtiS/d2CjEUxwm0Ecuqi7EqARVTTl82
         LrtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UJ98E5rmZfHbLKJKvUQ3vbkulnFI/CkiQEts/LrvON4=;
        b=kLXSOcZ5dijb2/9vpy3IGs5eDqEES4ETqnM61m9JOF5swVFvzxDjLpnOGA7ad50cPW
         6XpWS/2K+Z3YMf2b0xIotI6j0/D9OdEe4sW3jTwVhVlhhhE89C3o0HHw2TwjcwMTlYWb
         toISh8s2tjYPzAHytIdl+n+iS9okYvRfaWTJQXWxI7zKi4bzz/4Zmqv8AGtOWQQhg8l6
         vYxW2u/wUsEUbrkb0XRetVXPiRWPtvwnJhRhBejy5PrOykSgXSm/DGp64AXe2tIqCUa8
         v+3P+EDHbXHjw8SVorTc5lewRgsqXl+6kpZHQxFk+GiXGHq5SSUr4Whvy+8OourdCxSj
         vpCg==
X-Gm-Message-State: AOAM531LkT5Hy5OOxQ+Jywd4a+HjZdiwpkNrwXjvsueKOAguBgLFvLLP
        zVYdjlIW1FNkER0MutXK4QU/yg==
X-Google-Smtp-Source: ABdhPJwFL5Lpr4wM+4X3oqNIhP5sUv8WSwqsShOurMTMV+mQPD5odZ36Qj5kwGgTWecJto4SC/6g7w==
X-Received: by 2002:aca:f04:: with SMTP id 4mr1515564oip.151.1615225944495;
        Mon, 08 Mar 2021 09:52:24 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x3sm2109983oif.22.2021.03.08.09.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:52:24 -0800 (PST)
Date:   Mon, 8 Mar 2021 11:52:22 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: Introduce SM8350 HDK
Message-ID: <YEZkVo+Cg9Wn2YKH@builder.lan>
References: <20210306020905.1173790-1-bjorn.andersson@linaro.org>
 <83273ce6-448d-a969-e9bf-97c11d57a38b@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83273ce6-448d-a969-e9bf-97c11d57a38b@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 06 Mar 04:34 CST 2021, Konrad Dybcio wrote:

> Hi!
> 
> 
> > +		vreg_l5b_0p88: ldo5 {
> > +			regulator-name = "vreg_l5b_0p88";
> > +			regulator-min-microvolt = <880000>;
> > +			regulator-max-microvolt = <888000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> 
> This one needs `regulator-allow-set-load` since you specify current settings under UFS nodes, we've seen it not working at all without this property.
> 
> 
> > +		vreg_l6b_1p2: ldo6 {
> > +			regulator-name = "vreg_l6b_1p2";
> > +			regulator-min-microvolt = <1200000>;
> > +			regulator-max-microvolt = <1208000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_l7b_2p96: ldo7 {
> > +			regulator-name = "vreg_l7b_2p96";
> > +			regulator-min-microvolt = <2504000>;
> > +			regulator-max-microvolt = <2504000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_l9b_1p2: ldo9 {
> > +			regulator-name = "vreg_l9b_1p2";
> > +			regulator-min-microvolt = <1200000>;
> > +			regulator-max-microvolt = <1200000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> 
> Ditto for all three
> 
> 
> > +&usb_1_dwc3 {
> > +	/* TODO: Define USB-C connector properly */
> 
> Sidenote: doesn't the new pm8150x (I think?) USB-C driver work on pm8350x?
> 

I would not be surprised, just haven't looked at it yet.

> 
> > +/* PINCTRL - additions to nodes defined in sdm845.dtsi */
> 
> sm8350
> 
> 
> Aside from these minor comments,
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> 

Thanks for the feedback, I'll incorporate the changes and respin the
patch.

Regards,
Bjorn
