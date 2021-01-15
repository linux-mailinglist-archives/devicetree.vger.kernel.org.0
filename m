Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15E512F81CF
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 18:13:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733262AbhAORMK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 12:12:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387517AbhAORMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 12:12:10 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBA7AC0613C1
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 09:11:29 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id w187so4407808vsw.5
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 09:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zr+usiajQbvXCJZeiaAQ7ZOJ3FmLL56sdTHwAb93MCM=;
        b=YUoXFs0RFlgOeIyrZijD+N1grI8gVMlfGS9AkiyjIwbdZy5Rv4lR2QQNWrEF/vTkln
         hQ6gcZkOry9+vQ2+RJuTyZEjOqbZMfyprQINzU0SP0iuCwg66PGVc9YnP1v5O4YhHlOC
         hIoEXrUwRl6VsOk2/vvfHU1qdc9OlSHcSN/Fc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zr+usiajQbvXCJZeiaAQ7ZOJ3FmLL56sdTHwAb93MCM=;
        b=UMLQGNrOVbsZ82zC0O+aZGiuOZ9WbKHAiEaFY+auQe0GsL2MR8o6y1c5nbDgNnRaq+
         jybMYjDxS1Q1kdV4WnVYnha+r7Lxh+l/8ZedVpkBCSDSQLHs70lQmjolVMnEei3y/Bro
         xUgwLfoYbShf7dmbbiPcI7HuM1pAspGIq3FQDhrss6hqvwmn2N4yK93+QLHC3EhmeYfg
         dwozjbFSPD59Ip4Kj1+5Cv4skR4dBEO1XlefRklVM1+wPNJzSc17iJczFHfUwJ0vKJTQ
         GP4hsxf9OGKqS9yTQgXk1IaYUS6IgX995N09F8bVLVPdsh7MhbMp4UEPLfi4E+5+i9MB
         cwhg==
X-Gm-Message-State: AOAM533vtH8WMeZMp2KdRgCtv2yq4XbVF1FXvDIhqLcOUu7vuWGX6Cq8
        TvPydvMyvu7ztTYUjkfoB7C+cdGnyp9TcQ==
X-Google-Smtp-Source: ABdhPJwX0D92FhQe6kIIM6yFH7eyKJGiTHI3tvPz/fUsYctEh0L8Psd73dsrGdyA53QHqU4+0YFtfQ==
X-Received: by 2002:a67:6882:: with SMTP id d124mr10175258vsc.14.1610730688557;
        Fri, 15 Jan 2021 09:11:28 -0800 (PST)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id j192sm1309239vkc.17.2021.01.15.09.11.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 09:11:28 -0800 (PST)
Received: by mail-vk1-f182.google.com with SMTP id p128so2328225vkf.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 09:11:26 -0800 (PST)
X-Received: by 2002:a67:70c6:: with SMTP id l189mr10887922vsc.34.1610730685365;
 Fri, 15 Jan 2021 09:11:25 -0800 (PST)
MIME-Version: 1.0
References: <20201211222448.2115188-1-dianders@chromium.org>
 <CAD=FV=Ve4wGJ=KxQjraYsiAQZHG_5qEeFW0ZhmBBkRmtdm7Gwg@mail.gmail.com>
 <CAO-hwJK+=537C-EbgNXPY3=m5LvM8SVKCDB5X145BfSMHgUMdw@mail.gmail.com>
 <CAO-hwJLuzAccZbLSCvyP0JnkCW8fgswrm8RJfMaVKjtyF5Yg_A@mail.gmail.com>
 <CAD=FV=W3uzNPwAGPCUfjC-zoWEPyY4bF8TE4JgPP21s-3MAfpQ@mail.gmail.com>
 <CAO-hwJ+Gz_yp_vn1prREvhcU=YqVatqd_Hp+95L5i2=bcwfhbA@mail.gmail.com> <f3add027-d732-0846-fa54-b3c51430b152@redhat.com>
In-Reply-To: <f3add027-d732-0846-fa54-b3c51430b152@redhat.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 15 Jan 2021 09:11:12 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VfikuXYH5uq=cqqFJzCPNv86tMto-vezne3mVe3dTbcA@mail.gmail.com>
Message-ID: <CAD=FV=VfikuXYH5uq=cqqFJzCPNv86tMto-vezne3mVe3dTbcA@mail.gmail.com>
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

On Fri, Jan 15, 2021 at 6:58 AM Benjamin Tissoires
<benjamin.tissoires@redhat.com> wrote:
>
> > Thanks, but don't spend too much time on it, unless something really
> > jumps out. I'll debug that tomorrow. It's much easier with an actual
> > device than by just looking at the code.
> >
>
> Well, that's weird. Now suspend resume works reliably even with your
> series. It could just have been that the lid sensor was too close to a
> magnet or something like that. Though while testing the old version of
> i2c-hid, it was working... Such a mystery :)

Friggin magnets, how do those work?  ;-)

I also managed to obtain remote access to a device with an ACPI
i2c-hid device and confirmed that suspend/resume was working and that
I saw no errors, though obviously I couldn't physically interact with
the device remotely.  Hopefully that gives a tiny bit of extra
confidence that the series is OK...


> This allows to keep the powering ordering of the old i2c-hid module
> (power up before setting device wakeup capable), and simplify the
> not so obvious power_fixed field of struct i2c_hid_acpi.
>
> (I can also send it as a followup on the series if you prefer).

Squashed it into a v9 as well as a local variable rename that I
noticed while looking at the code with fresh eyes.  My v9 also
incorporates the new Goodix timing that I self-commented about on v8.

Crossing fingers that it's all good now.  :-)

-Doug
