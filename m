Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC5C475750
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 12:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234049AbhLOLEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 06:04:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232240AbhLOLEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 06:04:46 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A24EC06173F
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 03:04:46 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id b1so42325546lfs.13
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 03:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=antmicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1Mxq4v2aa07cn7vmDque1vmJSPRI9q1+xfotPBgOEKw=;
        b=YYVSOtge5Ubs9/QdtAuGxXrCKYFLrjlM3KjC61oHbi35tATBP533nULGmmFdbr/Gvy
         4tK5sdKWdmzTQZoFtgo2YBjm2MjEONJK0mYJt6hi3UgQ0iMg88k53RtPGndnLhtVi/2N
         Oge5CcFSb1F6WZhg3zr87NahWwQR586UpuYU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1Mxq4v2aa07cn7vmDque1vmJSPRI9q1+xfotPBgOEKw=;
        b=BajCahAJXvcYNX1W5B0dN9ORe45eg9u7Kp9zm2pqfowD6yuynBiAg+InObGJeoeiJ2
         IkCA8R8Ic7pDgw695LftFoFw4ThWiOkB4plD2PHhdgspOpVtsnZuFSFurkImX7jnRfZ6
         7bT7B+wqhY8wSdoWdZS5wL83MwLcUXVa5dScyvhSFJDQ+Spi8E9qPmpgHR6CY6A5Snwu
         WOs/HciYMX60nBOY7eEwpskDQCfRshXdriwgvm647tNZY/tLHA7yjQPPH0BXowJENGus
         TSMhgwQ4DFGKoPK4VTUx2Kh8vGbD4UzF2OPL5oJMT06M0R+uXNRI2oTAjoGF5aTbk0Xd
         0N+g==
X-Gm-Message-State: AOAM533k+Vh9Fc/q8ViGmxv1V650AqIWnc06l6r6YJ/oIeB8FW59biTi
        YOlpaROpDlWNiNYu723dptjn5gl3YyEA3enUS/FGew==
X-Google-Smtp-Source: ABdhPJxWhA1IhaY2P5SVuTF/Dv2jmTo+wwNa0EsIvD5ISkU2YTob2I9LJQKrHWvVMA8n4dFomFv8yOt53VdRikP8LXc=
X-Received: by 2002:a05:6512:3f2:: with SMTP id n18mr9409898lfq.646.1639566284404;
 Wed, 15 Dec 2021 03:04:44 -0800 (PST)
MIME-Version: 1.0
References: <20211210145430.3707463-1-gsomlo@gmail.com> <20211210145430.3707463-2-gsomlo@gmail.com>
In-Reply-To: <20211210145430.3707463-2-gsomlo@gmail.com>
From:   Mateusz Holenko <mholenko@antmicro.com>
Date:   Wed, 15 Dec 2021 12:04:07 +0100
Message-ID: <CAPk366RvYSdn8Y2Vy-qDh3wVsBqZgvJk+fZArze8u0s9oob5_A@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] MAINTAINERS: co-maintain LiteX platform
To:     Gabriel Somlo <gsomlo@gmail.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>, ulf.hansson@linaro.org,
        linux-mmc@vger.kernel.org, Karol Gugala <kgugala@antmicro.com>,
        Kamil Rakoczy <krakoczy@antmicro.com>,
        mdudek@internships.antmicro.com, paulus@ozlabs.org,
        Joel Stanley <joel@jms.id.au>,
        Stafford Horne <shorne@gmail.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        david.abdurachmanov@sifive.com,
        Florent Kermarrec <florent@enjoy-digital.fr>,
        Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 10, 2021 at 3:54 PM Gabriel Somlo <gsomlo@gmail.com> wrote:
>
> Add the litex_mmc (LiteSDCard) and LiteETH drivers to the list of files
> maintained under LiteX.
>
> Add Gabriel Somlo and Joel Stanley as maintainers; Joel authored
> the LiteETH driver, and Gabriel is currently curating the LiteX
> out-of-tree device drivers as they are tested and prepared for
> upstream submission, having also co-authored a number of them.
>
> Cc: Karol Gugala <kgugala@antmicro.com>
> Cc: Mateusz Holenko <mholenko@antmicro.com>
> Signed-off-by: Gabriel Somlo <gsomlo@gmail.com>
> Acked-by: Joel Stanley <joel@jms.id.au>

Acked-by: Mateusz Holenko <mholenko@antmicro.com>

> ---
>
> New in v4:
>   - n/a
>
> > New in v3:
> >   - picked up acked-by Joel
> >   - added listing for liteeth driver
> >   - added Joel as additional co-maintainer (thanks!)
>
>  MAINTAINERS | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8691c531e297..7f59779bb5eb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11011,12 +11011,17 @@ F:    lib/list-test.c
>  LITEX PLATFORM
>  M:     Karol Gugala <kgugala@antmicro.com>
>  M:     Mateusz Holenko <mholenko@antmicro.com>
> +M:     Gabriel Somlo <gsomlo@gmail.com>
> +M:     Joel Stanley <joel@jms.id.au>
>  S:     Maintained
>  F:     Documentation/devicetree/bindings/*/litex,*.yaml
>  F:     arch/openrisc/boot/dts/or1klitex.dts
> -F:     drivers/soc/litex/litex_soc_ctrl.c
> -F:     drivers/tty/serial/liteuart.c
>  F:     include/linux/litex.h
> +F:     drivers/tty/serial/liteuart.c
> +F:     drivers/soc/litex/*
> +F:     drivers/net/ethernet/litex/*
> +F:     drivers/mmc/host/litex_mmc.c
> +N:     litex
>
>  LIVE PATCHING
>  M:     Josh Poimboeuf <jpoimboe@redhat.com>
> --
> 2.31.1
>


-- 
Mateusz Holenko
Antmicro Ltd | www.antmicro.com
Roosevelta 22, 60-829 Poznan, Poland
