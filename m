Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84F5A4AB818
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 11:01:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351434AbiBGJvL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 7 Feb 2022 04:51:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352895AbiBGJjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 04:39:04 -0500
X-Greylist: delayed 305 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Feb 2022 01:39:03 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B9E2C043185
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 01:39:02 -0800 (PST)
Received: from mail-wr1-f54.google.com ([209.85.221.54]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M7sM0-1nLyDu3Ana-004xxj; Mon, 07 Feb 2022 10:33:56 +0100
Received: by mail-wr1-f54.google.com with SMTP id i15so1171093wrb.3;
        Mon, 07 Feb 2022 01:33:56 -0800 (PST)
X-Gm-Message-State: AOAM531FVzFiYBe9oQoUjUVtdbeJA9dkRPw65ncxvITmdjOEmQMNpBFx
        1mLTJlJS3oe/xYPJJVIVc/WOvUtmkVJ3INnKl9s=
X-Google-Smtp-Source: ABdhPJxjtwwhO8HbrAZC+pe3xlqcwLMS67h5t8QPdUjoAiwcCe9JR65SOdpgzS7AoShpWThk/xsDFtoHfw7IoFK1OEg=
X-Received: by 2002:a5d:500c:: with SMTP id e12mr9224078wrt.219.1644226436456;
 Mon, 07 Feb 2022 01:33:56 -0800 (PST)
MIME-Version: 1.0
References: <cover.1644212476.git.tonyhuang.sunplus@gmail.com>
 <b96f039dc071b1d32bb52fa283fd8afc6d3349cc.1644212476.git.tonyhuang.sunplus@gmail.com>
 <CAK8P3a0zNeaeOzC_tPb1KDbyktLpjUJCdEu=C6t_QX4pB9TKnQ@mail.gmail.com>
 <b440dc1dbb044a8c81d083d52774ad6b@sphcmbx02.sunplus.com.tw> <YgDar1O/CeTM8w6J@kroah.com>
In-Reply-To: <YgDar1O/CeTM8w6J@kroah.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 7 Feb 2022 10:33:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a12JMhEB=qxXqRB0WFyUwvJ_VgwqMi6oWfpcgBr9OWrqQ@mail.gmail.com>
Message-ID: <CAK8P3a12JMhEB=qxXqRB0WFyUwvJ_VgwqMi6oWfpcgBr9OWrqQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] misc: Add iop driver for Sunplus SP7021
To:     gregkh <gregkh@linuxfoundation.org>
Cc:     =?UTF-8?B?VG9ueSBIdWFuZyDpu4Pmh7fljpo=?= <tony.huang@sunplus.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Tony Huang <tonyhuang.sunplus@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        =?UTF-8?B?V2VsbHMgTHUg5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Provags-ID: V03:K1:0J6Mjirsw0E3IG/qh0q2nAbRKNTVtM37ZcVLZVIhufKdfYTwePb
 ufaBmiVcfHThw1AX+PYgwnRQjrKJ3El1nMCbw7RfaILNYx/HAW8bUO7V3gsPkinRxt4yJzS
 J1iwCkmmsr72BleWDG6EXvtIeI38vIGIaWFhtjxFz/Uc6AJ9z97IoEwdPjL4miUYQo0h2JB
 IcVt6FjGFYyGKrmlOau6A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:JygtWh3li58=:xqXybPfMUKlDaifbGfO6E5
 7gWDxCCVGGOM8WW9mWLreM/Sp4qA+b5AgMGvpCW4d1FgcEHZexQyk+GHLcsl3hxqtLokyNlej
 6iIMlNxWLyYwzCPlz3GJBmtDl29ET8ZxObk6AodHRYbIisba0DX2e0s4GFIdrcZI51NCEWvHB
 Ap5VJyL7SDRMdlXl9AHz7JoevuOAG20WJaU0tpYXewM2+IuvPXBOY1qLG9kTWx7xDW+O5r/Sa
 kzg3xm276fgbUBapj+YaMj1oG5SAFBjAJQU8DziZlf449Qp2JZK0VudaFstSOA7QyhwxUtKI1
 0oGREHWdF4LwrRN4Djb5dyoOt/yBTUP31hWjNX+sQ9e/ZbyS/NUYLCOfdSeRRGBz5u9wLmbYv
 U3/twbPqGLrqrc65Y0LvDNgimjPngv3RNUNOx8RT8PV/dIGHQQ0Stlq6VwjNSDf5pmATUsQAM
 Lof5GHOTx3ullXl4voQdCeh1/uZcB7PwA+cKDtPAm1ACyCpw7WO56GNwjpxAOCJhBcdMbufUg
 bIB/UESJnJ50EcZCYzRkfkWSXxwNVEnwOnGFwlDoEX+2UHJ3aN7nkiHToAPySDSeX/H1Bt8+j
 OEDr6mBhwwL1S807gnJliNMeh5YQitI7rCw0wecnBst9NGdLPDAUEqWh5tvjTO2no2MGlXtiK
 kbpm6eX2vMoC9SCciV8YdP5KkRzgFZ3lxY2Jc/M/njFosbm+OJlHdVscl+ubdCUX57NdH3rQm
 H0eJ3Sun7vl9b6AjDnXfC5SHyR31rKeNIO6LyYUefaiwee8Pw7v4ui/TnnPlHrWEuUC5PeUcL
 bEQaddbOkW4PWL+ktE6Y6cs6XeiGmImY9WQAVN45JSQKhntP6o=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 7, 2022 at 9:39 AM gregkh <gregkh@linuxfoundation.org> wrote:
> On Mon, Feb 07, 2022 at 08:29:40AM +0000, Tony Huang 黃懷厚 wrote:
> > >
> > > As discussed before, I would suggest leaving out all custom attributes for now,
> > > and first hooking up the driver to all the in-kernel subsystems.
> > >
> > > The mailbox0 register data definitely feels like an implementation detail, not
> > > something that should be exposed to user space as an interface.
> > >
> > > For standby mode, this would normally be handled by the power management
> > > subsystem in the kernel. not a custom interface. From your earlier description,
> > > I assume this interface puts the main CPU into standby mode, not the IOP,
> > > right?
> > >
> > > CPU standby is handled by the cpuidle subsystem, so you need a driver in
> > > drivers/cpuidle/ to replace your sysfs attribute.
> > > If you plan to hook up the driver to multiple subsystems, keeping a generic
> > > driver file is ok, so  you'll end up with two driver modules, with one of them
> > > calling into the other, using
> > > EXPORT_SYMBOL() to link between them.
> > >
> >
> > The purpose of adding sysfs is only for users to debug.
> > So this is not needed?
>
> If this is only for debugging, please put it in debugfs and not sysfs.

I don't think that works for the idle mode interface, as this is the only
thing the driver really does at the moment.

In a previous review round, I already asked for the driver to implement
at least two in-kernel interfaces before any custom user interface
is added.

         Arnd
