Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 855692ED771
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 20:27:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726064AbhAGT06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 14:26:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725835AbhAGT05 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 14:26:57 -0500
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90902C0612F5
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 11:26:17 -0800 (PST)
Received: by mail-io1-xd34.google.com with SMTP id u26so7283176iof.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 11:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R9ec2rorXNKpnB5tpr0X0coC8E+Od//lfBeIjHtucUw=;
        b=pxXetlPiVN82xE9Utf2DOeuVkOUHkb5PYQc5m2LypbJEFviN56Xg3SZLkjEI6wOaeH
         9dwZoCz6hO/sjs3RBoCQwSvbVERozi+jq4q0/Afk1nhVDyu5ekCQfGCAzscsEkPAS2Pl
         +FQCrFrTN4pBNcvA8eCe728iBQSPDnS6qpXks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R9ec2rorXNKpnB5tpr0X0coC8E+Od//lfBeIjHtucUw=;
        b=jH02TaOhn9gyv5EV0W8JLiVnmAcNSNE+vZeiJVX5LsrNU4zz9wuUkzJJ6AU2zXSvNQ
         Z7WBjtNV4NBAKfn2DVMxnrDzN04uOZKGtoGUPFdhwLmQAdlOJ/iDn9ln9ZVk18Y1uMyU
         +OYtbgPBB5gzgkA8jrab0XGA7T9/joUaiH9OedLIzATe4WTa4P4ZMQtKCOnlMvgLLTEZ
         HMbwqJdFMlF4Uf8wfpxM0YAXgBQXaRSL+o0iIilr7Hq6MV35YiGT8Q/MfP2dKl/18r0W
         DPin63IJ1gpSN9htuTJh/U30+lncNoWWgc/5zTnYPs3ACM5XhjRMAkLn/5sH01v7DgZA
         bnuA==
X-Gm-Message-State: AOAM530eVKadYu/lpBHIlj9PtJLcEUraXEeJw99R/qGNlcLK8e++Q7bz
        0u4I4DMpHoVsmIZZI/RnDmxLKJhi9xTv/lc4yZZ5
X-Google-Smtp-Source: ABdhPJwKo2RBLquH5L0hmkYQd7dKygceqZfrhZIYn3DOjHOnBNzT/Lrjc4dDYo/97VNS147443mS5MBdvvmroK0dvpM=
X-Received: by 2002:a02:cd84:: with SMTP id l4mr35876jap.141.1610047576807;
 Thu, 07 Jan 2021 11:26:16 -0800 (PST)
MIME-Version: 1.0
References: <20201204085835.2406541-1-atish.patra@wdc.com> <20201204085835.2406541-4-atish.patra@wdc.com>
 <3d13a678-f804-245b-696e-400f128658c5@microchip.com>
In-Reply-To: <3d13a678-f804-245b-696e-400f128658c5@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Thu, 7 Jan 2021 11:26:05 -0800
Message-ID: <CAOnJCUKz-5hFBL1_XEUOdfnvpgMmBFKJHVEJ_vwx_+puHa483A@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] RISC-V: Initial DTS for Microchip ICICLE board
To:     Cyril.Jean@microchip.com
Cc:     Atish Patra <atish.patra@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Anup Patel <anup.patel@wdc.com>,
        Daire McNamara <Daire.McNamara@microchip.com>,
        Bin Meng <bin.meng@windriver.com>, Conor.Dooley@microchip.com,
        Rob Herring <robh+dt@kernel.org>, Ivan.Griffin@microchip.com,
        Albert Ou <aou@eecs.berkeley.edu>,
        Alistair Francis <alistair.francis@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 7, 2021 at 3:44 AM <Cyril.Jean@microchip.com> wrote:
