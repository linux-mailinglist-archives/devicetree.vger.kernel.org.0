Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAC71A5BCF
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 19:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726472AbfIBRZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 13:25:54 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:35074 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbfIBRZx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 13:25:53 -0400
Received: by mail-lj1-f196.google.com with SMTP id l14so13534385lje.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 10:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=62vTxUHgE/OMxm3gMKaNUf3+MK+BhlnsjFDAmMOxaUk=;
        b=gMaxh1HdAtK9R8ch98/m+Hr3Ioxn4cG1qi4Z622Rb8Ol7eHjh8nv0g8koqSZ5TxLDh
         qQzspGxQG4Sn8WpUvKJnpMWKddfCI5ioZuS60AzDPEzXDfYHAA98vv4naI0sGEf0fSpt
         Ej1/n8tm6Rg2xaBaQv7xubFSucmLRPALHpkIIn7QVUhroJ6H0KNDkZOvHBYg7ofGoVfd
         ukhV2I5JXYaca9FWs9UNDQK4XWHAHyNj9dftbjXXaYQukFNg7tCV6dTDiqdz2n/XcIBA
         AH49JFDerV9aY4dhpGyFnxyrU+XuRJYjiiLdx7XG/X/5rm2AbIlUxwMyPCmEl5OCzAyS
         Cm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=62vTxUHgE/OMxm3gMKaNUf3+MK+BhlnsjFDAmMOxaUk=;
        b=qkpzzbE/jesgkfI8fnMqWN4+2PcMUzT9R4IxTZYKaC5xVMI34S/7S0k9U+3rWUo1aL
         3s/t8QGUtCi2DiHVghZ1Ai85+G30G0EPPPQs8rvb6f+yxzmZdiseW4sVskkZCgbeZqAm
         uxFK0YcSyhmfSJwj0wi/zzEEkcNnIOOYC2D+0Dd5VrZR0fPbBeCP/kqbDwvg8U0LsYXh
         l85PqUWmXcCFCc1eKuztCkGQWZ4dI7jRpv481eEUHTgNTLT3e/9FH8JFJOPwBZO6mU/8
         9ulxA4QZB+6ESiRdHL69fEH1dsgwEQci91RJL4/JyHR//zOsG5K+t9+V7k8GIN3Xxikx
         vMEw==
X-Gm-Message-State: APjAAAVPeP4NxBPY/VeFi5bRCW0PuEL9pAdCUMI8K9B4Dvllq5ZAKB6S
        bC10I6eZwXrg3fYM88M6mGtDMmvhh+wIlHoOTPENqQ==
X-Google-Smtp-Source: APXvYqzE0sqSgi57ksg2TZl9KBZdsOK2CTw3IlMW9NN32MHrSaXraK9MsW5Edi7mh4UpqysP0Bx+3Bzc4cgWD8olEg0=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr16987380lji.37.1567445151833;
 Mon, 02 Sep 2019 10:25:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190902090633.24239-1-linus.walleij@linaro.org>
 <20190902093517.GA12946@ulmo> <CACRpkdb_X+Eia=mhHrXBcBn0osMtw6bKU6uAS5AV8ASV63qBkg@mail.gmail.com>
 <20190902144006.GB1445@ulmo>
In-Reply-To: <20190902144006.GB1445@ulmo>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 2 Sep 2019 19:25:40 +0200
Message-ID: <CACRpkdb6+aqj8A_JDHc82O17dVx9KjHPi-iCK_AjFMda0miChw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Sony ACX424AKP
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 2, 2019 at 4:40 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> Hm... my recollection is that command mode is only supported on "smart"
> panels that have an internal framebuffer. So the commands actually
> instruct the panel to update their internal framebuffer, which means you
> can technically switch off the display engine when there are no updates.

That is my understanding as well.

> Under those circumstances I think it'd make sense to default to command
> mode if both the panel and the host support it and stick with video mode
> if for example the host can't do command mode.

Makes sense to me.

Maybe we should rather have a generic setting like:
dsi-enforce-video-mode;
and the default always being command mode, if
we have consensus that command mode should always
be preferred.

> Or perhaps this is something that could be set from some userspace
> policy maker via a connector property? A compositor for instance would
> have a pretty good idea of what kind of activity is going on, so it
> could at some point decide to switch between video mode and command mode
> if one of them is more appropriate for the given workload.

It's probably more that userspace should be made aware of the
fact that we have partial updates, and if I understand correctly that
is done by dirtyrect/damage API in
drm_damage_helper.c

(Very nice overview doc at the top of the file!)

The driver enables damage by calling
drm_plane_enable_fb_damage_clips()
then in the .update() callback uses drm_atomic_helper_damage_merged()
to figure out damaged rectangles and update those with special
commands.

tinydrm/ili9225.c is a pretty clean example of a driver
actually doing this. There are not many of them.

> Command mode can also be used to do partial updates, if I remember
> correctly, which again would make it possible for a compositor to send
> only a subset of a screen update.

Indeed, who needs a blitter when you can just update the
dirtyrects.

It is a bit terse but intuitively I feel that the damage interface is what
userspace should use, then DRM should be able to infer that a
damaged rectangle can be updated on the display, and the
display controller need to announce that it can handle these
partial updates.

This requires that the display controller can generate such
complex command streams in response to
drm_atomic_helper_damage_merged()
of course, from a DSI protocol
level it is supported, but we are not writing these command
sequences with software, they are generated by hardware.

So the display controller DSI portions must be able to send
individual rectangles as well.

But this is all science fiction. What all DSI display controllers
in mailine do today (I think) is to simply scan out the whole
framebuffer continously with a vblank TE IRQ to avoid tearing.

Andrzej knows for sure what is out there I think.

Yours,
Linus Walleij
