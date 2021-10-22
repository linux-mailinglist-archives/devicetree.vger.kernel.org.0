Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37FD94370F6
	for <lists+devicetree@lfdr.de>; Fri, 22 Oct 2021 06:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231844AbhJVEhe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 00:37:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231758AbhJVEhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 00:37:34 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98BEC061766
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 21:35:17 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id ls14-20020a17090b350e00b001a00e2251c8so2132566pjb.4
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 21:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ea4CZZfkKtyb+xBqRdZf6SBAMZ1cQdNDWjWliSRbeYs=;
        b=DGhoJjgKGPzorUI/zZjBgry3dYx3qdlSI/3jCAYaly6x8kFi4ceRr5x9oI5k30NNSx
         RnODmN+sgsIdEw67hazg5MclHKzily6CWVXPMiD0fZEdmv8HvK3RW4/MlcIfFYySivkX
         N+gAdtI0qDvGVcdIutL8Ffhb5K6FNIDV1MrT7tQvVSea0wvNguQOLuMKjY281JdssF8+
         2xgUB0kGRD6M/9VfLIAii/mK6O6bxhltBn1cXU8hs1X5fV6qIak93K0tAO/AgO/Pg9uz
         PietdccDdk5aH4ICoOIPckbzllFY4ShvbmEaYDnRLZieqZgwX0d8oo56+Q5fkF19fYLi
         0Y+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ea4CZZfkKtyb+xBqRdZf6SBAMZ1cQdNDWjWliSRbeYs=;
        b=5AUQ19ZNX40CGihcohSg8hbwNPLXCEYjv8E57sEjOmoScQChDTfkqMi5Xp/lWeTXff
         2F87tVw/4L9FkoKXrSCGmKMYsY9pGww5vu2fKA+5ySIUNR80NJfuwv68BAP4x1HY1f51
         CRSroVT/eGHFhGparnlzcrUbpURV+CJlh+28A6PQVbLOrTSqKNN7Ll/6aCr0evBpXC/e
         sTzevWZiZksresYxzrjyCclqIJXj+H93M44/Sazsxu+u4miZCLBe0KrBrfChiwnpQz8S
         AiCWb0oUZvyPonRlvKdryP4zrlpBvqgQOuZsZFdiCX+gTP6NBLD+UXxCfZqUu90OByIQ
         4+ig==
X-Gm-Message-State: AOAM533zpvLD/w6O0YxfddiOxFVTJZcAUxFDAi8zUaNbVaN67LkWRPrX
        ahVTXrwtCWEe7fjcbeSGj0KOgg==
X-Google-Smtp-Source: ABdhPJzKIpyd/Amg58LO1qw8s2Omi3mYIX1S8z0tjGhCWVy4BgKMxa3Ck1xLyUt1OzXU9vTMr25Tiw==
X-Received: by 2002:a17:90b:100e:: with SMTP id gm14mr2546962pjb.32.1634877317141;
        Thu, 21 Oct 2021 21:35:17 -0700 (PDT)
Received: from localhost ([106.201.113.61])
        by smtp.gmail.com with ESMTPSA id q18sm8815028pfj.46.2021.10.21.21.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 21:35:16 -0700 (PDT)
Date:   Fri, 22 Oct 2021 10:05:12 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: dts: spear13xx: Drop malformed 'interrupt-map' on
 PCI nodes
Message-ID: <20211022043512.ojuz2eqwf5xgndph@vireshk-i7>
References: <20210928192143.1841497-1-robh@kernel.org>
 <20211004061406.tyhldt4f26zilaaw@vireshk-i7>
 <CAL_JsqJzb3mOO-0_y+7zOQO6DMNLhAN99pDfuj55ooLULKb4WA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJzb3mOO-0_y+7zOQO6DMNLhAN99pDfuj55ooLULKb4WA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-10-21, 16:12, Rob Herring wrote:
