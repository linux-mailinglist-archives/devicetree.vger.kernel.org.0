Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3F3368906
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 00:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235977AbhDVWe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 18:34:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232844AbhDVWe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 18:34:26 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D3CDC061756
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 15:33:51 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id e14so15469114ils.12
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 15:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jcnNcy3xEzSBfglTcOYjFIN3PxQZlBAWD1DKw9DY21M=;
        b=K0kdLys4ozVg1KxW2mM79QNCe1oDKQG1Lf40Pyu7KkT5gP6tVLsF8Z92X6TTxaPiiU
         1lxo1GoQTQPK9n5ks+2otp9uE2QITAUscik37LBQRgX5ZGn3QqXWi41/LAV5tKRQAKeL
         wGjQrh8FSyP+rY5Lh8X3oeZ9cNJ7fZ9iafDhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jcnNcy3xEzSBfglTcOYjFIN3PxQZlBAWD1DKw9DY21M=;
        b=Rkf/+hggw2xst/1gsdKbUSYUMiqPMMKSyZIfAbXmiujVMWWzRa1Utnfa7e78e/8ppx
         gjuVdajQMI8fuPrBbpJpw2mH2vkcB6ml1jw1aaCL1y3UrKP6TKJiwtd8TaG/SPZUhTF8
         S/1hGyn8zN4RD8gBEFs1bUN44o/GFD6oEi4qw0PMLOEsbjwpS2qi5xRRjn+jsb9oLDjU
         GrRd6p2eazeff7fvDPaSnT1OuCmPhNqmPDuPR55VXeVWFmZQ08YYiWCpiu0M2JTTwbrr
         3dlLVMtDXmvIrk2ALGDxYDseRto47BilsNuCoDnddvWDf3ufSeRUT3mciJ8O8ZhR0BYY
         Lrqg==
X-Gm-Message-State: AOAM532m/bbUA8Y9bVaxF7p1qS9u8hVp3Epw/pydeYF5ti8d5jUHjhM9
        U/2SmEce0hzbnF6KxrTdwkVk0jW+DQmBvDg8Tm/t
X-Google-Smtp-Source: ABdhPJwtRG38ji/buQ1uGL0nlGipaF8+BvqUnB6p4XjEXGNFBHm4wLKN7FtAIzgH/UuiZTO7zEgDCEsJjX0Y6wGBGTQ=
X-Received: by 2002:a92:1304:: with SMTP id 4mr591258ilt.126.1619130830378;
 Thu, 22 Apr 2021 15:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210303200253.1827553-1-atish.patra@wdc.com> <mhng-13c067eb-0011-408d-83f4-2950c1e791fa@palmerdabbelt-glaptop>
 <CAOnJCUKtt3LF0zh6dKAAUtbCKsYCMby5TasA59fY2hpODX3vnQ@mail.gmail.com>
In-Reply-To: <CAOnJCUKtt3LF0zh6dKAAUtbCKsYCMby5TasA59fY2hpODX3vnQ@mail.gmail.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Thu, 22 Apr 2021 15:33:39 -0700
Message-ID: <CAOnJCUKvyDPO55QtPXDhCMKYBb70WpR01jM1F=ddA=pmFJo5_Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add Microchip PolarFire Soc Support
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     Atish Patra <Atish.Patra@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
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

On Sat, Apr 17, 2021 at 8:26 PM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Mon, Mar 29, 2021 at 9:17 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> >
> > On Wed, 03 Mar 2021 12:02:48 PST (-0800), Atish Patra wrote:
> > > This series adds minimal support for Microchip Polar Fire Soc Icicle kit.
> > > It is rebased on v5.12-rc1 and depends on clock support.
> > > Only MMC and ethernet drivers are enabled via this series.
> > > The idea here is to add the foundational patches so that other drivers
> > > can be added to on top of this. The device tree may change based on
> > > feedback on bindings of individual driver support patches.
> > >
> > > This series has been tested on Qemu and Polar Fire Soc Icicle kit.
> > > It depends on the updated clock-series[2] and macb fix[3].
> > > The series is also tested by Lewis from Microchip.
> > >
> > > The series can also be found at.
> > > https://github.com/atishp04/linux/tree/polarfire_support_upstream_v4
> > >
> > > [1] https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg08582.html
> > > [2] https://www.spinics.net/lists/linux-clk/msg54579.html
> > >
> > > Changes from v3->v4:
> > > 1. Fixed few DT specific issues.
> > > 2. Rebased on top of new clock driver.
> > > 3. SD card functionality is verified.
> > >
> > > Changes from v2->v3:
> > > 1. Fixed a typo in dt binding.
> > > 2. Included MAINTAINERS entry for PolarFire SoC.
> > > 3. Improved the dts file by using lowercase clock names and keeping phy
> > >    details in board specific dts file.
> > >
> > > Changes from v1->v2:
> > > 1. Modified the DT to match the device tree in U-Boot.
> > > 2. Added both eMMC & SDcard entries in DT. However, SD card is only enabled
> > >    as it allows larger storage option for linux distros.
> > >
> > > Atish Patra (4):
> > > RISC-V: Add Microchip PolarFire SoC kconfig option
> > > dt-bindings: riscv: microchip: Add YAML documentation for the
> > > PolarFire SoC
> > > RISC-V: Initial DTS for Microchip ICICLE board
> > > RISC-V: Enable Microchip PolarFire ICICLE SoC
> > >
> > > Conor Dooley (1):
> > > MAINTAINERS: add microchip polarfire soc support
> > >
> > > .../devicetree/bindings/riscv/microchip.yaml  |  27 ++
> > > MAINTAINERS                                   |   8 +
> > > arch/riscv/Kconfig.socs                       |   7 +
> > > arch/riscv/boot/dts/Makefile                  |   1 +
> > > arch/riscv/boot/dts/microchip/Makefile        |   2 +
> > > .../microchip/microchip-mpfs-icicle-kit.dts   |  72 ++++
> > > .../boot/dts/microchip/microchip-mpfs.dtsi    | 329 ++++++++++++++++++
> > > arch/riscv/configs/defconfig                  |   4 +
> > > 8 files changed, 450 insertions(+)
> > > create mode 100644 Documentation/devicetree/bindings/riscv/microchip.yaml
> > > create mode 100644 arch/riscv/boot/dts/microchip/Makefile
> > > create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> > > create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> >
> > I had this left in my inbox waiting for either some reviews to come in or a v2,
> > but I don't see any.  Did I miss something?
> >
> Sorry for the late reply. I am on vacation until May. I think I saw
> all the patches have already been reviewed.
> Let me know if it is not the case.
>
I cross checked and all the patches are reviewed-by.
@palmer: Is it possible to take this series for 5.13 MW ?

> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>
>
>
> --
> Regards,
> Atish



-- 
Regards,
Atish
