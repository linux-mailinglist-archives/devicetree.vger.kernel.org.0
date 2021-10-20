Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB480434AB6
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 14:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbhJTMG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 08:06:57 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:44575 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230225AbhJTMG4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Oct 2021 08:06:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1634731481;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=YIqOHqo+4Uvs1mEiol2RpATCv5maqrLKpagaNsgMP6A=;
        b=AEBxtb4rlot4h2UkBaoCpOO4Mq7zCYECdFzvd4R8gZ7E8fAIYDJ0Adsinf1wjdeE7zSRm0
        xPz+/7KgUugkbc2alEmjYhOLCy2143mOAdKgFhIcXAv5tCxmQylOuaFNd58uEhOhf2z8s9
        8l4a49AHsvnbpClNi3vw3AfK2gMz3kQ=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-VxyIwAAWPG-E9OgHRDu7sQ-1; Wed, 20 Oct 2021 08:04:40 -0400
X-MC-Unique: VxyIwAAWPG-E9OgHRDu7sQ-1
Received: by mail-pg1-f200.google.com with SMTP id n9-20020a63e049000000b002951886c1c5so13306597pgj.0
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 05:04:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YIqOHqo+4Uvs1mEiol2RpATCv5maqrLKpagaNsgMP6A=;
        b=kNq/M5xjJwk592B10P4lIXT5bhlVUaUKOISesB1CMfhTJZNxBB0I6i1O95ogpxS44B
         YK7d72CfqfbZTj71j388bN0ouWCBbswZrqDIph83RJLBo1lmgHwcgGjqQWLGArIFAt76
         fHFMl3XcqutUmgK+x2LTw4glC6F6Dtaa7xs53NaiPMjPhUcaQhyxYCWEzIKThxA8osq3
         GQrkyiJKysk2v6shQX7jKzvYe85z/uLlguZfQ4RNQZ+hTkPhRQwmfY4YioMO9j4D5dW+
         pEmkqNGAe2hqKiKEgjj+C5yhlNC/YS92glHHc6P1KQ1n13c3pdrhgY9CoKpwjkxDjfXX
         Fi1g==
X-Gm-Message-State: AOAM5302+dK24piXvR2LOVYHEOuqYl+ImHMD9b+MErKG68BhTF6tt7pc
        QnT+Li6veo9PP6b52Kx3EeFV2VSansha2ONO+IV9uNKT3Cvpg4nelGulUda3v7A9pSaje4E7BCO
        +jg22lymPD8mXI/3lfX3rIIPCZ2dyvdMq7V9XTg==
X-Received: by 2002:a63:3f0b:: with SMTP id m11mr33013659pga.274.1634731479255;
        Wed, 20 Oct 2021 05:04:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhadLqyr9lBSi0ffsZJTtscppEgRxsW/9/FY8VcsJF9JyOpwjpodZn/GWBrfmrqdONhXZHn83JBW3Z7qZ1TMY=
X-Received: by 2002:a63:3f0b:: with SMTP id m11mr33013605pga.274.1634731478617;
 Wed, 20 Oct 2021 05:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20211009114313.17967-1-alistair@alistair23.me>
 <CAF8JNh+OUzvAHA9tBrH2d_WxWPXRgiunhGO5KV4-fqVG+tUOyQ@mail.gmail.com>
 <YW4kgnI0DQHj4sw4@google.com> <CAKmqyKMrb=Uz0+-ycj0HkAKJYdRU11Dc+24+KJw_j3MHT=2+yw@mail.gmail.com>
 <YW9rRUsxPHTjeOGT@google.com> <CAKmqyKMpMCb4gLyp94rCgVBU3eccjafD8nF7y6o+oU6D-OHvTQ@mail.gmail.com>
 <YW97lwsMrLHetJGy@google.com> <CAO-hwJKSxVFAiAriWU0No7sFxzo9XB1-T9LFeF5Zn27B8erFPA@mail.gmail.com>
 <CAKmqyKN0fhJOGZwg6LKag=8fVsANBUNg39Gfr5qdJyUJu1AVrw@mail.gmail.com>
In-Reply-To: <CAKmqyKN0fhJOGZwg6LKag=8fVsANBUNg39Gfr5qdJyUJu1AVrw@mail.gmail.com>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Wed, 20 Oct 2021 14:04:27 +0200
Message-ID: <CAO-hwJJ4kF880TVKNFy6wb5d-Q4+eCSuFfgP+=6+eTuN9eoNKA@mail.gmail.com>
Subject: Re: [PATCH v11 1/4] HID: wacom_sys: Add support for flipping the data values
To:     Alistair Francis <alistair23@gmail.com>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Ping Cheng <pinglinux@gmail.com>,
        Alistair Francis <alistair@alistair23.me>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>, Jiri Kosina <jikos@kernel.org>,
        linux-input <linux-input@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 20, 2021 at 1:34 PM Alistair Francis <alistair23@gmail.com> wrote:
