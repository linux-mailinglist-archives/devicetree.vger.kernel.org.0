Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E962D36D236
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 08:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230490AbhD1GcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 02:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbhD1GcN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 02:32:13 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767D3C06175F
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 23:31:29 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id p202so28802331ybg.8
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 23:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DNbceJ2JPy17A3jIMWMtBBJqu9jLShZ5Gqf22qewDXA=;
        b=EJaXHE9qosy2Xm2b5VHtfxSMpk+/LnJ/RyBCswUXYSuznYT7DlLpZHP8CLD9DK1fgE
         hftdE4h7KSJXW9GnX+/mNv6ugDWpBewdXS+9g54vl7GQUa1xJbvCOIVsTLlyTrpNF1tk
         82ItMhUJbzZPIj4jovBPpO3d959ZMF8Tv7594=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DNbceJ2JPy17A3jIMWMtBBJqu9jLShZ5Gqf22qewDXA=;
        b=mTGUrfSQNxK8H+HUNoPIteEzjfrKExAZTnknxX9lIG1lG2U/POWYecjppC4MLfHDxd
         sUyOlHjmdH9JugZZbA/nz3Ovtd1kwmjTqA/313RqS91AFEau+tTH5BF6uwBZ/lu4luxw
         meLsimqBu9aS3iH23Q6IV8uB+LPwdNXEF4/IoOxTOErUtpAPSQ5f1I2mDbtocyMQx3Ab
         cz6ttPr+ARZb7w1eVPWCDun4Stu0Vm4AeI5LrpZGVxLsF+ldCj0OINQIxq9jIe+Q4ab2
         lic+bf+4T3jJIvNuKCfiasYX21dWv6MqI8sV0/4Y8QsFoED0wzfuQKryLQhXnw1J2YTf
         eb1g==
X-Gm-Message-State: AOAM533oscm8giswuJS2Dhl5uxHUFR9nOfXYXQyFXlkzbEgU1jTx1mqi
        mxUzGPvOPHyUGfOaWcxjsHMI/ZauIVZisBP0XAGC
X-Google-Smtp-Source: ABdhPJzokc03Du5N/maoI43vXKBCcwRm5pu0iU1IIRyTDnZz7nX/Uxdplb7O6nlg16pgeJh2NRMVxiwUJgoXKOw1Vkk=
X-Received: by 2002:a05:6902:728:: with SMTP id l8mr15508196ybt.326.1619591488539;
 Tue, 27 Apr 2021 23:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKXUXMz51GMRM6s7YqGYgfZwRhW=y0aCALM-C3APU0=GjZ+X_g@mail.gmail.com>
In-Reply-To: <CAKXUXMz51GMRM6s7YqGYgfZwRhW=y0aCALM-C3APU0=GjZ+X_g@mail.gmail.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 27 Apr 2021 23:31:17 -0700
Message-ID: <CAOnJCUKrqOXGY7ePLEqxtAk39_fbhxt0wVhEtrv5m6X2wwuUpw@mail.gmail.com>
Subject: Re: MAINTAINERS section RISC-V/MICROCHIP POLARFIRE SOC SUPPORT with
 invalid file references
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     Atish Patra <atish.patra@wdc.com>, Conor.Dooley@microchip.com,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 27, 2021 at 9:15 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Dear Patish, dear Conor, dear Palmer,
>
> Commit df29598aaf5c ("MAINTAINERS: add microchip polarfire soc
> support") adds the new section RISC-V/MICROCHIP POLARFIRE SOC SUPPORT,
> but that section solely refers to files that do not exist in the
> repository.
>
> Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:
>
>   warning: no file matches    F:    drivers/soc/microchip/
>   warning: no file matches    F:    include/soc/microchip/mpfs.h
>
> The patch series, [PATCH v4 0/5] Add Microchip PolarFire Soc Support,
> never adds those files, though. Are they coming through a different
> patch series into Linus' tree or do you intend to refer to other files
> instead?
>

The actual files are added as a part of the following series.
https://patchwork.kernel.org/project/linux-riscv/list/?series=467187

As the "Add Microchip PolarFire Soc Support" series added the basic SoC support,
we thought it is better to update the maintainers file in this series
to provide the information about
the maintainers for the PolarFire Soc.

Should we just remove the Files section or update the maintainers in
the SoC system controller series ?

>
> Lukas
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
