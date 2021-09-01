Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9BBF3FD654
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243496AbhIAJTw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:19:52 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:43219 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243418AbhIAJTv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:19:51 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id A1F575C0138;
        Wed,  1 Sep 2021 05:18:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:18:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm3; bh=0hdLo3Ar9M7gNupOnWes8wYnJU
        KoJVONAagXG+xMhVM=; b=yZh0ZdjvlNL7OKXdmy97SizP5h6Lx2dcl2Vbrwf9AM
        1iTZD/UyM24U0rKi5hHk+DstuVA1oHdVJZPbA6zl7aoh/R1LniyVmACHWvawr52O
        lCShk8KR9cTa0DypLVAvQBLdaA/wq6I9RyEi1ydoy7B3uMbiQvygASszHV3ssVCC
        pBCvkg4tqaQj43kmoi91GxsT46L1c7YpJT3WL5YU21awfzZdZQAo4EHuXhilGoiG
        rcRao4vFXO3gFEKZ5x9a3SaObiAkaM6FKIApxjKDWTRMg7fwWBKO15RvVc4izK3e
        vQZGCUDNn/KSKkRr9eYUpI6XFzWTLjYGVZjpBbkmTGAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=0hdLo3
        Ar9M7gNupOnWes8wYnJUKoJVONAagXG+xMhVM=; b=MEWwI3gzKCf9cPhDWuq8of
        U5SgN8iaHQZ2BH8KSqMzo7lKWXVHZUvwLExCy3I/tN6/SuF4jph5SciEVqUsnhkv
        FN+ZICiIyoiCf+sMsZwHWWqzSx802V9oOUYjwlu1TF5jZuVfl8YQPOfLFPKPKJIz
        zPS2eChvhugGgCW9zBRQKvfYiT1YUQMPrtF8qYzzfbZawMv0hyoEd92afcZibljs
        LfTGeFUnunbEDCGqHLlRxJTpjhpygR/R71iT01OzULC/eM4KUYs44YRw+3YYIaFi
        cggYwBs1znswnwbLT3tI4GwNXFvxXBensXLK9IvjO/IgfAmzy7r7t/BVhz7v+c+Q
        ==
X-ME-Sender: <xms:fUUvYUtGzpIjxRvtdYqZ9JNHJArc-cwTs4Tctun69HWEW_EbVyVJhA>
    <xme:fUUvYRdsFfRCvD2JSCeMOPQVzBMa7sg9I0DCKSZ8nqqvPE_P86LCpfnzfl4JyXuVI
    3C1D0FtzqntdWCKraA>
X-ME-Received: <xmr:fUUvYfwH0LoOcUJCBC6WsXc4Sj1ZG83bprMK2qdFKpMn0Pb7h-8ojM2DGWL9UDTY8OLuGeDbL76MbqjtuoAO3sZ9tod4E91Eqd4D>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fUUvYXM685oVvFN8Fw3pqouVuuvycnXZvz7kC03r3M_fzkCea4v6AA>
    <xmx:fUUvYU_5WlhpuKKI4paSDWvr-aj3bnuSP7mTdVwKbjk4ADt-JLZCeA>
    <xmx:fUUvYfW8czKwRVPyUtNjiu9Pab9oMyI_v1PAj_F_ZN066twoRWlyKA>
    <xmx:fkUvYUzUVYhP_aGZ8HeGhajoK9YYp08wdWh3GyKymgGWvSwpl-IUWA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:18:53 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 00/52] ARM: dts: Last round of DT schema fixes
