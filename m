Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3CC3580B9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 12:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726422AbfF0KoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 06:44:21 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:37074 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbfF0KoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 06:44:20 -0400
Received: by mail-io1-f45.google.com with SMTP id e5so3680675iok.4
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 03:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bhdwCmeLwlRZ/4GZ9S8B4tPx6Z/f2FMcyMJaWntmaFI=;
        b=sJOk+MjPQYVBSdGSy/F3aJNIiLK9PptVgyZtF7ZlCEP5CH/Of4Yh4aGlHV1I8nDijB
         pnhz9XLqLEpyHOzbb7aCp2zmx/etXdOhQW1yVVebpXTdAdYRmfCDLuEj/RZGaC9ISkLM
         ERYkxLY0BrDEpLRO1E/trT7a7FW0yHqiN7UqSmMhlbU4FQQViafYuTzwiThE8cLgXEWm
         hmLnSONjsKHptGuWJH0gF3my1fm+peqzLx+dvCax//tcaH8DERrT6TXE1yD5pFhPig54
         //IkVsr7UekgTG3d9f2LLnZCh6nDVbXvdSZTQGZbMZI//OPC8Xdm/hPtOFNycVDkyhdw
         z/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bhdwCmeLwlRZ/4GZ9S8B4tPx6Z/f2FMcyMJaWntmaFI=;
        b=lolnrRw1EJe/rV8QbJniIZLYJDFNKiKGmLz8BXT7fdCSYdG6VtSPEnDxDoRDTJ3VcF
         19UZgaOQxgK4OJvj0xIaviRzE0VUqiMzHVNlcrmH1BSXjkzY2tRsainSgMGZsXq2wcxh
         eEEPSg2FBRWlFyrS1iGv8U+ZsC/8DFddY7U8QJshzKmSkspjt30k3xXIKSLjvHSZO4cT
         djHqN8tlu0DuJ2CQKnE2gkeW1Lw2L+GSC+y6RUUIDr3vWU6zM8R9gj1jN7imVwF6paLo
         ai+4SeIglZLRcaRFK6TWpOQHf8OwsLYumspbmmb+2xNB07J/VgesVV3ATwchHEOplR3L
         hhXA==
X-Gm-Message-State: APjAAAVXxPqCuQHfYfnFM5hwbXUt+KCxFnoerpNr+iJEx2qju/pFCuRq
        jlDaseQc7VPeETclbyj5bEve67drM2vnThXVgXtQkSu7
X-Google-Smtp-Source: APXvYqzsMvyajYKscZuvXGyO/uG20bY9rbOyNTfBIyX48cGkhEmIyXq+26ilHc1b1zQXOfKxvsmbY0Uiu67vRj7xpPs=
X-Received: by 2002:a02:4484:: with SMTP id o126mr3872937jaa.34.1561632259888;
 Thu, 27 Jun 2019 03:44:19 -0700 (PDT)
MIME-Version: 1.0
References: <CALtMJEBpxc+oN1Uf03F0oG-smHZazeeptE=BRX7tPpixnAgFrw@mail.gmail.com>
In-Reply-To: <CALtMJEBpxc+oN1Uf03F0oG-smHZazeeptE=BRX7tPpixnAgFrw@mail.gmail.com>
From:   Andreas Fenkart <afenkart@gmail.com>
Date:   Thu, 27 Jun 2019 12:44:08 +0200
Message-ID: <CALtMJEBEo8u0YSqqAbRY0YwnuzCByAuQ8YKt8FrPzhoJpW_YCg@mail.gmail.com>
Subject: Re: regression: nand/spi flashes listed in reversed order after "ARM:
 dts: at91: Switch to the new NAND bindings"
To:     devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Cc:     alexandre.belloni@free-electrons.com,
        "Michonski, Krzysztof" <krzysztof.michonski@digitalstrom.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fyi,

