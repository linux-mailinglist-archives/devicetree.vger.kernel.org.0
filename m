Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BB6B29DB6B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:54:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726670AbgJ1XyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728151AbgJ1Xwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 19:52:47 -0400
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FF67C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:52:45 -0700 (PDT)
Received: by mail-oi1-x244.google.com with SMTP id c72so1414147oig.9
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jIZlLkBGOaSCnIwNpEnTip+DsnvhRjSeNkOjB+Yd+ok=;
        b=PCHRnFRwqwsKJJ5M+mco+ElTez4O8L3YDFzeoNiyk311geH2rJYyanqJUZ3N7mOTbl
         rEf257iZUOcxRXcw0go56TL3iQT5s/E1P3e7avybksjv65KPra4j18/caH3ktdX6l0pB
         0/V6rCilg7g4FnsAnhv8gK0glFd9QKy+RVSxcU1bIRca/Gyk2/h+qiKWwEMxDIYj4Mc+
         X2uX8+BJ29eR4Gh8+16CSdPSwIj5eO3W+Y+UxnkI1OLtZtB7sMwnExtE4HFf3D7rz25C
         h0LzudKfmOVfccn244rOCLPbPW5UzJkBgZkeAXPuEz+hplFq+4+6PxNjHRD+YMEfZk/A
         5a5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jIZlLkBGOaSCnIwNpEnTip+DsnvhRjSeNkOjB+Yd+ok=;
        b=Uo4gdyvyU/u8Q605GoIQgZSjUZMUhGiIgr0S4Vs8BtaPf9Y2cdzB64NWO4FcTi5+Qb
         tzUcM0/wGbLJu7Y56+KklMNDdDxzcG3B+8yOQt77PPFeWepOF+IRzbN46L+Po0CNxRfv
         o7f+i0Z9+h6/cOVG5/Mbfh3XZY3NRDtHRoeG6WnQRxmYC7laPeffdLH4xtMR3dZT2GbG
         IxlarH1DW5m9FGGWA9fpdQ78VGnhGc7A/h5rBBfyupOASVmDmd8T8o//JK6mn7rkjguu
         01/Bv+1inaoBoXtlGTUcNDMK8CKTQet33bkEAGFXFPyVg+C85gJJeC8N3p3ZXGz0k7f9
         HGJg==
X-Gm-Message-State: AOAM530bPBqJO5AyhfPvfdaTv/I9ODuscW4BDTDVPDHLflhWwLnJhalp
        /v0+WNITc1gb1ga+SMGTnIHgJ2360ww27Q==
X-Google-Smtp-Source: ABdhPJyPdN3crNv7lr1M+2z+kGHhyGKYAxmq3EZajtACi9dxmOlgg07OqSdunTw2SebagLvRbRcwWQ==
X-Received: by 2002:aca:b606:: with SMTP id g6mr3778610oif.22.1603860058922;
        Tue, 27 Oct 2020 21:40:58 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a17sm1176487otl.77.2020.10.27.21.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 21:40:58 -0700 (PDT)
Date:   Tue, 27 Oct 2020 23:40:56 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: remove wakeup-parent for TLMM
 node
Message-ID: <20201028044056.GA3151@builder.lan>
References: <20201027015420.908945-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201027015420.908945-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 26 Oct 20:54 CDT 2020, Dmitry Baryshkov wrote:

> On SM8250 TLMM doesn't use PDC interrupt controller for wakeup events.
> Instead it handles them on their own (not implemented yet). In addition
> setting wakeup-parent property to &pdc will result in parent hwirq being
> set to ~0UL, which interact badly with the irqdomains trimming code. So
> remove the wakeup-parent property.
> 

Would you accept this patch instead?

https://lore.kernel.org/r/20201028043642.1141723-1-bjorn.andersson@linaro.org

Regards,
Bjorn

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: 16951b490b20 ("arm64: dts: qcom: sm8250: Add TLMM pinctrl node")
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index ccbdb47d6119..77ea20421752 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2418,7 +2418,6 @@ tlmm: pinctrl@f100000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  			gpio-ranges = <&tlmm 0 0 180>;
> -			wakeup-parent = <&pdc>;
>  
>  			pri_mi2s_sck_active: pri-mi2s-sck-active {
>  				mux {
> -- 
> 2.28.0
> 
