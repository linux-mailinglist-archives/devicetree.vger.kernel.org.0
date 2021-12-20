Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB0C47B55F
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 22:49:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231673AbhLTVtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 16:49:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbhLTVtb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 16:49:31 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13864C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 13:49:31 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id l7so18181066lja.2
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 13:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gfwB1Y7WC9PzSYQgy+aXs+dGdxRfl9cHOHvCWDuJnkU=;
        b=kDYD5ludLUCahkPbmHfYN+HOIKqU686radMmzyGW8pUbmGj5NrZtro7jjcNPRgkIm7
         Yf3HEeLzUG9wx5jj/mh775SCi0vaUmjBjKqI4B5v3Q+0PoiAeyM7ND7UKLaPOCLECo9W
         T6TaMrlpAudBkc6EXUhIKgEZOxxxTUd97O0N8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gfwB1Y7WC9PzSYQgy+aXs+dGdxRfl9cHOHvCWDuJnkU=;
        b=XjJo3ffy1UROsWB838mnBsVQcTTX+CU0RlKQLaYoaNMoXkOyiX+qSakHsxKgIWepF6
         TKJZr8fUKxRP+UkPIuadTKJo1XIuQ5YCtqEnoZ6to5nIFdtIGHDefN4XQmtlJxOW0jQO
         x1W7HkMs6KGRGf+MzA/eKN5k2wbmSICzz76uoswI8SSto5FkgPLAOJDogp5GLLQRyucN
         1OPxYMeQ0/v6cM2Do08HX4aNKjJuPvVsUAaIgePGHXk46JFXPTERX3JDfbXmvzBH+5bU
         jxD1wJn6UgMYECCSkaK17mI7ENQhBiEvTIy5fyzuJQcoi2C1Z5kvoch6Kh2GcJZtuAvE
         27nQ==
X-Gm-Message-State: AOAM532M3n2JY8uhGyn1xeyGV6BLChw+hxoVfsjY4BLJDwmbZNG756Pi
        PWk0G4F85OSmoz2tUIpJzSu+fdcPp6eliNMo
X-Google-Smtp-Source: ABdhPJxOl0pltGSLDg28mSlWiGzW+/atFEmy8RHu93NATNWO1JmwxbD4Oc2jadSgubJjYockYlliNQ==
X-Received: by 2002:a2e:3e17:: with SMTP id l23mr42286lja.380.1640036968805;
        Mon, 20 Dec 2021 13:49:28 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id t21sm1750624lfe.266.2021.12.20.13.49.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 13:49:27 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id b19so18088843ljr.12
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 13:49:26 -0800 (PST)
X-Received: by 2002:a2e:8848:: with SMTP id z8mr17346ljj.429.1640036966379;
 Mon, 20 Dec 2021 13:49:26 -0800 (PST)
MIME-Version: 1.0
References: <20211220210643.47842-1-pmenzel@molgen.mpg.de>
In-Reply-To: <20211220210643.47842-1-pmenzel@molgen.mpg.de>
From:   Dmitry Torokhov <dtor@chromium.org>
Date:   Mon, 20 Dec 2021 13:49:10 -0800
X-Gmail-Original-Message-ID: <CAE_wzQ_Lg1ODV5sEqtW=SauhSXxi6+fh3msOuhnJy8-sNtORcg@mail.gmail.com>
Message-ID: <CAE_wzQ_Lg1ODV5sEqtW=SauhSXxi6+fh3msOuhnJy8-sNtORcg@mail.gmail.com>
Subject: Re: [PATCH] CHROMIUM: i2c: Add device property for probing
To:     Paul Menzel <pmenzel@molgen.mpg.de>
Cc:     Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mika Westerberg <mika.westerberg@linux.intel.com>,
        Furquan Shaikh <furquan@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Tim Wawrzynczak <twawrzynczak@chromium.org>,
        coreboot@coreboot.org, Matt DeVillier <matt.devillier@gmail.com>,
        Felix Singer <felixsinger@posteo.net>,
        Duncan Laurie <dlaurie@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Furquan Shaikh <furquan@chromium.org>,
        Justin TerAvest <teravest@chromium.org>,
        Guenter Roeck <groeck@chromium.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Paul,

On Mon, Dec 20, 2021 at 1:07 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> From: Furquan Shaikh <furquan@google.com>
>
> Dear Linux folks,
>
>
> Google Chromebooks are often built with devices sourced from different
> vendors. These need to be probed. To deal with this, the firmware =E2=80=
=93 in
> this case coreboot =E2=80=93 tags such optional devices accordingly =E2=
=80=93 I think
> this is commit fbf2c79b (drivers/i2c/generic: Add config for marking
> device as probed) =E2=80=93 and Chromium OS=E2=80=99 Linux kernel has the=
 patch at hand
> applied to act accordingly. Right after the merge, Dmitry created a
> revert, which was actively discussed for two days but wasn=E2=80=99t appl=
ied.
> That means, millions of devices shipped with such a firmware and Linux
> kernel. To support these devices with upstream Linux kernel, is there an
> alternative to applying the patch to the Linux kernel, and to support
> the shipped devices?

*sigh* I should have pushed harder, but I see it managed to
proliferate even into our newer kernels. Not having this patch should
not cause any problems, it can only hurt, because the i2c core has no
idea how to power up and reset the device properly. The only downside
of not having this patch is that we may have devices in sysfs that are
not connected to actual hardware. They do now cause any problems and
is how we have been shipping ARM-based devices where we also dual- and
triple-source components. However if we were to have a device that
switches between several addresses (let's say device in bootloader
mode uses 0x10 address and in normal mode 0x20) this "probing" may
result in device not being detected at all.

If we wanted to do this correctly, coreboot would have to implement
full power and reset control and also add drivers for I2C controllers
to be able to communicate with peripherals, and then adjust _STA
methods to report "not present" when the device is indeed absent. And
note that even in this case we would have issues with "morphing
devices", so coreboot would also need to know how to reset device out
of bootloader mode, and maybe flash firmware so device can work in
normal mode.

However coreboot does (or did?) not want to add code to handle i2c
controllers, and would like to push this knowledge to the kernel. And
the kernel does know how to handle peripherals properly, but that
knowledge lies in individual drivers, not i2c core.

We should remove "linux,probed" from coreboot and not propagate to
newer Chrome OS kernels, and keep it away from upstream.

Thanks,
Dmitry
