Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5508742ACE
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 17:22:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729106AbfFLPVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 11:21:17 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:33474 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726454AbfFLPVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 11:21:17 -0400
Received: by mail-qt1-f195.google.com with SMTP id x2so18027429qtr.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 08:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gMRaFc3/hEiSi70Ix5/f3einSpUu2nV4TVmJ7D/hed4=;
        b=Tv2Z3pbmOwHlgtrYTiibW8m9XKJPoHJ5lxIhEeqi5Uy98XwTjM7guEJWwNaxAfSRRx
         ayPQVXodB7bvub7zYQS6jU6MzX4+WnhlQCWwO206AjP32j//nrNcH7OBut5lcxxzH0Uw
         XvsVks57zesgVpwhGFcC60GAXXW1gFdWRXTvzbLOfXZDNgol8yjrd3xCTlBD01Z3HggK
         rruu7ob6IOxiYDcSJoxWwYOqHkek9J1sRm7oup16CzBhEpcC/WJsJ/XHbvUu3FqIDvOb
         PQF3t8raPwAeZyr2nnQTTVQellosNdDBnf+arwN8KDedS0qPsW4GrNT8+dAYElsp1hxK
         Kvlg==
X-Gm-Message-State: APjAAAUK4SC7RY6gDrhq7L4nBOwROS4B7gnukeEf82tVws71hLg/ZctG
        Dap9Tph/xl1X3TE5Ik3CeOp6ovGkOgV53xs004E8RQ==
X-Google-Smtp-Source: APXvYqxHbmq550GcVIRTXA5tocwW+ku4/cuYE4oFs0POCYRKMQzp1djocUEawn+SEa0+NCVlpuDhdB86iHxSww+zPq0=
X-Received: by 2002:ac8:303c:: with SMTP id f57mr71183256qte.294.1560352876572;
 Wed, 12 Jun 2019 08:21:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190606161055.47089-1-jeffrey.l.hugo@gmail.com>
 <20190606161322.47192-1-jeffrey.l.hugo@gmail.com> <20190612003507.GG143729@dtor-ws>
 <nycvar.YFH.7.76.1906121644160.27227@cbobk.fhfr.pm> <CAKdAkRQOxTX51rhodoFyYpwi85pk8apvWjCLLX5Sw6NTH=j1kA@mail.gmail.com>
In-Reply-To: <CAKdAkRQOxTX51rhodoFyYpwi85pk8apvWjCLLX5Sw6NTH=j1kA@mail.gmail.com>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Wed, 12 Jun 2019 17:21:04 +0200
Message-ID: <CAO-hwJKDxu0Bxxjd9reAojHODQTnW1POmifBCVsnjt8+CT4rmw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] HID: quirks: Refactor ELAN 400 and 401 handling
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Jiri Kosina <jikos@kernel.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 12, 2019 at 5:14 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Wed, Jun 12, 2019 at 7:45 AM Jiri Kosina <jikos@kernel.org> wrote:
> >
> > On Tue, 11 Jun 2019, Dmitry Torokhov wrote:
> >
> > > > +static const char *hid_elan_i2c_ignore[] = {
> > >
> > > If this is a copy of elan whitelist, then, if we do not want to bother
> > > with sharing it in object form (as a elan-i2c-ids module), can we at
> > > least move it into include/linux/input/elan-i2c-ids.h and consume from
> > > hid-quirks.c?
> >
> > Let's just not duplicate it in both objects. Why not properly export it
> > from hid_quirks?
>
> Strictly speaking Elan does not depend on HID; exporting it from
> quirks would mean adding this dependency. This also mean that you
> can't make Elan built-in while keeping HID as a module (I think this
> at least used to be config on some Chromebooks).
>

I also think it would me things cleaner to have the list of devices in elan_i2c.
If we put the list of devices supported by elan_i2c in a header, and
have HID read this .h file directly, there will be no runtime
dependency.

I am sure we can work something out to remove Jeffrey's fears.

Cheers,
Benjamin
