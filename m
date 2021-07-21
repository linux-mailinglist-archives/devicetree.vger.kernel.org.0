Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 674B63D107A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237129AbhGUNXw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:23:52 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:51295 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238906AbhGUNXw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:23:52 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 665D65C0219;
        Wed, 21 Jul 2021 10:04:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:04:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm3; bh=0yLize6V4yGuRVRAJVhl7zWXtO
        rJts0VL+IVAhVKoC0=; b=yiwflfd1DO8Z1DNuqaEFJUdb66JTu+YsrMHfyK/dk0
        uY8JG5gjdAIuLBykI+syrC5soO1Vl+feCiP9bj07m592NROLIM3hT2TkpINC7ywi
        Kqt2cp8QBCcwRcqB6PYcUDgzZoF5BUZb0f00YQTsU/0uADKJ5mxw2Pha7ex3VBJq
        pMJdRBMQyjzdOFmNo4FSNsZlJKxO1fNR3iqp/qSjTM6K4YLy/xdUsv72VID5fhHE
        5PEnQf+kvthj/SKYeshnb0jsX1cD9kphEA3NM6sNQ1UpG83ES2YEdpXihwZu2LRt
        D1F18vIRANT/ejcdnUtuN7nrWPVzneYT9u46YuPube6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=0yLize
        6V4yGuRVRAJVhl7zWXtOrJts0VL+IVAhVKoC0=; b=KvoznqTIhUnFzEAB5yThyD
        l1oq0fW5tixi13vWFpgwEvbWZd7KUnRuX2rA9YFytloQ1VrTwthXhztSYFGOHZtF
        VKCPv2cYvHUoESCCTr8SWm0x4T06kB4XdSyYlU0/nKBKt+Pox6tRFk1g4ckkjLXN
        isArJZY8F5zshANodlJ+2/Iis11iZJROYBFjbyLehf2whFb1X1rbJs21KI390zhh
        VDLtWtrVatmIl+1iBOzEvYS5PmU5VW4FMOGavSkMhtcDaFCVYbh12ScyBjzvz9QK
        Anfg94oaKcgeAdKD+t6mWGQn4CsSbA7tWFYvBCzOqMnsxIhughyVCUtej01kslxg
        ==
X-ME-Sender: <xms:ayn4YDEcXJzNhNiecrGWkiYeJbuFzMOmKRlMBSvTwKF9PqJqtLSzlA>
    <xme:ayn4YAUjrhc1v0CY4d4qJoJEGlgVeuipWbSY28npbdVHMtMHfbDbOBKxmg0pzrvup
    SkBMh6IludY2UT-G1w>
X-ME-Received: <xmr:ayn4YFK_lx7WL3uQMMnKvjJLtJW5JGFZu-e_wPQorjoYUy0InPquisjv_AD4X83tLFUo-l2k2vNcwvpbKPllXrnkZhWWWAeF0CXj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgtggfgsehtqhertdertdejnecuhfhrohhmpeforgigihhmvgcu
    tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
    hrnhepteeikefgffekgeekledtheduteetjefgkeeuvefhhfetgedugfektdeugeffgfef
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgi
    himhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ayn4YBGO-xzR9BsungBnO5GwaIm8rHtraUtl55FMfEU8aRTXHwGpEw>
    <xmx:ayn4YJWHrkowh2uEzN6VyGFtzx_1e4y3ArQMhUVnsvNXYXG8hxREog>
    <xmx:ayn4YMM0Yk5xTIRu0iwph6fqwGcL_TKqVAx5B5gxtr6MGqsN4VGwpQ>
    <xmx:bCn4YLLvPD1ZxKlx2Ejv8h2vPZDuLiCsqarVRYo25eQLIYVW9y8P-w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:26 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 00/54] ARM: dts: Last round of DT schema fixes
