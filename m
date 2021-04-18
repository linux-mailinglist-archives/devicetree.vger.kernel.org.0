Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE36036333D
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 05:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236738AbhDRD1E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 23:27:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231277AbhDRD1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 23:27:04 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D8BC06175F
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 20:26:34 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e14so2654055ils.12
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 20:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GhbECeGyzRtXiWbJRfZBM4VJiTtUc/ySzbQfVi5aXX4=;
        b=OaVcxRUn6l0+mDaTiJsiWTF3rb7iInX+gn5zDxGEO29mlPe36A3kkXg48zAFhZxWIW
         Ib/F6bbebEosb+i1uNrGYnxTQxokkuXMw/xnWv8VsFkN0H7ZcIKatXdgzN8YWo9V9Zby
         AOsQ0KtkhYpNWf2lVek77gPSu1EaCtk9cH0Q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GhbECeGyzRtXiWbJRfZBM4VJiTtUc/ySzbQfVi5aXX4=;
        b=GHxPrXyXL0cVuzOX8RNnXXB9w3D2Vn03ZEvMyHe4zd3ez1aYCPD4n4SI1yteLfh9Fe
         4x4tpJAXLniafXOlN10hl+qq6ZvqMzqbJnx7Idhg6syv2Pb5M03et6+f5iQQwlyAthGw
         QA2W7pHMtbHbxNcTOqCyVmgLMnWvg2ZhhDjJXmxrR30fShP43+0zQ2V9yRQ8KYy1vz0Q
         X6GIR0k+1UFd7oDvWKWtl/MWmmR+xfJfnUwg/U2H2qbhQJKH0ZrMPZxLzdT1aFwhfBJH
         Scfz1+vbn2Xg7RMH70JURurzQfZS/OsLAMuH9WNEZ7h4ISpYEPcwnm2YioGsEzZJCxe7
         3zSQ==
X-Gm-Message-State: AOAM533rFS2fV3+dj1P8wjBqdCfZ1kx4oBQzhSebN/4dpdlbSiIe1aVN
        ptm4GsQdDPL3oOBUMst2LteB0R6DhpCMEbMPLVk5
X-Google-Smtp-Source: ABdhPJwUwbhXCzMM5SpTGc47CRl0FHUrP2ttdwB337kADxHsLjfNM6cT2s2vx7YS95uvjnOGOHGVcMFtZexdnZrfnfE=
X-Received: by 2002:a05:6e02:12c4:: with SMTP id i4mr13129741ilm.79.1618716394108;
 Sat, 17 Apr 2021 20:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210303200253.1827553-1-atish.patra@wdc.com> <mhng-13c067eb-0011-408d-83f4-2950c1e791fa@palmerdabbelt-glaptop>
In-Reply-To: <mhng-13c067eb-0011-408d-83f4-2950c1e791fa@palmerdabbelt-glaptop>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Sat, 17 Apr 2021 20:26:22 -0700
Message-ID: <CAOnJCUKtt3LF0zh6dKAAUtbCKsYCMby5TasA59fY2hpODX3vnQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add Microchip PolarFire Soc Support
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     Atish Patra <Atish.Patra@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>, bjorn@kernel.org,
        devicetree <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, Conor.Dooley@microchip.com,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Ivan.Griffin@microchip.com, Lewis.Hanly@microchip.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 9:17 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Wed, 03 Mar 2021 12:02:48 PST (-0800), Atish Patra wrote:
> > This series adds minimal support for Microchip Polar Fire Soc Icicle kit.
> > It is rebased on v5.12-rc1 and depends on clock support.
> > Only MMC and ethernet drivers are enabled via this series.
> > The idea here is to add the foundational patches so that other drivers
> > can be added to on top of this. The device tree may change based on
> > feedback on bindings of individual driver support patches.
> >
> > This series has been tested on Qemu and Polar Fire Soc Icicle kit.
> > It depends on the updated clock-series[2] and macb fix[3].
> > The series is also tested by Lewis from Microchip.
> >
> > The series can also be found at.
> > https://github.com/atishp04/linux/tree/polarfire_support_upstream_v4
> >
> > [1] https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg08582.html
> > [2] https://www.spinics.net/lists/linux-clk/msg54579.html
> >
> > Changes from v3->v4:
> > 1. Fixed few DT specific issues.
> > 2. Rebased on top of new clock driver.
> > 3. SD card functionality is verified.
> >
> > Changes from v2->v3:
> > 1. Fixed a typo in dt binding.
> > 2. Included MAINTAINERS entry for PolarFire SoC.
> > 3. Improved the dts file by using lowercase clock names and keeping phy
> >    details in board specific dts file.
> >
> > Changes from v1->v2:
> > 1. Modified the DT to match the device tree in U-Boot.
> > 2. Added both eMMC & SDcard entries in DT. However, SD card is only enabled
> >    as it allows larger storage option for linux distros.
> >
> > Atish Patra (4):
> > RISC-V: Add Microchip PolarFire SoC kconfig option
> > dt-bindings: riscv: microchip: Add YAML documentation for the
> > PolarFire SoC
> > RISC-V: Initial DTS for Microchip ICICLE board
> > RISC-V: Enable Microchip PolarFire ICICLE SoC
> >
> > Conor Dooley (1):
> > MAINTAINERS: add microchip polarfire soc support
> >
> > .../devicetree/bindings/riscv/microchip.yaml  |  27 ++
> > MAINTAINERS                                   |   8 +
> > arch/riscv/Kconfig.socs                       |   7 +
> > arch/riscv/boot/dts/Makefile                  |   1 +
> > arch/riscv/boot/dts/microchip/Makefile        |   2 +
> > .../microchip/microchip-mpfs-icicle-kit.dts   |  72 ++++
> > .../boot/dts/microchip/microchip-mpfs.dtsi    | 329 ++++++++++++++++++
> > arch/riscv/configs/defconfig                  |   4 +
> > 8 files changed, 450 insertions(+)
> > create mode 100644 Documentation/devicetree/bindings/riscv/microchip.yaml
> > create mode 100644 arch/riscv/boot/dts/microchip/Makefile
> > create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> > create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>
> I had this left in my inbox waiting for either some reviews to come in or a v2,
> but I don't see any.  Did I miss something?
>
Sorry for the late reply. I am on vacation until May. I think I saw
all the patches have already been reviewed.
Let me know if it is not the case.

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
