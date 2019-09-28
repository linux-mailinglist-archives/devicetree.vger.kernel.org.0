Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD69FC10B5
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725876AbfI1MHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:07:53 -0400
Received: from mout.gmx.net ([212.227.15.15]:39239 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbfI1MHw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:07:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672456;
        bh=kA9LT+J1mkFgK6OJuKagBFzmadC3HLjtk+uf794I/HY=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
        b=CCIXmLvop6eEFi6oidzX8s8e33Af+Jo2pPUR/dZEOa85Ooy8i912lH+gqL+iMDIww
         qHEgPC8XrqTFTed2t1WIqQwPLxvnmmYzlqgwRbVaZVmpz5RbH//O6lI3eXawjeEbB/
         oThk9nDjS4sfm2R+VbdmCgAGRqqmFd626S15iehQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N4zAs-1i4Nvv3ssG-010vgv; Sat, 28 Sep 2019 14:07:36 +0200
From:   Stefan Wahren <wahrenst@gmx.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
Date:   Sat, 28 Sep 2019 14:07:06 +0200
Message-Id: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:Sn7IIjrYMv1jLpKXguD1s2VzxnorVdX6UuwdX/R+KSbZUxqp8v2
 avfTC9WC0vqzK2UeLsUeuQ6HP2VuKtxBzEFm58n0G4E+XQeKBg7uko5hknlZfQhg36oX4l5
 6vk2qUvk/7pQBEpoTGffCpxMugffopy35/A/zSdYnhmLJ0i/TVlxu4HRllIVPjc8uNmZ+Ls
 MXQuqtjC/LaLA8u+ojX3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cR43x9UxEMM=:cn6yIG95F4WXtBgBSSAqG+
 Nb0sTe5DvnUk0a025tzp00JqtypzPgF+2nM4EVu3sDSBtSkDo4mgIG/THUZg8VIq00cjsol5X
 Y9V+PxFfTyTw91BPA/CO7PwlwnfNDYswB2YrH5YLDWgZvq+WbG8qIpxeqqyw8reKJBJnY5a4G
 dcZXuunhduFjMIuUdy+sxDzY6gU1ju8IaD/i77PPAZKc2aWDXkby+Yx7LNs7tZ8rqHeyl9/QU
 HvZgbQun4Of+jOpU+jEglVzGEKTW5gMUu679FfBXq3jRV1PRO9MdtnjmtORf0SzccUgPgNnro
 YaWlLw3IPlp3c4D/b7RJtPdb7Dm3/8ssnbNOgnu/UtuCqZhtwwVoyOXC6bGKfVDvAkiq9MhVF
 ggQWFs/j6hxRQmgCs6K3qcd24IR5IWMYSU/YkouEt4JCX7dawHNQQsrJ0b3HXeZjIIcl1CXDp
 mGo1JfBi5VMTr+g2ttwpCRmA3s1YQhcAoJmExkeY8ACyswqUslLuNFILCzQO6PqV/n+fH1q6Q
 Lb5wZDyNEbKOBA7vm3OmA7taU9s155neNf02PMQ1OPD+NXkb2aqETOEJ5fNWsnlkpsIjS7hTY
 Vbx55c2Qg9uULyPHkkOBfwPPJsyuC1LVdOhqkblqWLhqm2bOgH7dqo7bYQkQVyEIzIEIBQhVG
 HGyVHAl6mI3DkclspappiNjO4eScJDa/GapTazycuJrigaMQ3VHKhFouad+yvbzyts+W6p2fO
 GAWfqPhsKhdtl3Iei+O4SZzRRdhrLyIEtuNk4/ehzGPYTaf/JfQUxl78yx4YB5dhIkE3YRp8n
 WvfqnTjTI0S/kwidQaqt2BuRK78RSoOyGhf3sKKKT0W7QUyeBcZOK7eJipfV/ilGgs23EWTDw
 dyjwiWhNW8fFQHqvrUqJgzWfys+V6vem1uSIrNXDkipQuFUgQvK15ur/D2fpqO7URFfFpzQIH
 OhzQjgu0qJQu5Rulw9BqQtnlmlN8wnNi9u5ZcD+Gje1KzsTrjSZ3pkBFXUx07tM8AHhWrmNF0
 XowGdB3XDtMZv0UWqE4/cBm9+jgOpS9N376hS+AYaw6V+Z0I75xXdeRjKqziwwJsSpaMOh1Pg
 EeRlXBnoiZFnZqfSq4LitcUnwEERlzixKVJ3R4fjDqCOA0Am3LlHfiJIIL+9jznGy7UsdFXdJ
 lH4mI9b82w9PkoC5lGbL4ehpuDy9XR818hVPBxKtI9n6UwHbJMj/Gwr3cGEgx+YMU03J6KEbA
 Ohd8dc9qWAlbKgrD7mg9HPsvecQCj3iuwIsNd3w==
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds minimal support for the new Raspberry Pi 4, so we are abl=
e
to login via debug UART.

Patch 1-2:   Fix some DT schema warnings
Patch 3-4:   Prepare DTS for the new SoC BMC2711
Patch 5-7:   Add Raspberry Pi 4 DTS support
Patch 8:     Update MAINTAINERS

Unfortunately the Raspberry Pi Foundation didn't released a
peripheral documentation for the new SoC yet. So we only have a preliminar=
y
datasheet [1] and reduced schematics [2].

Known issues:
Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
Nicolas Saenz Julienne investigates on that issue. As a temporary workarou=
nd
i reverted the following patch to test this series:

79a98672 "dma-mapping: remove dma_max_pfn"
7559d612 "mmc: core: let the dma map ops handle bouncing"

Changes in V3:
- rebased series
- add Reviewed-by
- enable ARM_GIC for ARCH_BCM2835 on arm64 too
- configure i2c pull-up in bcm2711.dtsi
- move i2c2 to bcm2835-common.dtsi
- add missing compatibles to DT schema as suggested by Rob
- fix DT schema warnings in dtsi files
- replace brcm pintrl with generic pinctrl as suggested by Linus
- make dma_zone_size depend on CONFIG_ZONE_DMA as suggested by Matthias

Changes in V2:
- use separate board file for BCM2711
- enable ARM_GIC for ARCH_BCM2835
- add Acked-by and Reviewed-by
- fix arm-pmu and timer nodes for BCM2711 reported by Marc Zyngier
- enable HDMI at board level
- move HDMI and pixelvalve into bcm2835-common.dtsi as suggested by Eric A=
nholt
- fix DWC2 probing warning by setting USB role to peripheral
- fix order of node references in bcm2711.dtsi
- disable I2C clock stretching quirk for BCM2711
- mark PLLD_PER as critical clock
- make PLLH clock unavailable on BCM2711
- fix compile warning in clk-bcm2835 for arm64

Changes since RFC:
- change BCM2838 -> BCM2711 as discussed in RFC
- update MAINTAINERS accordingly
- drop "spi: bcm2835: enable shared interrupt support" from series
- squash all pinctrl-bcm2835 changes into one patch
- introduce SoC specific clock registration as suggested by Florian
- fix watchdog probing for Raspberry Pi 4
- convert brcm,bcm2835.txt to json-schema
- move VC4 node to bcm2835-common.dtsi
- fallback to legacy pull config for Raspberry Pi 4
- revert unintended change of mailbox in bcm283x.dtsi
- add reference for arm64

[1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm27=
11/rpi_DATA_2711_1p0_preliminary.pdf
[2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schem=
atics/rpi_SCH_4b_4p0_reduced.pdf

Stefan Wahren (8):
  ARM: dts: bcm283x: Remove simple-bus from fixed clocks
  ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
  ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
  dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
  dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
  ARM: bcm: Add support for BCM2711 SoC
  ARM: dts: Add minimal Raspberry Pi 4 support
  MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
 MAINTAINERS                                        |   3 +-
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 121 +++
 arch/arm/boot/dts/bcm2711.dtsi                     | 838 ++++++++++++++++=
+++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
 arch/arm/mach-bcm/Kconfig                          |   3 +-
 arch/arm/mach-bcm/Makefile                         |   3 +-
 arch/arm/mach-bcm/bcm2711.c                        |  24 +
 arch/arm64/Kconfig.platforms                       |   5 +-
 17 files changed, 1257 insertions(+), 260 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835=
.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

=2D-
2.7.4

