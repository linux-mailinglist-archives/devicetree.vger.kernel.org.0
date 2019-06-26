Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D054565B8
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 11:36:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbfFZJgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 05:36:18 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:33650 "EHLO
        mail-io1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbfFZJgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 05:36:17 -0400
Received: by mail-io1-f48.google.com with SMTP id u13so3161170iop.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 02:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=3bXdon3OqBDizi1U9rxgE4KJiCWUb9IjTneJEpKAvGI=;
        b=SgWg6g1EBeYsH3FIxYNtCSdZJbt0/O+Ft2Zdr4ZSHO70oiWZKXCKayEwu5ZYXSucJ3
         2/VZGyaFwovczFBLT9OuRs7kBKF2tPOj3FXJWvLU+Oyy/WGDDOul500G5WNoNtb642k0
         Ph1W915M7tWxFUzqNKZfvgvDeKQ2rjE6rP8Anky3ev/qGoZ8eYHXpQp28Deaoxz+xfMV
         ZvrxfTrOTSTlhg0pBhwTFZ5DfAnnTm7DrHIPVsagrjjRiVKp+6z8NHKc0NA1QBCVzc4o
         XJ7/krSH77DK/VM8zZmLpQgd0D0BgtPsJMpZAB+ws+QxGWgEBlEwZOlYGA3CpxVO4lTW
         hNyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=3bXdon3OqBDizi1U9rxgE4KJiCWUb9IjTneJEpKAvGI=;
        b=iu75Do/x1ViXhzHLB931oGxZf1nE7VIKs0xNGXpVSXx4G3ugm0NQuC6X2VMkBqo7jh
         qEvhTef8Kd7Y8WzL4cOda8IPMd3JSD76R26iBS/wrNIXQTJHxQ//orgd6z0hDbGhjgkU
         3IRhki7ud6aiw0LOQf3o3u6jVmWPCw1hUTREZxrlOQ2zCohfu2xfnBj6LXbxFMp6lK7w
         RMQcVjdGXWao7zwYlfwGXVhPQ0bsKQiA+wqQQCx7ze4euSpkVpe3v0a0HzR3gBqt/YyJ
         v2qR0Fis1dZela+dOazBPIqBB+Zg0Db4EAT6kLGz6ispDdigpUpPIIdquS71uc5BGmIn
         +lqg==
X-Gm-Message-State: APjAAAXjJzulRCoX6LczXzfpfAeAC/1GOk23EfhZ3sM+V1wafErfMFD4
        8bO8BgZ0cXxkm72EKVbXIzIOjjtgxyV9OfYhOxHgOWNy
X-Google-Smtp-Source: APXvYqzv2aUAM9Ilsa3f+/W3afiYJiXv5OhnyQiV/J0mBS05dl45dX2W/kzYMBf6CXJpWbWDHS0DOiqwz3n35/wa5/I=
X-Received: by 2002:a5e:8a05:: with SMTP id d5mr19055iok.147.1561541776831;
 Wed, 26 Jun 2019 02:36:16 -0700 (PDT)
MIME-Version: 1.0
From:   Andreas Fenkart <afenkart@gmail.com>
Date:   Wed, 26 Jun 2019 11:36:06 +0200
Message-ID: <CALtMJEBpxc+oN1Uf03F0oG-smHZazeeptE=BRX7tPpixnAgFrw@mail.gmail.com>
Subject: regression: nand/spi flashes listed in reversed order after "ARM:
 dts: at91: Switch to the new NAND bindings"
To:     devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Cc:     alexandre.belloni@free-electrons.com,
        "Michonski, Krzysztof" <krzysztof.michonski@digitalstrom.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After this patch, which is of course much appreciated:

1004a2977bdc7566bca87c565541c3232ed467c4
Refs: v4.12-rc1-7-g1004a2977bdc
Author:     Boris Brezillon <boris.brezillon@free-electrons.com>
AuthorDate: Tue May 30 11:20:53 2017 +0200
Commit:     Alexandre Belloni <alexandre.belloni@free-electrons.com>
CommitDate: Wed May 31 11:55:41 2017 +0200

    ARM: dts: at91: Switch to the new NAND bindings

    Use the new EBI/NAND bindings to declare NAND chips and remove old NAND
    nodes along the way.

    Note that we keep using old bindings in at91rm9200.dtsi because this
    SoC is not supported by the EBI driver.

The listing and indexing of my mtd devices changed:

root@after:~# cat /proc/mtd
dev:    size   erasesize  name
mtd0: 00080000 00010000 "spi32766.0"
...
mtd4: 32000000 00080000 "rootfs"
mtd5: 0bc00000 00080000 "config"

root@before:~# cat /proc/mtd
dev:    size   erasesize  name
...
mtd3: 32000000 00080000 "rootfs"
mtd4: 0bc00000 00080000 "config"
mtd5: 00080000 00010000 "spi32766.0"


I assume sorting the mtd listing in a specific order is not supported
nor desired by the mtd maintainers. So I'm not argueing about that.

But since the index of rootfs device is hard-coded in the cmdline, the
fw-utils config file and a custom script to backup/retrieve
configuration, this is causing me some problems.

The nand is partitioned, the spi is not:
mtdparts=mtdparts=atmel_nand:2M(foo),2M(bar),32M(baz),800M(rootfs),-(config)

While the bootargs can be fixed easily by using the human readable
name (ubi.mtd=rootfs). I can't retrieve that human readable name from
udev alone, nor can I build something from major/minor alone, since
the major is the same for nand/spi flash.

root@before:/etc/udev/rules.d# udevadm info /dev/mtd3
P: /devices/platform/ahb/40000000.nand/mtd/mtd3
N: mtd3
E: DEVNAME=/dev/mtd3
E: DEVPATH=/devices/platform/ahb/40000000.nand/mtd/mtd3
E: DEVTYPE=mtd
E: MAJOR=90
E: MINOR=6

root@dSS:/etc/udev/rules.d# udevadm info /dev/mtd5
P: /devices/platform/ahb/ahb:apb/fffc8000.spi/spi_master/spi32766/spi32766.0/mtd/mtd5
N: mtd5
E: DEVNAME=/dev/mtd5
E: DEVPATH=/devices/platform/ahb/ahb:apb/fffc8000.spi/spi_master/spi32766/spi32766.0/mtd/mtd5
E: DEVTYPE=mtd
E: MAJOR=90
E: MINOR=10
E: OF_COMPATIBLE_0=st,m25p40
E: OF_COMPATIBLE_N=1
E: OF_FULLNAME=/ahb/apb/spi@fffc8000/m25p40@0
E: OF_NAME=m25p40
E: SUBSYSTEM=mtd

What is the preferred to make the rootfs agnostic of a particular mtd
listing order
