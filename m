Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF744AB633
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 09:12:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232878AbiBGIB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 03:01:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346670AbiBGHxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 02:53:12 -0500
X-Greylist: delayed 304 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 06 Feb 2022 23:53:11 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C65FEC043184
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 23:53:11 -0800 (PST)
Received: from mail-wm1-f49.google.com ([209.85.128.49]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MWRi7-1nom6w2EYN-00XwgE; Mon, 07 Feb 2022 08:48:05 +0100
Received: by mail-wm1-f49.google.com with SMTP id m126-20020a1ca384000000b0037bb8e379feso2647469wme.5;
        Sun, 06 Feb 2022 23:48:05 -0800 (PST)
X-Gm-Message-State: AOAM532/xzmHqMR3GdbltIzfgolNMSG0PRXz4lX0G0L+v69UXwoqL9T3
        /J1r6iTQGUYcTVfZxZdvsEsqz9makRyvSay+3Kk=
X-Google-Smtp-Source: ABdhPJzhotXNi3o7Bjf12esCBmf/Bh5c8kbjLviW3EamVwNL/NuFmAAw96LCXtGzngY1wsRmXm7iu0nKrCEtxEOVB0s=
X-Received: by 2002:a05:600c:1f06:: with SMTP id bd6mr9869577wmb.98.1644220085130;
 Sun, 06 Feb 2022 23:48:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1644212476.git.tonyhuang.sunplus@gmail.com> <b96f039dc071b1d32bb52fa283fd8afc6d3349cc.1644212476.git.tonyhuang.sunplus@gmail.com>
In-Reply-To: <b96f039dc071b1d32bb52fa283fd8afc6d3349cc.1644212476.git.tonyhuang.sunplus@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 7 Feb 2022 08:47:48 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0zNeaeOzC_tPb1KDbyktLpjUJCdEu=C6t_QX4pB9TKnQ@mail.gmail.com>
Message-ID: <CAK8P3a0zNeaeOzC_tPb1KDbyktLpjUJCdEu=C6t_QX4pB9TKnQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] misc: Add iop driver for Sunplus SP7021
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        gregkh <gregkh@linuxfoundation.org>,
        Tony Huang <tony.huang@sunplus.com>,
        =?UTF-8?B?V2VsbHMgTHUg5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:3KsT6qnmUt+hn7hnz9+eTTcEBG8JFBBCpUvwNMK0pS3JxW0sTr2
 lrOVpdaf7OiEOBtJ0BeRcEanP+5/BExd2Lq2LFC5UJo4S1vInQcC2xfWfoFLX2BLS4/fZTo
 +8zJphq2uM9VVNErDfU9eh5Uw1dx9w8Wt9OAnBJOd5p4mDXuoC1/u34gDAtRa8g6sP1+760
 GUe9Yls+4rcuV5THVnNmw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:21bbsXo7VW0=:GK8fuCjezpNbcJvB6R6flh
 rxZWshHql22zV4Bad1O0FQ4HEwibQUG7ri6NwcZqCrwOYp0Xr/iIoI9WySWxEuf35OodTo8HB
 /CxYrp/vtjg8HMp0o1t9cBUBGLjZTzdLfztKcWh4crT1gPEF4bZDLDDQGoBZ37AkkG/ML9fw7
 IweMq4ZforedaHo3xsVtnta4C8l/MyoG4S6uBZDHr+NiCoZ/jnuqx3wuw7+C53Db624jnyMS3
 zA7yL32QqG5/NJJrkddFyeN6ahxxwWWHjF98lPFi3ZrasnfDznTqHNYS+02sijU9bIFzzd/ZM
 MbhoAz3+m1XBmIm9Ub19VIqdZVQuBubclcQnJgKBb64GGJwiAbqjdUGvllYndO2Gmr9S32gJN
 /5V7mphWJaiox501qYr2aMAaAt2ibTsdV7+TcIbSg/fYQNRjLUXNejlyYLmbUDM6TuFZDhtI3
 lIBkw4WV2kXH+Iswp4v0LRGx7DQBRJwxgefn5vNk3Zup/UYALn4E+GAjs1QgGS1gZN9+6Z9mg
 fbEbC9R6wUI+xx8NNQyhGGEeG3716SjY7w8pold/Uyrnusd830zrWMWR74g0udZyPEoyTbCpv
 HEFtlcAo0kVkk65yhY/gXOvOk6MH6r0pzpSu+c7NpyjWbRfh6+K/URT75cz7Eh/02VSA1lEpu
 E6lv5wEfcP0lf3esHefV1SH+Yk8MsekEf+fbXlz+KE1csiXj1SB9L1OkLLKumeXfSBlQBwvtF
 MH1nLlyGx9f1c3P+JPW8WQy9GQ/1er/jW3Hwa8lv0/Bdy6itXSg2LrNKNyWUXZ+1CFJb5IINV
 45SEtoy+22ymPMmd5H0RpmpPf/J1rk7EMa/s9HCls8RbavyQp4=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 7, 2022 at 7:30 AM Tony Huang <tonyhuang.sunplus@gmail.com> wrote:
