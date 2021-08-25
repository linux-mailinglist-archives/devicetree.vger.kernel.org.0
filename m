Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9BD3F7CB9
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 21:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234220AbhHYTa6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 15:30:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241667AbhHYTa5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 15:30:57 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0EC4C0613D9
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 12:30:10 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id v2so892709oie.6
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 12:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=JLcefyKSKqjrSJBjDwRPhSlprne7V+zJmYbnypztomQ=;
        b=H0Ernshf//ofwPK9XKjTZSg/dMtEYnrdSaZ+jw/BmPdPeTLAS9z5nLjtKaxufq8vS5
         6HOhqHwXWnQz/p9BxLauB9gVo9Usz+VMM99fOO5Xi2EeTqjgJgIN3F/o/EvmsqfpFevu
         +drnbaTMTdKMLtbyJ0J40Ulep22EhtrAza9fY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=JLcefyKSKqjrSJBjDwRPhSlprne7V+zJmYbnypztomQ=;
        b=tc2TC3/qwtRD4u/6jk+lyoz6Y3SEElLnFUFSVCYd3+rSh3ykH0P6ZSXEOBEj2mgb0s
         Lh+aHuiWTFAB1tkJ7kWruiVeP3eeIO+JF+72qmtnSiaGX/Brv5Q5i4SGIIGj+ibD/q6S
         EA+EMPjl0Cknc06d61udRWyWSN8A1FaOMMTkQ5n6l1Jegs6f3WLA3Y1odr9HV9cJgGz/
         OxouVVO4xi5K1waKJab62fdNZ3z9C5J7fjpbHtzNrFmm3RrtteRC+j1Ku8kFuFWTqPgR
         zm/UQms024uxb0PzvuVaHAstodMC8wuUcsW2c7NdkkXEKUI3DoBR4tVGRpAwHv5QwQo/
         jj6Q==
X-Gm-Message-State: AOAM530PY/t2aCI6VtpcDp1lZQft1yAMMbuWekF9KdRv6H+QEnH/Y1cE
        CCOINBPnwHiim69hixhM8C7cuhXGtb/DsG6fhZ8V7A==
X-Google-Smtp-Source: ABdhPJz5kKrkvonN2F69o4kqTbjRO+SWZp3mHOvfJVqkOn6Guyq9jgCetnKtG3j0rp8HaNWPw8iPPt7s22TDjDpBZPA=
X-Received: by 2002:a54:468d:: with SMTP id k13mr8278136oic.125.1629919810210;
 Wed, 25 Aug 2021 12:30:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Aug 2021 19:30:09 +0000
MIME-Version: 1.0
In-Reply-To: <e54b4f62dbcd670a0e0658598e045051@codeaurora.org>
References: <1628568516-24155-1-git-send-email-pmaliset@codeaurora.org>
 <1628568516-24155-5-git-send-email-pmaliset@codeaurora.org>
 <349b1178f071407dfad8ba3050482772@codeaurora.org> <e54b4f62dbcd670a0e0658598e045051@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 25 Aug 2021 19:30:09 +0000
Message-ID: <CAE-0n50cnWf_3LQ6P9KMaT4dnryWW9JemP95JDZt5WE1G4mZuQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] PCI: qcom: Switch pcie_1_pipe_clk_src after PHY
 init in SC7280
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-08-24 01:10:48)
> On 2021-08-17 22:56, Prasad Malisetty wrote:
> > On 2021-08-10 09:38, Prasad Malisetty wrote:
> >> On the SC7280, By default the clock source for pcie_1_pipe is
> >> TCXO for gdsc enable. But after the PHY is initialized, the clock
> >> source must be switched to gcc_pcie_1_pipe_clk from TCXO.
> >>
> >> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> >> ---
> >>  drivers/pci/controller/dwc/pcie-qcom.c | 18 ++++++++++++++++++
> >>  1 file changed, 18 insertions(+)
> >>
> >> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c
> >> b/drivers/pci/controller/dwc/pcie-qcom.c
> >> index 8a7a300..39e3b21 100644
> >> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> >> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> >> @@ -166,6 +166,8 @@ struct qcom_pcie_resources_2_7_0 {
> >>      struct regulator_bulk_data supplies[2];
> >>      struct reset_control *pci_reset;
> >>      struct clk *pipe_clk;
> >> +    struct clk *gcc_pcie_1_pipe_clk_src;
> >> +    struct clk *phy_pipe_clk;
> >>  };
> >>
> >>  union qcom_pcie_resources {
> >> @@ -1167,6 +1169,16 @@ static int qcom_pcie_get_resources_2_7_0(struct
> >> qcom_pcie *pcie)
> >>      if (ret < 0)
> >>              return ret;
> >>
> >> +    if (of_device_is_compatible(dev->of_node, "qcom,pcie-sc7280")) {
> >> +            res->gcc_pcie_1_pipe_clk_src = devm_clk_get(dev, "pipe_mux");
> >> +            if (IS_ERR(res->gcc_pcie_1_pipe_clk_src))
> >> +                    return PTR_ERR(res->gcc_pcie_1_pipe_clk_src);
> >> +
> >> +            res->phy_pipe_clk = devm_clk_get(dev, "phy_pipe");
> >> +            if (IS_ERR(res->phy_pipe_clk))
> >> +                    return PTR_ERR(res->phy_pipe_clk);
> >> +    }
> >> +
> >
> > Hi All,
> >
> > Greetings!
> >
> > I would like to check is there any other better approach instead of
> > compatible method here as well or is it fine to use compatible method.
> >

I'd prefer the compatible method. If nobody is responding then it's best
to just resend the patches with the approach you prefer instead of
waiting for someone to respond to a review comment.