actually straight forward when also dumping the attributes:
udevadm info -a /dev/mtd0

here my rules
SUBSYSTEM=="mtd", ATTR{type}=="nand", ACTION=="add", SYMLINK+="mtd/%s{name}"
SUBSYSTEM=="mtd", ATTR{type}=="nor", ACTION=="add" SYMLINK+="mtd/spi"

/andi

Am Mi., 26. Juni 2019 um 11:36 Uhr schrieb Andreas Fenkart <afenkart@gmail.com>:
>
> After this patch, which is of course much appreciated:
>
> 1004a2977bdc7566bca87c565541c3232ed467c4
> Refs: v4.12-rc1-7-g1004a2977bdc
> Author:     Boris Brezillon <boris.brezillon@free-electrons.com>
> AuthorDate: Tue May 30 11:20:53 2017 +0200
> Commit:     Alexandre Belloni <alexandre.belloni@free-electrons.com>
> CommitDate: Wed May 31 11:55:41 2017 +0200
>
>     ARM: dts: at91: Switch to the new NAND bindings
>
>     Use the new EBI/NAND bindings to declare NAND chips and remove old NAND
>     nodes along the way.
>
>     Note that we keep using old bindings in at91rm9200.dtsi because this
>     SoC is not supported by the EBI driver.
>
> The listing and indexing of my mtd devices changed:
>
> root@after:~# cat /proc/mtd
> dev:    size   erasesize  name
> mtd0: 00080000 00010000 "spi32766.0"
> ...
> mtd4: 32000000 00080000 "rootfs"
> mtd5: 0bc00000 00080000 "config"
>
> root@before:~# cat /proc/mtd
> dev:    size   erasesize  name
> ...
> mtd3: 32000000 00080000 "rootfs"
> mtd4: 0bc00000 00080000 "config"
> mtd5: 00080000 00010000 "spi32766.0"
>
>
> I assume sorting the mtd listing in a specific order is not supported
> nor desired by the mtd maintainers. So I'm not argueing about that.
>
> But since the index of rootfs device is hard-coded in the cmdline, the
> fw-utils config file and a custom script to backup/retrieve
> configuration, this is causing me some problems.
>
> The nand is partitioned, the spi is not:
> mtdparts=mtdparts=atmel_nand:2M(foo),2M(bar),32M(baz),800M(rootfs),-(config)
>
> While the bootargs can be fixed easily by using the human readable
> name (ubi.mtd=rootfs). I can't retrieve that human readable name from
> udev alone, nor can I build something from major/minor alone, since
> the major is the same for nand/spi flash.
>
> root@before:/etc/udev/rules.d# udevadm info /dev/mtd3
> P: /devices/platform/ahb/40000000.nand/mtd/mtd3
> N: mtd3
> E: DEVNAME=/dev/mtd3
> E: DEVPATH=/devices/platform/ahb/40000000.nand/mtd/mtd3
> E: DEVTYPE=mtd
> E: MAJOR=90
> E: MINOR=6
>
> root@dSS:/etc/udev/rules.d# udevadm info /dev/mtd5
> P: /devices/platform/ahb/ahb:apb/fffc8000.spi/spi_master/spi32766/spi32766.0/mtd/mtd5
> N: mtd5
> E: DEVNAME=/dev/mtd5
> E: DEVPATH=/devices/platform/ahb/ahb:apb/fffc8000.spi/spi_master/spi32766/spi32766.0/mtd/mtd5
> E: DEVTYPE=mtd
> E: MAJOR=90
> E: MINOR=10
> E: OF_COMPATIBLE_0=st,m25p40
> E: OF_COMPATIBLE_N=1
> E: OF_FULLNAME=/ahb/apb/spi@fffc8000/m25p40@0
> E: OF_NAME=m25p40
> E: SUBSYSTEM=mtd
>
> What is the preferred to make the rootfs agnostic of a particular mtd
> listing order
