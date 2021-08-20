Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8123F2702
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 08:45:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238551AbhHTGpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 02:45:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235251AbhHTGpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 02:45:11 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F192C06175F
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:44:34 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id o20so11897983oiw.12
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=f61uoSIm/tKTfSvriwergj8TTbSumrt6o+1ACHw5Z8o=;
        b=JAZbuypKzGBgAJ+s2a7SVVACgDfiYPGJPeWiGaW2Z9Y8UtzbDBXPA4CnlTRJaskouX
         dBY0xaVGfxtWwSvWsKF7kRnan2oWGa3JHlO9DywARJqkEMnm9xVkrWxRHOb/toRlT8il
         06JeUuzQPun/WhGSL0A18glSri1g8TVtUQusY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=f61uoSIm/tKTfSvriwergj8TTbSumrt6o+1ACHw5Z8o=;
        b=WZho0SJDAh4Ba4+2A2nfu2h6zHRftCaFrOa472TPuFueReTPIO93e6fggKSt5A6VPJ
         EjT31pL1tsOrzwMhuGQxYsKj9TZv8xx9Q1DPKtE9uKIGIMn4/us/ACVDlUq6qHG0xDD0
         ohakhr5y8Ua1jbMnNqVv+OGplBydrU+lGeuMxGX2bOqKWPTp4exutDd+BEADbSMDHu79
         cFHH2I/OZl96oZdVPVDzzmRTO1xc584KD3xNidu6SGTPBW0ahiX9JL1Sk871gIkb2plu
         Jf5jZx25Hm2fOSvReQxMqrtZ72czQaOOdyncGqW/xZ3zOd1N3xxlLE4WlZVw3hlNSVHT
         ALvQ==
X-Gm-Message-State: AOAM530jA1QCDhhuwmnSPJmB/h36SGhWwqgvU51NFBOWb73gdAhiWAQ2
        3V60pg+R3OJowHGfJNFt3t4bXRNjkSoflIQweYdDl7Ot4UQ=
X-Google-Smtp-Source: ABdhPJwl1Sl50w9I94R6TeJfhICfeuXMKa1clo3MNi5WUzWhOgL0bqnI7l6wd9okLAKUi5kPPqMJKK2+hP9OhD2+p7k=
X-Received: by 2002:a05:6808:181a:: with SMTP id bh26mr1975912oib.166.1629441873561;
 Thu, 19 Aug 2021 23:44:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 19 Aug 2021 23:44:32 -0700
MIME-Version: 1.0
In-Reply-To: <ea2380bd-734d-a835-05f0-db9d3dbcfe38@codeaurora.org>
References: <1625576413-12324-1-git-send-email-sanm@codeaurora.org>
 <1625576413-12324-3-git-send-email-sanm@codeaurora.org> <CAE-0n52d7UOWQ+hohoyV81+aB1RnNPUEnjPCtr5=nH+a=WK35Q@mail.gmail.com>
 <ea2380bd-734d-a835-05f0-db9d3dbcfe38@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 19 Aug 2021 23:44:32 -0700
Message-ID: <CAE-0n53gsF-U4YwZyVyjXm2_Fw6zc-FObzx1ATC4X_KXSRsJVA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: sc7280: Add USB related nodes
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Felipe Balbi <balbi@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pratham Pratap <prathampratap@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sandeep Maheswaram (2021-08-19 22:34:14)
> On 8/18/2021 1:28 AM, Stephen Boyd wrote:
> > Quoting Sandeep Maheswaram (2021-07-06 06:00:12)
> >> Add nodes for DWC3 USB controller, QMP and HS USB PHYs in sc7280 SOC.
> >>
> >> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> >> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> >> ---
> >> Changed qmp usb phy to usb dp phy combo node as per Stephen's comments=
.
> >> Changed dwc to usb and added SC7280 compatible as per Bjorn's comments=
.
> >>
> >>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 164 +++++++++++++++++++++++++=
++++++++++
> >>   1 file changed, 164 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dt=
s/qcom/sc7280.dtsi
> >> index a8c274a..cd6908f 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> @@ -1035,6 +1035,125 @@
> >>                          };
> >>                  };
> >>
> > [...]
> >> +
> >> +               usb_2: usb@8cf8800 {
> >> +                       compatible =3D "qcom,sc7280-dwc3", "qcom,dwc3"=
;
> >> +                       reg =3D <0 0x08cf8800 0 0x400>;
> >> +                       status =3D "disabled";
> >> +                       #address-cells =3D <2>;
> >> +                       #size-cells =3D <2>;
> >> +                       ranges;
> >> +                       dma-ranges;
> >> +
> >> +                       clocks =3D <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>=
,
> >> +                                <&gcc GCC_USB30_SEC_MASTER_CLK>,
> >> +                                <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>,
> >> +                                <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
> >> +                                <&gcc GCC_USB30_SEC_SLEEP_CLK>;
> >> +                       clock-names =3D "cfg_noc", "core", "iface","mo=
ck_utmi",
> >> +                                     "sleep";
> >> +
> >> +                       assigned-clocks =3D <&gcc GCC_USB30_SEC_MOCK_U=
TMI_CLK>,
> >> +                                         <&gcc GCC_USB30_SEC_MASTER_C=
LK>;
> >> +                       assigned-clock-rates =3D <19200000>, <20000000=
0>;
> >> +
> >> +                       interrupts-extended =3D <&intc GIC_SPI 240 IRQ=
_TYPE_LEVEL_HIGH>,
> >> +                                    <&pdc 13 IRQ_TYPE_EDGE_RISING>,
> >> +                                    <&pdc 12 IRQ_TYPE_EDGE_RISING>;
> > I'm seeing this cause a warning at boot
> >
> > [    4.724756] irq: type mismatch, failed to map hwirq-12 for
> > interrupt-controller@b220000!
> > [    4.733401] irq: type mismatch, failed to map hwirq-13 for
> > interrupt-controller@b220000!
> I should be using=C2=A0 IRQ_TYPE_LEVEL_HIGH. Will correct in next version=
.

Ok. Please send a patch to fix it as this is already staged to be merged
in the next merge window.
