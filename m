Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 755C6490AC1
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 15:51:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237194AbiAQOvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 09:51:33 -0500
Received: from mout.kundenserver.de ([212.227.17.10]:42353 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237192AbiAQOvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 09:51:33 -0500
Received: from mail-wm1-f50.google.com ([209.85.128.50]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M5g68-1nGe5Z2W6s-007Cap for <devicetree@vger.kernel.org>; Mon, 17 Jan
 2022 15:51:31 +0100
Received: by mail-wm1-f50.google.com with SMTP id k5so11799269wmj.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:51:31 -0800 (PST)
X-Gm-Message-State: AOAM532drCIVwfX9V9CDyxFnIF+4+Wh3v4CJJKRlgdco0yNC46Pfy/Ii
        i3pp5r53DwgOk0i8fWKkEzoOWZQFpyklBTxy2UI=
X-Google-Smtp-Source: ABdhPJz0ptDEc+yX5cVaNMsNpzr1ExJC37lgKrbuG6Pso82OS1R1bYOXUvXKG2TAwUf3o5XJNUnHZW0aATTGv4WPv1A=
X-Received: by 2002:a7b:ce96:: with SMTP id q22mr28292181wmj.82.1642431091240;
 Mon, 17 Jan 2022 06:51:31 -0800 (PST)
MIME-Version: 1.0
References: <20211117035106.321454-1-joel@jms.id.au> <20211117035106.321454-4-joel@jms.id.au>
 <CACPK8XcSPiOoJZ4jyJySvCiW+EXxSVsxiEcK2eOZjGY9b1vrjA@mail.gmail.com>
In-Reply-To: <CACPK8XcSPiOoJZ4jyJySvCiW+EXxSVsxiEcK2eOZjGY9b1vrjA@mail.gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 17 Jan 2022 15:51:15 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3MRf0aGt1drkgsuZyBbeoy+S7Ha18SBM01q+3f33oL+Q@mail.gmail.com>
Message-ID: <CAK8P3a3MRf0aGt1drkgsuZyBbeoy+S7Ha18SBM01q+3f33oL+Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: aspeed: Add secure boot controller support
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:Hlp7IQJP/JDP0gTQUNjw2gCEQH27EzsG14K4Ec6qT/rBMd/m/Eo
 hbm/647KXI3qEYA4mg85cLol8oTx6Lv2KGblxTgri2zJwvioVKA7S9y/NVyP1E47FnuZCDI
 916ZUg+z3n9ZfLPW5Tfuijs0YZ+no7NZGla+ujvGU+o7GDGMoilI9bQ61maFKqlGkizVKzb
 v/6hMah/0FfX9LyApKSDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rUOTR1NAG7k=:2VFrNVORsigPen1gLzdqGC
 xvzARl1Gx3zoOugN08TVIxmH/CASZb93cqIoFWtKUZftyMJ39x5xRAVhk0JLgIy22TH1/U63e
 ESmcARoHjOMdkABMMCIoQx8sstDINzFE2M3eZCnX3ZzPzorTkokZXbxb5OJS34ifAVdnO51Zy
 v2ROx1WfX7vs0weCGIRJnTb6LuFBqXyDhv4E2NOFTjYP9+ZjKawD0zqr+mBphU3kLRnPeO+M5
 734TFw3BOz4gZAGrCPIHp2/noxaU3vwDwi3/OR41L3L/3SJVvEBRbL9SyhvHIrX3AlCuA47YC
 Riv+10PNcKXAo4nm0he+GJM3vawy0xkhQFaw5Cw1NLzBJUGu9ENaWLE+bz0xlfXsd3jdYNQq4
 OoTLmU3EqO5xV6OTw5UUhbaW2GvpWMN062XaSlR6U8kqFWmMNs0l4aIDnAPj4rdF4oq3zYbd9
 uRTKat+sjI1fupzIi9dTp9BIE1njRoxltRa1Yyoigzh2UO+6C0Qx61yF63jC5+LtvdoCrsnt2
 VACT/flncr0JP8TZIxlIRlurn6Y10IbeufikPxpCo96RzFKyd8FqCBDhA3z3XbId0cFqcvnbV
 Bpus0ec1HtZwrOP6KcvPZAglkO3OWJXKUSrzHX2ShabA4Q2NoJ+jqrDtiESz1JX5xagY6bUpg
 0iRAAB3TRe+oSKw4KAS/z8r6Ohvsm15RxsAv+pa6MHgfUB+Hjeu7eDlG029vTJO+N47TqQqPm
 rClcnPANFfO8+7VzQ8os5KdM4i4g6vypOc6MfS56WLMwArc0tqMTy7/N7Sh2GJq9vWbK+4ZKD
 t5+ZKGNB4QkAuM1BWFCgrHf73vLQjt/awEXJEWzov51mIlBLLU=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 11, 2022 at 12:29 AM Joel Stanley <joel@jms.id.au> wrote:
> On Wed, 17 Nov 2021 at 03:51, Joel Stanley <joel@jms.id.au> wrote:
> >
> > This reads out the status of the secure boot controller and exposes it
> > in sysfs.
> >
> > An example on a AST2600A3 QEMU model:
> >
> >  # grep . /sys/bus/soc/devices/soc0/*
> >  /sys/bus/soc/devices/soc0/abr_image:0
> >  /sys/bus/soc/devices/soc0/family:AST2600
> >  /sys/bus/soc/devices/soc0/low_security_key:0
> >  /sys/bus/soc/devices/soc0/machine:Rainier 2U
> >  /sys/bus/soc/devices/soc0/otp_protected:0
> >  /sys/bus/soc/devices/soc0/revision:A3
> >  /sys/bus/soc/devices/soc0/secure_boot:1
> >  /sys/bus/soc/devices/soc0/serial_number:888844441234abcd
> >  /sys/bus/soc/devices/soc0/soc_id:05030303
> >  /sys/bus/soc/devices/soc0/uart_boot:1
>
> Quoting from your response to my pull request:
>
> > - I actually want to avoid custom attributes on soc device instances as much
> >   as possible. I have not looked in detail at what you add here, but the
> >   number of custom attributes means we should discuss this properly.
>
> Can you explain the reasoning here?
>
> I am a bit surprised given we have this nice feature in struct
> soc_device_attribute:
>
> struct soc_device_attribute {
> ...
>         const struct attribute_group *custom_attr_group;
> };

I have two main concerns:

- any attribute that makes sense across multiple SoC families should probably be
  part of the standard set of attributes. Ideally this could fit
within the existing
  attributes, but if you can make a reasonable case for adding further
ones, that
  is fine as well. The standard attributes can then also be accessed from within
  the kernel with soc_device_match(), rather than just being available
to user space.

- The attributes should all be used to identify the SoC, not a
particular part of
  the SoC that is better represented as a separate device.

If you are adding five attributes at once, it's likely that these
don't all fit the
constraints, though I had not yet looked at the implementation.

From what I see in

+static ssize_t abr_image_show(struct device *dev, struct
device_attribute *attr, char *buf)
+{
+       return sprintf(buf, "%d\n", !!(security_status & ABR_IMAGE_SOURCE));
+}
+
+static ssize_t low_security_key_show(struct device *dev, struct
device_attribute *attr, char *buf)
+{
+       return sprintf(buf, "%d\n", !!(security_status & LOW_SEC_KEY));
+}
+
+static ssize_t otp_protected_show(struct device *dev, struct
device_attribute *attr, char *buf)
+{
+       return sprintf(buf, "%d\n", !!(security_status & OTP_PROTECTED));
+}
+
+static ssize_t secure_boot_show(struct device *dev, struct
device_attribute *attr, char *buf)
+{
+       return sprintf(buf, "%d\n", !!(security_status & SECURE_BOOT));
+}
+
+static ssize_t uart_boot_show(struct device *dev, struct
device_attribute *attr, char *buf)
+{
+       return sprintf(buf, "%d\n", !(security_status & UART_BOOT));
+}

it appears that these are related to how the system was started, which doesn't
fit either of the requirements: the same information may be useful for
non-aspeed
systems, so it would be good to have it in a standardized interface rather than
vendor extensions, and it doesn't really identify the SoC but instead provides
information from a device that is inside of the SoC.

Maybe this could be turned into a generalized interface similar to soc_device
that exposes the boot status in sysfs? We have a couple of files that
determine e.g. whether the kernel was booted securely, and those could
all hook up here. It doesn't have to be anything complex, just a node under
/sys/firmware or /sys/power that has a couple of documented attributes
that can be filled by drivers.

          Arnd
