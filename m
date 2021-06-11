Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5093A4ADF
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 00:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhFKWLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 18:11:08 -0400
Received: from mail-vs1-f51.google.com ([209.85.217.51]:34557 "EHLO
        mail-vs1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbhFKWLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 18:11:08 -0400
Received: by mail-vs1-f51.google.com with SMTP id q2so4613349vsr.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 15:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uHu7ib6zrMGFlFkxj8zcg5J2SMfP4k+dwvTbqRmsLOM=;
        b=Z2pE5csMALEIsCPPdOCmgY4A9S0wwyfX6N4llSNu/pYRrcENtXD1MOu/OpFuth+ymf
         Lj/ZSWSzrBR95OwDXHh7mRN2eurzEn6YOfO5pvL/Bd2BwWoyrcaHyePkvTHEYBVrgZ6o
         qNqEoMYSriFqNa74YuUm43eAR6U79uHBbeWGL8BCGLt0Jqo2tf3vrBiBdtGfchAw+s4Q
         Zs0VjmxBLpYSl4U85vQpXAg3fCf9mBLabWXJGe35IJTNWbscQjmUatPw4fx7f4dQ0OGC
         nXGgYgFNjri3WxUYN8dMsYILHYT55R/d2d1VP1HC0phkyf7nYJP55zYrqaTFy3r7Yjbq
         X61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uHu7ib6zrMGFlFkxj8zcg5J2SMfP4k+dwvTbqRmsLOM=;
        b=D787ywiQSTZRJ0jcHYpy/4/BjvBxfNXWNHw4X2Lz2EObA9bwJ1KRcfwVloORsHpPiY
         RxJIfR25bHd+jagHUOyUvXuhkjdX1q+7J0kc1HJox9zV4jWrzIVm4+D0446OhltD6+F5
         NE9SAsunEpaJk0HNO+uBbi/bms7ABv4/TIUbi4PbajbYXR8OREDInV3m0gG09W+oIhim
         kIzCTSa2sW/XC11FSPfQwPta+9BxUNiDdvM2mSrtcSLwbBTvMKO06RPCLyEmHZj9hoy2
         d/yUK+29P+UaJXF/tQFJJ/2REuUC9fXV+0PpeDvXcnRNrkwiV60xXwOrRsl8UefsOW+5
         1r4Q==
X-Gm-Message-State: AOAM53124U+nl7mc7ZKkkPkWQExqY9U8StXA/MZhDPWJHh2R+2m5YXCE
        0roTceagEl17cgcKsYSHacNXuTN0VtOpGh+e48K0
X-Google-Smtp-Source: ABdhPJznQwn3oc/MSdfO9bAQySACOvt9mz8PK2+pFc/kOxPhhE67vQGj0c3D/bB3aMjT6jRX4fYg6nnPuMqaDMqSTF8=
X-Received: by 2002:a67:e359:: with SMTP id s25mr11751026vsm.55.1623449273388;
 Fri, 11 Jun 2021 15:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210602000918.779983-1-iwamatsu@nigauri.org> <20210610172141.GA1972573@robh.at.kernel.org>
In-Reply-To: <20210610172141.GA1972573@robh.at.kernel.org>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Sat, 12 Jun 2021 07:07:27 +0900
Message-ID: <CABMQnV+RDqZAwAZ2Zd=KSUXcwzSZbjigWYTLd96xtHLKAih3RA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: rtc: zynqmp: convert bindings to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thanks for your review.

2021=E5=B9=B46=E6=9C=8811=E6=97=A5(=E9=87=91) 2:21 Rob Herring <robh@kernel=
.org>:
>
> On Wed, Jun 02, 2021 at 09:09:18AM +0900, Nobuhiro Iwamatsu wrote:
> > Convert Real Time Clock for Xilinx Zynq MPSoC SoC bindings documentatio=
n
> > to YAML schemas.
> > And this renamed the file to compatible string of DT.
> >
> > Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > ---
> >
> > v2: Fix warning with DT_CHECKER_FLAGS=3D-m
> >
> >  .../bindings/rtc/xlnx,zynqmp-rtc.yaml         | 61 +++++++++++++++++++
> >  .../devicetree/bindings/rtc/xlnx-rtc.txt      | 25 --------
> >  2 files changed, 61 insertions(+), 25 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/rtc/xlnx,zynqmp-r=
tc.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/rtc/xlnx-rtc.txt
> >
> > diff --git a/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml=
 b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
> > new file mode 100644
> > index 00000000000000..c205cb86ef00be
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/rtc/xlnx,zynqmp-rtc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Xilinx Zynq Ultrascale+ MPSoC Real Time Clock
> > +
> > +description: |
>
> Don't need '|'

OK, I will drop.

>
> > +  RTC controller for the Xilinx Zynq MPSoC Real Time Clock.
> > +  This separates IRQ lines for seconds and alarm.
>
> The RTC controller has separate IRQ...

I will update description, thanks.

>
> > +
> > +maintainers:
> > +  - Michal Simek <michal.simek@xilinx.com>
> > +
> > +allOf:
> > +  - $ref: rtc.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: xlnx,zynqmp-rtc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    minItems: 2
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: alarm
> > +      - const: sec
> > +
> > +  calibration:
> > +    description: |
> > +      calibration value for 1 sec period which will
> > +      be programmed directly to calibration register.
>
> Needs a type $ref.

OK, I will add $ref.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    soc {
> > +      #address-cells =3D <2>;
> > +      #size-cells =3D <2>;
> > +
> > +      rtc: rtc@ffa60000 {
> > +        compatible =3D "xlnx,zynqmp-rtc";
> > +        reg =3D <0x0 0xffa60000 0x0 0x100>;
> > +        interrupt-parent =3D <&gic>;
> > +        interrupts =3D <0 26 4>, <0 27 4>;
> > +        interrupt-names =3D "alarm", "sec";
> > +        calibration =3D <0x198233>;
> > +      };
> > +    };

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org}
   GPG ID: 40AD1FA6