>
> IOP(8051) embedded inside SP7021 which is used as
> Processor for I/O control, monitor RTC interrupt and
> cooperation with CPU & PMC in power management purpose.
> The IOP core is DQ8051, so also named IOP8051,
> it supports dedicated JTAG debug pins which share with SP7021.
> In standby mode operation, the power spec reach 400uA.
>
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v8:
>  - Addressed comments from Greg KH.
>
>  Documentation/ABI/testing/sysfs-platform-soc@B |  28 ++
>  MAINTAINERS                                    |   2 +
>  drivers/misc/Kconfig                           |  20 ++
>  drivers/misc/Makefile                          |   1 +
>  drivers/misc/sunplus_iop.c                     | 463 +++++++++++++++++++++++++
>  5 files changed, 514 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-platform-soc@B
>  create mode 100644 drivers/misc/sunplus_iop.c
>
> diff --git a/Documentation/ABI/testing/sysfs-platform-soc@B b/Documentation/ABI/testing/sysfs-platform-soc@B
> new file mode 100644
> index 0000000..d26d6f5
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-platform-soc@B
> @@ -0,0 +1,28 @@
> +What:          /sys/devices/platform/soc@B/9c000400.iop/sp_iop_mailbox
> +Date:          January 2022
> +KernelVersion: 5.16
> +Contact:       Tony Huang <tonyhuang.sunplus@gmail.com>
> +Description:
> +               Show IOP's mailbox0 register data.
> +               Format: %x
> +
> +What:          /sys/devices/platform/soc@B/9c000400.iop/sp_iop_mode
> +Date:          January 2022
> +KernelVersion: 5.16
> +Contact:       Tony Huang <tonyhuang.sunplus@gmail.com>
> +Description:
> +               Read-Write.
> +
> +               Write this file.
> +               Operation mode of IOP is switched to standby mode by writing
> +               "1" to sysfs.
> +               Operation mode of IOP is switched to normal mode by writing
> +               "0" to sysfs.
> +               Writing of other values is invalid.
> +
> +               Read this file.
> +               Show operation mode of IOP. "0" is normal mode. "1" is standby
> +               mode.
> +               Format: %x

As discussed before, I would suggest leaving out all custom attributes for now,
and first hooking up the driver to all the in-kernel subsystems.

The mailbox0 register data definitely feels like an implementation detail,
not something that should be exposed to user space as an
interface.

For standby mode, this would normally be handled by the
power management subsystem in the kernel. not a custom
interface. From your earlier description, I assume this interface
puts the main CPU into standby mode, not the IOP, right?

CPU standby is handled by the cpuidle subsystem, so you
need a driver in drivers/cpuidle/ to replace your sysfs attribute.
If you plan to hook up the driver to multiple subsystems, keeping
a generic driver file is ok, so  you'll end up with two driver
modules, with one of them calling into the other, using
EXPORT_SYMBOL() to link between them.

         Arnd
