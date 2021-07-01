Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5623B97C6
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 22:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234117AbhGAUrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 16:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbhGAUrJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jul 2021 16:47:09 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ADC0C061762
        for <devicetree@vger.kernel.org>; Thu,  1 Jul 2021 13:44:39 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id w22so3369009pff.5
        for <devicetree@vger.kernel.org>; Thu, 01 Jul 2021 13:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kfTKujTp56n4/Ij0+Evkew8skmHtJZqhI4Y/035k1CI=;
        b=LhLN7bklFSTZy+QjE51qyuBP+kV9vN64LqJEhTxZD6qNB1yqXBPqcaxvquQdzDgeWI
         ONaRo+D0Xj52fjlFeOfVVqWEUGo8HD7QCEvT53F8lGl9JBaR5B9ZHtHig5sz7PWMgQiZ
         OVLwFNNVmKZlYp/XbGD3WUkY+4Z7/vheaYmm4k4abRm64Mrzm/ee3hIw7uqld2MWTOM6
         ELM+GccFq9AH4TakaVQJvmWH2k+2THnTTiwiQnlrYfRed5xTyOJkZkEz7OPHEgmHKZl2
         fzmYirK5VSrNRWT1moR4ABlm8kAghMB7KSVqkONJ/lbsFcn6/iL2xnHRTC2pQy7Qu+A+
         eEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kfTKujTp56n4/Ij0+Evkew8skmHtJZqhI4Y/035k1CI=;
        b=fsiIw7+CukBiuVNOD7ItbCIi2TYQ+l6EJEXdVXszdq70Hg2ip7LBy45+3qq3nHIKY2
         KWVZWJMFY5/vCpHjzl92o5qkybRIBFsc+tXMFFr4ZK/HMH8lpt6Jj9TrvUQDeN/PqHGB
         Ygv9op4WzByOhuSkWmFspS5Plsm44Ewesjt9iFPAkkitG9SkZNb/E2ciUiscIj1G5MYW
         9Bma2upSPj8Ejo9q1TwgKsNxLKcZPpHOwBW5ZjNddbhF4n9Lo8tpTj6ze3LKZJgbOyKl
         GsgpUmqrfb6Uj8zSmlPDwCFtlI4RvbrZDYILMloHU+seHBHkqSNEr7oHzG8fQKJrNhTp
         /2qw==
X-Gm-Message-State: AOAM533KvyypHDjweWr7tPui8CEMFXx0BqZCv4ht/IDshpeg2vNCsr8i
        EJAFQzjdgfiCIGCCRLhro2+XOQ==
X-Google-Smtp-Source: ABdhPJxViOjAsWPoBf7lCbbGsP5Sl8JUz8Hl3rPEtVUcS2ghAIowpdgetZai2p0bOYzScptCkCAn8A==
X-Received: by 2002:a63:eb4f:: with SMTP id b15mr1431027pgk.2.1625172278698;
        Thu, 01 Jul 2021 13:44:38 -0700 (PDT)
Received: from x1 ([2601:1c0:4701:ae70:8fd:ccc0:a9a:cf98])
        by smtp.gmail.com with ESMTPSA id s20sm11799054pjn.23.2021.07.01.13.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 13:44:37 -0700 (PDT)
Date:   Thu, 1 Jul 2021 13:44:35 -0700
From:   Drew Fustini <drew@beagleboard.org>
To:     Bin Meng <bmeng.cn@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Fu Wei <tekkamanninja@gmail.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Huan Feng <huan.feng@starfivetech.com>
Subject: Re: [RFC PATH 2/2] gpio: starfive-jh7100: Add StarFive JH7100 GPIO
 driver
Message-ID: <20210701204435.GB963857@x1>
References: <20210701002037.912625-1-drew@beagleboard.org>
 <20210701002037.912625-3-drew@beagleboard.org>
 <CAEUhbmXuxSePo22y_keGsqPWyCSAoUdTQPqCRJmYXS7rT4DhZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEUhbmXuxSePo22y_keGsqPWyCSAoUdTQPqCRJmYXS7rT4DhZA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 01, 2021 at 10:25:12AM +0800, Bin Meng wrote:
> On Thu, Jul 1, 2021 at 8:23 AM Drew Fustini <drew@beagleboard.org> wrote:
> >
> > Add GPIO driver for the StarFive JH7100 SoC [1] used on the
> > BeagleV Starlight JH7100 board [2].
> >
> > [1] https://github.com/starfive-tech/beaglev_doc/
> > [2] https://github.com/beagleboard/beaglev-starlight
> >
> > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > Signed-off-by: Huan Feng <huan.feng@starfivetech.com>
> > Signed-off-by: Drew Fustini <drew@beagleboard.org>
> > ---
> >  MAINTAINERS                         |   8 +
> >  drivers/gpio/Kconfig                |   8 +
> >  drivers/gpio/Makefile               |   1 +
> >  drivers/gpio/gpio-starfive-jh7100.c | 425 ++++++++++++++++++++++++++++
> >  4 files changed, 442 insertions(+)
> >  create mode 100644 drivers/gpio/gpio-starfive-jh7100.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index bc0ceef87b73..04fccc2ceffa 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -17423,6 +17423,14 @@ S:     Supported
> >  T:     git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> >  F:     drivers/staging/
> >
> > +SIFVE JH7100 SOC GPIO DRIVER
> 
> typo of SIFIVE, but it should be STARFIVE

Thank you!  My eyes should have caught that.

-Drew
