Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D941294AF3
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 11:59:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2441560AbgJUJ7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 05:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2441541AbgJUJ7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 05:59:37 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C69EC0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 02:59:37 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id 144so1185390pfb.4
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 02:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6g5Wjf/Nb7mrOf2N+gasC/3n4iYiNKVe8hMPUVCsdXk=;
        b=pl4L5uLrIG2AC2pOMAF9iYUtxRJeC0QvSwINA5kD4cRVPjkl8rzyz4Bw27kVKJWNdW
         GUQ9YWiMl1kRjgcqsmt9EJJv09BuzyDGKjfTbHrt1v6iq2yx4HvnLf5+mF4cJXq/5NBI
         8hGr/ZJT1FuuQaemP2XsVNkWUSidqwFasE6hHexJH+oKOL6TBdl71NNW/yRK3SJOIrMg
         pj4kgs0BrV45Xep3q2jxNgmGSF9/2mpjl34aEJYM8hUavdbOGuQphR67Nx+cxY3p8Ufn
         HTLtVkUQDiWq+PJSs8zDAN04r8lKId6xRlFdefu6LNA1knxqjmibq1Jzz47mScDYjuZy
         lIgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6g5Wjf/Nb7mrOf2N+gasC/3n4iYiNKVe8hMPUVCsdXk=;
        b=Rp0mSMN0YnKoleAl3BaeI9XJh6/2FQqDPw1OtXJyCWz/g0LUDIhTOFa2J2XLuBMv6Z
         vptldOabLoLoUMOOVM0yZw284DM/JI3tjcUS0L5T4YK48JJSrBrkQ/RUn3PCQdLfFqHO
         1p2CSrstjJPzFCMKyB+LlZcZBttsIlfnPJMF4n3d7JfJ7qun+DMmavNlgCAebxP9Ok30
         j2kBhoMpJW2xZ03ksO4rThf+iwCB4WXi1LQp19RaakIm8ietTKG9N4r9JzriTgrKPirC
         WJN5sIKc3cXWS06hspz4PwGduYdBKhFcFZvNjN5Cr/R/va0ElXFjXt7GIb2kNvTdu0JA
         C0Mw==
X-Gm-Message-State: AOAM533TtwylkRXXWCDmXinkDnWnw8eEc+FlNCRDNTXadCnRt3OvGp+n
        QxhBY904QdmFjBcFv5Qndv29
X-Google-Smtp-Source: ABdhPJxP2Kn+MEpvl705bs5Z93XJfav12KiJJnx4b8wd07fJsxZAqpSHT86pHcQuv/MG0pqtM3Oopg==
X-Received: by 2002:a63:1357:: with SMTP id 23mr2628992pgt.13.1603274376376;
        Wed, 21 Oct 2020 02:59:36 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:70e:2a27:314a:6d22:ec47:a603])
        by smtp.gmail.com with ESMTPSA id 198sm1673121pfy.41.2020.10.21.02.59.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 21 Oct 2020 02:59:35 -0700 (PDT)
Date:   Wed, 21 Oct 2020 15:29:16 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: cpus: Document
 'qcom,freq-domain' property
Message-ID: <20201021095916.GA3334@Mani-XPS-13-9360>
References: <20201020153944.18047-1-manivannan.sadhasivam@linaro.org>
 <1603247803.20224.5.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603247803.20224.5.camel@mtkswgap22>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Oct 21, 2020 at 10:36:43AM +0800, Hector Yuan wrote:
> Hi, Manivannan
> 
> On Tue, 2020-10-20 at 21:09 +0530, Manivannan Sadhasivam wrote:
> > Add devicetree documentation for 'qcom,freq-domain' property specific
> > to Qualcomm CPUs. This property is used to reference the CPUFREQ node
> > along with Domain ID (0/1).
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/cpus.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> > index 1222bf1831fa..f40564bf004f 100644
> > --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> > @@ -290,6 +290,12 @@ properties:
> >  
> >        * arm/msm/qcom,kpss-acc.txt
> >  
> > +  qcom,freq-domain:
> Do you mind to change "qcom, freq-domain" to common naming? or drop the
> prefix. So that we can use this CPU node and map it to each freq-domain.
> Thanks a lot. 

I can do that but did the domain value match for other platforms as well?

Thanks,
Mani

> 
> > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > +    description: |
> > +      CPUs supporting freq-domain must set their "qcom,freq-domain" property
> > +      with phandle to a cpufreq_hw node followed by the Domain ID(0/1).
> > +
> >    rockchip,pmu:
> >      $ref: '/schemas/types.yaml#/definitions/phandle'
> >      description: |
> 
