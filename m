Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD21B39C2D0
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 23:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhFDVrW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 17:47:22 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:44718 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbhFDVrV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 17:47:21 -0400
Received: by mail-oo1-f48.google.com with SMTP id o5-20020a4a2c050000b0290245d6c7b555so2572275ooo.11
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 14:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=JC25WRkZBCsb3Y5fTmPTp2hPTJRZh/K4xt7YQY7D4O4=;
        b=JEuNpd7gylFZbn17vVqmqdfMkxy98APrgbMp+o9mS3siWPpRSQ5uuQC27Gq+IxH3f/
         Uw+n45L9SrKQgTZzpmwBj276JTiqal+9MsRFOLtEithQ8VpG70/P3q64NpP/EmQW/sol
         OxiBdWTz0xPY6SHodkTBiCS7Ga0O9GDcAtfUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=JC25WRkZBCsb3Y5fTmPTp2hPTJRZh/K4xt7YQY7D4O4=;
        b=aMEsTvODcUH+YeTqWN34M1ocurcFHE2ub+8wGxIK93nOkQInMkKeJ6vzXms6T48hwJ
         7ZX6HmY91WhWPKJ4ADGJo2E1Py5DOTp9schxNeV9QV53NmBzj/+yzrAXBXAmhk+zdCug
         tkz/AlmKMoW2Xqx+qTyWQOpRa5TOyOFsoMuU23RBpmn0t1HscrdU6Wuhxbun+IqD8rmA
         MTzEacUq0QfBgVMrdUrdpD68nAZWO4QZ39E9gpI3FK6tB8z94sKCDv7oaCo3NAxPgHo2
         2M/rw+fjVkfJS9yrbUB4czRonhYF8e2ScrVxwYx74mLh4rScus/cfrXq49rZAbEhEt11
         kDmw==
X-Gm-Message-State: AOAM531e1NQTv8LR5/lwC4ZlH1P5V0ZYpjFTk1fH3qGF17s3yXUPbFum
        eVuEZYPd8I9/VXvsQnByePZaBzvHe9up1u58b7do9A==
X-Google-Smtp-Source: ABdhPJy6w6LzfZQraXTUpEoGT0ueZEnZUPP6hi0L9uLghxBapXi3lqND0wjFan+pdkwveTfBuC+LSOhCIDuLCnteMIM=
X-Received: by 2002:a05:6820:1048:: with SMTP id x8mr5240459oot.16.1622843073335;
 Fri, 04 Jun 2021 14:44:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 4 Jun 2021 21:44:33 +0000
MIME-Version: 1.0
In-Reply-To: <cb2a6cd35df42314c5e5230bcac752be@codeaurora.org>
References: <1620382648-17395-1-git-send-email-pmaliset@codeaurora.org>
 <1620382648-17395-2-git-send-email-pmaliset@codeaurora.org>
 <CAE-0n53KTeF9NOrb+x7P1AG53FENRBGtCEcSxronBpJoww3jew@mail.gmail.com> <cb2a6cd35df42314c5e5230bcac752be@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 4 Jun 2021 21:44:32 +0000
Message-ID: <CAE-0n52y3yuyOrexC+EsnsX6ULDwKDz1PczGwHB211hKu=uj1g@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pci: qcom: Document PCIe bindings for SC720
To:     Prasad Malisetty <pmaliset@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        mgautam@codeaurora.org, dianders@chromium.org, mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-06-04 04:26:57)
> On 2021-05-08 01:29, Stephen Boyd wrote:
> > Quoting Prasad Malisetty (2021-05-07 03:17:26)
> >> Document the PCIe DT bindings for SC7280 SoC.The PCIe IP is similar
> >> to the one used on SM8250. Add the compatible for SC7280.
> >>
> >> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> >> ---
> >>  Documentation/devicetree/bindings/pci/qcom,pcie.txt | 17
> >> +++++++++++++++++
> >>  1 file changed, 17 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> >> b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> >> index 0da458a..e5245ed 100644
> >> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> >> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> >> @@ -12,6 +12,7 @@
> >>                         - "qcom,pcie-ipq4019" for ipq4019
> >>                         - "qcom,pcie-ipq8074" for ipq8074
> >>                         - "qcom,pcie-qcs404" for qcs404
> >> +                       - "qcom,pcie-sc7280" for sc7280
> >>                         - "qcom,pcie-sdm845" for sdm845
> >>                         - "qcom,pcie-sm8250" for sm8250
> >>
> >> @@ -133,6 +134,22 @@
> >>                         - "slave_bus"   AXI Slave clock
> >>
> >>  - clock-names:
> >> +       Usage: required for sc7280
> >> +       Value type: <stringlist>
> >> +       Definition: Should contain the following entries
> >> +                       - "aux"         Auxiliary clock
> >> +                       - "cfg"         Configuration clock
> >> +                       - "bus_master"  Master AXI clock
> >> +                       - "bus_slave"   Slave AXI clock
> >> +                       - "slave_q2a"   Slave Q2A clock
> >> +                       - "tbu"         PCIe TBU clock
> >> +                       - "ddrss_sf_tbu" PCIe SF TBU clock
> >> +                       - "pipe"        PIPE clock
> >> +                       - "pipe_src"    PIPE MUX
> >
> > Is pipe_src necessary? Is it the parent of the pipe clk? If so, please
> > remove it and do whatever is necessary on the pipe clk instead of the
> > parent of the clk.
>
> Here pipe_src is MUX. Newer targets require changing pipe-clk mux to
> switch between pipe_clk and XO for GDSC enable.
> After PHY init, need to configure MUX.

Ok. I see, so we have to change the parent of the parent of the pipe
clk?
