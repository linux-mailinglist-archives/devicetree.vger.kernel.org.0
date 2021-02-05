Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF6F63103D0
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 04:44:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231237AbhBEDmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 22:42:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbhBEDmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 22:42:13 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 199DEC061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 19:41:33 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id i63so3443923pfg.7
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 19:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=QimgKicTVKB8CFOT6U4D26kkjK2yKouyNn4xr92QBo8=;
        b=Ba7vcpAlVVM1pKfdqd93MBTwNvK7yGzCSg1TeG7nS28L1EdiJOtLAg3adCFaWTvsgN
         aimv64cc7o9IBRiTSHNkjU7kULyC2G+hpfwLThdpLoMaxQPRBS2PA+Y8BajdpKZ1Pll6
         pFBLzP+MSbTybYYPhHFGArT0D1oJrFyC0+UC19VyxwC5pvHAfbMFSIdzP3p4GojTik9u
         YMi8aqekZiYUjUUNuSILoB+V7nUcAvaCi43cW1v2gn94Gwoz+c0Z6pj9Ag2HZ5EdIcNK
         CcW6n1IFYxLGcphv+Z08i+cwNfFGIqhNKmAWDdaAB1AQtwNWufk8FDsuMyiRbhwhi6P3
         XpKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=QimgKicTVKB8CFOT6U4D26kkjK2yKouyNn4xr92QBo8=;
        b=CB+gVy1n9ZZ81P8wJSI25cJ001caQBlon3lngPidsr0FMmOSmn90Mx9CnETRbEGbTF
         ULvulsZGTsSgRXKCIETOHhlyCU0ftCYUDlmOqHS4YMDFy2W1DVYG36/OkdVU2NVdUByG
         pIeYJ2KbNa1g8APYuG2rbDgr2/juMgXL9t1Lw4SX220u88ayPVeayAYVy58Hj4jFWmVd
         sn06pfM5nhpqQEkWhI2CANYxMswv7t0e+x18jRx4SuI0Xnza1bPmVuO1MyUnyGCNpzQ/
         HlwUjRd/5R/CBQbDhOMwpLDYROeWsWP/9zj3qtR1Th+Qb86rQkY1h4P9skluK6ftYi8b
         4D6A==
X-Gm-Message-State: AOAM530c51vpTL9tOFzAVC+XYBS69gkZwg2N2iR0dSGgJa1IQJYjTjoU
        nJXASApD2BTNmhPFAxrX1AwMh3IJok4CmYS7
X-Google-Smtp-Source: ABdhPJyNNCzLC06Wm9lm94zfSUL7kPoEc4canoGBm78Qn4OO3oRu1ZZtPD3JNaP4FFmuHULjYrx16w==
X-Received: by 2002:a63:5116:: with SMTP id f22mr2248678pgb.162.1612496492592;
        Thu, 04 Feb 2021 19:41:32 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id 73sm3788903pfa.178.2021.02.04.19.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 19:41:31 -0800 (PST)
Date:   Thu, 04 Feb 2021 19:41:31 -0800 (PST)
X-Google-Original-Date: Thu, 04 Feb 2021 19:41:09 PST (-0800)
Subject:     Re: [PATCH v2 0/3] fix macb phy probe failure if phy-reset is not handled
In-Reply-To: <87a6skw31l.fsf@igel.home>
CC:     sagar.kadam@sifive.com, devicetree@vger.kernel.org,
        aou@eecs.berkeley.edu, kernel@esmil.dk, anup@brainfault.org,
        linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
        yash.shah@sifive.com, robh+dt@kernel.org,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     schwab@linux-m68k.org