>
> On Wed, Oct 20, 2021 at 5:40 PM Benjamin Tissoires
> <benjamin.tissoires@redhat.com> wrote:
> >
> > On Wed, Oct 20, 2021 at 4:14 AM Dmitry Torokhov
> > <dmitry.torokhov@gmail.com> wrote:
> > >
> > > On Wed, Oct 20, 2021 at 11:44:50AM +1000, Alistair Francis wrote:
> > > > On Wed, Oct 20, 2021 at 11:05 AM Dmitry Torokhov
> > > > <dmitry.torokhov@gmail.com> wrote:
> > > > >
> > > > > On Wed, Oct 20, 2021 at 09:33:13AM +1000, Alistair Francis wrote:
> > > > > > On Tue, Oct 19, 2021 at 11:51 AM Dmitry Torokhov
> > > > > > <dmitry.torokhov@gmail.com> wrote:
> > > > > > >
> > > > > > > We already have touchscreen-inverted-x/y defined in
> > > > > > > Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml,
> > > > > > > why are they not sufficient?
> > > > > >
> > > > > > The touchscreen-* properties aren't applied to HID devices though, at
> > > > > > least not that I can tell.
> > > > >
> > > > > No, they are not currently, but that does not mean we need to establish
> > > > > a new set of properties (property names) for HID case.
> > > >
> > > > I can update the names to use the existing touchscreen ones.
> > > >
> > > > Do you have a hint of where this should be implemented though?
> > > >
> > > > Right now (without "HID: wacom: Add support for the AG14 Wacom
> > > > device") the wacom touchscreen is just registered as a generic HID
> > > > device. I don't see any good place in hid-core, hid-input or
> > > > hid-generic to invert the input values for this.
> > >
> > > I think the transformation should happen in
> > > hid-multitouch.c::mt_process_slot() using helpers from
> > > include/linux/input/touchscreen.h
> > >
> > > I think the more challenging question is to how pass/attach struct
> > > touchscreen_properties * to the hid device (i expect the properties will
> > > be attached to i2c-hid device, but maybe we could create a sub-node of
> > > it and attach properties there.
> > >
> >
> > Sorry but I don't like that very much. This would mean that we have an
> > out of band information that needs to be carried over to
> > HID-generic/multitouch and having tests for it is going to be harder.
> > I would rather have userspace deal with the rotation if we do not have
> > the information from the device itself.
>
> My 2c below
>
> >
> > Foreword: I have been given a hammer, so I see nails everywhere.
> >
> > The past 3 weeks I have been working on implementing some eBPF hooks
> > in the HID subsystem. This would IMO be the best solution here: a udev
> > hwdb rule sees that there is the not-wacom PID/VID (and maybe the
> > platform or parses the OF properties if they are available in the
>
> I'm not sure we have a specific VID/PID to work with here. The VID is
> generic AFAIK, not sure about the PID though. Maybe someone from Wacom
> could confirm either way.

It actually doesn't really matter. What matters is that there is a way
to know that this device needs to be rotated, being through DT
properties that would be exported through sysfs, or a hwdb entry that
matches on the product, the platform or something else.

>
> > sysfs) and adds a couple of functions in the HID stack to rotate the
> > screen. The advantage is that we do not need to add a new kernel API
>
> I would say that touchscreen-inverted-x/y isn't a new API, it's
> commonly used. To me it makes sense that it's supported for all
> touchscreens.

Well, it's new in the HID world, and this is opening the pandora box:
the patch adds only the equivalent of touchscreen-inverted-x/y, but
not touchscreen-swapped-x-y. So you can not actually rotate a screen
by 90 degrees.

Inverting a value on an axis is easy. Swapping 2 axes is way harder in
the HID world, because you have to interpret the report descriptor
differently.

Also, the patch adds 3 new properties: flip-tilt-x/y and flip-distance.
The tilt and distance would be easy, but suddenly we need to also add
pressure, and all of the other HID definitions. This is going to be
endless. It took me a while to understand Rob's point regarding
generic properties, but we are exactly entering this territory: this
is an endless chase and will never end.

I would much rather have a device specific quirk that would be
triggered by the DT than adding generic properties like that.

Also, hid-multitouch is the most tested driver through the hid-tools
test suite: https://gitlab.freedesktop.org/libevdev/hid-tools
I am not sure how I can add tests for those properties in a generic
way (the creation of the "virtual DT" is going to be problematic).

On the contrary, a device specific quirk can easily be tested without
having to mess too much with the hid subsystem.

>
> > anymore, the disadvantage is that we need userspace to "fix" the
> > kernel behaviour (so at boot, this might be an issue).
>
> That's a pain for me. I'm still stuck with the vendors userspace as I
> need their propiritory eInk driver code. It also seems like a hassle
> for different distros to handle this (compared to just in the DT).

I understand the pain. But I am not talking about a 1 kernel cycle
release timeframe. More like 6-12 months to bring in all the pieces
together. Distributions have no issues with udev most of the time
(even those that stuck to the old pre-systemd fork), and it would not
be different than having a udev intrinsic that tags the pen with
ID_INPUT_TABLET so libinput and others can deal with it.

Cheers,
Benjamin

>
> Alistair
>
> >
> > I am not at the point where I can share the code as there is a lot of
> > rewriting and my last attempt is resulting in a page fault, but I'd be
> > happy to share it more once that hiccup is solved.
> >
> > Cheers,
> > Benjamin
> >
>

