Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47BCD326589
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 17:28:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhBZQ2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 11:28:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbhBZQ2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 11:28:02 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF344C06174A
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:27:19 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id d13so6683444edp.4
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6BKeyIcRjzR84A9x0lbwBUm0rSexnKSuimviQvcPYuc=;
        b=ZNm9FG8njbw0YZco/bpGOrjR44E9M4EuVHzJWtnNljcMn+/7OAywDvaSfqRF+bFY8V
         u4RHzYU2KDaWUvFw5zG5IwplF0PP8NYmvTNt0YtH/JR1OSf7/jkdBN69W2gVcV9azTi9
         H1mOZu4ojoYmbnwXuBl9fLil8YuZXP+ALRuUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6BKeyIcRjzR84A9x0lbwBUm0rSexnKSuimviQvcPYuc=;
        b=TQRs8VMgem61p2bjjV+ytdHY7ULSXlYHUf3WP+Hu89zPlpfmjLXSKeNtsdAST1sHM4
         VngFko9cQSHRteFXeikpFsJI8015xUxMuujaPkDAlN6rQbXVD8WjOJQsoFD3IyF+WiE3
         vj6I0CQLZujh69xnCbYTaJkvWcgcWcJKna5zYn62/sHE/KSsjgeWY6rLvU/8Ns5KlVb5
         laC8dwYUCe+UvRycZRA3zfwA1ttpDoqbMoZ8+UAXxSZbdWUbAxS8TMuL2OA5HUciJdEt
         IXg+7IMInqfhPMwwTBdKbOCZ8VRqKwB5WFMnNW89ZBrgDN9vf3hiPbNB/0NoPVId6hFk
         hB5A==
X-Gm-Message-State: AOAM533PWW4tLnrHTiYIDQzqvzIbKFpcgMZ2cEYNr4CIpMNJ3OfNX5Lt
        3wmfza4+GyJ48nh/dooyySavZ0scPZ258pKwTgW2Ww==
X-Google-Smtp-Source: ABdhPJwGCKt7zsL/y6NObCIYi35f4/YHkGRmg7kLDOYW+erS32FwkDnZ/eKzy1gDTP1pjLSdLD6kXvv5BmZCemgFzak=
X-Received: by 2002:a50:d307:: with SMTP id g7mr4302596edh.204.1614356838561;
 Fri, 26 Feb 2021 08:27:18 -0800 (PST)
MIME-Version: 1.0
References: <20210226070304.8028-1-jagan@amarulasolutions.com>
 <20210226070304.8028-3-jagan@amarulasolutions.com> <611bce6f-7adb-f0b5-0c9b-d5d7bb8b90fb@foss.st.com>
In-Reply-To: <611bce6f-7adb-f0b5-0c9b-d5d7bb8b90fb@foss.st.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 26 Feb 2021 21:57:07 +0530
Message-ID: <CAMty3ZAKZ=ODtNMBu-XoFCmNRR8XCA42wTD1H8f_6wC+sn+wPg@mail.gmail.com>
Subject: Re: [PATCH v2 02/10] ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 SoM
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Francesco Utel <francesco.utel@engicam.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Mirko Ardinghi <mirko.ardinghi@engicam.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexandre,

On Fri, Feb 26, 2021 at 9:42 PM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi Jagan
>
> On 2/26/21 8:02 AM, Jagan Teki wrote:
> > MicroGEA STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.
> >
> > General features:
> > - STM32MP157AAC
> > - Up to 1GB DDR3L-800
> > - 512MB Nand flash
> > - I2S
> >
> > MicroGEA STM32MP1 needs to mount on top of Engicam MicroDev carrier
> > boards for creating complete platform solutions.
> >
> > Add support for it.
> >
> > Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
> > Signed-off-by: Francesco Utel <francesco.utel@engicam.com>
> > Signed-off-by: Mirko Ardinghi <mirko.ardinghi@engicam.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Minor question: if the stm32mp157 is soldered on Microdev boards why do
> you mention it in this commit message ?

It was there in the commit message:

> > General features:
> > - STM32MP157AAC
> > - Up to 1GB DDR3L-800
> > - 512MB Nand flash
> > - I2S

>
> + a minor comment bellow.
>
> thanks
> Alex
>
> > ---
> > Changes for v2:
> > - none
> >
> >   .../dts/stm32mp157a-microgea-stm32mp1.dtsi    | 147 ++++++++++++++++++
> >   1 file changed, 147 insertions(+)
> >   create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
> >
> > diff --git a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
> > new file mode 100644
> > index 000000000000..97d569107bfe
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
> > @@ -0,0 +1,147 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> > +/*
> > + * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
> > + * Copyright (c) 2020 Engicam srl
> > + * Copyright (c) 2020 Amarula Solutons(India)
> > + */
> > +
> > +/ {
> > +     compatible = "engicam,microgea-stm32mp1", "st,stm32mp157";
> > +
> > +     memory@c0000000 {
>
> you could add           device_type = "memory";

Okay.

Jagan.
