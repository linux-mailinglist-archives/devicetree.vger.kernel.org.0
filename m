Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED962A378C
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 01:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726563AbgKCAQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 19:16:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726216AbgKCAQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 19:16:26 -0500
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com [IPv6:2607:f8b0:4864:20::a44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06153C061A47
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 16:16:25 -0800 (PST)
Received: by mail-vk1-xa44.google.com with SMTP id d125so3342359vkh.10
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 16:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p7j2MkqbzfmNDffUUJc2UA/rAd92pXTAvHkKX+n2Ey0=;
        b=kSydRRrNnUb20Ij+6fkK3MbRCz5KLiSa0VZqCZtc+WNLyQf/+BUD3QYq9V0bXFh7l2
         sQemKcpvArm+0zAmqI9hD1Z0ZJsZIdh2WO6Weucj/evPtWOjZNAhJjpHg29trekQqWXN
         vIzoI/n6ew5YlKlM68cPh+TdcsN3T/lelf++I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p7j2MkqbzfmNDffUUJc2UA/rAd92pXTAvHkKX+n2Ey0=;
        b=Jc7vDv+tny2HhEUWMzC0ursAX0DMFVbrx0taj2av7YUgF4rgadWB0tz3O1Jya59wvf
         CR1B0Ozkq6/+MJHliyIeEr6Jtya/YauF+Lfibx31rshe4n+gJHmAGW2YjeICHdfxbNSz
         2ITQsWiYY2IqwmJ3a/7o8rr5tDzGOULuV12oNEH7WrrG3VvVLyPp9o+2EQb1ASYgqMYH
         KcgdMHRtJ1CbfablNzOXHRwc7IjL9YcEEPEejA9D2jQKLb4oQdH1bUYrZxiSAz0RBApz
         4lhlBdkhuMC+0SuWfGiTB1I57JeeuoWP4CaM/+cky9uqMG8fB2KboojxOLSGIj4Bgfo5
         n63Q==
X-Gm-Message-State: AOAM533cua+3cGC+W9yrYGm1Ac0YTY8HsDo2qqlIGyaO3/zuMW8X6xZV
        qIkM7uMK89ggvRt7Y4WkdZ8a44bJrr53LA==
X-Google-Smtp-Source: ABdhPJxIMqgrZxAbta1uVWc/XixftqxC4ciSRqKA8LZ5l9Huu2Gi0xCuISycVsy8BUpKBGRXfyq6pw==
X-Received: by 2002:a1f:4508:: with SMTP id s8mr14585561vka.12.1604362584595;
        Mon, 02 Nov 2020 16:16:24 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id z18sm846245vsq.28.2020.11.02.16.16.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 16:16:22 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id p12so2023986uam.1
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 16:16:22 -0800 (PST)
X-Received: by 2002:a9f:2f15:: with SMTP id x21mr9142861uaj.104.1604362582272;
 Mon, 02 Nov 2020 16:16:22 -0800 (PST)
MIME-Version: 1.0
References: <20201023162220.v2.1.I45b53fe84e2215946f900f5b28bab1aa9d029ac7@changeid>
 <20201030164743.GA3967106@bogus>
In-Reply-To: <20201030164743.GA3967106@bogus>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 Nov 2020 16:16:04 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UoDUVyUakJGL=Pmedjj7DFexbi=WHeEkkD9XNhay64JQ@mail.gmail.com>
Message-ID: <CAD=FV=UoDUVyUakJGL=Pmedjj7DFexbi=WHeEkkD9XNhay64JQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: HID: i2c-hid: Label this binding as deprecated
To:     Rob Herring <robh@kernel.org>
Cc:     Jiri Kosina <jkosina@suse.cz>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrea Borgia <andrea@borgia.bo.it>,
        Kai-Heng Feng <kai.heng.feng@canonical.com>,
        linux-input@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 30, 2020 at 9:47 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Oct 23, 2020 at 04:22:52PM -0700, Douglas Anderson wrote:
> > As pointed out by Rob Herring [1], we should have a device-specific
> > compatible string.  This means people shouldn't be using the
> > "i2c-over-hid" compatible string anymore, or at least not without a
> > more specific compatible string before it.  Specifically:
> >
> > 1. For newly added devices we should just have the device-specific
> >    device string (no "hid-over-i2c" fallback) and infer the timings
> >    and hid-descr-addr from there.
>
> I wouldn't go that far. Having a fallback is perfectly acceptible. And
> hopefully there are at least some devices where that's good enough for
> drivers to use.
>
> If we have cases of only 'i2c-over-hid' being used (in DT), then the
> solution is making this a schema so we can enforce that as not valid.

OK, fair enough.  I think in the case of the Goodix touchscreen I'm
trying to support, though, it's not useful to have the fallback since
it really doesn't seem to work without all the delays.  :(  I sent my
v3 without touching anything about "i2c-over-hid" as far as bindings
goes.

For my edification, though, when do you believe "i2c-over-hid" should
be the fallback?  Presumably you would advocate for
"post-power-on-delay-ms" being marked as deprecated, right?  That
should have been inferred by the compatible string, right?  So, in
theory, anyone who needed this delay couldn't have ever taken
advantage of the fallback, right?  They wouldn't have worked without
the delay?

-Doug
