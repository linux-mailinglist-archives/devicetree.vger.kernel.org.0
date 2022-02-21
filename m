Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1124BDE43
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:46:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379838AbiBUQFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 11:05:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379824AbiBUQFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 11:05:02 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6A827147
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459478; x=1676995478;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gedpDKsijpNNeuafbDrm5bqQs/PvDSflJ6KLNOtS1Go=;
  b=Llst0ktQGHbPPN4eTtykZP6UXWiNMKpOt6SK8vKhkTTTDvaIHCnv7zQl
   qNl9T4wllFk1CMvfziqaF0Ni6O9CkoEk8LF2BJUje1dKrWqWf6lfRQ/jz
   UmhfGWlkQKIodv7L0/RGyN8+HiiqlHYf0hBZU36gyR2aKgj3wIRGSWCbO
   tnho08SYTVEocqzUTqug8PecjTnEpZkj61+KVkKpUPJlRkrH+5QRjhPiE
   W2/xGN5RpT7VisNEKJNCPsxOGYVKCYjA9sWrwK2lvXMwK7h7Vxjc+QLJM
   E4Yj6bc/2PqgxwwhXx5gw1fgrRwalCYaKoMItDWkj0mnOIbGlsNRTvwq4
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216137"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Feb 2022 17:04:36 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 21 Feb 2022 17:04:36 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 21 Feb 2022 17:04:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459476; x=1676995476;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gedpDKsijpNNeuafbDrm5bqQs/PvDSflJ6KLNOtS1Go=;
  b=brb/4pE0Thuhv3LN+Rz/tHM+AUat4e/xOAtcgZTVN/K3bVCRrZacyetM
   VH6oDyyLB//qXzwraor/k60r+CwGfmK4GKYd0E4C1QioFPfERM8FgmOeg
   eeT9WaIeDI6c+bNfAZAJAKZZSDSzbSlgwi/5tpRZFl95P84aJEiIBh6Oe
   XjwCwp6rUBkEzHPy1n98i2yY6A0CUbTlA9ostj0dsH9DxvIwG8bR/CHjr
   WYxADz6hFO6NjEhhoQdlk19V2+uQ/dSQVyfUSBySD6mtYdni/h5a6QJwD
   a0V1d0xwLEgv9aU/bn+nKTf/KrRR4kIGD+Xj4mx2oMYJCyr7eH/z7QAH/
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216136"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Feb 2022 17:04:36 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A2547280065;
        Mon, 21 Feb 2022 17:04:36 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Date:   Mon, 21 Feb 2022 17:04:14 +0100
Message-Id: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
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

thanks for your feedback on v1.
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

