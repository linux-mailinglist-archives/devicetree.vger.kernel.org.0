Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B6513CCCD3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 05:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbhGSEBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 00:01:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbhGSEBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 00:01:40 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2612C061766
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 20:58:41 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id f12-20020a056830204cb029048bcf4c6bd9so16889073otp.8
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 20:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=endlessos.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+LbuH1gv0Z8p8POEk6Rwg6KtJYOHpK1pv64iTmdjHlE=;
        b=bry3jTPPmqQhz2Q74H5M5/vitP9J/jj90PFDihnrkuWNpbrWX7/sKASXNKdiv884pk
         8UbSz64yrusucvdZ/ja1JJmJrG/sbEKzxbxOhlx0b/kl2NcHjzB5xW2W8VBvfUjgMPPc
         l+NUHtdDsbT5ydV3Tf4ap5AvXpBFXV75L7gmFGaKekuA87/LRJceX9PJFSp9RdgRUyP5
         7BV1UZXvnyezH8d684/9a6r+Ol1GAyTxAfrkk2LWJAHHBrswjPbSjw6CnP6+b/B1FLDg
         44pw93hfUDqQsJcQ71vsdszUfKIZtX+AwOTxfiSh+905Sp9+qwi7K8fYRScJbLbwpzQJ
         8ovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+LbuH1gv0Z8p8POEk6Rwg6KtJYOHpK1pv64iTmdjHlE=;
        b=aVqh8STeqesaBozRmvVlXaKyc/Is33gsnNryHqbnOUEhOhRXCTogNTswPPcQIE/g9/
         DpCu6B83w6A9Mj2egE9gbfKObUwKd3u0jlPt4INjeEuN/g+bvYotOksXuiiuLrAR7yJ3
         c0vnXzgoEB1UOAHO7YQrltnaqA0KwfKnsf6gBs3SlVKh9K1hA8f5z1iSPjdSV2NcDQTy
         NtQVzZ7eUjf0sF/RZDfRDjp8HFZxj7NlV9KWXXHwS4Wa4MoT8267G5+9rBq4N+fqQw+V
         vLS0e1CocTmG/eMfdTltkUumZen1NwhywieqUg6N28TgH0K1kD7UFWBc5RldHS7TXxIR
         W/Gw==
X-Gm-Message-State: AOAM531A+5XecPdUg3bCDnf69Ienv2lAK2UaXDc37nLN297FtmmsclLY
        CfvbczuMRS618rfDitruq3qxbV5ZFUeN5y04ZuMAFw==
X-Google-Smtp-Source: ABdhPJwTSYQhH4xCe+n21M0lekgIZi5cdGFZbhL5AmYXNo2DcYDgnAP2k62wixIVWMH4O7rTCHqdizMzXXANz2QAot0=
X-Received: by 2002:a9d:61d9:: with SMTP id h25mr13512153otk.81.1626667120443;
 Sun, 18 Jul 2021 20:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAPpJ_ecx4byFQ+SJL3ZgFyf1q2HvGfLHhdf1khM9Znib_8iwEw@mail.gmail.com>
In-Reply-To: <CAPpJ_ecx4byFQ+SJL3ZgFyf1q2HvGfLHhdf1khM9Znib_8iwEw@mail.gmail.com>
From:   Jian-Hong Pan <jhp@endlessos.org>
Date:   Mon, 19 Jul 2021 11:57:49 +0800
Message-ID: <CAPpJ_eepsLfehv5xkk1Eu+LVrOZpU7-EBobuds3hsqSFzd6RGw@mail.gmail.com>
Subject: Re: [BUG] U-Boot makes Linux kernel boot failed with "mmc1: invalid
 bus width" on RPi 400
To:     Matthias Brugger <mbrugger@suse.com>, nsaenz@kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     bcm-kernel-feedback-list@broadcom.com, u-boot@lists.denx.de,
        linux-rpi-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        linux@endlessos.org, devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jian-Hong Pan <jhp@endlessos.org> =E6=96=BC 2021=E5=B9=B47=E6=9C=887=E6=97=
