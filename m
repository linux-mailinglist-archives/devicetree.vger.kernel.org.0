Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D25C0294B77
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 12:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439013AbgJUKul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 06:50:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439015AbgJUKul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 06:50:41 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEEFBC0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 03:50:40 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id t4so1001936plq.13
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 03:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z1ROSdysWAJRA35AhGES/43NRpXVq6YDaJOz7zl7nL8=;
        b=w9jC/C5ogypGG2B4CHyrIKLiagWGjJugRQu6KmvufLSpIJmf6uviAuPsQimJcsygWy
         aO2hQ/4vFZjPo/PXF0CCYPQ5lxPB6DlokTEK4DWWokxVd43Fak9M3m1kaEHOxNB5ID1U
         017H9CQfaQ2gmp4maSOT/Rkq7peo9+QycbvGsmxkmrrRPmDgb3XJt/4NK0ub0lP4MwKk
         rO+ZRJmZTKAEpDaIBJyNviGP7cxH/ZjFO5Xe2aoCjUAFWIxeZCXFzy40LTiXyFgpBuMj
         fYs5i2W0ECR/j/Agl43miVh2mhxycJZkd6vTVyMk8VBxvFW4hVtulqK1KMJ5UJE+Xj2P
         K5/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z1ROSdysWAJRA35AhGES/43NRpXVq6YDaJOz7zl7nL8=;
        b=XlERHYuVkmBLJv3/LANg0JdjiupOHPNpam5UWty22xx8mmE8nn1H6YIiNcl6yTqTAb
         j3KEW8UMDVJaQrDwXVC//MmAuvG3adH5Nqkh2T4Vk2IPSUABkWbYWKNPNaJJ4evYhuSJ
         o/9+cLD35YMxEK6CbmSu9LJmtkzM1h/wzokNYec2m0aBB9/UsxloYbXLxHUCm3fggWmM
         l0n/EzidQ6nEYaNbAaifwUHQHO1sHsQ54FpRCJPdyoFp/hu0AmW2s4VMSuLgS97F3u1q
         r0QsSDe4iYNVt4s0Yf0y3aJmVrOiD9KnPfE+2yYDsiKzY0j0EfqWKveWYdY+hHVGZYpO
         4fYw==
X-Gm-Message-State: AOAM5325wpyVmgwTZlWRX6mdPB2iGqd/RMNSM5gwqGP7cCQ3k9cjmizX
        8748Nt6xMU0ZPcTNSClSor4ozg==
X-Google-Smtp-Source: ABdhPJxwgr3r5rDb2EwR7ApDlfOTIHsXkLRSCBwfkQlQC2nu8iBeNlICjuUksRIYaFtg91h3GN0GUA==
X-Received: by 2002:a17:902:d896:b029:d2:288e:bafc with SMTP id b22-20020a170902d896b02900d2288ebafcmr3097921plz.43.1603277440281;
        Wed, 21 Oct 2020 03:50:40 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id e21sm2018906pfl.22.2020.10.21.03.50.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 03:50:39 -0700 (PDT)
Date:   Wed, 21 Oct 2020 16:20:37 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Hector Yuan <hector.yuan@mediatek.com>, rjw@rjwysocki.net,
        robh+dt@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: cpus: Document
 'qcom,freq-domain' property
Message-ID: <20201021105037.vrqgmvbxxhccch33@vireshk-i7>
References: <20201020153944.18047-1-manivannan.sadhasivam@linaro.org>
 <1603247803.20224.5.camel@mtkswgap22>
 <20201021095916.GA3334@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201021095916.GA3334@Mani-XPS-13-9360>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-10-20, 15:29, Manivannan Sadhasivam wrote:
> Hi,
> 
> On Wed, Oct 21, 2020 at 10:36:43AM +0800, Hector Yuan wrote:
> > Hi, Manivannan
> > 
> > On Tue, 2020-10-20 at 21:09 +0530, Manivannan Sadhasivam wrote:
> > > Add devicetree documentation for 'qcom,freq-domain' property specific
> > > to Qualcomm CPUs. This property is used to reference the CPUFREQ node
> > > along with Domain ID (0/1).
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/arm/cpus.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> > > index 1222bf1831fa..f40564bf004f 100644
> > > --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> > > @@ -290,6 +290,12 @@ properties:
> > >  
> > >        * arm/msm/qcom,kpss-acc.txt
> > >  
> > > +  qcom,freq-domain:
> > Do you mind to change "qcom, freq-domain" to common naming? or drop the
> > prefix. So that we can use this CPU node and map it to each freq-domain.
> > Thanks a lot. 
> 
> I can do that but did the domain value match for other platforms as well?

I am not sure if you can. The code needs to be backward compatible so it can
support all devices shipped with older bootloaders and latest kernels. And so
changing the bindings isn't a good idea normally.

> 
> > 
> > > +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> > > +    description: |
> > > +      CPUs supporting freq-domain must set their "qcom,freq-domain" property
> > > +      with phandle to a cpufreq_hw node followed by the Domain ID(0/1).
> > > +
> > >    rockchip,pmu:
> > >      $ref: '/schemas/types.yaml#/definitions/phandle'
> > >      description: |
> > 

-- 
viresh
