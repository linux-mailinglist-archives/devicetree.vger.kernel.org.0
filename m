Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 247CAC120F
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 22:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728630AbfI1UCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 16:02:00 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44822 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728617AbfI1UCA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Sep 2019 16:02:00 -0400
Received: by mail-pg1-f193.google.com with SMTP id i14so5170850pgt.11
        for <devicetree@vger.kernel.org>; Sat, 28 Sep 2019 13:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Uoyd17HGXJnqUD3GmfDxE8jq+ajCAKVSglLjOBv6h28=;
        b=nPpD6QciQbg2xeaDSUWcH0GESFPRMy+k9vthdYholnly97tWJvuYqeEvEiZrIQKMP+
         ggo99PwKcTfcoYyWmi26JrxJGZr3X6Lk7nsTzJ+/2HAmbbzrfkumpYlZkGtyZP+tf7p9
         gcKxU7gxevLV4Ux/3vW7krTtomVWYGCHZSUv1yDQecDhjmVVmfT0+b1+XEln0+vVkb1v
         tPO91IDBLnUNyK79qmSYOyLsujwOMSFSG3G4dYOVXPtqFEbhoYZUBF3YWkg28xu3iJY3
         EOrrkBGgeNE25LtoT6tsvhnRsIpGrEqt+lJD+RA8SUspJw1IgipSPBmmiHNV5RMeS4+/
         gE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Uoyd17HGXJnqUD3GmfDxE8jq+ajCAKVSglLjOBv6h28=;
        b=N29oDyvv2FWQfV6fnMm4vGX/68eE/AcUXkKVSjcP9vlF7kVvtGduANyQ9rjEEYLwQf
         O8bv79bcB3FzOFonflafVSYr2dY0/P4RWCApKnBtU4669s6vVG/U0+zByGJNLW53HQJn
         QLtYYHbwJtrbL5KmR/LkaZ+I6zp03Vznf9APFy6jtoLsgkehWMUXI+WKqLR2QYqTTYMU
         4I7LZkrzjXRO6G16Sce+T2S3Nv5efqgdf95MJtLDZgsbGZaVvp3XYu0vY3U016/qpsZq
         1qNPMPu2IDQM+5IxjuBBO8CKPCAEql2EEN0qWhLrt3NkW75PHCv6qtD+pNeLuMidr80L
         aI6Q==
X-Gm-Message-State: APjAAAUAvjw2LNlM7BRS3W286rr6o6Nnk6Wu3AEBtn/EkpKcpO6+nvSf
        ebLw8EQQMW/LWRztH726XQG/5n7p
X-Google-Smtp-Source: APXvYqwkx/SuzCtG1d5T90LeCjorOGzzewIUddle4mHhUxjPMVjyGW/l+ER/GPPOvJsaSoNlIk+6hA==
X-Received: by 2002:a17:90a:7f95:: with SMTP id m21mr18278564pjl.73.1569700917546;
        Sat, 28 Sep 2019 13:01:57 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s3sm9060710pjq.32.2019.09.28.13.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2019 13:01:56 -0700 (PDT)
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
To:     Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a9368cbc-a62d-0fed-9e8e-3d65111de1dd@gmail.com>
Date:   Sat, 28 Sep 2019 13:01:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
> 
> Patch 1-2:   Fix some DT schema warnings
> Patch 3-4:   Prepare DTS for the new SoC BMC2711
> Patch 5-7:   Add Raspberry Pi 4 DTS support
> Patch 8:     Update MAINTAINERS
> 
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].

Overall this looks good to me, just a few comments in specific patches,
if you can re-spin those patches we should try to get that in 5.5?

> 
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
> i reverted the following patch to test this series:
> 
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"
> 
> Changes in V3:
> - rebased series
> - add Reviewed-by
> - enable ARM_GIC for ARCH_BCM2835 on arm64 too
> - configure i2c pull-up in bcm2711.dtsi
> - move i2c2 to bcm2835-common.dtsi
> - add missing compatibles to DT schema as suggested by Rob
> - fix DT schema warnings in dtsi files
> - replace brcm pintrl with generic pinctrl as suggested by Linus
> - make dma_zone_size depend on CONFIG_ZONE_DMA as suggested by Matthias
> 
> Changes in V2:
> - use separate board file for BCM2711
> - enable ARM_GIC for ARCH_BCM2835
> - add Acked-by and Reviewed-by
> - fix arm-pmu and timer nodes for BCM2711 reported by Marc Zyngier
> - enable HDMI at board level
> - move HDMI and pixelvalve into bcm2835-common.dtsi as suggested by Eric Anholt
> - fix DWC2 probing warning by setting USB role to peripheral
> - fix order of node references in bcm2711.dtsi
> - disable I2C clock stretching quirk for BCM2711
> - mark PLLD_PER as critical clock
> - make PLLH clock unavailable on BCM2711
> - fix compile warning in clk-bcm2835 for arm64
> 
> Changes since RFC:
> - change BCM2838 -> BCM2711 as discussed in RFC
> - update MAINTAINERS accordingly
> - drop "spi: bcm2835: enable shared interrupt support" from series
> - squash all pinctrl-bcm2835 changes into one patch
> - introduce SoC specific clock registration as suggested by Florian
> - fix watchdog probing for Raspberry Pi 4
> - convert brcm,bcm2835.txt to json-schema
> - move VC4 node to bcm2835-common.dtsi
> - fallback to legacy pull config for Raspberry Pi 4
> - revert unintended change of mailbox in bcm283x.dtsi
> - add reference for arm64
> 
> [1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
> [2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf
> 
> Stefan Wahren (8):
>   ARM: dts: bcm283x: Remove simple-bus from fixed clocks
>   ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
>   ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
>   dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
>   dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
>   ARM: bcm: Add support for BCM2711 SoC
>   ARM: dts: Add minimal Raspberry Pi 4 support
>   MAINTAINERS: Add BCM2711 to BCM2835 ARCH
> 
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
>  MAINTAINERS                                        |   3 +-
>  arch/arm/boot/dts/Makefile                         |   1 +
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 121 +++
>  arch/arm/boot/dts/bcm2711.dtsi                     | 838 +++++++++++++++++++++
>  arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
>  arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
>  arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
>  arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
>  arch/arm/mach-bcm/Kconfig                          |   3 +-
>  arch/arm/mach-bcm/Makefile                         |   3 +-
>  arch/arm/mach-bcm/bcm2711.c                        |  24 +
>  arch/arm64/Kconfig.platforms                       |   5 +-
>  17 files changed, 1257 insertions(+), 260 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>  create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>  create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
> 
> --
> 2.7.4
> 

-- 
Florian
