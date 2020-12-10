Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62DE52D606B
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 16:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392020AbgLJPtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 10:49:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392019AbgLJPtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 10:49:05 -0500
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC1FC061793
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 07:48:25 -0800 (PST)
Received: by mail-qk1-x741.google.com with SMTP id 143so5151981qke.10
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 07:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jg21SZZlFp2nXg015Qdy7Ey+4o9sWgsPDLbyCKehNlo=;
        b=dy5DU5wCTwtfk7ljGOi1L73ppuP+Z+I6LgYKef020Y7kmWfzLih5jpQXgRkzcM0eqY
         AcUP1c3cS2dG0/ibj39VhwpX3gtu8+jhhJMSKjm3C8NqCP+cW0QlR7Oi/KKcRFSqZz1I
         Lb5iRPAYHYA243SA+1PdA/xrMKPBCb3rr28pI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jg21SZZlFp2nXg015Qdy7Ey+4o9sWgsPDLbyCKehNlo=;
        b=T31NYsdGoklHHzf9VUmbN4Sc/Yvb6LYfctW/2LulV90b7GG8r2pGC7jU6vb7k3b+Ke
         ZCLiE/2/NGBgsKu6pquRwk8Q15dkRowXNJmB8nOOUadXXVsQAEXh75qfgqoGxyJFCscY
         mm4Iu+W0SVe2OI1Kn7PHGOTU6TJwn4bur2Lt/rsuImoV4zLcV8PdUzRFsJ9EnFPS1t/P
         Fx0kWVHmxyx7MFOKqzrff650RS6muC8iAjSkML+KelJcq3fHkQTAKjzhmlaExQ13Zaqp
         V9hOrGL71GND2mBIA6FlSEEetGVaRIxWGjNzeZpbzTjlebYXedVw2DPZq/G9iESTnJUk
         Nbaw==
X-Gm-Message-State: AOAM533k3mXVA1CT8Ddzl6Xaw/UeTXIsK+xZzsuAx3oolmfKlUc+b5aK
        qPefDUPuCOhm9Iegqcgci8xg2YvpCSupfds+41hF0sMeMkc=
X-Google-Smtp-Source: ABdhPJyGA4IsN0DyvYeav6TuGz8fI63Z8eB2r82GLqP6jFmdsiKRYyqDFTZHzh4jhRC0raXKyTa1O58NpDKhOQ1MMqM=
X-Received: by 2002:a37:2742:: with SMTP id n63mr5466883qkn.390.1607615304710;
 Thu, 10 Dec 2020 07:48:24 -0800 (PST)
MIME-Version: 1.0
References: <20201129110803.2461700-1-daniel@0x0f.com> <20201129110803.2461700-4-daniel@0x0f.com>
 <CAK8P3a2DGLfkOEm3JeXN-jWvDfxberaXXqOtu4wKdtYzqDWiNQ@mail.gmail.com>
 <CAFr9PX=fhKiZF80iKaGeBWOONm3VpwtzgbB+yBHk8MHdTotaHg@mail.gmail.com> <CAK8P3a0zCa0Dq8uUDoSbu64sGLeNWrSk=6i4pKzgwerRseXfnA@mail.gmail.com>
In-Reply-To: <CAK8P3a0zCa0Dq8uUDoSbu64sGLeNWrSk=6i4pKzgwerRseXfnA@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 11 Dec 2020 00:49:04 +0900
Message-ID: <CAFr9PXnGF1PV8vnCpdCuSB-z9ns5BPDjhJvPg7b+rUC0GrjhqQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] gpio: msc313: MStar MSC313 GPIO driver
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     SoC Team <soc@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>, Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On Thu, 10 Dec 2020 at 23:28, Arnd Bergmann <arnd@kernel.org> wrote:
> > I did think about this and I did this with the clk mux driver I
> > haven't pushed yet. In that case there is a random lump of registers
> > with some muxes mixed into it so I decided to make the lump a syscon
> > and then have a node for each clk mux in the lump and some properties
> > for the muxes within. The driver is certainly less complex but the
> > device tree is pretty unmanageable as there are probably 30 or more
> > muxes.
>
> Right, for clk drivers, the trade-off is often different, it's not
> unusual that they are a bit of a mess and require a separate driver for
> each cheap.

I will try to clean up the additions for the ssd202 (the smp enabled
chip) this weekend and send a series for that.
If it still seems wrong after adding that I will can that series and
refactor this before lumping more on top of it.

> > > It would be helpful here to replace all the readb_relaxed/writeb_relaxed()
> > > with normal readb()/writeb(). Don't use _relaxed() unless there is a strong
> > > reason why you have to do it, and if you do, explain it in a comment what
> > > the reason is.
> >
> > The reason is that readb()/writeb() will invoke the heavy memory
> > barrier even though it's not needed for peripheral registers.
> > I guess it doesn't actually make all that much difference in reality.
>
> Ah, I forgot you had that heavy barrier. It depends a bit on what you
> use the GPIOs for then. For most uses I think the overhead does not
> matter, but if there is any bit-banged I/O it might make a difference.

Bit-banged buses are likely to happen I think as there is a lot of
gpio compared to hardware peripherals.
Anyhow, I'll add a comment for the readb_relaxed()/writeb_relaxed() usage.

Cheers,

Daniel
