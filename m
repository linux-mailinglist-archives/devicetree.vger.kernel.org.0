Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7BF546BE9A
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 16:03:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233398AbhLGPHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 10:07:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232881AbhLGPHM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 10:07:12 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB94EC061748
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 07:03:41 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id t23so28269767oiw.3
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 07:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bK7uHHn7er6ys94qL7Mv0206o1zfT6K0JRMPD7ek61c=;
        b=aZx5BTpo21JvpVkZkPFVXYdcKqBvM5m9RIvp7QgCt1aFf0gSRd4LpFN4dMtTZSwtqG
         MZUmHWBRQPhYGQP8xQWakTQkxTqi+KuJfLfQGPpvYmzilsXOFxJiwWbFDncJdsokdlyI
         oi802fCyK1Hzple7zLmhLjxLGj2iUdLv+koK5y0F5gtnRvl7y44MyZOTSVaP5jGbuNj1
         iQaUB2vXa2bCSSHNfsMNLFD1uJeGV5bf+dw+XsOAEkG6ijtjuOwsCIUOcwAImnGfJpQK
         zS7HM9ySTCpU9QR7GRbD8cv5US+VmUE6Nd92zvGmcJlK4+NFb6kvAi76wWxeIdxRV+0O
         l50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bK7uHHn7er6ys94qL7Mv0206o1zfT6K0JRMPD7ek61c=;
        b=LHvotvEOaQadOOnxwVIQ5dEXlTao5WSRkeAk5ZcKMGtCuJFFX/M2eUJyCzWCipoG5N
         orCO1fYGgYIs0Hjuh5FYrdtFh9Qk68SGM0LDOcEOZQ/HpQ16lz0Y5FjcCKxCyZAu4HY+
         9Ad7ICAZCYmRiyPtaJk8T3NPH/j2emuS/aIaqkhcf6bjE4qgaREDYzi9urX8OE504hOx
         sjHVs+njtaz6k4UR7tnyHpbrlXJsojUxxQULuQZXONdwOZYhb7qEMFqFi7V3lCoKmGvB
         bErruE8sfgpKQaKQcob3FvV5bz6qU81bWULD61JSg2QIHqzKjbvdSgNfdlgtvv6UztG+
         cg7A==
X-Gm-Message-State: AOAM5327K2sgG6h1/TAve1HlWzz60aoCPWYfOX8cG1TgiK/bmINfspyI
        twFe5H7sRCGsM2YTksoOgw7XykAEgJSKwg==
X-Google-Smtp-Source: ABdhPJyAN3yUgurf2zZVufYfD8KVow4dzfZpGxOpnvSd0PVp82XfosGam2kiFVokHGpRK7XI06YDPQ==
X-Received: by 2002:a05:6808:2016:: with SMTP id q22mr5415142oiw.81.1638889419535;
        Tue, 07 Dec 2021 07:03:39 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 49sm2765871oti.65.2021.12.07.07.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 07:03:39 -0800 (PST)
Date:   Tue, 7 Dec 2021 07:05:05 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/15] arm64: dts: qcom: sm8450-qrd: include pmic files
Message-ID: <Ya94IRoUg4ArHjSO@ripper>
References: <20211201072915.3969178-1-vkoul@kernel.org>
 <20211201072915.3969178-13-vkoul@kernel.org>
 <eb2373bc-f9f5-d97a-13ec-d3d580566101@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb2373bc-f9f5-d97a-13ec-d3d580566101@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 01 Dec 07:23 PST 2021, Konrad Dybcio wrote:

> 
> On 01.12.2021 08:29, Vinod Koul wrote:
> > SM8450 QRD platform has bunch of PMICs, include the common ones PM8350,
> > PM8350b and PMR735b
> >
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> > index 3e65d662ab8c..48228888f500 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> > @@ -8,6 +8,9 @@
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >  #include "sm8450.dtsi"
> > +#include "pm8350.dtsi"
> > +#include "pm8350b.dtsi"
> > +#include "pmr735b.dtsi"
> >  
> >  / {
> >  	model = "Qualcomm Technologies, Inc. SM8450 QRD";
> >
> Again, this could have gone into a single "add board DTS" patch, but this
> 
> works too, I guess..
> 

I like that suggestion, putting the qrd.dts as a single patch at the end
of the series would look nice.

Regards,
Bjorn

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> 
> 
> Konrad
> 