Message-ID: <mhng-5072e618-a4fa-4982-a3ba-e395cde8a145@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 04 Feb 2021 02:16:54 PST (-0800), schwab@linux-m68k.org wrote:
> On Jan 13 2021, Palmer Dabbelt wrote:
>
>> On Tue, 10 Nov 2020 07:22:09 PST (-0800), sagar.kadam@sifive.com wrote:
>>> HiFive Unleashed is having VSC8541-01 ethernet phy device and requires a
>>> specific reset sequence of 0-1-0-1 in order to use it in unmanaged mode.
>>> This series addresses a corner case where phy reset is not handled by boot
>>> stages prior to linux.
>>> Somewhat similar unreliable phy probe failure was reported and discussed
>>> here [1].
>>> The macb driver fails to detect the ethernet phy device if the bootloader
>>> doesn't provide a proper reset sequence to the phy device or the phy itself
>>> is in some invalid state. Currently, the FSBL or u-boot-spl is resetting
>>> the phy device, and so there is no issue observed in the linux network
>>> setup.
>>>
>>> The series is based on linux-5.10-rc5.
>>> Patch 1: Add the OUI to the phy dt node to fix issue of missing mdio device
>>> Patch 2 and 3:
>>> 	Resetting phy needs GPIO support so add to dt and defconfig.
>>>
>>> [1] https://lkml.org/lkml/2018/11/29/154
>>>
>>> To reproduce the issue:
>>> Using FSBL:
>>> 1. Comment out VSC8541 reset sequence in fsbl/main.c
>>>    from within the freedom-u540-c000-bootloader.
>>> 2. Build and flash fsbl.bin to micro sdcard.
>>>
>>> Using u-boot:
>>> 1. Comment out VSC8541 reset sequence in board/sifive/fu540/spl.c
>>>    from mainline u-boot source code.
>>> 2. Build and flash u-boot binaries to micro sdcard.
>>>
>>> Boot the board and bootlog will show network setup failure messages as:
>>>
>>> [  1.069474] libphy: MACB_mii_bus: probed
>>> [  1.073092] mdio_bus 10090000.ethernet-ffffffff: MDIO device at address 0
>>> 	       is missing
>>> .....
>>> [  1.979252] macb 10090000.ethernet eth0: Could not attach PHY (-19)
>>>
>>> 3. Now apply the series build, and boot kernel.
>>> 4. MACB and VSC8541 driver get successfully probed and the network is set
>>>    without any failure.
>>>
>>>
>>> So irrespective of whether the prior stages handle the phy reset sequence,
>>> the probing is successful in both the cases of cold boot and warm boot.
>>>
>>> Change History:
>>> ===============================
>>> V2:
>>> -Rebased v1 on linux kernel v5.10-rc3.
>>>
>>> V1:
>>> -Ignore 4th patch as suggested and so removed it from the series.
>>> -Verified this series on 5.7-rc5.
>>>
>>> V0: Base RFC patch. Verified on 5.7-rc2
>>>
>>> Sagar Shrikant Kadam (3):
>>>   dts: phy: fix missing mdio device and probe failure of vsc8541-01
>>>     device
>>>   dts: phy: add GPIO number and active state used for phy reset
>>>   riscv: defconfig: enable gpio support for HiFive Unleashed
>>>
>>>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 ++
>>>  arch/riscv/configs/defconfig                        | 2 ++
>>>  2 files changed, 4 insertions(+)
>>
>> David pointed out I missed these, they're on fixes.  Thanks!
>
> This is now on 5.10.12, and breaks ethernet on the Hifive Unleashed:
>
> [   12.777976] macb 10090000.ethernet: Registered clk switch 'sifive-gemgxl-mgmt'
> [   12.784559] macb 10090000.ethernet: GEM doesn't support hardware ptp.
> [   12.791629] libphy: MACB_mii_bus: probed
> [   12.919728] MACsec IEEE 802.1AE
> [   12.984676] macb 10090000.ethernet eth0: Cadence GEM rev 0x10070109 at 0x10090000 irq 16 (70:b3:d5:92:f1:07)
> [   14.030319] Microsemi VSC8541 SyncE 10090000.ethernet-ffffffff:00: phy_poll_reset failed: -110
> [   14.038986] macb 10090000.ethernet eth0: Could not attach PHY (-110)

Sorry about that.  Looks like we forgot to add the special reset sequence to
the VSC8541, which the driver doesn't yet support (there's a thread about it,
but I guess I forgot to clean up the patch).  IIUC this should manifest on
master as well, so my guess is that nobody is testing the HiFive Unleashed any
more (probably a bad sign).

I'll send out a revert.  I looked at the GPIO driver and can't tell if it's
twiddling GPIO lines when probed, in which case just enabling the GPIO would
break the ethernet.  Hopefully we're OK with the GPIO driver enabled.

Thanks for testing this.
