Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 343583B96A0
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 21:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233239AbhGATgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 15:36:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233045AbhGATge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jul 2021 15:36:34 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D368C061762
        for <devicetree@vger.kernel.org>; Thu,  1 Jul 2021 12:34:04 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id r4-20020a0568301204b029047d1030ef5cso761291otp.12
        for <devicetree@vger.kernel.org>; Thu, 01 Jul 2021 12:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1dsJ9nM/AHXo3nN+7QZzkF6/u8tbDa7litsoX7e6e2g=;
        b=QUI02bjdOUKb8cbvf5d3RCb7TsRHyMh4c2qiCN35S8Kwnohjf5dGvVWxJ2pjsNw1IC
         J78J9AMoTfIdtRIVP2rEx8/HOnZAFhjL9wJIaqOhlj1sDC/yEObWnoBLRE0GenAY757S
         +Dj4Z8FZLY9WGguim+CEhaO01Dr6wh/81kPeLaCD9dcR8A5p+094hTEqs79NVFuyDncK
         iWIKFq3eCZWlnqcveO7cs2b7BWUefFvZKIf88ryinMqxjWLTzKP9LGUwbYM1WlaNPJDV
         hmmDAbOminC3oLOlDHuK2B/QWNJu/WuIbnHxQn00OFGN51OJd2rU+nBhWdh5UCoCl2YH
         U+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1dsJ9nM/AHXo3nN+7QZzkF6/u8tbDa7litsoX7e6e2g=;
        b=lMqg5Qt6d9whyr4sz2qIgGLI7LPESHJYC0iZ6P+9Y757bB97WlJYq/IjYfzqI+YhfA
         LTySaTXDc4wl37Vy4ksJFMiq7kE+v6/QUOPUCJd3zLPKuBhXC4VNJPOpc8WPrmtLtmdi
         c9bKweAnYmlBS4aIh/dfJuX8R5lcph5+kutEF80eMCH7dIQCUYmItldNsmdcnRo4c1G8
         7wB4v+Mm0LkKHo0fUvlb2pfXL16Y4BT/4fZvGVPKWEmQxu+0+arfbSzyv+ATrQ0gKFVm
         bMtlH7af+YD1IkPgFqbDimwTT889jgeLuXI5QFbn6xpJARXEYWAhpMMvd+J5BeJVTt5K
         8EDg==
X-Gm-Message-State: AOAM532Mff/bE+Mc4XQC4vtZonBW1WvLS5YmgvQLEDn+QSiAmQsmkLOX
        MEhgQTIjq1aVFUILXy26AOLv8Q==
X-Google-Smtp-Source: ABdhPJwkqKOevuirjSIlii0NRzKUoOH1I1qvot1Uay7FQ9yi5oZM34TgHS1U1Sef/3dXwoUxJikMGg==
X-Received: by 2002:a9d:66d0:: with SMTP id t16mr1257920otm.29.1625168042730;
        Thu, 01 Jul 2021 12:34:02 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id f19sm130014oou.22.2021.07.01.12.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 12:34:02 -0700 (PDT)
Date:   Thu, 1 Jul 2021 14:34:00 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Sibi S <sibis@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: soc: qcom: aoss: Add SC8180X compatible
Message-ID: <YN4YqCgOei+IobEB@yoga>
References: <20210625234018.1324681-1-bjorn.andersson@linaro.org>
 <20210625234018.1324681-2-bjorn.andersson@linaro.org>
 <20210701190359.GB2736150@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210701190359.GB2736150@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 01 Jul 14:03 CDT 2021, Rob Herring wrote:

> On Fri, Jun 25, 2021 at 04:40:16PM -0700, Bjorn Andersson wrote:
> > Add compatible for the Qualcomm SC8180x platform to the AOSS QMP
> > binding.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
> > index 783dc81b0f26..3747032311a4 100644
> > --- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
> > +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
> > @@ -18,10 +18,13 @@ power-domains.
> >  	Definition: must be one of:
> >  		    "qcom,sc7180-aoss-qmp"
> >  		    "qcom,sc7280-aoss-qmp"
> > +		    "qcom,sc8180x-aoss-qmp"
> >  		    "qcom,sdm845-aoss-qmp"
> >  		    "qcom,sm8150-aoss-qmp"
> >  		    "qcom,sm8250-aoss-qmp"
> >  		    "qcom,sm8350-aoss-qmp"
> > +		    and:
> > +		    "qcom,aoss-qmp"
> 
> This was missing from all the existing ones or is an addition?
> 

We've only had platform-specific compatibles for this binding (and
implementation) so far, this patch adds sc8180x and a common compatible.

So the commit message should have been rewritten to cover this as I
extended my original patch. Sorry for missing that.

Regards,
Bjorn

> >  
> >  - reg:
> >  	Usage: required
> > @@ -70,7 +73,7 @@ The following example represents the AOSS side-channel message RAM and the
> >  mechanism exposing the power-domains, as found in SDM845.
> >  
> >    aoss_qmp: qmp@c300000 {
> > -	  compatible = "qcom,sdm845-aoss-qmp";
> > +	  compatible = "qcom,sdm845-aoss-qmp", "qcom,aoss-qmp";
> >  	  reg = <0x0c300000 0x100000>;
> >  	  interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
> >  	  mboxes = <&apss_shared 0>;
> > -- 
> > 2.29.2
> > 
> > 
