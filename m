Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1FF689336
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 21:00:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726144AbfHKTAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Aug 2019 15:00:23 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:37936 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbfHKTAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Aug 2019 15:00:23 -0400
Received: by mail-pl1-f196.google.com with SMTP id m12so8417282plt.5
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2019 12:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g4HRffWR5sTfOdPb8n2H2gBlNEK3O7QkgVCtkSjBUGc=;
        b=NKH6a5rKubvrnRjIiAagMdwN7DNFvpDIxEUxLYf+kcaaRrXUD4LXVeEaPzEwnv51Qn
         7QZtgmEqhK5E4pjO/rrk1i6VlM2ljoxMczTY2s0GmrCxGCEIRTRvwfm2eZyvt5gl2ail
         i4BetvPir8rZaPCg6FdYaMlO7QhhsOWiFl05YooTM8FK+qi+aGZytl2RfGMDZccqWYcH
         c7A1ri271xLpFxZkPBYu7DbHUIaK8beRCewn28rCUTsX9GjAB64fyF3nlcG1issWWlne
         M1MeftR3HX7ZBV69FKtlbTP5HTcIxgTIQFwFvS9sWY9tl+c2q40uABiEoYtg7El1O0aC
         FcCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g4HRffWR5sTfOdPb8n2H2gBlNEK3O7QkgVCtkSjBUGc=;
        b=HNHaij4iKdMWThN8qrK/qOnESBAwigI2K8lmDxcUORlWG6kx9vOpKH5l39DMnCdw1J
         4VjFw2cpjnhbOzCDYJXmvnbO/166ki8VjxrMxUOnelokoGic0KajA7ngGv72YqmhvCF3
         84xlqJo4+L2r2Mvi6wjAwzn2pUiX8EitM1pO4NtSzyXzq42HpAgx+WCARhzKYV2NcdBl
         TjWd+zo0Tts/PE2gjw0ihJ/vBG0OB8NYwiuLJXiHnVQmXb9aq4sYQXipwkRAGcdC+WTm
         C0ew0Yw6FLe9GIVFvZQemK7FLM+BfaTpDjAu6iizaNuZURuQc6GzKKfsFcNQgJqrEl14
         BS8A==
X-Gm-Message-State: APjAAAVDRVF+fy9J6ptnC8wUStu3dPkDd9PKfv/IPUf3awhxbvjl5Z/W
        sZFR97ezy9phxS5eIA38W/gAXQ==
X-Google-Smtp-Source: APXvYqzc4Bn9ATOCQYg7LsJf9jLHX1jrV/wEcEKA0Dzyd51K6OZ8vz1CVcwhFwEFMJTVX7DrRrXbdA==
X-Received: by 2002:a17:902:e4:: with SMTP id a91mr29498761pla.150.1565550022586;
        Sun, 11 Aug 2019 12:00:22 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 5sm41932620pgh.93.2019.08.11.12.00.21
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 12:00:21 -0700 (PDT)
Date:   Sun, 11 Aug 2019 12:01:59 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vivek Gautam <vivek.gautam@codeaurora.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        open list <linux-kernel@vger.kernel.org>,
        robh+dt <robh+dt@kernel.org>,
        David Brown <david.brown@linaro.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <iommu@lists.linux-foundation.org>,
        Andy Gross <agross@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 4/4] arm64: dts/sdm845: Enable FW implemented safe
 sequence handler on MTP
Message-ID: <20190811190159.GQ26807@tuxbook-pro>
References: <20190612071554.13573-1-vivek.gautam@codeaurora.org>
 <20190612071554.13573-5-vivek.gautam@codeaurora.org>
 <20190805222627.GA2634@builder>
 <CAFp+6iHGrXAJ2Y1ewxaePGYEcbnprjScUnGyR61qvOv03HVZhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFp+6iHGrXAJ2Y1ewxaePGYEcbnprjScUnGyR61qvOv03HVZhQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 11 Aug 09:08 PDT 2019, Vivek Gautam wrote:

> On Tue, Aug 6, 2019 at 3:56 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Wed 12 Jun 00:15 PDT 2019, Vivek Gautam wrote:
> >
> > > Indicate on MTP SDM845 that firmware implements handler to
> > > TLB invalidate erratum SCM call where SAFE sequence is toggled
> > > to achieve optimum performance on real-time clients, such as
> > > display and camera.
> > >
> > > Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > index 78ec373a2b18..6a73d9744a71 100644
> > > --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > @@ -2368,6 +2368,7 @@
> > >                       compatible = "qcom,sdm845-smmu-500", "arm,mmu-500";
> > >                       reg = <0 0x15000000 0 0x80000>;
> > >                       #iommu-cells = <2>;
> > > +                     qcom,smmu-500-fw-impl-safe-errata;
> >
> > Looked back at this series and started to wonder if there there is a
> > case where this should not be set? I mean we're after all adding this to
> > the top 845 dtsi...
> 
> My bad.
> This is not valid in case of cheza. Cheza firmware doesn't implement
> the safe errata handling hook.
> On cheza we just have the liberty of accessing the secure registers
> through scm calls - this is what
> we were doing in earlier patch series handling this errata.
> So, a property like this should go to mtp board's dts file.
> 

It would have been nice if the common case was just selected by default,
but afaict no safe workaround is needed on Cheza? You mention here that
it should (could?) use the scm write based approach instead, would an
introduction of that come with another flag?


PS. In it's current form it's correct that this should be moved to the
device dts files - all but one of them...

Regards,
Bjorn
