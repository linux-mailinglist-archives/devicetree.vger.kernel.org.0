Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A329C6428E1
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 14:01:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232027AbiLENBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 08:01:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232016AbiLENA7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 08:00:59 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1DBD1BE86
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 05:00:57 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id hd14-20020a17090b458e00b0021909875bccso11202571pjb.1
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 05:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KxnV3Qp0Y7lPeJMlAC3B0qrclK4fA9O7m2KwNM9QZuo=;
        b=JSWTno9Ovpi4N2n7SJLNvOb921h7NEAgoxBTP99nODbDxre5VKCW/RolX8wEH1ew1N
         d3gwaS208r0SX3gBiOGTwfNxXY1ExcIz/wKYK0y0XIhx9QwhVnl9qU02TaEdu0FWJWw3
         yn6KeodIQiqYlsDj+/oHDkTEnFfOpoFGTGYwPjrpkN108il9qnbshVF7CxcgOVn/30aB
         0haTYo7TNYWsiwxQJtmKLnVlBkY3h0ZA1pIVVQiL9NNt7dpOlROTVU6+soQyDvNq/X/W
         FZTK5W7dOCCiINcjP7JoYPaywAs2sCkuYnkzKpxn4FlTl59W26EKlfLE6tNPtuLAQvw4
         xIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KxnV3Qp0Y7lPeJMlAC3B0qrclK4fA9O7m2KwNM9QZuo=;
        b=r5JtT+6P5hchewGPffEVMon7U15r0pfrrIytBfiDkqsRLGB/Gxg3oTr71obSvBppz5
         ryaBWilYPCWdFQmbMaebDiw+aoyQ7qDwa8csIHKdGxu2N/WBCvgLYGp1zK219beoA5rc
         dQs5v9OUz9pFJlzuMbvbt2SLvo7sahYchFmNceHCp15M0GyGXUmui9MsrI08vlXxoESF
         +cASmfiwQDxtqMLwxyuzgvEgYsWNEKmQ6VNWsu6+7oaFILcLqq+263JAWBeq5woIbPaq
         V8pDv2kyV+a6kkP+At5VZwcmC4C6MIwsyTht6aLgEnBbtrtPZ0gm6ULAGh7lEnmtkGim
         JkgQ==
X-Gm-Message-State: ANoB5pmOdE2G6x3I3nhmd++D8rZgemCjkFxdNYd96qicLByOiMBHO5GB
        oTXuYCqWv6dN+2km82a3lpxs
X-Google-Smtp-Source: AA0mqf4QKmXyJpi9rKCFIjNDVyx44KTwNxyz7CRQu216au3lnsFPqelqBDhkXgelGv8HfIOBkVWeMg==
X-Received: by 2002:a17:90a:4889:b0:20d:d531:97cc with SMTP id b9-20020a17090a488900b0020dd53197ccmr90688319pjh.164.1670245256899;
        Mon, 05 Dec 2022 05:00:56 -0800 (PST)
Received: from thinkpad ([59.92.98.136])
        by smtp.gmail.com with ESMTPSA id s25-20020aa78bd9000000b00576d4c45a22sm2785404pfd.147.2022.12.05.05.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 05:00:55 -0800 (PST)
Date:   Mon, 5 Dec 2022 18:30:48 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: ufs: qcom: allow 'dma-coherent' property
Message-ID: <20221205130048.GD20192@thinkpad>
References: <20221205100837.29212-1-johan+linaro@kernel.org>
 <20221205100837.29212-2-johan+linaro@kernel.org>
 <20221205115906.GA20192@thinkpad>
 <Y43e9KRDsTCS5VI4@hovoldconsulting.com>
 <20221205122018.GC20192@thinkpad>
 <Y43jtpHqlyiIEZ0S@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y43jtpHqlyiIEZ0S@hovoldconsulting.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 05, 2022 at 01:27:34PM +0100, Johan Hovold wrote:
> On Mon, Dec 05, 2022 at 05:50:18PM +0530, Manivannan Sadhasivam wrote:
> > On Mon, Dec 05, 2022 at 01:07:16PM +0100, Johan Hovold wrote:
> > > On Mon, Dec 05, 2022 at 05:29:06PM +0530, Manivannan Sadhasivam wrote:
> > > > On Mon, Dec 05, 2022 at 11:08:36AM +0100, Johan Hovold wrote:
> > > > > UFS controllers may be cache coherent and must be marked as such in the
> > > > > devicetree to avoid data corruption.
> > > > > 
> > > > > This is specifically needed on recent Qualcomm platforms like SC8280XP.
> > > > > 
> > > > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
> > > > >  1 file changed, 2 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> > > > > index f2d6298d926c..1f1d286749c0 100644
> > > > > --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> > > > > +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> > > > > @@ -44,6 +44,8 @@ properties:
> > > > >      minItems: 8
> > > > >      maxItems: 11
> > > > >  
> > > > > +  dma-coherent: true
> > > > > +
> > > > 
> > > > This property is not applicable to all SoCs. So setting true here will make it
> > > > valid for all.
> > > 
> > > Yes, it would be a valid, but it will only be added to the DTs of SoCs
> > > that actually require it. No need to re-encode the dtsi in the binding.
> > > 
> > 
> > But if you make a property valid in the binding then it implies that anyone
> > could add it to DTS which is wrong. You should make this property valid for
> > SoCs that actually support it.
> 
> No, it's not wrong.
> 
> Note that the binding only requires 'compatible' and 'regs', all other
> properties are optional, and you could, for example, add a
> 'reset' property to a node for a device which does not have a reset
> without the DT validation failing.
> 

Then what is the point of devicetree validation using bindings?

There is also a comment from Krzysztof: https://lkml.org/lkml/2022/11/24/390

Thanks,
Mani

> It's the devicetree which is supposed to describe hardware, you don't
> have to encode it also in the binding.
> 
> Johan

-- 
மணிவண்ணன் சதாசிவம்
