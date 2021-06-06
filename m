Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77BE239CCA7
	for <lists+devicetree@lfdr.de>; Sun,  6 Jun 2021 06:03:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbhFFEF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Jun 2021 00:05:28 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:36554 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbhFFEF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Jun 2021 00:05:27 -0400
Received: by mail-ot1-f44.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so13339446otl.3
        for <devicetree@vger.kernel.org>; Sat, 05 Jun 2021 21:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FSgiA/T6/5jAabbNNBBgEqCEiN9k8oDBGYgRq0lGmNs=;
        b=ndLSVpZcLqYEm93yN5Wurvdk/afX4jVhNtyVJzQvJzkXTpmQOEh35t4ZVqXqDVUsBM
         5VgHNxGp9AzfWCJe1sryNPXb3SVcCQXleQlYFwVWS4z8jcRzNLjTr82xY+9mY+rOVVwm
         TGu3Pum9fJNTFjEcQKxVSGqsvgDSHH2mHdM+owCsXT9RhUoUGt2HRtNUk8vaCT3kdUAT
         XLJjL30EGYvxF424D13e6zGZ0nXgYPKu6zEMtVbt0hZig3p4ddZUhdSeJDgrAGBa0ku+
         5bnF5oOxUTI9Y+pGoClU5JJJZu22jff1mMv3h1+kP8N1oo1zc1LGBmBXIK52LVjXHXkA
         QMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FSgiA/T6/5jAabbNNBBgEqCEiN9k8oDBGYgRq0lGmNs=;
        b=AezBEz3QjZ4tLg3kPHGiiPnexnT69Nf1IrNsiuRfUv5n6ixVEyJECp8en+v0X0uiS5
         6Bm/nKxkJnct3rMp20gP9wVUIWwbtpzrUnc/xAczsPI6MGvIaD5hLG72YY1ZuV4CiEl5
         JAhJ07Q8xN1+E1hAdMHXL9lkx8icmvxaiMlfega/bcpqANwLhfgIe7dCSZmBObAszqCs
         YBtzqAhp//iAIpRmWg/5VR4x8NZpzRJ/mn4QGnV6Rv3XLdAhK5UhDm50SSvZd3m8WW+o
         nkNF1OcocO/kr1ARKZLEaVvSScmNHZgpVwofE8PQfwrURrympi27OW4FxqT16vKEBmJC
         JxbQ==
X-Gm-Message-State: AOAM532aMCEpoN2g8Jpov+RmLysk93zgmBXhxux6dH4IVDP213wRSXpo
        gKpIHjSCYokNtWt2GrDtY8qnfg==
X-Google-Smtp-Source: ABdhPJwJO97UY/GYmReJ/WM3VxIFIPG8CpVoA1GU2+CEs0IJXrN9xORFyKCSvqnQrV4H9KU6V1WzIQ==
X-Received: by 2002:a05:6830:1e37:: with SMTP id t23mr9142357otr.318.1622952158576;
        Sat, 05 Jun 2021 21:02:38 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q26sm1507855otn.0.2021.06.05.21.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 21:02:37 -0700 (PDT)
Date:   Sat, 5 Jun 2021 23:02:36 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Prasad Malisetty <pmaliset@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        mgautam@codeaurora.org, dianders@chromium.org, mka@chromium.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7280: Add PCIe and PHY related
 nodes
Message-ID: <YLxI3NTvgTJ3qt7h@builder.lan>
References: <1620382648-17395-1-git-send-email-pmaliset@codeaurora.org>
 <1620382648-17395-3-git-send-email-pmaliset@codeaurora.org>
 <CAE-0n530bSPupOHVDzwpd_JVVN0tOfrAOm9dAt1ZGj7zaXOZ6A@mail.gmail.com>
 <3b3701bb1e23dec88f2231722872fc40@codeaurora.org>
 <CAE-0n50k9z0ZFqP_pOmQjp0s3NCSKYHTmHvZ5rxLb3MzqgavrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n50k9z0ZFqP_pOmQjp0s3NCSKYHTmHvZ5rxLb3MzqgavrA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 04 Jun 16:43 CDT 2021, Stephen Boyd wrote:

> Quoting Prasad Malisetty (2021-05-21 02:57:00)
> > On 2021-05-08 01:36, Stephen Boyd wrote:
> > > Quoting Prasad Malisetty (2021-05-07 03:17:27)
> > >> Add PCIe controller and PHY nodes for sc7280 SOC.
> > >>
> > >> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> > >> ---
> > >>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 138
> > >> +++++++++++++++++++++++++++++++++++
> > >>  1 file changed, 138 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >> b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >> index 2cc4785..a9f25fc1 100644
> > >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >> @@ -12,6 +12,7 @@
> > >>  #include <dt-bindings/power/qcom-aoss-qmp.h>
> > >>  #include <dt-bindings/power/qcom-rpmpd.h>
> > >>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> > >> +#include <dt-bindings/gpio/gpio.h>
> > >>
> > >>  / {
> > >>         interrupt-parent = <&intc>;
> > >> @@ -316,6 +317,118 @@
> > >>                         };
> > >>                 };
> > >>
> > > [...]
> > >> +
> > >> +               pcie1_phy: phy@1c0e000 {
> > >> +                       compatible =
> > >> "qcom,sm8250-qmp-gen3x2-pcie-phy";
> > >> +                       reg = <0 0x01c0e000 0 0x1c0>;
> > >> +                       #address-cells = <2>;
> > >> +                       #size-cells = <2>;
> > >> +                       ranges;
> > >> +                       clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> > >> +                                <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> > >> +                                <&gcc GCC_PCIE_CLKREF_EN>,
> > >> +                                <&gcc GCC_PCIE1_PHY_RCHNG_CLK>;
> > >> +                       clock-names = "aux", "cfg_ahb", "ref",
> > >> "refgen";
> > >> +
> > >> +                       resets = <&gcc GCC_PCIE_1_PHY_BCR>;
> > >> +                       reset-names = "phy";
> > >> +
> > >> +                       assigned-clocks = <&gcc
> > >> GCC_PCIE1_PHY_RCHNG_CLK>;
> > >> +                       assigned-clock-rates = <100000000>;
> > >> +
> > >> +                       status = "disabled";
> > >
> > > I think the style is to put status disabled close to the compatible?
> >
> > Generally I have added status disabled in end as like many nodes. just
> > curious to ask is there any specific reason to put close to compatible.
> 
> It's really up to qcom maintainers, which I am not.
> 

I like when it's the last item, as it lends itself nicely to be
surrounded by empty lines and thereby easy to spot...

Regards,
Bjorn

> > >> +                               };
> > >> +
> > >> +                               reset-n {
> > >> +                                       pins = "gpio2";
> > >> +                                       function = "gpio";
> > >> +
> > >> +                                       drive-strength = <16>;
> > >> +                                       output-low;
> > >> +                                       bias-disable;
> > >> +                               };
> > >> +
> > >> +                               wake-n {
> > >> +                                       pins = "gpio3";
> > >> +                                       function = "gpio";
> > >> +
> > >> +                                       drive-strength = <2>;
> > >> +                                       bias-pull-up;
> > >> +                               };
> > >
> > > These last two nodes with the pull-up and drive-strength settings
> > > should
> > > be in the board files, like the idp one, instead of here in the SoC
> > > file. That way board designers can take the SoC and connect the pcie to
> > > an external device using these pins and set the configuration they want
> > > on these pins, or choose not to connect them to the SoC at all and use
> > > those pins for something else.
> > >
> > > In addition, it looks like the reset could be a reset-gpios property
> > > instead of an output-low config.
> > >
> > we are using reset property as perst gpio in pcie node.
> 
> Ok, perst-gpios should be fine. Presumably perst-gpios should be in the
> board and not in the SoC because of what I wrote up above.