Date:   Wed, 21 Jul 2021 16:03:30 +0200
Message-Id: <20210721140424.725744-1-maxime@cerno.tech>
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
Maxime Ripard (54):=0D
  ASoC: dt-bindings: Add WM8978 Binding=0D
  ASoC: dt-bindings: Convert Bluetooth SCO Link binding to a schema=0D
  ASoC: dt-bindings: Convert SPDIF Transmitter binding to a schema=0D
  ASoC: dt-bindings: Convert Simple Amplifier binding to a schema=0D
  dt-bindings: Convert Reserved Memory binding to a schema=0D
  dt-bindings: arm: Convert ARM CCI-400 binding to a schema=0D
  dt-bindings: bluetooth: broadcom: Fix clocks check=0D
  dt-bindings: bluetooth: realtek: Add missing max-speed=0D
  dt-bindings: clocks: Fix typo in the H6 compatible=0D
  dt-bindings: display: panel-lvds: Document panel compatibles=0D
  dt-bindings: display: simple-bridge: Add corpro,gm7123 compatible=0D
  dt-bindings: gnss: Convert UBlox Neo-6M binding to a schema=0D
  dt-bindings: gpio: Convert X-Powers AXP209 GPIO binding to a schema=0D
  dt-bindings: hwmon: Add IIO HWMON binding=0D
  dt-bindings: iio: st: Remove wrong items length check=0D
  dt-bindings: input: Convert ChipOne ICN8318 binding to a schema=0D
  dt-bindings: input: Convert Pixcir Touchscreen binding to a schema=0D
  dt-bindings: input: Convert Regulator Haptic binding to a schema=0D
  dt-bindings: input: Convert Silead GSL1680 binding to a schema=0D
  dt-bindings: input: sun4i-lradc: Add wakeup-source=0D
  dt-bindings: interconnect: sunxi: Add R40 MBUS compatible=0D
  dt-bindings: media: Convert OV5640 binding to a schema=0D
  dt-bindings: mfd: Convert X-Powers AC100 binding to a schema=0D
  dt-bindings: mfd: Convert X-Powers AXP binding to a schema=0D
  dt-bindings: mmc: Convert MMC Card binding to a schema=0D
  dt-bindings: net: dwmac: Fix typo in the R40 compatible=0D
  dt-bindings: net: wireless: Convert ESP ESP8089 binding to a schema=0D
  dt-bindings: power: supply: axp20x: Add AXP803 compatible=0D
  dt-bindings: power: supply: axp20x-battery: Add AXP209 compatible=0D
  dt-bindings: regulator: Convert SY8106A binding to a schema=0D
  dt-bindings: sunxi: Add CPU Configuration Controller Binding=0D
  dt-bindings: sunxi: Add Allwinner A80 PRCM Binding=0D
  dt-bindings: thermal: Make trips node optional=0D
  dt-bindings: usb: Convert SMSC USB3503 binding to a schema=0D
  dt-bindings: usb: dwc3: Fix usb-phy check=0D
  dt-bindings: usb: ehci: Add Allwinner A83t compatible=0D
  dt-bindings: usb: ohci: Add Allwinner A83t compatible=0D
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
  arm64: dts: allwinner: Remove regulator-ramp-delay=0D
  arm64: dts: allwinner: teres-i: Remove wakekup-source from the PMIC=0D
  arm64: dts: allwinner: pinephone: Fix BT SCO codec cells size=0D
