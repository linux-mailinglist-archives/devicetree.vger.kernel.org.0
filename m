Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89E4B28460B
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 08:30:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727075AbgJFGai (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 02:30:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727022AbgJFGah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 02:30:37 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9D5C0613A7
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 23:30:37 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id h6so6745405pgk.4
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 23:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=antmicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jEZ/PphhBcpGSudk4zYqpeTRIANvOFR8+5eTx3w3Oj8=;
        b=Aewfvkp8uF0ztDFZgaN+wNHZ+BrMN8FsafukdvDenr6aOGB0e523o+WcBp0c95lwqP
         +KPJHrPDL9qUrMzBjOQKC9ReWS8jiHu/ayJ2mu2F5N6qFnnrUe9OAiReWQM9kUzbjGBe
         iX7nl0CIrnIwIhR8ELaSSk/Hhj2FEyP4Z2Q/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jEZ/PphhBcpGSudk4zYqpeTRIANvOFR8+5eTx3w3Oj8=;
        b=Dr2T7agWgf/TDgSrWNchT9Vl/pkhvgBCNot1aR+mC1/OBJHJhGvQlcHaIQMFqffXiB
         IO+uXGMbYgqbIlWI/VwBVoAlZKRhVZs6hh/sk+YYB5dSSVQzOh5PTeJEbUoWcPANio0L
         rr2UxzG5CL9EgOqtikaEMAQKr1ZPwoIj289K60Xzzv/oxqtOjnAS1IppTRogoTM2iZh4
         R751adzMC4XC8linyIuRFH/R2bbl1Kj0odrExxfI4UjluRzBgpN3MyZK7gVY6yeRpMKV
         6u8CxxPuoW8FNDjLRbYrjZjqUewWdM7Bl5ZDwGBc0TrNyPmmpt9WY0ECDwhN/DQUp1DA
         8E6w==
X-Gm-Message-State: AOAM533BQOAuocQ1dXTHigHP6g4h0FWoxwLWLWeLU7qbjHCJrRUDfDHB
        9yVrp5CKLNZtaiB78eR0L8AfxhXOFa9WUPxhwrJNAQ==
X-Google-Smtp-Source: ABdhPJzyGjwFiX82SqSnhgwuVLIPB0qX8/w2uOnQTTNNakJGClvpNe5x6G6gWDIyv8uvQNMjCiPMVzXhFa0JwutgfSw=
X-Received: by 2002:a63:1a21:: with SMTP id a33mr2837088pga.305.1601965836782;
 Mon, 05 Oct 2020 23:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200923120817.1667149-0-mholenko@antmicro.com>
 <20200923120817.1667149-2-mholenko@antmicro.com> <CAMuHMdWCTg7g=Zu7Wp1Aee9A6Zr+yFguR-szywvm0ObPfH1cwg@mail.gmail.com>
In-Reply-To: <CAMuHMdWCTg7g=Zu7Wp1Aee9A6Zr+yFguR-szywvm0ObPfH1cwg@mail.gmail.com>
From:   Mateusz Holenko <mholenko@antmicro.com>
Date:   Tue, 6 Oct 2020 08:30:24 +0200
Message-ID: <CAPk366RCSrUE=hwk1E0gh-01aa0YPUU78CL7s3c+dZMDiPZxFw@mail.gmail.com>
Subject: Re: [PATCH v11 2/5] dt-bindings: soc: document LiteX SoC Controller bindings
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jslaby@suse.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Stafford Horne <shorne@gmail.com>,
        Karol Gugala <kgugala@antmicro.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>,
        Filip Kokosinski <fkokosinski@antmicro.com>,
        Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
        Joel Stanley <joel@jms.id.au>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Icenowy Zheng <icenowy@aosc.io>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Gabriel L. Somlo" <gsomlo@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On Fri, Sep 25, 2020 at 2:48 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Mateusz,
>
> On Wed, Sep 23, 2020 at 12:09 PM Mateusz Holenko <mholenko@antmicro.com> wrote:
> > From: Pawel Czarnecki <pczarnecki@internships.antmicro.com>
> >
> > Add documentation for LiteX SoC Controller bindings.
> >
> > Signed-off-by: Pawel Czarnecki <pczarnecki@internships.antmicro.com>
> > Signed-off-by: Mateusz Holenko <mholenko@antmicro.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> Thanks for your patch!

Thanks for your comments!

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml
> > @@ -0,0 +1,39 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +# Copyright 2020 Antmicro <www.antmicro.com>
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/soc/litex/litex,soc-controller.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: LiteX SoC Controller driver
> > +
> > +description: |
> > +  This is the SoC Controller driver for the LiteX SoC Builder.
> > +  It's purpose is to verify LiteX CSR (Control&Status Register) access
>
> Its
>
> > +  operations and provide function for other drivers to read/write CSRs
>
> functions
>
> > +  and to check if those accessors are ready to use.
>
> be used

I will fix the description as suggested.

> > +
> > +maintainers:
> > +  - Karol Gugala <kgugala@antmicro.com>
> > +  - Mateusz Holenko <mholenko@antmicro.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: litex,soc-controller
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +examples:
> > +  - |
> > +    soc_ctrl0: soc-controller@f0000000 {
> > +        compatible = "litex,soc-controller";
> > +        reg = <0xf0000000 0xC>;
>
> Please be consistent w.r.t. lower/upper case: "0xc".

Sure, I will use lowercase everywhere.

> > +        status = "okay";
> > +    };
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

Best regards,
Mateusz


--
Mateusz Holenko
Antmicro Ltd | www.antmicro.com
Roosevelta 22, 60-829 Poznan, Poland
