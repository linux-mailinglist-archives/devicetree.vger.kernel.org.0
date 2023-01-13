Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2A4D6696F9
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 13:29:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233650AbjAMM3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 07:29:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241590AbjAMM2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 07:28:54 -0500
Received: from egress-ip4a.ess.de.barracuda.com (egress-ip4a.ess.de.barracuda.com [18.184.203.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC6873E3E
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:26:59 -0800 (PST)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200]) by mx-outbound12-28.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 13 Jan 2023 12:26:56 +0000
Received: by mail-lj1-f200.google.com with SMTP id bd2-20020a05651c168200b00285d9411c77so3978605ljb.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDFsrgP+UTMw5z9pb449CNH7n7E9Y9IltvGCSddi/5w=;
        b=EO8NxMX88fPbExgxNk6XuqUKwkuFa0Is3uIrvbBK4TxldK6GS1BrF6qmi4QSaOSt35
         Txh5Y6k5QpjRJJdX6CoA3OhdhtsPiab+lNQ3vTkIYpjZKfPpu+HQvKx3uqy/v8RsnKge
         7WZRyv+cUrBJAbl19B0XTfmVjHq4FbdHvfv6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDFsrgP+UTMw5z9pb449CNH7n7E9Y9IltvGCSddi/5w=;
        b=LezvEBq5kreCEYW9eJhBh1E/pZOOF9dlggkdn+0LaDuu9q9xvLWm8ddnFgEJGM3DbP
         r+nEGFMvUDXoQT9F2kplTovXRWjr+zFjjbnVuyaswooCORI8du6yDrSVTVqMtxIwSM2L
         HYK7qXRHwByThBL8MeXLgDbQajqRj3JKCRmOY+liPhZ4rFZvpZweq2aeldKe+Pvb/XqW
         BkCi419cj6/jw/9BbIItpdHq3ARqop8Wg8hrgO9bx1oHdyzj3NqbekM/fwjKfrDLzx5R
         51K6O5Vyea/GM1Kf5IijrB9E30KB3zALSeMnOMaa9YUMxpYBuajNcOGyL/hg842U3Zke
         xMww==
X-Gm-Message-State: AFqh2kqhivJ20YvteHdEwxu3tmsrTrnbjOENaEsnXQerqN545zNxQRHS
        4h5AiOYSknfjq/wSTiw5MzN/mkyQPe2ObnKgbz5Wx34XB4N12pVhAImqOs3QYeol+hKjefUvR2N
        oKBaN96BoJxROlPzoiu96GRmchmbg/hJa74bJt6UYW2UGEllwLp9w1I1mSh99pbYGcvvEj6MHFQ
        ==
X-Received: by 2002:ac2:4e09:0:b0:4b7:2a7:1242 with SMTP id e9-20020ac24e09000000b004b702a71242mr3684404lfr.44.1673612816407;
        Fri, 13 Jan 2023 04:26:56 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtlhhvz/AEGbD+d5MQLbG9BJLg5Esd0lxrUsJGS0B/TWsuMp7nNxthAKToaDTWJaGkXXprtGb8nhKLAx0f2MxU=
X-Received: by 2002:ac2:4e09:0:b0:4b7:2a7:1242 with SMTP id
 e9-20020ac24e09000000b004b702a71242mr3684399lfr.44.1673612816118; Fri, 13 Jan
 2023 04:26:56 -0800 (PST)
MIME-Version: 1.0
References: <20230110110052.14851-1-sinthu.raja@ti.com> <20230110110052.14851-3-sinthu.raja@ti.com>
 <d109dbf8-ba51-7322-34e7-f688c5a18908@ti.com>
In-Reply-To: <d109dbf8-ba51-7322-34e7-f688c5a18908@ti.com>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Fri, 13 Jan 2023 17:56:44 +0530
Message-ID: <CAEd-yTQ9eEz_Q6ncNP3vc9oerqiXfhrGK7DvsAnm21OZzYUe2w@mail.gmail.com>
Subject: Re: [RESEND PATCH V3 2/3] arm64: dts: ti: Add initial support for
 AM68 SK System on Module
To:     Vaishnav Achath <vaishnav.a@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BESS-ID: 1673612816-303100-5445-10898-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.208.200
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245438 [from 
        cloudscan14-215.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, BSF_SC0_SA085b
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 13, 2023 at 5:24 PM Vaishnav Achath <vaishnav.a@ti.com> wrote:
>
> Hi Sinthu,
>
> On 10/01/23 16:30, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > AM68 Starter Kit (SK) is a low cost, small form factor board designed
> > for TI=E2=80=99s AM68 SoC. TI=E2=80=99s AM68 SoC comprises of dual core=
 A72, high
> > performance vision accelerators, hardware accelerators, latest C71x
> > DSP, high bandwidth real-time IPs for capture and display. The SoC is
> > power optimized to provide best in class performance for industrial
> > applications.
> >
> >     AM68 SK supports the following interfaces:
> >       * 16 GB LPDDR4 RAM
> >       * x1 Gigabit Ethernet interface
> >       * x1 USB 3.1 Type-C port
> >       * x2 USB 3.1 Type-A ports
> >       * x1 PCIe M.2 M Key
> >       * 512 Mbit OSPI flash
> >       * x2 CSI2 Camera interface (RPi and TI Camera connector)
> >       * 40-pin Raspberry Pi GPIO header
> >
> > SK's System on Module (SoM) contains the SoC and DDR.
> > Therefore, add DT node for the SOC and DDR on the SoM.
> >
> > Schematics: https://www.ti.com/lit/zip/SPRR463
> > TRM: http://www.ti.com/lit/pdf/spruj28
> >
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >
> > Changes in V3:
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Addressed review comments
> >  - Removed the unused nodes that are disabled by default.
> > OSPI support will be added once the OSPI node is enabled for J721s2/AM6=
8 in main DTSI.
> >
> > Changes in V2:
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Address review comments
> >  - drop the empty lines.
> >
> > V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-3-sin=
thu.raja@ti.com/
> > V2: https://lore.kernel.org/lkml/20221107123852.8063-3-sinthu.raja@ti.c=
om/
> >
> >  arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 31 ++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/bo=
ot/dts/ti/k3-am68-sk-som.dtsi
> > new file mode 100644
> > index 000000000000..c35f81edee8c
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
> > @@ -0,0 +1,31 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.=
com/
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "k3-j721s2.dtsi"
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +     memory@80000000 {
> > +             device_type =3D "memory";
> > +             /* 16 GB RAM */
> > +             reg =3D <0x00 0x80000000 0x00 0x80000000>,
> > +                   <0x08 0x80000000 0x03 0x80000000>;
> > +     };
> > +
> > +     /* Reserving memory regions still pending */
>
> Is this comment needed?
>
> > +     reserved_memory: reserved-memory {
> > +             #address-cells =3D <2>;
> > +             #size-cells =3D <2>;
> > +             ranges;
> > +
> > +             secure_ddr: optee@9e800000 {
> > +                     reg =3D <0x00 0x9e800000 0x00 0x01800000>;
> > +                     alignment =3D <0x1000>;
>
> Is alignment needed here?
This is used to mention the address boundary. Removing this will
affect memory allocation. Isn't so?
>
>
> Please see https://lore.kernel.org/lkml/cd5dbbb0-2d9f-8d7d-b051-f8d01d710=
c62@ti.com/
>
> > +                     no-map;
> > +             };
> > +     };
> > +};
>
> --
> Regards,
> Vaishnav



--=20
With Regards
Sinthu Raja
