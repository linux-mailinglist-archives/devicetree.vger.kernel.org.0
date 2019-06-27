Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC7FE58474
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 16:29:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbfF0O3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 10:29:41 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:37596 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726445AbfF0O3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 10:29:41 -0400
Received: by mail-qt1-f193.google.com with SMTP id y57so2645657qtk.4
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 07:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W1pvYoORZqnP8xoBxNR1BOMT3ARKFroxHWTKv5wzgOM=;
        b=b+oa73DyosTl8gcMwbXoa2jFKDP/khOfyyQ2D70kiWQ8tMTZwt2Ivzak5je8DUG6V3
         gM11jdxDgkgXaJ/mmAoPt1X44PTF+kYmZ5CSMsQ/Hfod2H6FBHHiBz9oFKv0LvMFlRaf
         +dw+C09bb52vLv2v/4c16HOemtAs4+qwO1rcoB2A4yzYyD/gFc3klbumuTLMWboaQeQ8
         AflkvL21mngolyMIPIK+u76jF2ZZfR+AANjVnd/+eEXiJvS11ACbvsNWNdAuqIb9yzF2
         kZWqln57a3XRK7CYnbpcUXrORWiqGDGqA1eMGCuTvKgF8the8ObW7QZli037VV6PWIKZ
         t7zw==
X-Gm-Message-State: APjAAAWxgcEuHBrq4gU6YixTEm8Oq1Cyw7/CPr/2UQWXfBM6SxttLoAg
        UYCD5Vm+5ZaKdWxmGHzFeyQLrCK6DRMgZCoLV5Wpeg==
X-Google-Smtp-Source: APXvYqw4Nu9aKVOvhSyI6nwbZb88GsVpgfbBupkwLNZCD+lEsmbsGQhxPM8V0t9uTwLCqXNVc4fw9xbP+qvO1l5esoc=
X-Received: by 2002:ac8:220a:: with SMTP id o10mr3296213qto.31.1561645780791;
 Thu, 27 Jun 2019 07:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190621144854.38568-1-jeffrey.l.hugo@gmail.com>
 <20190621145042.38637-1-jeffrey.l.hugo@gmail.com> <20190623062000.GB204275@dtor-ws>
 <CAOCk7Nr4+Sj9U=qAZTEhPGgZNrZ1VVvNtuUg-9vQzp15xFdCUw@mail.gmail.com>
In-Reply-To: <CAOCk7Nr4+Sj9U=qAZTEhPGgZNrZ1VVvNtuUg-9vQzp15xFdCUw@mail.gmail.com>
From:   Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date:   Thu, 27 Jun 2019 16:29:29 +0200
Message-ID: <CAO-hwJLEDCbMud6dCfvXzwDfauAgfOZmQwkmELEF2e6-4Oe6=g@mail.gmail.com>
Subject: Re: [PATCH v8 1/5] Input: elan_i2c: Export the device id whitelist
To:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jiri Kosina <jikos@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, xnox@ubuntu.com,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 27, 2019 at 4:02 PM Jeffrey Hugo <jeffrey.l.hugo@gmail.com> wrote:
>
> On Sun, Jun 23, 2019 at 12:20 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Fri, Jun 21, 2019 at 07:50:42AM -0700, Jeffrey Hugo wrote:
> > > Elan_i2c and hid-quirks work in conjunction to decide which devices each
> > > driver will handle.  Elan_i2c has a whitelist of devices that should be
> > > consumed by hid-quirks so that there is one master list of devices to
> > > handoff between the drivers.  Put the ids in a header file so that
> > > hid-quirks can consume it instead of duplicating the list.
> > >
> > > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> >
> > Benjamin, are you happy with this version?
>
> Benjamin, ping?
> Sorry to be a bother, but I'm still anxious to get this queued for 5.3.

Ooops, yeah, sorry I missed Dmitry's email.

Fine by me:
Acked-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>

Cheers,
Benjamin