Date:   Wed,  1 Sep 2021 11:18:00 +0200
Message-Id: <20210901091852.479202-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,=0D
=0D
Here's another round of schema warnings fixes for the Allwinner platform.=0D
=0D
There's a fair share of new schemas in there since the schema tools now war=
n=0D
when a compatible is not documented in a schema.=0D
=0D
We don't have any warning anymore if we use the OPP binding Rob submitted, =
and=0D
since that means we have all our devices properly validated I don't expect =
more=0D
fixes now, aside from the usual bunch of regressions.=0D
=0D
Let me know what you think,=0D
Maxime=0D
=0D
Maxime Ripard (52):=0D
  ASoC: dt-bindings: Add WM8978 Binding=0D
  ASoC: dt-bindings: Convert Bluetooth SCO Link binding to a schema=0D
  ASoC: dt-bindings: Convert SPDIF Transmitter binding to a schema=0D
  ASoC: dt-bindings: Convert Simple Amplifier binding to a schema=0D
  dt-bindings: Convert Reserved Memory binding to a schema=0D
  dt-bindings: arm: Convert ARM CCI-400 binding to a schema=0D
  dt-bindings: bluetooth: broadcom: Fix clocks check=0D
  dt-bindings: bluetooth: realtek: Add missing max-speed=0D
  dt-bindings: clocks: Fix typo in the H6 compatible=0D
  dt-bindings: display: Move idk-1110wr to panel-lvds=0D
  dt-bindings: display: Move idk-2121wr to panel-lvds=0D
  dt-bindings: display: Move ee101ia-01d to panel-lvds=0D
  dt-bindings: display: aa104xd12: Remove unused vcc-supply=0D
  dt-bindings: display: aa104xd12: Fix data-mapping=0D
  dt-bindings: display: Move aa104xd12 to panel-lvds=0D
  dt-bindings: display: aa121td01: Remove unused vcc-supply=0D
  dt-bindings: display: aa121td01: Fix data-mapping=0D
  dt-bindings: display: Move aa121td01 to panel-lvds=0D
  dt-bindings: display: Move gktw70sdae4se to panel-lvds=0D
  dt-bindings: display: panel-lvds: Document missing panel compatibles=0D
  dt-bindings: gnss: Convert UBlox Neo-6M binding to a schema=0D
  dt-bindings: gpio: Convert X-Powers AXP209 GPIO binding to a schema=0D
  dt-bindings: hwmon: Add IIO HWMON binding=0D
  dt-bindings: input: Convert Silead GSL1680 binding to a schema=0D
  dt-bindings: interconnect: sunxi: Add R40 MBUS compatible=0D
  dt-bindings: media: ti,cal: Fix example=0D
  dt-bindings: media: Convert OV5640 binding to a schema=0D
  dt-bindings: mfd: Convert X-Powers AC100 binding to a schema=0D
  dt-bindings: mfd: Convert X-Powers AXP binding to a schema=0D
  dt-bindings: mmc: Convert MMC Card binding to a schema=0D
  dt-bindings: net: dwmac: Fix typo in the R40 compatible=0D
  dt-bindings: net: wireless: Convert ESP ESP8089 binding to a schema=0D
  dt-bindings: regulator: Convert SY8106A binding to a schema=0D
  dt-bindings: sunxi: Add CPU Configuration Controller Binding=0D
  dt-bindings: sunxi: Add Allwinner A80 PRCM Binding=0D
  dt-bindings: usb: Convert SMSC USB3503 binding to a schema=0D
  dt-bindings: usb: dwc3: Fix usb-phy check=0D
  dt-bindings: w1: Convert 1-Wire GPIO binding to a schema=0D
  ARM: dts: sunxi: Rename power-supply names=0D
  ARM: dts: sunxi: Rename gpio pinctrl names=0D
  ARM: dts: sunxi: Fix OPP arrays=0D
  ARM: dts: sunxi: Fix OPPs node name=0D
  ARM: dts: sunxi: Fix the SPI NOR node names=0D
  ARM: dts: v3s: Remove useless DMA properties=0D
  ARM: dts: tbs711: Fix touchscreen compatible=0D
  ARM: dts: cubieboard4: Remove the dumb-vga-dac compatible=0D
  arm64: dts: allwinner: h5: Fix GPU thermal zone node name=0D
  arm64: dts: allwinner: h6: Fix de3 parent clocks ordering=0D
  arm64: dts: allwinner: a100: Fix thermal zone node name=0D
  arm64: dts: allwinner: pinetab: Change regulator node name to avoid=0D
    warning=0D
  arm64: dts: allwinner: teres-i: Add missing reg=0D
  arm64: dts: allwinner: teres-i: Remove wakekup-source from the PMIC=0D
