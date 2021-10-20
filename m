Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEC05434A70
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 13:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbhJTLsh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 07:48:37 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:38638 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229548AbhJTLsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Oct 2021 07:48:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1634730381;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=LySlTxzcD+7slFBtrVsFu7OVFgYb2J6CfC7UbOwcNTc=;
        b=DnFvp9ZYC1E2fukQQd4PnHymr2uY2g8Y6CV4LH1YEPpTjPesfZyYrkYyzvnxHoViC+5wjc
        AlSPhiU7y1K7R+AfIVaJl1lsh5PgvQjUYW5HVYvWwWCO588cmDNRXGqJHjJdFTxA2aSGKX
        skSi/65/XWHUHZ2zbF3vd2mgKghhKMM=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-Ws1YfZFsPuyPLAnYUYEtMA-1; Wed, 20 Oct 2021 07:46:20 -0400
X-MC-Unique: Ws1YfZFsPuyPLAnYUYEtMA-1
Received: by mail-pl1-f197.google.com with SMTP id z8-20020a170903018800b0013f23528cb6so9462504plg.0
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 04:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LySlTxzcD+7slFBtrVsFu7OVFgYb2J6CfC7UbOwcNTc=;
        b=hx/+48RoYw+zh2CcVp5VGzR8HszS/dukhzLiNygJER3pCv9fgK1Qful3JZ7ZLuzu7G
         lXOmwDsPBD9RoD+JJ2bPSxQ1Tn4LBAYJxmB/wiIrxm6vyWPorfnZhsk9NZr7/rPtA/41
         FNUqVBH3Wxbv0hrR7CCYiGZHja07gKavCnN5LymtZ72ZP9UT/M8/jQWA9I4bbpLRUqbC
         GEqm67UdxsWgTmVELhwHR9SObvw2kwFMjQN63qsK89waW7r6QbSAPojKKwznVG+S7BlR
         zV+nZCebShd/ymT5VOMn5J4ljWEsAbhMgdTXHZGjGzeaVhnZEsLw/2rNCM/sHriNqIzZ
         txcA==
X-Gm-Message-State: AOAM533TvVaIJqnoeCzmkifb/tRkz4erd1Cx4SBK8TLNcZhEVfqxI0tF
        vQ8fcGhKSyx+SqzbNDcmjTX+FZY6CqkUWVsxutwr3ZNdejjT6T7SALxmIsAUUGNvo2Pa/5oP9k/
        bTKhT5gXcbG2rxt6nv3D1W0WkVZ2OUiW4Yn2AJQ==
X-Received: by 2002:a63:2c4f:: with SMTP id s76mr28303189pgs.155.1634730379630;
        Wed, 20 Oct 2021 04:46:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4DmIw+MrtRlqJaeak+OKL+IGdEbrzuhxPVHeBus5n775dV6e5SEnXt3bdox6Tf2tkHligQIKqQkcuG8vKrpQ=
X-Received: by 2002:a63:2c4f:: with SMTP id s76mr28303175pgs.155.1634730379392;
 Wed, 20 Oct 2021 04:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211009114313.17967-1-alistair@alistair23.me>
 <CAF8JNh+OUzvAHA9tBrH2d_WxWPXRgiunhGO5KV4-fqVG+tUOyQ@mail.gmail.com>
 <YW4kgnI0DQHj4sw4@google.com> <CAKmqyKMrb=Uz0+-ycj0HkAKJYdRU11Dc+24+KJw_j3MHT=2+yw@mail.gmail.com>
 <YW9rRUsxPHTjeOGT@google.com> <CAKmqyKMpMCb4gLyp94rCgVBU3eccjafD8nF7y6o+oU6D-OHvTQ@mail.gmail.com>
 <YW97lwsMrLHetJGy@google.com> <CAKmqyKMHoJWv=O0p_y6u34--njcsYxnWHg+EYzOFUnS3MFTvow@mail.gmail.com>
In-Reply-To: <CAKmqyKMHoJWv=O0p_y6u34--njcsYxnWHg+EYzOFUnS3MFTvow@mail.gmail.com>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Wed, 20 Oct 2021 13:46:08 +0200
Message-ID: <CAO-hwJJsBoXqP7KdQZYcRGeq39_kdwv8TyT3j-nEKyPe3cB_3g@mail.gmail.com>
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

On Wed, Oct 20, 2021 at 1:28 PM Alistair Francis <alistair23@gmail.com> wrote:
>
> On Wed, Oct 20, 2021 at 12:14 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Wed, Oct 20, 2021 at 11:44:50AM +1000, Alistair Francis wrote:
> > > On Wed, Oct 20, 2021 at 11:05 AM Dmitry Torokhov
> > > <dmitry.torokhov@gmail.com> wrote:
> > > >
> > > > On Wed, Oct 20, 2021 at 09:33:13AM +1000, Alistair Francis wrote:
> > > > > On Tue, Oct 19, 2021 at 11:51 AM Dmitry Torokhov
> > > > > <dmitry.torokhov@gmail.com> wrote:
> > > > > >
> > > > > > We already have touchscreen-inverted-x/y defined in
> > > > > > Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml,
> > > > > > why are they not sufficient?
> > > > >
> > > > > The touchscreen-* properties aren't applied to HID devices though, at
> > > > > least not that I can tell.
> > > >
> > > > No, they are not currently, but that does not mean we need to establish
> > > > a new set of properties (property names) for HID case.
> > >
> > > I can update the names to use the existing touchscreen ones.
> > >
> > > Do you have a hint of where this should be implemented though?
> > >
> > > Right now (without "HID: wacom: Add support for the AG14 Wacom
> > > device") the wacom touchscreen is just registered as a generic HID
> > > device. I don't see any good place in hid-core, hid-input or
> > > hid-generic to invert the input values for this.
> >
> > I think the transformation should happen in
> > hid-multitouch.c::mt_process_slot() using helpers from
> > include/linux/input/touchscreen.h
>
> Thanks for the help!
>
> I have managed to get the device to be a hid-multitouch (instead of
> hid-generic).
>
> I also think I have figured out a way to get the properties to
> hid-multitouch from the i2c-hid device. It requires a change to
> touchscreen.c, but it's not a big change.
>
> The main problem now is that hid-multitouch.c::mt_process_slot() isn't
> actually called. The code just calls input_sync() from
> hid-multitouch.c::mt_report(). It doesn't get to mt_process_slot() due
> to rdata->is_mt_collection not being true. Setting
> rdata->is_mt_collection to true causes userspace not to see the wacom
> input any more.

hid-multitouch now only handles the mutltitouch part. Everything else
is handled in hid-input.c
So if the device is just presenting a stylus to the user space, you
better not use hid-multitouch at all, but hid-generic.

Cheers,
Benjamin

>
> Alistair
>
> >
> > I think the more challenging question is to how pass/attach struct
> > touchscreen_properties * to the hid device (i expect the properties will
> > be attached to i2c-hid device, but maybe we could create a sub-node of
> > it and attach properties there.
> >
> > Thanks.
> >
> > --
> > Dmitry
>