=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=8812:23=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Hi,
>
> I tried to boot Linux next kernel at tag 5.13.0-next-20210701 from
> latest U-Boot at commit 1311dd37ec ("Merge branch
> '2021-07-01-update-CI-containers'") on Raspberry Pi 400.
> * U-Boot goes with the bcm2711-rpi-400.dtb from Raspberry Pi OS
> firmware at tag 1.20210527 [1].  U-Boot is built with the
> rpi_4_defconfig.
> * The Linux next kernel goes with the corresponding
> bcm2711-rpi-400.dtb at tag 5.13.0-next-20210701.
> However, the Linux kernel is stuck at failed mmc, which keeps showing
> "mmc1: invalid bus width":
>
> [    7.776752] mmc1: invalid bus width
> [    7.781398] mmc1: error -22 whilst initialising SD card
> [   17.891183] mmc1: Timeout waiting for hardware cmd interrupt.
> [   17.900265] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI RE=
GISTER DUMP =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [   17.910046] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> [   17.919829] mmc1: sdhci: Blk size:  0x00000000 | Blk cnt:  0x00000000
> [   17.929595] mmc1: sdhci: Argument:  0x80000c08 | Trn mode: 0x00000000
> [   17.939337] mmc1: sdhci: Present:   0x1fff0001 | Host ctl: 0x00000001
> [   17.949092] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
> [   17.958827] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x0000f447
> [   17.968531] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
> [   17.978201] mmc1: sdhci: Int enab:  0x00ff1003 | Sig enab: 0x00ff1003
> [   17.987850] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> [   17.997456] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
> [   18.007044] mmc1: sdhci: Cmd:       0x0000341a | Max curr: 0x00080008
> [   18.016622] mmc1: sdhci: Resp[0]:   0x00000000 | Resp[1]:  0x00000000
> [   18.026157] mmc1: sdhci: Resp[2]:   0x00000000 | Resp[3]:  0x00000000
> [   18.035650] mmc1: sdhci: Host ctl2: 0x00000000
> [   18.043066] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x00000000
> [   18.052540] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> [   18.139162] mmc1: invalid bus width
> [   18.144682] mmc1: error -22 whilst initialising SD card
> [   19.498785] mmc1: invalid bus width
> [   19.503344] mmc1: error -22 whilst initialising SD card
>
> The full log can be foud at
> https://gist.github.com/starnight/dec6e6ee627f19c2d291f3ff973b06fa#file-u=
boot-kernel-log
>
> In Linux kernel, SD card driver checks the bus_width bits for
> validation [2] in mmc_decode_scr(). The value of bus_width comes from
> the resp, which is assigned from mmc_card's raw_scr.
> However, the values of resp[0..3] are 0, which means no
> SD_SCR_BUS_WIDTH_1, nor SD_SCR_BUS_WIDTH_4.
> After studied the call trace of mmc_decode_scr(), learned that
> mmc_sd_init_card() -> mmc_app_send_scr() gets and assigns mmc_card's
> raw_scr value [3] with "DMA" mechanism.
>
> Therefore, I try to boot the same Linux next kernel with the same
> corresponding bcm2711-rpi-400.dtb at tag 5.13.0-next-20210701
> directly, without u-boot.
> The system boots up and the mmc works correctly.  The full log can be
> found at https://gist.github.com/starnight/dec6e6ee627f19c2d291f3ff973b06=
fa#file-kernel-without-uboot-log
>
> Is there something special that should be done in U-Boot for Raspberry Pi=
 400?
>
> [1] https://github.com/raspberrypi/firmware/blob/1.20210527/boot/bcm2711-=
rpi-400.dtb
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/t=
ree/drivers/mmc/core/sd.c?h=3Dnext-20210701#n239
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/t=
ree/drivers/mmc/core/sd_ops.c?h=3Dnext-20210701#n297

I notice that mainline kernel 5.14-rc* includes the Raspberry Pi 400
device tree commits.  So, I build latest kernel 5.14-rc2.  The kernel
still boot failed at "mmc1: invalid bus width" on RPi 400.

To make it easy to track, I filed this bug on kernel's bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=3D213753

BR.
Jian-Hong Pan
