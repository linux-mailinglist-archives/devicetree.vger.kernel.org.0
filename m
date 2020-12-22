Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3EE92E04AB
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 04:20:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725962AbgLVDUP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 22:20:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbgLVDUO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 22:20:14 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3DE6C0613D3
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 19:19:28 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id g15so2603861pgu.9
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 19:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=UrETX7+k+oMxj1ADA1makxBY/fYwC199e2h31jHKq8Y=;
        b=KzasxadSxuqu/PLzZSZMPjy96lKqpfxlIHGEgXKjyvGOEm+d1vBR8jgf8hcG9rNYbG
         plpPQiiRh0x3aapu4u2TeYrHNsIhCv8e+WQ11hOIllsbmiuNIxqy6jx4zqpA2MXgmZUy
         qLJwXzkxuxGTdqr2UGktmW+g9GPK/Ja4keSCMbEt+u5HWUKf6GBlAWwP+tYBDJoqRm7V
         rcNU0jRSOzx1qjx2sl6LjFdUyREtXuPMYrHb6EUIBr8tBFKhWoc+3ukKcusoljLn1qvr
         0+ZSzVEd+V1GjSyWuYKdagoDv7BTbeDJw02ZiMhfUDdsRf3S1JJkR25HKIejDt1SjOZe
         6jMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=UrETX7+k+oMxj1ADA1makxBY/fYwC199e2h31jHKq8Y=;
        b=fvlPV2mqpiggJOZTbcPaGuisjZpwThBCA0cp5zz1iI4yn1sJ9uym4SdiHdJTVWDIb9
         foTJR7qAw/QGKQJ0xhUDUm9+fcpNxe6zXYVU7THMhGF9MLMbGOAq9GLW0nPEgdJeXNF7
         rwtKxn7+vsHrUos4ucubJUewg7UFfeH2qNI+hdWHDHcdymjdvfkgPT/kxwqlzWO/dIW9
         SkJTh7+Uv0ruGsgi62iTBRc545YrRz3BtHMxWCbweZ1U87qrY9zcQmWTNRIcIJIOU8yu
         O+NzeS8B/3Gt8Ov3oGh5yVo8OePKTXKEKOdcZ5UZP0hVJWb2wmu8zKDta4kmApcJNU0f
         OFkQ==
X-Gm-Message-State: AOAM532XPEKeQGjo40n6M1sCuMFCVN24vEqWobLx3jPVbO343cmK82IB
        mAlzd8l1ZRCwdVLVhzXc/8n/Yg==
X-Google-Smtp-Source: ABdhPJwKQozmbfZzu49I4FjagYuGJagnadN4PuqSMjW6Oa9r48r5iDvLi0AtL8lPQAXBh7WqDR6TlQ==
X-Received: by 2002:a63:445a:: with SMTP id t26mr17871098pgk.402.1608607168059;
        Mon, 21 Dec 2020 19:19:28 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id a29sm18424156pfr.73.2020.12.21.19.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 19:19:27 -0800 (PST)
Date:   Mon, 21 Dec 2020 19:19:27 -0800 (PST)
X-Google-Original-Date: Mon, 21 Dec 2020 19:19:25 PST (-0800)
Subject:     Re: [PATCH v3 0/5] Add Microchip PolarFire Soc Support 
In-Reply-To: <20201204085835.2406541-1-atish.patra@wdc.com>
CC:     linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
        aou@eecs.berkeley.edu, Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>, bin.meng@windriver.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org,
        Ivan.Griffin@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, Conor.Dooley@microchip.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-2a16d74b-c896-4ad0-9d02-87b3b09ee3be@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Dec 2020 00:58:30 PST (-0800), Atish Patra wrote:
> This series adds minimal support for Microchip Polar Fire Soc Icicle kit.
> It is rebased on v5.10-rc6 and depends on clock support.
> Only MMC and ethernet drivers are enabled via this series.
> The idea here is to add the foundational patches so that other drivers
> can be added to on top of this. The device tree may change based on
> feedback on bindings of individual driver support patches.
>
> This series has been tested on Qemu and Polar Fire Soc Icicle kit.
> The following qemu series is necessary to test it on Qemu.
>
> The series can also be found at.
> https://github.com/atishp04/linux/tree/polarfire_support_upstream_v3
>
> I noticed the latest version of mmc driver[2] hangs on the board with
> the latest clock driver. That's why, I have tested with the old clock
> driver available in the above github repo.

IIRC the previous version was an RFC, but this is a PATCH.  I'd be generally
happy to take it on for-next, but I don't want to merge something that doesn't
boot and that I don't have any way to fix (I don't have one of the boards yet).

> [1] https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg08582.html
> [2] https://www.spinics.net/lists/devicetree/msg383626.html
>
> Changes from v2->v3:
> 1. Fixed a typo in dt binding.
> 2. Included MAINTAINERS entry for PolarFire SoC.
> 3. Improved the dts file by using lowercase clock names and keeping phy
>    details in board specific dts file.
>
> Changes from v1->v2:
> 1. Modified the DT to match the device tree in U-Boot.
> 2. Added both eMMC & SDcard entries in DT. However, SD card is only enabled
>    as it allows larger storage option for linux distros.
>
> Atish Patra (4):
> RISC-V: Add Microchip PolarFire SoC kconfig option
> dt-bindings: riscv: microchip: Add YAML documentation for the
> PolarFire SoC
> RISC-V: Initial DTS for Microchip ICICLE board
> RISC-V: Enable Microchip PolarFire ICICLE SoC
>
> Conor Dooley (1):
> MAINTAINERS: add microchip polarfire soc support
>
> .../devicetree/bindings/riscv/microchip.yaml  |  28 ++
> MAINTAINERS                                   |   8 +
> arch/riscv/Kconfig.socs                       |   7 +
> arch/riscv/boot/dts/Makefile                  |   1 +
> arch/riscv/boot/dts/microchip/Makefile        |   2 +
> .../microchip/microchip-mpfs-icicle-kit.dts   |  72 ++++
> .../boot/dts/microchip/microchip-mpfs.dtsi    | 331 ++++++++++++++++++
> arch/riscv/configs/defconfig                  |   4 +
> 8 files changed, 453 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/riscv/microchip.yaml
> create mode 100644 arch/riscv/boot/dts/microchip/Makefile
> create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
