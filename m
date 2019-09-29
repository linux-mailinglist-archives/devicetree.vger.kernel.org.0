Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0182DC18F1
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2019 20:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729141AbfI2SW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Sep 2019 14:22:26 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:33178 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729096AbfI2SWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Sep 2019 14:22:25 -0400
Received: by mail-lf1-f65.google.com with SMTP id y127so5362950lfc.0
        for <devicetree@vger.kernel.org>; Sun, 29 Sep 2019 11:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I2oOR5tvCS97CthrHouvMSqg5pOQDzVvDjebg3lF4eM=;
        b=tIYVkbVQOZCJMPpJ0sLuPNRCxg4cehWVsLNJuRCbXOw0B5uzh6+q5cRrJHRzVTX1oY
         a1+/RSOmlVhyZ4vsLMGp55DUYlMuzii6M9Zn6glgxrVC5aoytx8VI1mbu9iI7jFf11bE
         CK1dsllj2ogxETE2uYTWK4dw1aSgEizTjKhYH7uBpiG4dz+QdYVheodqMk7F7yTmldqn
         xytIQQ2JfklxD1ZOmaGA9c0gA0LgqHwXimUHrFHQGpsuISXKkMhjpMwcAK5u/9N8EBJT
         q+aqVpwRztj35nMZzukQLm1TVeezBR3kkc6cqsKlmxdIC/pjspeizZBffSrAa2qWE/Ok
         cwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I2oOR5tvCS97CthrHouvMSqg5pOQDzVvDjebg3lF4eM=;
        b=fqU5HEpgKNSAgw8sXJ8dif7GTQz3mH10gmpqoCl1VTcCWHuOcEm41oz7DRqN5wtSWQ
         MNLT10IYYT3TaPDIrQE88OXDGEQQMEpR4Vi47y/GUYhx/clgfx39G4kppOgIIDkrpH9v
         jhegKJXASy1O5CNn/98mPA+Dba+Lv51NtU+SQIfNjwuP3NmxKtm4ze1wSMM4hk4KZf4l
         G1BNCfQdnq2mIdtw64gMMns9wVDF/yUEEfOA1rnyMh0EzhLP8A4dUTxcjyit2tzSworN
         ekohxfcbDBT5Fa6U/aVuDCZuLHK6WN8kOMunLvrCTPxErcn5axXDe9LUhzX1Va2t6hwv
         mseg==
X-Gm-Message-State: APjAAAUmsUXt5B9/lrsyF1jKVOFJcwCbYqDCv1YUBYbrTgJpZo4XeVza
        meXC6Rarc6nFsmgHx6B/mZeUlg==
X-Google-Smtp-Source: APXvYqyNAiN5/diZRd39+iCMS5W2kHJDnF2GMM0abR1vMgUrxxMRPqXHBdEW+qUBiJnvzJdG1SpQXw==
X-Received: by 2002:a19:8a0b:: with SMTP id m11mr9035909lfd.4.1569781343744;
        Sun, 29 Sep 2019 11:22:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
        by smtp.gmail.com with ESMTPSA id p3sm2520051ljn.78.2019.09.29.11.22.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Sep 2019 11:22:22 -0700 (PDT)
Date:   Sun, 29 Sep 2019 10:51:34 -0700
From:   Olof Johansson <olof@lixom.net>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Arnd Bergmann <arnd@arndb.de>, arm-soc <arm@kernel.org>,
        SoC Team <soc@kernel.org>, Kukjin Kim <kgene@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES" 
        <linux-samsung-soc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
Message-ID: <20190929175134.fsieffurfdiqhpj2@localhost>
References: <20190911183632.4317-1-krzk@kernel.org>
 <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
 <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 12, 2019 at 08:32:47AM +0200, Krzysztof Kozlowski wrote:
> On Wed, 11 Sep 2019 at 23:07, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > Unfortunately the patches were applied right after closing the linux-next.
> >
> > Hi Krzysztof,
> >
> > I took a look at these and am not convinced this is right:
> >
> > > 1. Fix boot of Exynos7 due to wrong address/size of memory node,
> >
> > The current state is clearly broken and a fix is needed, but
> > I'm not sure this is the right fix. Why do you have 32-bit physical
> > addressing on a 64-bit chip? I looked at commit ef72171b3621
> > that introduced it, and it seems it would be better to just
> > revert back to 64-bit addresses.
> 
> We discussed with Marek Szyprowski that either we can go back to
> 64-bit addressing or stick to 32. There are not known boards with more
> than 4 GB of RAM so from this point of view the choice was irrelevant.
> At the end of discussion I mentioned to stick with other arm64 boards
> (although not all), so revert to have 64 bit address... but Marek
> chosen differently. Since you ask, let's go back with revert.
> 
> >
> > > 2. Move GPU under /soc node,
> >
> > No problem
> >
> > > 3. Minor cleanup of #address-cells.
> >
> > IIRC, an interrupt-controller is required to have a #address-cells
> > property, even if that is normally zero. I don't remember the
> > details, but the gic binding lists it as mandatory, and I think
> > the PCI interrupt-map relies on it. I would just drop this patch.
> 
> Indeed, binding requires both address and size cells. I'll drop it.

Looking through the history of pending material, I didn't see a new pull for
this material. Just checking in to see if there's something we missed?


Thanks,


-Olof
