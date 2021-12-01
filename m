Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18FDF464554
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 04:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241504AbhLADS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 22:18:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236945AbhLADSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 22:18:55 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 598A9C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 19:15:35 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id s139so45519176oie.13
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 19:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rfbZNyOXs7UYt/C8SkmVXDzLeccdUraAry8kNt9rMZA=;
        b=qhCz1BA+Ld/I+a6hUZz6GSfV78ZB1+C79IXb383OdSPqeFCVEhXucliIAqQIYfb2RH
         oDJWNmAWyb8xSfdx30TDI0BtGIQN8xHiz1mSHBJ4pPWdavVjJPu0NV9mpGjkPw4ZzZlu
         fs4EYjDvCTad7QOeoj1m4sPkc8WJz62YBUeIGsuxnpbpz0Uo0Gcv1S7rImzTrrKzjLsv
         hoNptFJ3CKWy/DWK1pX4e/5T5pRIETdrJnqRTcecI3lk/X/iTgox8Xfgw6M/gakVBNA3
         Ps4FC1JualEzgrTB4DL02JhoOz/bRHWkY5TQmr9YfQxzYN2twPUOnZ4+GuwxpksYWCnG
         N4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rfbZNyOXs7UYt/C8SkmVXDzLeccdUraAry8kNt9rMZA=;
        b=XGxoEoCx/8JJ9W5jaxtSeqcEmOpocrStGVt1ErFAQ+zX8N3lg0h6rSgAlBfz9/5wC1
         Y4kI5n5TNCPozRthKDPURXSgSH+uO6xHC/aaNMs6tWt3dhsHXZEvsegswNCtMPzRiB5a
         wj2wRBO+mqJzPYCBwNmRs8faTOGu9XsTByBWtc59OOxC0+Zvr4HDIyQjjwsSUKxGaEUx
         pPA4slxGhvW8PF1221DK9hVlLw9at/J5yUwAyLL8lKnk7TaXohb6+MhNqEQgfjrbMuKz
         SqLIel9Rv2eADP3Mutv49k8uBPDW4Pwr75nej6CGJfrmUkRUmadwIziJJ4KftGHd2BWL
         xmbA==
X-Gm-Message-State: AOAM532Lqf5jmrl2L71L6B6+ufugD87rg0c7CAkfqWOK3TBL7A2AhkTy
        Ybal+kbrM9SNV4gW5NXfMgwCLTv9yu0pTQ==
X-Google-Smtp-Source: ABdhPJwg6EqePcEwKHucsIyJya6VWBAF7FYeTcj8e1CJTYhg7dUqr13M8WjqUM3vCIK1ZVGKUj9BBg==
X-Received: by 2002:a05:6808:1285:: with SMTP id a5mr3515158oiw.104.1638328534673;
        Tue, 30 Nov 2021 19:15:34 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s17sm3057269ooj.42.2021.11.30.19.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 19:15:34 -0800 (PST)
Date:   Tue, 30 Nov 2021 21:15:29 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Katherine Perez <kaperez@linux.microsoft.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: sm8350: fix tlmm base address
Message-ID: <Yabo0fGXC1rITmsM@builder.lan>
References: <20211122190552.74073-1-kaperez@linux.microsoft.com>
 <20211122190552.74073-3-kaperez@linux.microsoft.com>
 <YZxoGp33Seaa2WEG@matsya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YZxoGp33Seaa2WEG@matsya>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 22 Nov 22:03 CST 2021, Vinod Koul wrote:

> On 22-11-21, 11:05, Katherine Perez wrote:
> > TLMM controller base address is incorrect and will hang on some platforms.
> > Fix by giving the correct address.
> 
> Thanks, recheck the spec this looks correct. We should have tlmm reg
> space here and not tlmm base which also contains xpu region (thus hang)
> 

Aren't you reading the patch backwards?

Afaict downstream the driver carries an offset of 0x100000, which we
dropped as we upstreamed the driver. As such changing reg to 0x0f000000
should cause most gpio register accesses to fall outside the actual
register window.

Or perhaps I'm missing something here?

Regards,
Bjorn

> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> Fixes: b7e8f433a673 ("arm64: dts: qcom: Add basic devicetree support for SM8350 SoC")
> 
> > 
> > Signed-off-by: Katherine Perez <kaperez@linux.microsoft.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8350.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > index d134280e2939..624d294612d8 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > @@ -960,9 +960,9 @@ spmi_bus: spmi@c440000 {
> >  			#interrupt-cells = <4>;
> >  		};
> >  
> > -		tlmm: pinctrl@f100000 {
> > +		tlmm: pinctrl@f000000 {
> >  			compatible = "qcom,sm8350-tlmm";
> > -			reg = <0 0x0f100000 0 0x300000>;
> > +			reg = <0 0x0f000000 0 0x300000>;
> >  			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> >  			gpio-controller;
> >  			#gpio-cells = <2>;
> > -- 
> > 2.31.1
> 
> -- 
> ~Vinod
