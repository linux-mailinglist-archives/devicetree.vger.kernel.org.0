Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B642544A995
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 09:43:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244466AbhKIIqe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 03:46:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244475AbhKIIq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 03:46:26 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E15C06120C
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 00:43:36 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id d11so13639611ljg.8
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 00:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UbIICAMlLKgGbZxE5t5FiNaR0uUnSWbFWBMze1UqKbU=;
        b=ZvTEl+KhNytMLoId74/PtYyQAWwDPoqCG/DrJ7UNZ6GoD2jWsQ7xMZTdqLOmobRWpD
         i+U1KN25ShrE0J42n0cJ5pwlD9Y0aQdylwnlm8lcnw8ZPjlwuS1zKsaUGMM2z1kgVHL4
         NxA9MH6R3d0ILPz6RCq7TBBhR2YrRJgBwY+20WUQArVDpfbrh8KhWOCiG17IkUeQaV5s
         3+rJJaxl49S8JpN6sy1w4lWbV8JdUGtwc+MH1BiyIHTWKpCHl6IgJtPWT1IM/H4oY+ki
         lDdauMsY6wkZ2Zu6dzCRlabKwpxD79pGkDcN8sGqYDaALiHqB3s7UslDo2WQlS4VBv1g
         LsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UbIICAMlLKgGbZxE5t5FiNaR0uUnSWbFWBMze1UqKbU=;
        b=Y8HKNCRuwIWbIU1dPHg2j5d6PXT5XEOx/2C818EBhjwjAqHN/EwKc8u7SwTMH0Azsl
         pNBlp1ChEef1aIboVC7DGHq0RaLuGEHaQN2WHzF8IlG8f4xMsbs3ZwxrevO9uuPgzaKY
         qxr/vYvLKhcEiGKJqD7RVZf+5USXj1cdWViVtygn34+0z3zY/vYnOHb+4cT4Vt6RsGzO
         qMy/+217UJ7CIerzVZ1TkaKjHZX+HUgBOeN+6Yh0NQbS0wtXhwqCpIUUWZQPbonmnsrc
         snzRcbpkyMlo9HQb34xUivRnN0VSYAvC/5IJBgekgNsUi+ne5o5mcmKwsI554lSkhOVu
         9Leg==
X-Gm-Message-State: AOAM531ioQQfjjJslqyebXWkBdl26eWkwLxn3xD3q7swhbPRK2pMbHFS
        aBegXrzWGej1kSmq/5ULbnnYWOUlp0mfN8sa
X-Google-Smtp-Source: ABdhPJy89nC4+cwHu1qMOe9P48aCHVErD+JA9oP7lBxpaP6qglqN3kI+gSlmZauWxtrSWDbclIqUwQ==
X-Received: by 2002:a2e:b0c5:: with SMTP id g5mr5549849ljl.381.1636447413290;
        Tue, 09 Nov 2021 00:43:33 -0800 (PST)
Received: from localhost (h-46-59-88-219.A463.priv.bahnhof.se. [46.59.88.219])
        by smtp.gmail.com with ESMTPSA id i8sm2071131lfb.227.2021.11.09.00.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 00:43:32 -0800 (PST)
Date:   Tue, 9 Nov 2021 09:43:31 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 0/9] arm64: dts: renesas: Thermal binding validation
Message-ID: <YYo0syH9m/CYlB2d@oden.dyn.berto.se>
References: <20211104224033.3997504-1-kieran.bingham+renesas@ideasonboard.com>
 <CAMuHMdXVBj58ZM3LqCN3cudsE3VJV8AQC5OCOJP96RaqYf4NDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXVBj58ZM3LqCN3cudsE3VJV8AQC5OCOJP96RaqYf4NDQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 2021-11-09 09:29:01 +0100, Geert Uytterhoeven wrote:
> Hi Kieran,
> 
> On Thu, Nov 4, 2021 at 11:40 PM Kieran Bingham
> <kieran.bingham+renesas@ideasonboard.com> wrote:
> > The thermal sensor bindings were not matched correctly against the
> > expected naming scheme.
> >
> > r8a77980.dtsi also used a different naming scheme compared to the other
> > related platforms.
> 
> It lacked the labels, which you added for consistency.
> Is there any point in providing them, as there are no users? Or should
> they be removed instead?
> 
> > This series cleans up the dtsi files for the CPU target thermal sensors,
> > allowing the validation to run.
> >
> > Enabling this validation shows up a new validation failure:
> >
> > linux/arch/arm64/boot/dts/renesas/r8a77951-ulcb-kf.dt.yaml: thermal-zones: sensor3-thermal:cooling-maps:map0:contribution:0:0: 1024 is greater than the maximum of 100
> >         From schema: Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> >
> > This validation error appears to be pervasive across all of these
> > bindings, but changing that will be more invasive and require someone to
> > perform dedicated testing with the thermal drivers to ensure that the
> > updates to the ranges do not cause unexpected side effects.
> 
> Niklas?

I will have a look. The thermal driver is the one driver where I have 
automated CI test running.

> 
> > Kieran Bingham (9):
> >   arm64: dts: renesas: r8a774a1: Fix thermal bindings
> >   arm64: dts: renesas: r8a774b1: Fix thermal bindings
> >   arm64: dts: renesas: r8a774e1: Fix thermal bindings
> >   arm64: dts: renesas: r8a77951: Fix thermal bindings
> >   arm64: dts: renesas: r8a77960: Fix thermal bindings
> >   arm64: dts: renesas: r8a77961: Fix thermal bindings
> >   arm64: dts: renesas: r8a77965: Fix thermal bindings
> >   arm64: dts: renesas: r8a77980: Fix thermal bindings
> >   arm64: dts: renesas: r8a779a0: Fix thermal bindings
> 
> For the whole series:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kind Regards,
Niklas Söderlund