>
> Hi Atish,
>
> On 12/4/20 8:58 AM, Atish Patra wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > Add initial DTS for Microchip ICICLE board having only
> > essential devices (clocks, sdhci, ethernet, serial, etc).
> > The device tree is based on the U-Boot patch.
> >
> > https://patchwork.ozlabs.org/project/uboot/patch/20201110103414.10142-6-padmarao.begari@microchip.com/
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >   arch/riscv/boot/dts/Makefile                  |   1 +
> >   arch/riscv/boot/dts/microchip/Makefile        |   2 +
> >   .../microchip/microchip-mpfs-icicle-kit.dts   |  72 ++++
> >   .../boot/dts/microchip/microchip-mpfs.dtsi    | 331 ++++++++++++++++++
> >   4 files changed, 406 insertions(+)
> >   create mode 100644 arch/riscv/boot/dts/microchip/Makefile
> >   create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> >   create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> >
> > diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> > index ca1f8cbd78c0..3ea94ea0a18a 100644
> > --- a/arch/riscv/boot/dts/Makefile
> > +++ b/arch/riscv/boot/dts/Makefile
> > @@ -1,5 +1,6 @@
> >   # SPDX-License-Identifier: GPL-2.0
> >   subdir-y += sifive
> >   subdir-y += kendryte
> > +subdir-y += microchip
> >
> >   obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix /, $(subdir-y))
> > diff --git a/arch/riscv/boot/dts/microchip/Makefile b/arch/riscv/boot/dts/microchip/Makefile
> > new file mode 100644
> > index 000000000000..622b12771fd3
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/microchip/Makefile
> > @@ -0,0 +1,2 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +dtb-$(CONFIG_SOC_MICROCHIP_POLARFIRE) += microchip-mpfs-icicle-kit.dtb
> > diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> > new file mode 100644
> > index 000000000000..5b51dad13c72
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> > @@ -0,0 +1,72 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/* Copyright (c) 2020 Microchip Technology Inc */
> > +
> > +/dts-v1/;
> > +
> > +#include "microchip-mpfs.dtsi"
> > +
> > +/* Clock frequency (in Hz) of the rtcclk */
> > +#define RTCCLK_FREQ            1000000
> > +
> > +/ {
> > +       #address-cells = <2>;
> > +       #size-cells = <2>;
> > +       model = "Microchip PolarFire-SoC Icicle Kit";
> > +       compatible = "microchip,mpfs-icicle-kit", "microchip,polarfire-soc";
> > +
> > +       chosen {
> > +               stdout-path = &serial0;
> > +       };
> > +
> > +       cpus {
> > +               timebase-frequency = <RTCCLK_FREQ>;
> > +       };
> > +
> > +       memory@80000000 {
> > +               device_type = "memory";
> > +               reg = <0x0 0x80000000 0x0 0x40000000>;
> > +               clocks = <&clkcfg 26>;
> > +       };
> > +
> > +       soc {
> > +       };
> > +};
> > +
> > +&serial0 {
> > +       status = "okay";
> > +};
> > +
> > +&serial1 {
> > +       status = "okay";
> > +};
> > +
> > +&serial2 {
> > +       status = "okay";
> > +};
> > +
> > +&serial3 {
> > +       status = "okay";
> > +};
> > +
> > +&sdcard {
> > +       status = "okay";
> > +};
> > +
> > +&emac0 {
> > +       phy-mode = "sgmii";
> > +       phy-handle = <&phy0>;
> > +       phy0: ethernet-phy@8 {
> > +               reg = <8>;
> > +               ti,fifo-depth = <0x01>;
> > +       };
> > +};
> > +
> > +&emac1 {
> > +       status = "okay";
> > +       phy-mode = "sgmii";
> > +       phy-handle = <&phy1>;
> > +       phy1: ethernet-phy@9 {
> > +               reg = <9>;
> > +               ti,fifo-depth = <0x01>;
> > +       };
> > +};
> > diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > new file mode 100644
> > index 000000000000..7a076aa4c78d
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > @@ -0,0 +1,331 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/* Copyright (c) 2020 Microchip Technology Inc */
> > +
> > +/dts-v1/;
> > +
> > +/ {
> > +       #address-cells = <2>;
> > +       #size-cells = <2>;
> > +       model = "Microchip PolarFire-SoC";
> > +       compatible = "microchip,polarfire-soc";
> > +
> > +       chosen {
> > +       };
> > +
> > +       cpus {
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               cpu@0 {
> > +                       clock-frequency = <0>;
> > +                       compatible = "sifive,rocket0", "riscv";
> > +                       device_type = "cpu";
> > +                       i-cache-block-size = <64>;
> > +                       i-cache-sets = <128>;
> > +                       i-cache-size = <16384>;
> > +                       reg = <0>;
> > +                       riscv,isa = "rv64imac";
> > +                       status = "disabled";
> > +
> > +                       cpu0_intc: interrupt-controller {
> > +                               #interrupt-cells = <1>;
> > +                               compatible = "riscv,cpu-intc";
> > +                               interrupt-controller;
> > +                       };
> > +               };
> > +
> > +               cpu@1 {
> > +                       clock-frequency = <0>;
> > +                       compatible = "sifive,rocket0", "riscv";
> > +                       d-cache-block-size = <64>;
> > +                       d-cache-sets = <64>;
> > +                       d-cache-size = <32768>;
> > +                       d-tlb-sets = <1>;
> > +                       d-tlb-size = <32>;
> > +                       device_type = "cpu";
> > +                       i-cache-block-size = <64>;
> > +                       i-cache-sets = <64>;
> > +                       i-cache-size = <32768>;
> > +                       i-tlb-sets = <1>;
> > +                       i-tlb-size = <32>;
> > +                       mmu-type = "riscv,sv39";
> > +                       reg = <1>;
> > +                       riscv,isa = "rv64imafdc";
> > +                       tlb-split;
> > +                       status = "okay";
> > +
> > +                       cpu1_intc: interrupt-controller {
> > +                               #interrupt-cells = <1>;
> > +                               compatible = "riscv,cpu-intc";
> > +                               interrupt-controller;
> > +                       };
> > +               };
> > +
> > +               cpu@2 {
> > +                       clock-frequency = <0>;
> > +                       compatible = "sifive,rocket0", "riscv";
> > +                       d-cache-block-size = <64>;
> > +                       d-cache-sets = <64>;
> > +                       d-cache-size = <32768>;
> > +                       d-tlb-sets = <1>;
> > +                       d-tlb-size = <32>;
> > +                       device_type = "cpu";
> > +                       i-cache-block-size = <64>;
> > +                       i-cache-sets = <64>;
> > +                       i-cache-size = <32768>;
> > +                       i-tlb-sets = <1>;
> > +                       i-tlb-size = <32>;
> > +                       mmu-type = "riscv,sv39";
> > +                       reg = <2>;
> > +                       riscv,isa = "rv64imafdc";
> > +                       tlb-split;
> > +                       status = "okay";
> > +
> > +                       cpu2_intc: interrupt-controller {
> > +                               #interrupt-cells = <1>;
> > +                               compatible = "riscv,cpu-intc";
> > +                               interrupt-controller;
> > +                       };
> > +               };
> > +
> > +               cpu@3 {
> > +                       clock-frequency = <0>;
> > +                       compatible = "sifive,rocket0", "riscv";
> > +                       d-cache-block-size = <64>;
> > +                       d-cache-sets = <64>;
> > +                       d-cache-size = <32768>;
> > +                       d-tlb-sets = <1>;
> > +                       d-tlb-size = <32>;
> > +                       device_type = "cpu";
> > +                       i-cache-block-size = <64>;
> > +                       i-cache-sets = <64>;
> > +                       i-cache-size = <32768>;
> > +                       i-tlb-sets = <1>;
> > +                       i-tlb-size = <32>;
> > +                       mmu-type = "riscv,sv39";
> > +                       reg = <3>;
> > +                       riscv,isa = "rv64imafdc";
> > +                       tlb-split;
> > +                       status = "okay";
> > +
> > +                       cpu3_intc: interrupt-controller {
> > +                               #interrupt-cells = <1>;
> > +                               compatible = "riscv,cpu-intc";
> > +                               interrupt-controller;
> > +                       };
> > +               };
> > +
> > +               cpu@4 {
> > +                       clock-frequency = <0>;
> > +                       compatible = "sifive,rocket0", "riscv";
> > +                       d-cache-block-size = <64>;
> > +                       d-cache-sets = <64>;
> > +                       d-cache-size = <32768>;
> > +                       d-tlb-sets = <1>;
> > +                       d-tlb-size = <32>;
> > +                       device_type = "cpu";
> > +                       i-cache-block-size = <64>;
> > +                       i-cache-sets = <64>;
> > +                       i-cache-size = <32768>;
> > +                       i-tlb-sets = <1>;
> > +                       i-tlb-size = <32>;
> > +                       mmu-type = "riscv,sv39";
> > +                       reg = <4>;
> > +                       riscv,isa = "rv64imafdc";
> > +                       tlb-split;
> > +                       status = "okay";
> > +                       cpu4_intc: interrupt-controller {
> > +                               #interrupt-cells = <1>;
> > +                               compatible = "riscv,cpu-intc";
> > +                               interrupt-controller;
> > +                       };
> > +               };
> > +       };
> > +
> > +       soc {
> > +               #address-cells = <2>;
> > +               #size-cells = <2>;
> > +               compatible = "simple-bus";
> > +               ranges;
> > +
> > +               cache-controller@2010000 {
> > +                       compatible = "sifive,fu540-c000-ccache", "cache";
> > +                       cache-block-size = <64>;
> > +                       cache-level = <2>;
> > +                       cache-sets = <1024>;
> > +                       cache-size = <2097152>;
> > +                       cache-unified;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <1 2 3>;
> > +                       reg = <0x0 0x2010000 0x0 0x1000>;
> > +               };
> > +
> > +               clint@2000000 {
> > +                       compatible = "riscv,clint0";
> > +                       reg = <0x0 0x2000000 0x0 0xC000>;
> > +                       interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
> > +                                               &cpu1_intc 3 &cpu1_intc 7
> > +                                               &cpu2_intc 3 &cpu2_intc 7
> > +                                               &cpu3_intc 3 &cpu3_intc 7
> > +                                               &cpu4_intc 3 &cpu4_intc 7>;
> > +               };
> > +
> > +               plic: interrupt-controller@c000000 {
> > +                       #interrupt-cells = <1>;
> > +                       compatible = "sifive,plic-1.0.0";
> > +                       reg = <0x0 0xc000000 0x0 0x4000000>;
> > +                       riscv,ndev = <186>;
> > +                       interrupt-controller;
> > +                       interrupts-extended = <&cpu0_intc 11
> > +                                       &cpu1_intc 11 &cpu1_intc 9
> > +                                       &cpu2_intc 11 &cpu2_intc 9
> > +                                       &cpu3_intc 11 &cpu3_intc 9
> > +                                       &cpu4_intc 11 &cpu4_intc 9>;
> > +               };
> > +
> > +               dma@3000000 {
> > +                       compatible = "sifive,fu540-c000-pdma";
> > +                       reg = <0x0 0x3000000 0x0 0x8000>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <23 24 25 26 27 28 29 30>;
> > +                       #dma-cells = <1>;
> > +               };
> > +
> > +               refclk: refclk {
> > +                       compatible = "fixed-clock";
> > +                       #clock-cells = <0>;
> > +                       clock-frequency = <600000000>;
> > +                       clock-output-names = "msspllclk";
> > +               };
> > +
> > +               clkcfg: clkcfg@20002000 {
> > +                       compatible = "microchip,pfsoc-clkcfg";
>
> Can you please change "microchip,pfsoc-clkcfg" to
> "microchip,mpfs-clkcfg" to align with the v2 clock driver?
>

Sure.

>
> > +                       reg = <0x0 0x20002000 0x0 0x1000>;
> > +                       reg-names = "mss_sysreg";
> > +                       clocks = <&refclk>;
> > +                       #clock-cells = <1>;
> > +                       clock-output-names = "cpu", "axi", "ahb", "envm",       /* 0-3   */
> > +                                "mac0", "mac1", "mmc", "timer",                /* 4-7   */
> > +                               "mmuart0", "mmuart1", "mmuart2", "mmuart3",     /* 8-11  */
> > +                               "mmuart4", "spi0", "spi1", "i2c0",              /* 12-15 */
> > +                               "i2c1", "can0", "can1", "usb",                  /* 16-19 */
> > +                               "rsvd", "rtc", "qspi", "gpio0",                 /* 20-23 */
> > +                               "gpio1", "gpio2", "ddrc", "fic0",               /* 24-27 */
> > +                               "fic1", "fic2", "fic3", "athena", "cfm";        /* 28-32 */
> > +               };
> > +
> > +               serial0: serial@20000000 {
> > +                       compatible = "ns16550a";
> > +                       reg = <0x0 0x20000000 0x0 0x400>;
> > +                       reg-io-width = <4>;
> > +                       reg-shift = <2>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <90>;
> > +                       current-speed = <115200>;
> > +                       clocks = <&clkcfg 8>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               serial1: serial@20100000 {
> > +                       compatible = "ns16550a";
> > +                       reg = <0x0 0x20100000 0x0 0x400>;
> > +                       reg-io-width = <4>;
> > +                       reg-shift = <2>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <91>;
> > +                       current-speed = <115200>;
> > +                       clocks = <&clkcfg 9>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               serial2: serial@20102000 {
> > +                       compatible = "ns16550a";
> > +                       reg = <0x0 0x20102000 0x0 0x400>;
> > +                       reg-io-width = <4>;
> > +                       reg-shift = <2>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <92>;
> > +                       current-speed = <115200>;
> > +                       clocks = <&clkcfg 10>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               serial3: serial@20104000 {
> > +                       compatible = "ns16550a";
> > +                       reg = <0x0 0x20104000 0x0 0x400>;
> > +                       reg-io-width = <4>;
> > +                       reg-shift = <2>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <93>;
> > +                       current-speed = <115200>;
> > +                       clocks = <&clkcfg 11>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               emmc: mmc@20008000 {
> > +                       compatible = "cdns,sd4hc";
> > +                       reg = <0x0 0x20008000 0x0 0x1000>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <88 89>;
> > +                       pinctrl-names = "default";
> > +                       clocks = <&clkcfg 6>;
> > +                       bus-width = <4>;
> > +                       cap-mmc-highspeed;
> > +                       mmc-ddr-3_3v;
> > +                       max-frequency = <200000000>;
> > +                       non-removable;
> > +                       no-sd;
> > +                       no-sdio;
> > +                       voltage-ranges = <3300 3300>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               sdcard: sdhc@20008000 {
> > +                       compatible = "cdns,sd4hc";
> > +                       reg = <0x0 0x20008000 0x0 0x1000>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <88>;
> > +                       pinctrl-names = "default";
> > +                       clocks = <&clkcfg 6>;
> > +                       bus-width = <4>;
> > +                       disable-wp;
> > +                       no-1-8-v;
> > +                       cap-mmc-highspeed;
> > +                       cap-sd-highspeed;
> > +                       card-detect-delay = <200>;
> > +                       sd-uhs-sdr12;
> > +                       sd-uhs-sdr25;
> > +                       sd-uhs-sdr50;
> > +                       sd-uhs-sdr104;
> > +                       max-frequency = <200000000>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               emac0: ethernet@20110000 {
> > +                       compatible = "cdns,macb";
> > +                       reg = <0x0 0x20110000 0x0 0x2000>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <64 65 66 67>;
> > +                       local-mac-address = [00 00 00 00 00 00];
> > +                       clocks = <&clkcfg 5>, <&clkcfg 2>;
> > +                       clock-names = "pclk", "hclk";
> > +                       status = "disabled";
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +               };
> > +
> > +               emac1: ethernet@20112000 {
> > +                       compatible = "cdns,macb";
> > +                       reg = <0x0 0x20112000 0x0 0x2000>;
> > +                       interrupt-parent = <&plic>;
> > +                       interrupts = <70 71 72 73>;
> > +                       mac-address = [00 00 00 00 00 00];
> > +                       clocks = <&clkcfg 5>, <&clkcfg 2>;
> > +                       status = "disabled";
> > +                       clock-names = "pclk", "hclk";
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +               };
> > +
> > +       };
> > +};
> > --
> > 2.25.1
> >
> Regards,
>
> Cyril
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
