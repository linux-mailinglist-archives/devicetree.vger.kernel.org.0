Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D4524BF267
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 08:13:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbiBVHKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 02:10:21 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:34268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbiBVHKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 02:10:20 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CE1B10A4
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 23:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513795; x=1677049795;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=M1Nib4SKRRVT+rr0cRC5GlnhJ18KFr8UNuxFfHBsgCE=;
  b=ettYuE43TNgReNAoWpEI5ks7zidLl4u1wBxCwNrQZpQFoni9UVNcu+3l
   DI3ro9FR9XChNZeBARDeU+81lRUqHGBKP2+ap/fsrJ8zTkX1EduuFbzll
   x1NWJZL8HY7res3HSvApfoBqX+/rQFq9p1cdGS/XKp8oIaCGaLw5tUYZh
   wKGDB8X8VdjpHIv9RVHh5c+N5Pa+C8C7yjcvLz8dc7peuu8n+rnvGeODX
   TCUxMaV6MICe4EPMJKT/Hu76Kf2mJCtlwU9APX5OEGV1VWCWG4heUXmNn
   06e1HNmhT0zbx8GHBh66PJefknXtQPrykpAL7bE9tK5m4HVJ0Siml3hPf
   g==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225720"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Feb 2022 08:09:53 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 22 Feb 2022 08:09:53 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 22 Feb 2022 08:09:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513793; x=1677049793;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=M1Nib4SKRRVT+rr0cRC5GlnhJ18KFr8UNuxFfHBsgCE=;
  b=qiR7m6frxTkE4ALHKPrlzfhHtsz1lE2b+TOBDIcoCXzzuoVITFxP1DHx
   kdMns0PwrqxnntXoMKtIrhPv77lL8FlXLSj7+PJsAKM1pXfrjN6uqDb5/
   eZR8a0Ty/PbMGl1uQo5wxBnZ4geqq+gbPtsLUCezdFXsYwmzEZP2Gg8BI
   pe/TILfgQ7fezY2mtUAWKbjoi3RkVeSxbGuDAeAuOXv2LvPXCzT//9hEe
   pkmatxprTXFoDDPs6/M3fhQs9N7xPimos83hYHsvFo+E1QfIKsLSmhRJK
   BiIuTHWHIWymrdc3eJg/E9NRI73K8g7maFhxyXyuX9Q09NxsUNV8DSAG2
   A==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225719"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Feb 2022 08:09:53 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 82B1F280065;
        Tue, 22 Feb 2022 08:09:53 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Date:   Tue, 22 Feb 2022 08:09:40 +0100
Message-Id: <20220222070945.563672-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone,

thanks for your feedback on v2.

Changes in v3:
* Reviewed-by: Krzysztof Kozlowski to PATCH 1
* Fixed gpio-keys DT node names in PATCH 2

Changes in v2:
* Acked-by: Rob Herring to PATCH 1
* Removed 'status' property for non-disabled devices in PATCH 2
* Removed superfluous blank lines in PATCH 2
* Removed doubled status = "disabled" in PATCH 2
* Moved 'chosen' node up in PATCH 2
* Removed unit-address for GPIO buttons in PATCH 2
* Removed internal (und unsupported) SPI device node in PATCH 2
* Removed QSPI flash partitions in PATCH 2
* Rename audio-codec node name in PATCH 2

Below is the summary from v1 which has not changed.

This patch series adds support for the TQ-Systems TQMa6ULx & TQMa6ULxL modules.
Admittedly the name can be confusing, so I'll explain in more detail.

TQMa6ULx [1] is the module series using i.MX6UL. The 'x' is a placeholder for
different variants which have a different µC. TQMa6UL1 is using MCIMX6G1 which
has some peripheries disabled, more about it below. TQMa6UL2 (and TQMa6UL3)
has a full feature set and are treated identical on Linux side.

TQMa6ULxL [2] is the LGA variant of TQMa6ULx with a differnt module PCB, but
still common parts. There is no variant using MCIMX6G1.

TQMa6ULLx [1] is identical to TQMa6ULx, but using an i.MX6ULL instead.
There is no TQMa6UL1L.

TQMa6ULLxL [2] is identical to TQMa6ULxL, but using an i.MX6ULL instead.
There is no TQMa6ULL1L.

There are also 2 different mainboards namely MBAa6ULx & MBa6ULxL ('x' here is
not a placeholder, but part of the name). MBAa6ULx is for non-LGA variants
TQMa6ULx & TQMa6ULLx, while MBa6ULxL is used for TQMa6ULxL & TQMa6ULLxL.
It is also possible to mount a TQMa6ULxL to MBa6ULx using an LGA adapter
providing the sockets.

TQMa6UL1 uses MCIMX6G1 which has FEC2, CAN2, CSI and LCDIF disabled by fuses.
This wouldn't be a problem at all, iff fec would support EPROBE_DEFER for
Ethernet PHYs on a different MDIO bus. Both PHYs are connected to the same MDIO
bus. This is not a proble, but as FEC2 has the lower base address than FEC1
it is probed first. For this reason the PHYs have to be attached to FEC2 or
things wont work. But exactly this breaks on TQMa6UL1 which has no FEC2 at all.
There is a suggestion for fec driver at [3] but without solution (yet).
This is the single reason there is a 'tq,imx6ul-tqma6ul1' compatible.
In order for things to work, the PHYs have to be deleted from fec2 & mdio
subnode and added to fec1 again.

Regardings the file structure there is a .dtsi file for
* common common parts on all 4 module variants (LGA & non-LGA, imx6ul & imx6ull):
  imx6ul-tqma6ul-common.dtsi
* common to non-LGA variants only: imx6ul-tqma6ulx-common.dtsi
* common to LGA variants only: imx6ul-tqma6ulxl-common.dtsi

This is valid for both TQMa6ULx and TQMa6ULLx. To not introduce another file
name separation, 'imx6ul-' is the prefix for common parts for imx6ul as well
as imx6ull.

Best regards,
Alexander

[1] https://www.tq-group.com/de/produkte/tq-embedded/arm-architektur/tqma6ulx/
[2] https://www.tq-group.com/de/produkte/tq-embedded/arm-architektur/tqma6ulxl/
[3] https://lkml.org/lkml/2021/10/14/430

Alexander Stein (4):
  ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
  ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
  ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
  ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees

Matthias Schiffer (1):
  dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)

 .../devicetree/bindings/arm/fsl.yaml          |  37 ++
 arch/arm/boot/dts/Makefile                    |   5 +
 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi  | 211 +++++++
 arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts |  55 ++
 arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi        |  37 ++
 arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts |  15 +
 arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi        |  71 +++
 .../arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts |  15 +
 arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi       |  71 +++
 arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi |  43 ++
 .../arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi |  48 ++
 .../boot/dts/imx6ull-tqma6ull2-mba6ulx.dts    |  15 +
 arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi      |  76 +++
 .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   |  15 +
 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     |  76 +++
 arch/arm/boot/dts/mba6ulx.dtsi                | 571 ++++++++++++++++++
 16 files changed, 1361 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
 create mode 100644 arch/arm/boot/dts/mba6ulx.dtsi

-- 
2.25.1

