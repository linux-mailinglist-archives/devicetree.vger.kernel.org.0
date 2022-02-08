Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDD634ADA4C
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:43:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359487AbiBHNmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:42:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359354AbiBHNmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 08:42:33 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D066C03FED0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 05:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327752; x=1675863752;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=KQjJJsdtoRUmSCELmiD0Y8pPS66nSMdgiBgH37ytrZw=;
  b=jicepP9obMqxZ7FOsmJ/fTUNeuH+UvfCPMTz2xOnP7CiAVa/y3IlrPzm
   k65wGvhX3FyjJdkzM0of4P7qbzzLVOueBABE3OHGXIHjg4VCxbl7+3igB
   5YiXdwJeBkZafv5+K8eWgP9qzkak8tS/kOmVbGeubpRIYo2w8q8m+DPeu
   2AdBJZ/BlruOWr8PNAEr8DxvvNSse/ToiECX0/JpxbIznJYLFnXZvLDY2
   SqVOHmXJwL5p3LIT25Qcb3OAGF7QZCKs1Ro/oJ4phRcPgpCMoj+172Byn
   1CSgKmo+eyYdnRw9Nz9rUdj07D15pnsHogIb3HvZzG32CgvikfCrxD+kF
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962442"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 14:42:30 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 14:42:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327750; x=1675863750;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=KQjJJsdtoRUmSCELmiD0Y8pPS66nSMdgiBgH37ytrZw=;
  b=dNtXK4FvtR/jqj7S4y4RttMyqBTiwvyQ3QylbiQa7ApP8OkR9GJxDz4S
   RsicKjv469V962e8mvgs6phccp/7C+33DSahBYMAEbyi8pF84woIA1xyG
   eUilsYYU4PjOOqnAD30mbH7G+ZcETgiV9diENdFjlbStTko6yQEk8D6F5
   DXQy+iY+zUxY2qy7jLnRQcSoTSHlLDOi0hyB2jllAubj04Yv+5cLJc7DT
   P3PBvrkfiUbI3vrHysWCpyFEOeSAadTrvd9y/+qrUgrex0cnJ5hYCB3C+
   OaPxNidKb6ctq/f1elnN87Aq9tYz0jvs4gwL2NRuYyR77qXjAaJNqfvKT
   w==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962441"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 14:42:30 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1F1FA280065;
        Tue,  8 Feb 2022 14:42:30 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Date:   Tue,  8 Feb 2022 14:42:18 +0100
Message-Id: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
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

this patch series adds support for the TQ-Systems TQMa6ULx & TQMa6ULxL modules.
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
 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi  | 215 ++++++
 arch/arm/boot/dts/imx6ul-tqma6ul1-mba6ulx.dts |  56 ++
 arch/arm/boot/dts/imx6ul-tqma6ul1.dtsi        |  37 ++
 arch/arm/boot/dts/imx6ul-tqma6ul2-mba6ulx.dts |  15 +
 arch/arm/boot/dts/imx6ul-tqma6ul2.dtsi        |  71 ++
 .../arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts |  15 +
 arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi       |  71 ++
 arch/arm/boot/dts/imx6ul-tqma6ulx-common.dtsi |  43 ++
 .../arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi |  48 ++
 .../boot/dts/imx6ull-tqma6ull2-mba6ulx.dts    |  15 +
 arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi      |  76 +++
 .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   |  15 +
 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     |  76 +++
 arch/arm/boot/dts/mba6ulx.dtsi                | 615 ++++++++++++++++++
 16 files changed, 1410 insertions(+)
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

