Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E90F12F4F83
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 17:09:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727263AbhAMQGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 11:06:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727239AbhAMQGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 11:06:31 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E3DDC061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 08:05:51 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id h10so1476814pfo.9
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 08:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2ptsf9Fb5Tne+PYknviL4oiSExm6FmhPbuzlfvggfPs=;
        b=gUvltVnFEhq+yEU1dS/TKI49xYRnCSvL5iotOLzopSdR8vpA9LrULAyFna01i39oq8
         Unl+MY4DeY4yUagBcAkKBozOfmVBGo5jFvGF/aow2StUxh67DqtvxybTv/2qJNyZI/+A
         j33bfPZCU4le8vObXmjj2GnRedXENKq4btJ3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2ptsf9Fb5Tne+PYknviL4oiSExm6FmhPbuzlfvggfPs=;
        b=BYPOpP8mFZtR3swT8UuGvRf/HH/1L7DxZlPQXtzqzjkzSaywrUhOTxhQ6U5XyoQKhR
         OKPEtHHEomtPsgU7SWYk8hBXOduMKAydQ8prHh1Y20VVk9bHwHF1dRZuWQcoSUEPGfBk
         ui03jYMQRPbw/0kSHp7qDAHjaZHo1Zzh9gf7lAn7MQU8WdklkLdZ+OGtQAQDRdDsy+mI
         00PEZ5MGUKtw6wfBp/QUgts4BwAXdh7pHKef/vkLh6H6OhIdb4y3onqk2rla4naoxNPZ
         fiXBJd4b6x1QsU1MF0d1+5wNjzdD+vbpOtD/QRrGTsSNgfpKwNh+jr7dPesfDHIKAj2i
         185A==
X-Gm-Message-State: AOAM531RdPk3UynoXQbDk6tshThtseO5n+Dh33jdo/+hXTNtAxQNQbWH
        y1lONtk4kHQYVJpnt1SHVrwZjzmuFTZ5RA==
X-Google-Smtp-Source: ABdhPJzRHCIZsQxPcEfrJRgtxZZ48XAeofjGmplRdVTpTerZBsvhxz9koxvvGm+FWE1Lg8HiElSRlw==
X-Received: by 2002:a65:55ca:: with SMTP id k10mr2636439pgs.431.1610553950687;
        Wed, 13 Jan 2021 08:05:50 -0800 (PST)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com. [209.85.216.44])
        by smtp.gmail.com with ESMTPSA id d20sm40735091pjz.3.2021.01.13.08.05.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 08:05:50 -0800 (PST)
Received: by mail-pj1-f44.google.com with SMTP id y12so1427854pji.1
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 08:05:50 -0800 (PST)
X-Received: by 2002:a67:bd01:: with SMTP id y1mr2892268vsq.49.1610553548379;
 Wed, 13 Jan 2021 07:59:08 -0800 (PST)
MIME-Version: 1.0
References: <20201211222448.2115188-1-dianders@chromium.org>
 <CAD=FV=Ve4wGJ=KxQjraYsiAQZHG_5qEeFW0ZhmBBkRmtdm7Gwg@mail.gmail.com>
 <CAO-hwJK+=537C-EbgNXPY3=m5LvM8SVKCDB5X145BfSMHgUMdw@mail.gmail.com> <CAO-hwJLuzAccZbLSCvyP0JnkCW8fgswrm8RJfMaVKjtyF5Yg_A@mail.gmail.com>
In-Reply-To: <CAO-hwJLuzAccZbLSCvyP0JnkCW8fgswrm8RJfMaVKjtyF5Yg_A@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 13 Jan 2021 07:58:56 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W3uzNPwAGPCUfjC-zoWEPyY4bF8TE4JgPP21s-3MAfpQ@mail.gmail.com>
Message-ID: <CAD=FV=W3uzNPwAGPCUfjC-zoWEPyY4bF8TE4JgPP21s-3MAfpQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/4] HID: i2c-hid: Reorganize to allow supporting goodix,gt7375p
To:     Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc:     Jiri Kosina <jkosina@suse.cz>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
        Kai-Heng Feng <kai.heng.feng@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andrea Borgia <andrea@borgia.bo.it>,
        Anson Huang <Anson.Huang@nxp.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Daniel Playfair Cal <daniel.playfair.cal@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Jiri Kosina <jikos@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Max Krummenacher <max.oss.09@gmail.com>,
        Michael Walle <michael@walle.cc>,
        Pavel Balan <admin@kryma.net>, Shawn Guo <shawnguo@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Will Deacon <will@kernel.org>,
        Xiaofei Tan <tanxiaofei@huawei.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jan 13, 2021 at 7:09 AM Benjamin Tissoires
<benjamin.tissoires@redhat.com> wrote:
>
> > I wanted to apply the series yesterday, but for these kinds of changes
> > I like giving it a spin on actual hardware. Turns out that my XPS-13
> > can not boot to v5.11-rc2, which makes testing the new branch slightly
> > more difficult.
> >
> > I'll give it a spin next week, but I think I should be able to land it for 5.12.
> >
> > Regarding the defconfig conflict, no worries, we can handle it with
> > Stephen and Linus.
> >
>
> After 2 full kernel bisects (I messed up the first because I am an
> idiot and inverted good and bad after the first reboot), I found my
> culprit, and I was able to test the series today.
>
> The series works fine regarding enumeration and removing of devices,
> but it prevents my system from being suspended. If I rmmod
> i2c-hid-acpi, suspend works fine, but if it is present, it immediately
> comes back, which makes me think that something must be wrong.
>
> I also just reverted the series and confirmed that suspend/resume now
> works, meaning that patch 1/4 needs to be checked.

Can you give me any hints about what type of failure you're seeing?
Any logs?  I don't have an ACPI system to test with...

Is there any chance that some type of userspace / udev rule is getting
tripped up by the driver being renamed?  We ran into something like
this recently on Chrome OS where we had a tool that was hardcoded to
look for "i2c-hid" and needed to be adapted to account for the new
driver name.  Often userspace tweaks with wakeup rules based on driver
name...

I'll go stare at the code now and see if anything jumps out.

-Doug