> On Mon, Oct 4, 2021 at 1:14 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 28-09-21, 14:21, Rob Herring wrote:
> > > The spear13xx PCI 'interrupt-map' property is not parse-able.
> > > '#interrupt-cells' is missing and there are 3 #address-cells. Based on the
> > > driver, the only supported interrupt is for MSI. Therefore, 'interrupt-map'
> > > is not needed.
> > >
> > > Cc: Viresh Kumar <vireshk@kernel.org>
> > > Cc: Shiraz Hashim <shiraz.linux.kernel@gmail.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  arch/arm/boot/dts/spear1310.dtsi | 6 ------
> > >  arch/arm/boot/dts/spear1340.dtsi | 2 --
> > >  2 files changed, 8 deletions(-)
> > >
> > > diff --git a/arch/arm/boot/dts/spear1310.dtsi b/arch/arm/boot/dts/spear1310.dtsi
> > > index c4b49baf9804..2f746a9428a7 100644
> > > --- a/arch/arm/boot/dts/spear1310.dtsi
> > > +++ b/arch/arm/boot/dts/spear1310.dtsi
> > > @@ -82,8 +82,6 @@ pcie0: pcie@b1000000 {
> > >                       reg = <0xb1000000 0x4000>, <0x80000000 0x20000>;
> > >                       reg-names = "dbi", "config";
> > >                       interrupts = <0 68 0x4>;
> > > -                     interrupt-map-mask = <0 0 0 0>;
> > > -                     interrupt-map = <0x0 0 &gic 0 68 0x4>;
> > >                       num-lanes = <1>;
> > >                       phys = <&miphy0 1>;
> > >                       phy-names = "pcie-phy";
> > > @@ -101,8 +99,6 @@ pcie1: pcie@b1800000 {
> > >                       reg = <0xb1800000 0x4000>, <0x90000000 0x20000>;
> > >                       reg-names = "dbi", "config";
> > >                       interrupts = <0 69 0x4>;
> > > -                     interrupt-map-mask = <0 0 0 0>;
> > > -                     interrupt-map = <0x0 0 &gic 0 69 0x4>;
> > >                       num-lanes = <1>;
> > >                       phys = <&miphy1 1>;
> > >                       phy-names = "pcie-phy";
> > > @@ -120,8 +116,6 @@ pcie2: pcie@b4000000 {
> > >                       reg = <0xb4000000 0x4000>, <0xc0000000 0x20000>;
> > >                       reg-names = "dbi", "config";
> > >                       interrupts = <0 70 0x4>;
> > > -                     interrupt-map-mask = <0 0 0 0>;
> > > -                     interrupt-map = <0x0 0 &gic 0 70 0x4>;
> > >                       num-lanes = <1>;
> > >                       phys = <&miphy2 1>;
> > >                       phy-names = "pcie-phy";
> > > diff --git a/arch/arm/boot/dts/spear1340.dtsi b/arch/arm/boot/dts/spear1340.dtsi
> > > index 1a8f5e8b10e3..827e887afbda 100644
> > > --- a/arch/arm/boot/dts/spear1340.dtsi
> > > +++ b/arch/arm/boot/dts/spear1340.dtsi
> > > @@ -47,8 +47,6 @@ pcie0: pcie@b1000000 {
> > >                       reg = <0xb1000000 0x4000>, <0x80000000 0x20000>;
> > >                       reg-names = "dbi", "config";
> > >                       interrupts = <0 68 0x4>;
> > > -                     interrupt-map-mask = <0 0 0 0>;
> > > -                     interrupt-map = <0x0 0 &gic 0 68 0x4>;
> > >                       num-lanes = <1>;
> > >                       phys = <&miphy0 1>;
> > >                       phy-names = "pcie-phy";
> >
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Are you going to apply this?

No, you or Arnd can directly apply it. I don't send pull requests for SPEAr
anymore due to very low traffic.

-- 
viresh
