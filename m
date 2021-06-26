Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8EA3B4FD6
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 20:26:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbhFZS2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Jun 2021 14:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbhFZS2g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Jun 2021 14:28:36 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B3CEC061767
        for <devicetree@vger.kernel.org>; Sat, 26 Jun 2021 11:26:14 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id bc18-20020a0568201692b029024c6dbc2073so371741oob.8
        for <devicetree@vger.kernel.org>; Sat, 26 Jun 2021 11:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DI2G5sC+Fy/uFtOTYjG+9gP3jQj4m7g2L2nJ6Mw5TXQ=;
        b=qP4eOuoypEx1BjN1liacNmSJs0DwEOd4ewbRhNVkEvHaS7kCfQY007YSBT1z81iZXi
         bvpM2oHMQ7PxghLDc6yoXlS5OploeVHnz55zswD0gNdrSizVpDpXlUI2GaSK3vcuxRwA
         wogbQGMVUfyD3c5Tqd0jgpKOiHtthlpmL62AUGgPM5SFMqCQXBhuvWW39OKatUuuIikA
         HU1IKAhRkeHbyPuEFNnWiewhtmNZJW3VH20oR72wLqgIOYrLVFZRtWy3iLk8sdndVKlp
         KAId1zng2aXCbJvheW2K+FwcOBtmWnWMvk+U5nGknfaRW274/ZVZqK3JJuVX3tf1EuJW
         MhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DI2G5sC+Fy/uFtOTYjG+9gP3jQj4m7g2L2nJ6Mw5TXQ=;
        b=rae1eualORC7Bd2MeB4DjHBJO9Ufwfs7svC3D4MdkSoOPWvuC5pTmQ6TmWz8uRokp9
         yssi+oF2vpAYzSrCWIoKx0kiIl+8xRgnV1+iyIOR2MWj/T2nFmJJwZ612FoE/yJkvuqW
         goN5on81Zn6eXKgbvuGl0yOngawXJ7STFhqsZvS/VilhCp9i+LYN7va4/255riRxzMdV
         xzrebAtoHAKSZfUHquGhySYAtZZ/9xjQIjltj30ksVcRVmu2qqe1zZqcYr76z4IxN5bo
         oQVVPNsUOhlL0+QL38D6MzLjZllNuZ80frEVETWRwoqqSTMYilkG6fdLP9LJSvXLmCNk
         +TbA==
X-Gm-Message-State: AOAM531Qn1SL/Ad+c9aiT2HBKVGKL7Opgd8S6zqQrsJN3+QQU0jdJTs1
        6Do5lfvZrxKL2+dMjpVOXbxPvj/kNPL1QxqDE9YD6g==
X-Google-Smtp-Source: ABdhPJzNDHIr64wdhMId/mbxHV/ll0JwmQkAF6D6aJGefkDeTU5iD/2EuvjzpmsJ8rRcOfQ8todbK3ox4gloezWhfBY=
X-Received: by 2002:a4a:6c0c:: with SMTP id q12mr13837143ooc.81.1624731973541;
 Sat, 26 Jun 2021 11:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210625220311.527549-1-bhupesh.sharma@linaro.org>
 <20210625220311.527549-2-bhupesh.sharma@linaro.org> <YNZaOK3XcsQq8H+B@yoga>
In-Reply-To: <YNZaOK3XcsQq8H+B@yoga>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Sat, 26 Jun 2021 23:56:02 +0530
Message-ID: <CAH=2NtyLchPaz6g5jHcgOUrgXFHiy9DwxcgFviNfgGD0k5B_mA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Use consistent naming for dwc3 usb
 nodes for sm8150
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        balbi@kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Sat, 26 Jun 2021 at 04:05, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 25 Jun 17:03 CDT 2021, Bhupesh Sharma wrote:
>
> > The dwc3 usb nodes in sm8150.dtsi are currently named differently,
> > leading to some confusion when one sees the entries in sysfs or
> > dmesg:
> > [    1.943482] dwc3 a600000.usb: Adding to iommu group 1
> > [    2.266127] dwc3 a800000.dwc3: Adding to iommu group 2
> >
> > Name both the nodes as dwc3@<addr> for consistency.
> >
> > While at it also arrange the two usb controller, hs-phy and
> > ss-phy nodes closer in the dts for better readability.
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8150.dtsi | 30 ++++++++++++++--------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > index 612dda0fef43..3be6d093a99b 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > @@ -2205,6 +2205,20 @@ glink-edge {
> >                       };
> >               };
> >
> > +             dc_noc: interconnect@9160000 {
> > +                     compatible = "qcom,sm8150-dc-noc";
> > +                     reg = <0 0x09160000 0 0x3200>;
> > +                     #interconnect-cells = <1>;
> > +                     qcom,bcm-voters = <&apps_bcm_voter>;
> > +             };
> > +
> > +             gem_noc: interconnect@9680000 {
> > +                     compatible = "qcom,sm8150-gem-noc";
> > +                     reg = <0 0x09680000 0 0x3e200>;
> > +                     #interconnect-cells = <1>;
> > +                     qcom,bcm-voters = <&apps_bcm_voter>;
> > +             };
> > +
> >               usb_1_hsphy: phy@88e2000 {
> >                       compatible = "qcom,sm8150-usb-hs-phy",
> >                                    "qcom,usb-snps-hs-7nm-phy";
> > @@ -2266,20 +2280,6 @@ usb_1_ssphy: lanes@88e9200 {
> >                       };
> >               };
> >
> > -             dc_noc: interconnect@9160000 {
> > -                     compatible = "qcom,sm8150-dc-noc";
> > -                     reg = <0 0x09160000 0 0x3200>;
> > -                     #interconnect-cells = <1>;
> > -                     qcom,bcm-voters = <&apps_bcm_voter>;
> > -             };
> > -
> > -             gem_noc: interconnect@9680000 {
> > -                     compatible = "qcom,sm8150-gem-noc";
> > -                     reg = <0 0x09680000 0 0x3e200>;
> > -                     #interconnect-cells = <1>;
> > -                     qcom,bcm-voters = <&apps_bcm_voter>;
> > -             };
> > -
> >               usb_2_qmpphy: phy@88eb000 {
> >                       compatible = "qcom,sm8150-qmp-usb3-uni-phy";
> >                       reg = <0 0x088eb000 0 0x200>;
> > @@ -2344,7 +2344,7 @@ usb_1: usb@a6f8800 {
> >
> >                       resets = <&gcc GCC_USB30_PRIM_BCR>;
> >
> > -                     usb_1_dwc3: usb@a600000 {
> > +                     usb_1_dwc3: dwc3@a600000 {
>
> "usb@" is actually the right one, per the rather recent standardization
> across the dwc3 bindings.

Ok, yes that makes more sense.
Although a grep for the keyword 'dwc3@', does lead up to quite a few
qcom dts files which use 'dwc3@ 'instead of 'usb@', which seem
inconsistent as per the bindings doc (see [1]).

Maybe I can fix those in v2 as well.

[1]. Documentation/devicetree/bindings/usb/qcom,dwc3.yaml

Thanks,
Bhupesh
>
> >                               compatible = "snps,dwc3";
> >                               reg = <0 0x0a600000 0 0xcd00>;
> >                               interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> > --
> > 2.31.1
> >
