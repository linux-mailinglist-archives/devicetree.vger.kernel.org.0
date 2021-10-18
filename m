Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4392743298C
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 00:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232019AbhJRWHd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 18:07:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbhJRWHd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 18:07:33 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A35F7C06161C
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:05:21 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id n2so3273234qta.2
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VNpqRRdnPDIUGCc3uEFG9REMCz+uQZwgGwBrpVs1X7k=;
        b=PzH1/3QFJDCAo6+yfE9yZp3FhN5bdJblxdwmrYJXz4W0YDV5QgMDwXPS+9oDzaYsmR
         1hy1VBsrs0g+cboLAmAYffm5C4OKJ9PZknz0zqdbSlWGpa8IqJfWmggmKLf9VGSQPSoq
         bF2fHToJMjgOwuWZ6BDY28QPn+sUaZRuPFe0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VNpqRRdnPDIUGCc3uEFG9REMCz+uQZwgGwBrpVs1X7k=;
        b=CeoA0WSiW4o94og/Df5dQ0q4QD6OTTQN+RWMzUQn2EN4jJz895V0KwMJ34hpqD04gf
         QhQ8OatNCjbOkhNAdr+ao7t3rWmKBjWYWZcR6A2mqYT2ySBnVCUQEbDmDUS1xsM4/uBX
         11Y5MjOyJfMU77zD0BTKLDibXtcmSHKlQKYSQ6XDXOZXKq3s4Ngq4PIzgGY7D6eCoL1D
         4RLYsa73Sb1+NqYGV08kWQ1fegLb7dYjuGqa2UrHZv89NhqkG4gZ5Mhs2hPWr7WB0LsO
         OG/Fg2kSY2V9KKHo5ukFloHvSeZYEFX247j0e5ZeexOBt3KS7LHQVYxD9dT33GnQu0jG
         7npQ==
X-Gm-Message-State: AOAM533t4LupAVReXmanhIi3m8SuEP3dfMtf8LgFHaYcYhB377c47a/L
        vi6109Yz9E3VL3PBdhU75lHG1YCX93/FiQ==
X-Google-Smtp-Source: ABdhPJw3PrHtRt3d2zgrLp/3mjF5lg+v/6i0NZDSFCyGsTFJDk1gC6IL4sIg/cTMyl+wemRe2+GjEQ==
X-Received: by 2002:ac8:5988:: with SMTP id e8mr32665280qte.32.1634594720716;
        Mon, 18 Oct 2021 15:05:20 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id f23sm6117943qtq.40.2021.10.18.15.05.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 15:05:20 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id s4so1329101ybs.8
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:05:20 -0700 (PDT)
X-Received: by 2002:a5b:102:: with SMTP id 2mr31008124ybx.101.1634594288583;
 Mon, 18 Oct 2021 14:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <1633628923-25047-1-git-send-email-pmaliset@codeaurora.org>
 <20211013100005.GB9901@lpieralisi> <CAE-0n52fZZkWt5KxF8gq0D55f_joq0v2sBBp81Gts8cBt6fJgg@mail.gmail.com>
In-Reply-To: <CAE-0n52fZZkWt5KxF8gq0D55f_joq0v2sBBp81Gts8cBt6fJgg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 18 Oct 2021 14:57:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WYvV+=uyEOYq7LjtBgpSGV6KovvoS1e88fgc1kpt_c7Q@mail.gmail.com>
Message-ID: <CAD=FV=WYvV+=uyEOYq7LjtBgpSGV6KovvoS1e88fgc1kpt_c7Q@mail.gmail.com>
Subject: Re: [PATCH v12 0/5] Add DT bindings and DT nodes for PCIe and PHY in SC7280
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>, svarbanov@mm-sol.com,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
        sallenki@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 15, 2021 at 12:43 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Lorenzo Pieralisi (2021-10-13 03:00:05)
> > On Thu, Oct 07, 2021 at 11:18:38PM +0530, Prasad Malisetty wrote:
> > > Prasad Malisetty (5):
> > >   dt-bindings: pci: qcom: Document PCIe bindings for SC7280
> > >   arm64: dts: qcom: sc7280: Add PCIe and PHY related nodes
> > >   arm64: dts: qcom: sc7280: Add PCIe nodes for IDP board
> > >   PCI: qcom: Add a flag in match data along with ops
> > >   PCI: qcom: Switch pcie_1_pipe_clk_src after PHY init in SC7280
> > >
> > >  .../devicetree/bindings/pci/qcom,pcie.txt          |  17 +++
> > >  arch/arm64/boot/dts/qcom/sc7280-idp.dts            |   8 ++
> > >  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |  50 +++++++++
> > >  arch/arm64/boot/dts/qcom/sc7280-idp2.dts           |   8 ++
> > >  arch/arm64/boot/dts/qcom/sc7280.dtsi               | 118 +++++++++++++++++++++
> > >  drivers/pci/controller/dwc/pcie-qcom.c             |  95 +++++++++++++++--
> > >  6 files changed, 285 insertions(+), 11 deletions(-)
> >
> > I applied patches [4-5] to pci/qcom for v5.16, thanks I expect other
> > patches to go via the relevant trees.
> >
>
> Lorenzo, can you pick up patch 1 too? It's the binding update for the
> compatible string used in patch 4-5.

I think that means that patches 2-3 are ready to land in the Qualcomm
tree assuming Bjorn Andersson is still accepting patches there for
5.16, right?

-Doug