=0D
 .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 ++++++++++=0D
 .../bindings/arm/cci-control-port.yaml        |  38 ++=0D
 Documentation/devicetree/bindings/arm/cci.txt | 224 ----------=0D
 .../devicetree/bindings/arm/cpus.yaml         |   2 +=0D
 .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   |   1 +=0D
 .../sunxi/allwinner,sun6i-a31-cpuconfig.yaml  |  38 ++=0D
 .../arm/sunxi/allwinner,sun9i-a80-prcm.yaml   |  33 ++=0D
 .../clock/allwinner,sun8i-a83t-de2-clk.yaml   |   2 +-=0D
 .../display/panel/advantech,idk-1110wr.yaml   |  69 ---=0D
 .../display/panel/advantech,idk-2121wr.yaml   | 121 ------=0D
 .../display/panel/innolux,ee101ia-01d.yaml    |  31 --=0D
 .../bindings/display/panel/lvds.yaml          | 130 +++++-=0D
 .../display/panel/mitsubishi,aa104xd12.yaml   |  75 ----=0D
 .../display/panel/mitsubishi,aa121td01.yaml   |  74 ----=0D
 .../display/panel/sgd,gktw70sdae4se.yaml      |  68 ---=0D
 .../bindings/gnss/u-blox,neo-6m.yaml          |  62 +++=0D
 .../devicetree/bindings/gnss/u-blox.txt       |  45 --=0D
 .../devicetree/bindings/gpio/gpio-axp209.txt  |  75 ----=0D
 .../bindings/gpio/x-powers,axp209-gpio.yaml   |  55 +++=0D
 .../devicetree/bindings/hwmon/iio-hwmon.yaml  |  37 ++=0D
 .../i2c/allwinner,sun6i-a31-p2wi.yaml         |   2 +-=0D
 .../input/touchscreen/silead,gsl1680.yaml     |  91 ++++=0D
 .../input/touchscreen/silead_gsl1680.txt      |  44 --=0D
 .../devicetree/bindings/media/i2c/ov5640.txt  |  92 ----=0D
 .../bindings/media/i2c/ovti,ov5640.yaml       | 154 +++++++=0D
 .../devicetree/bindings/media/ti,cal.yaml     |   4 +-=0D
 .../devicetree/bindings/mfd/ac100.txt         |  50 ---=0D
 .../devicetree/bindings/mfd/axp20x.txt        | 273 ------------=0D
 .../bindings/mfd/x-powers,ac100.yaml          | 116 +++++=0D
 .../bindings/mfd/x-powers,axp152.yaml         | 400 ++++++++++++++++++=0D
 .../devicetree/bindings/mmc/mmc-card.txt      |  30 --=0D
 .../devicetree/bindings/mmc/mmc-card.yaml     |  48 +++=0D
 .../bindings/mmc/mmc-controller.yaml          |   6 -=0D
 .../net/allwinner,sun8i-a83t-emac.yaml        |   4 +-=0D
 .../bindings/net/broadcom-bluetooth.yaml      |  17 +-=0D
 .../bindings/net/realtek-bluetooth.yaml       |   2 +=0D
 .../devicetree/bindings/net/snps,dwmac.yaml   |   6 +-=0D
 .../bindings/net/wireless/esp,esp8089.txt     |  30 --=0D
 .../bindings/net/wireless/esp,esp8089.yaml    |  43 ++=0D
 .../bindings/regulator/silergy,sy8106a.yaml   |  52 +++=0D
 .../bindings/regulator/sy8106a-regulator.txt  |  23 -=0D
 .../reserved-memory/memory-region.yaml        |  40 ++=0D
 .../reserved-memory/reserved-memory.txt       | 172 +-------=0D
 .../reserved-memory/reserved-memory.yaml      |  96 +++++=0D
 .../reserved-memory/shared-dma-pool.yaml      |  87 ++++=0D
 .../devicetree/bindings/sound/bt-sco.txt      |  13 -=0D
 .../bindings/sound/linux,bt-sco.yaml          |  38 ++=0D
 .../bindings/sound/linux,spdif-dit.yaml       |  32 ++=0D
 .../bindings/sound/simple-amplifier.txt       |  17 -=0D
 .../sound/simple-audio-amplifier.yaml         |  45 ++=0D
 .../bindings/sound/spdif-transmitter.txt      |  10 -=0D
 .../devicetree/bindings/sound/wlf,wm8978.yaml |  58 +++=0D
 .../devicetree/bindings/usb/smsc,usb3503.yaml | 108 +++++=0D
 .../devicetree/bindings/usb/snps,dwc3.yaml    |  10 +-=0D
 .../devicetree/bindings/usb/usb3503.txt       |  39 --=0D
 .../devicetree/bindings/w1/w1-gpio.txt        |  27 --=0D
 .../devicetree/bindings/w1/w1-gpio.yaml       |  44 ++=0D
 arch/arm/boot/dts/axp209.dtsi                 |   6 +-=0D
 arch/arm/boot/dts/axp22x.dtsi                 |   6 +-=0D
 arch/arm/boot/dts/axp81x.dtsi                 |  10 +-=0D
 .../arm/boot/dts/sun4i-a10-olinuxino-lime.dts |  11 +-=0D
 arch/arm/boot/dts/sun4i-a10.dtsi              |  11 +-=0D
 arch/arm/boot/dts/sun5i-a13.dtsi              |  15 +-=0D
 arch/arm/boot/dts/sun6i-a31.dtsi              |  44 +-=0D
 arch/arm/boot/dts/sun7i-a20-bananapi.dts      |  17 +-=0D
 arch/arm/boot/dts/sun7i-a20.dtsi              |  34 +-=0D
 arch/arm/boot/dts/sun8i-a33.dtsi              |   4 +-=0D
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts     |   2 +-=0D
 arch/arm/boot/dts/sun8i-a83t.dtsi             |   4 +-=0D
 arch/arm/boot/dts/sun8i-h3.dtsi               |   4 +-=0D
 arch/arm/boot/dts/sun8i-v3-sl631.dtsi         |   2 +-=0D
 arch/arm/boot/dts/sun8i-v3s.dtsi              |   2 -=0D
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts   |   2 +-=0D
 .../boot/dts/sunxi-libretech-all-h3-it.dtsi   |   2 +-=0D
 arch/arm64/boot/dts/allwinner/axp803.dtsi     |  10 +-=0D
 .../arm64/boot/dts/allwinner/sun50i-a100.dtsi |   6 +-=0D
 .../dts/allwinner/sun50i-a64-cpu-opp.dtsi     |   2 +-=0D
 .../dts/allwinner/sun50i-a64-orangepi-win.dts |   2 +-=0D
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts |   2 +-=0D
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts |   3 +-=0D
 .../boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi |   2 +-=0D
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |   2 +-=0D
 .../boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi |   2 +-=0D
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   8 +-=0D
 84 files changed, 2191 insertions(+), 1743 deletions(-)=0D
 create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml=
