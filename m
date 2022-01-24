Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3523749828A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 15:41:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238397AbiAXOla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 09:41:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236779AbiAXOl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 09:41:29 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31BB9C06173D
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 06:41:29 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id x11so49990920lfa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 06:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aXy37d4XDPWa6rl+fssLb79KAEtEH3NcZpEw3dhV2sc=;
        b=CYmOyiueadc7oPZC42g8yUASMCna1tx/Dqc57iAKHKguEipAC9PhRU8OJQ1S3WEw8Y
         lIsIN4unXm5UhxLvOjPndzHa8qNlpO8gMtFerpapyTfDKGK0flQvnWvGitoa9jOH6353
         lU3ZqPCqW9F1lUZHuPre4Kc/1+9ZpCRLbh5XQJm+EsshvUy66MnYtYW/Lds0p+nk/kQ8
         p0W8UlrWN8SpS1TmD6krCVdgV69NfoYIwxKj1syEl+aXJv+6UBv/TbKJ1bA1eccHrNCW
         hIryF+530Qtam0LXybnDvJcnQ0sijoZESQ3zkc1CbXlfzHvFRy+Fu3Amq5UCbgiI7bkP
         Pd8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aXy37d4XDPWa6rl+fssLb79KAEtEH3NcZpEw3dhV2sc=;
        b=1YaMlBHOo3hQ2qhx9cWU5+hSxYF+0m414eqh5N6ep2efPUV8bUVAlhQUtZa0vZ6kbH
         bbzzmcei0EZsCVsXVJqG6eDjx+cEr7jwCRRcMXu6STD41idG/djER7iOFikRJ6pZqnuQ
         H4UaJc1PlWeeWogyMTsixQM8kqeE2JDpS4TfH4F9qlVufEQsVl/VOOqQvfz0xv+D0O80
         FQDlXwlCsWp7IBWW59mLlrqCy31IIz/ZFzWRSoy6mEaqJuZWTu9eNNBjIwx5P6+78Mde
         VT+/gn+qiP4wIDeNyRcNIpAe82yfqKSRfHMe+RAXK+kmxkUCWn7wRX7PieMLU2uxsvFZ
         MSdA==
X-Gm-Message-State: AOAM532QG2hOY+D7+Zw3hupoY78omg9+EhvFPWLsdhrmfq6LZzJLcIkL
        5wDxaioE1HUqD59ZnRjR0fYVl/lu1TKduYQrY1a6IQ==
X-Google-Smtp-Source: ABdhPJypBPpHOmQGPutmK8yhtxPplmuDP64mDi+gR8RQXoiGgBHLdK+MDDFSYIxODnIFjvAlvqNcTQ1h40QgvhekwtU=
X-Received: by 2002:a2e:a233:: with SMTP id i19mr6265411ljm.16.1643035287561;
 Mon, 24 Jan 2022 06:41:27 -0800 (PST)
MIME-Version: 1.0
References: <20220113170300.3555651-1-gsomlo@gmail.com>
In-Reply-To: <20220113170300.3555651-1-gsomlo@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 24 Jan 2022 15:40:51 +0100
Message-ID: <CAPDyKFrYiRYioSgS5Dy8YWKpp5xqFtgnez7g3598RB_oar+sbw@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] mmc: Add LiteSDCard mmc driver
To:     Gabriel Somlo <gsomlo@gmail.com>
Cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        kgugala@antmicro.com, mholenko@antmicro.com, krakoczy@antmicro.com,
        mdudek@internships.antmicro.com, paulus@ozlabs.org, joel@jms.id.au,
        shorne@gmail.com, geert@linux-m68k.org,
        david.abdurachmanov@sifive.com, florent@enjoy-digital.fr,
        rdunlap@infradead.org, andy.shevchenko@gmail.com, hdanton@sina.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 13 Jan 2022 at 18:03, Gabriel Somlo <gsomlo@gmail.com> wrote:
>
> Add support for the LiteX SD-Card device, LiteSDCard.
>
> LiteSDCard is a simple SD-Card interface available as part of the LiteX
> environment, used with various RISC-V and other FPGA based SoCs.
>
> New in v14:
> Documentation/devicetree/bindings/mmc/litex,mmc.yaml:
>   - add missing `vmmc-supply = ...` property to example section

This v14 series applied for next, thanks!

[...]

> Gabriel Somlo (3):
>   MAINTAINERS: co-maintain LiteX platform
>   dt-bindings: mmc: Add bindings for LiteSDCard
>   mmc: Add driver for LiteX's LiteSDCard interface
>
>  .../devicetree/bindings/mmc/litex,mmc.yaml    |  78 +++
>  MAINTAINERS                                   |   9 +-
>  drivers/mmc/host/Kconfig                      |  13 +
>  drivers/mmc/host/Makefile                     |   1 +
>  drivers/mmc/host/litex_mmc.c                  | 661 ++++++++++++++++++
>  5 files changed, 760 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/litex,mmc.yaml
>  create mode 100644 drivers/mmc/host/litex_mmc.c
>

Kind regards
Uffe