=0D
 .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 ++++++++++=0D
 .../bindings/arm/cci-control-port.yaml        |  38 ++=0D
 Documentation/devicetree/bindings/arm/cci.txt | 224 ----------=0D
 .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   |   1 +=0D
 .../sunxi/allwinner,sun6i-a31-cpuconfig.yaml  |  38 ++=0D
 .../arm/sunxi/allwinner,sun9i-a80-prcm.yaml   |  33 ++=0D
 .../clock/allwinner,sun8i-a83t-de2-clk.yaml   |   2 +-=0D
 .../display/bridge/simple-bridge.yaml         |   3 +=0D
 .../bindings/display/panel/lvds.yaml          |  18 +-=0D
 .../bindings/gnss/u-blox,neo-6m.yaml          |  62 +++=0D
 .../devicetree/bindings/gnss/u-blox.txt       |  45 ---=0D
 .../devicetree/bindings/gpio/gpio-axp209.txt  |  75 ----=0D
 .../bindings/gpio/x-powers,axp209-gpio.yaml   |  84 ++++=0D
 .../devicetree/bindings/hwmon/iio-hwmon.yaml  |  37 ++=0D
 .../bindings/iio/st,st-sensors.yaml           |  41 --=0D
 .../input/allwinner,sun4i-a10-lradc-keys.yaml |   2 +=0D
 .../bindings/input/regulator-haptic.txt       |  21 -=0D
 .../bindings/input/regulator-haptic.yaml      |  43 ++=0D
 .../input/touchscreen/chipone,icn8318.yaml    |  62 +++=0D
 .../input/touchscreen/chipone_icn8318.txt     |  44 --=0D
 .../input/touchscreen/pixcir,pixcir_ts.yaml   |  68 ++++=0D
 .../input/touchscreen/pixcir_i2c_ts.txt       |  31 --=0D
 .../input/touchscreen/silead,gsl1680.yaml     |  90 +++++=0D
 .../input/touchscreen/silead_gsl1680.txt      |  44 --=0D
 .../devicetree/bindings/media/i2c/ov5640.txt  |  92 -----=0D
 .../bindings/media/i2c/ovti,ov5640.yaml       | 154 +++++++=0D
 .../devicetree/bindings/mfd/ac100.txt         |  50 ---=0D
 .../devicetree/bindings/mfd/axp20x.txt        | 272 -------------=0D
 .../bindings/mfd/x-powers,ac100.yaml          | 113 ++++++=0D
 .../bindings/mfd/x-powers,axp152.yaml         | 381 ++++++++++++++++++=0D
 .../devicetree/bindings/mmc/mmc-card.txt      |  30 --=0D
 .../devicetree/bindings/mmc/mmc-card.yaml     |  48 +++=0D
 .../bindings/mmc/mmc-controller.yaml          |   6 -=0D
 .../net/allwinner,sun8i-a83t-emac.yaml        |   4 +-=0D
 .../bindings/net/broadcom-bluetooth.yaml      |  17 +-=0D
 .../bindings/net/realtek-bluetooth.yaml       |   2 +=0D
 .../devicetree/bindings/net/snps,dwmac.yaml   |   6 +-=0D
 .../bindings/net/wireless/esp,esp8089.txt     |  30 --=0D
 .../bindings/net/wireless/esp,esp8089.yaml    |  43 ++=0D
 .../x-powers,axp20x-ac-power-supply.yaml      |  11 +-=0D
 .../x-powers,axp20x-battery-power-supply.yaml |  12 +-=0D
 .../x-powers,axp20x-usb-power-supply.yaml     |  14 +-=0D
 .../bindings/regulator/silergy,sy8106a.yaml   |  52 +++=0D
 .../bindings/regulator/sy8106a-regulator.txt  |  23 --=0D
 .../reserved-memory/reserved-memory.txt       | 141 -------=0D
 .../reserved-memory/reserved-memory.yaml      | 167 ++++++++=0D
 .../devicetree/bindings/sound/bt-sco.txt      |  13 -=0D
 .../bindings/sound/linux,bt-sco.yaml          |  34 ++=0D
 .../bindings/sound/linux,spdif-dit.yaml       |  32 ++=0D
 .../bindings/sound/simple-amplifier.txt       |  17 -=0D
 .../sound/simple-audio-amplifier.yaml         |  45 +++=0D
 .../bindings/sound/spdif-transmitter.txt      |  10 -=0D
 .../devicetree/bindings/sound/wlf,wm8978.yaml |  58 +++=0D
 .../bindings/thermal/thermal-zones.yaml       |   2 +-=0D
 .../devicetree/bindings/usb/generic-ehci.yaml |   1 +=0D
 .../devicetree/bindings/usb/generic-ohci.yaml |   1 +=0D
 .../devicetree/bindings/usb/smsc,usb3503.yaml | 104 +++++=0D
 .../devicetree/bindings/usb/snps,dwc3.yaml    |  10 +-=0D
 .../devicetree/bindings/usb/usb3503.txt       |  39 --=0D
 .../devicetree/bindings/w1/w1-gpio.txt        |  27 --=0D
 .../devicetree/bindings/w1/w1-gpio.yaml       |  43 ++=0D
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
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   |   2 +-=0D
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts |   2 +-=0D
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts |   3 +-=0D
 .../boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi |   2 +-=0D
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |   2 +-=0D
 .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |   2 -=0D
 .../boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi |   2 +-=0D
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    |   2 -=0D
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |   2 -=0D
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   8 +-=0D
 92 files changed, 2221 insertions(+), 1428 deletions(-)=0D
 create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml=
=0D
 create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.=
yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt=0D
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,s=
un6i-a31-cpuconfig.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,s=
un9i-a80-prcm.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.ya=
ml=0D
 delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt=0D
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-axp209.txt=
=0D
 create mode 100644 Documentation/devicetree/bindings/gpio/x-powers,axp209-=
gpio.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml=
=0D
 delete mode 100644 Documentation/devicetree/bindings/input/regulator-hapti=
c.txt=0D
 create mode 100644 Documentation/devicetree/bindings/input/regulator-hapti=
c.yaml=0D
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/chi=
pone,icn8318.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/chi=
pone_icn8318.txt=0D
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/pix=
cir,pixcir_ts.yaml=0D
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/pix=
cir_i2c_ts.txt=0D
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
 delete mode 100644 Documentation/devicetree/bindings/reserved-memory/reser=
ved-memory.txt=0D
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/reser=
ved-memory.yaml=0D
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