=0D
 create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.=
yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt=0D
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,s=
un6i-a31-cpuconfig.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,s=
un9i-a80-prcm.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/advante=
ch,idk-1110wr.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/advante=
ch,idk-2121wr.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/innolux=
,ee101ia-01d.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/mitsubi=
shi,aa104xd12.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/mitsubi=
shi,aa121td01.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/display/panel/sgd,gkt=
w70sdae4se.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.ya=
ml=0D
 delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt=0D
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-axp209.txt=
=0D
 create mode 100644 Documentation/devicetree/bindings/gpio/x-powers,axp209-=
gpio.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml=
=0D
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/sil=
ead,gsl1680.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/sil=
ead_gsl1680.txt=0D
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5640.txt=
=0D
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov5640=
.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt=0D
 delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt=0D
 create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.ya=
ml=0D
 create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.y=
aml=0D
 delete mode 100644 Documentation/devicetree/bindings/mmc/mmc-card.txt=0D
 create mode 100644 Documentation/devicetree/bindings/mmc/mmc-card.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/net/wireless/esp,esp8=
089.txt=0D
 create mode 100644 Documentation/devicetree/bindings/net/wireless/esp,esp8=
089.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/regulator/silergy,sy8=
106a.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/regulator/sy8106a-reg=
ulator.txt=0D
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/memor=
y-region.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/reser=
ved-memory.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/share=
d-dma-pool.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/sound/bt-sco.txt=0D
 create mode 100644 Documentation/devicetree/bindings/sound/linux,bt-sco.ya=
ml=0D
 create mode 100644 Documentation/devicetree/bindings/sound/linux,spdif-dit=
.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/sound/simple-amplifie=
r.txt=0D
 create mode 100644 Documentation/devicetree/bindings/sound/simple-audio-am=
plifier.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/sound/spdif-transmitt=
er.txt=0D
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml=
=0D
 create mode 100644 Documentation/devicetree/bindings/usb/smsc,usb3503.yaml=
=0D
 delete mode 100644 Documentation/devicetree/bindings/usb/usb3503.txt=0D
 delete mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.txt=0D
 create mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.yaml=0D
=0D
-- =0D
2.31.1=0D
=0D
