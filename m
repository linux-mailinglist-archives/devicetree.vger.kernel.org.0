Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC0CD324383
	for <lists+devicetree@lfdr.de>; Wed, 24 Feb 2021 19:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232557AbhBXSGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Feb 2021 13:06:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231845AbhBXSGc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Feb 2021 13:06:32 -0500
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56C17C061786
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 10:05:52 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id 204so3010817qke.11
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 10:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IUVbPpVZ4+NgeP6WqeHK/Kh6aJQsEUlwdu/Vg1IkVWc=;
        b=BbuezdHJhX0VaqiVhs3QX24iZqeWNYYI9JPFBgxbVH7NCORNudB31SneVA7WkWMAR7
         aLqFN6jUzJfTUH3cpxX5XVNx+9Zfgyak6IILCCgbsx/owKKhL/HmpbeyUz/FuafT/D40
         xbUd6myC/Nl+LIlJGuSCogXQTTKbfo6B4c70Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IUVbPpVZ4+NgeP6WqeHK/Kh6aJQsEUlwdu/Vg1IkVWc=;
        b=jiAiUNoft/tKB35869W08eBAyXx52TM5rb1BqeogFFSt/A1ezqw5rNeAB5+dPRyYMu
         rBh/SfW9hJFix91AFU/XJr39rGBSi9w9B2R6Jd+dYRCryRS+Fg8k7cGS+fmhUZRXnN/g
         WsERF3G3rQIIlWWa2YV8/PU55hnHS3ODAOCpyv6SbRqsUQ6gz8ys/+sflcpOYqqXNcH1
         sI+aXoQ0uCNGH3ZAd8rCPhrhBM850xeKOgQaz98EvGoEXfGIhffw9OXHw92EQ+PJrdvO
         RxCLFDAT0sUgUrKGfFv6wzQneGBPz5own3UMPOe7qCfUz/BbCgkLd16V8e4+qE3b6jJs
         2dIQ==
X-Gm-Message-State: AOAM5308/gVMKB/kUofQD89cvnkWzHb77dru95JY8CDfp/lqVNuL+QRP
        diciOLTI4t4Gs/CsNZhIsF+j9iz0Q4B24op3MZq0QQ==
X-Google-Smtp-Source: ABdhPJzxG+t4ePEvNgAjEffIj7RO+NTXPSKnP7rszVjKHwIoimFIoB8HXaiwIpUXbvSbxz8DA+m6YZaoxm9PDlX+dHs=
X-Received: by 2002:a37:9444:: with SMTP id w65mr12635158qkd.88.1614189951332;
 Wed, 24 Feb 2021 10:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20201223191402.378560-1-jagan@amarulasolutions.com>
 <20201223191402.378560-3-jagan@amarulasolutions.com> <21398844-c334-f753-0fac-144a0cdc29dc@foss.st.com>
In-Reply-To: <21398844-c334-f753-0fac-144a0cdc29dc@foss.st.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 24 Feb 2021 23:35:39 +0530
Message-ID: <CAMty3ZBotTi2RwkKUpb+8KBOJ484hHzOV0p4J_dJ-fBVSDoMAg@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 SoM
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Francesco Utel <francesco.utel@engicam.com>,
        Mirko Ardinghi <mirko.ardinghi@engicam.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 8:35 PM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi,
>
> On 12/23/20 8:13 PM, Jagan Teki wrote:
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
> > ---
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
>
> If STM32MP157AAC is soldered onto this board, you should include SoC
> dtsi here and no into MicroDev 2.0 board. No ?

No, it's an SoM dtsi. and it can be associated with the respective
carrier board and include files are attached in its dts.

Please check the next patches on this series.

Jagan.
