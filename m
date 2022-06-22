Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 988355546AD
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357793AbiFVLuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 07:50:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357795AbiFVLt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 07:49:59 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DEB43D1D5
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898597; x=1687434597;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=aK0avVxzHq0y0trZLbDfvq5JBDzOMZYgj2wfqzwzwtE=;
  b=hd7UT/H1IpR45yCYmUlhO+5t0sheX1X6qxYcpz9I57yuHcAftS3OD2tI
   qAsFqTAA149lDBl2hoKOGiE+ncESiuimV1MOhCJOczjsToL53v5A9hrYC
   ZSnfzvlBW8coUq2+8++Q3HdFmHmtVNGErZXCMfhHT54fjOw7swsGABfsJ
   IjQyHfRbnNNoy/AXriakwTRI5eG39P+r+xeaYLXOT+hbgG5Iv80hdTNRP
   z02VY4qKQi2zKxDIS7pMUqhnc/AK0sLOdnz7xtrmhjwNVPWxXCG8SfEPi
   /qNdH9c0w5HviBQ36zAPwWKpAiGaC4ggjdAghWfLqz9hA3K/YlNfVbfZ8
   g==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603205"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Jun 2022 13:49:55 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 22 Jun 2022 13:49:55 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 22 Jun 2022 13:49:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898595; x=1687434595;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=aK0avVxzHq0y0trZLbDfvq5JBDzOMZYgj2wfqzwzwtE=;
  b=ljZa3Bfcn4d/9Woig8/dWyhUfWWti5G4V4QEJM6cjdea1aF+MpBlMmeB
   xl4ph422qCdsXXQptyR9JEEep4FQEAuD+kl0+rn+OJgpLKJsxMymZ57fT
   Mh3NDK32U6Jbv6RJPke+ic0QgnRk19R0BzYCTLn2YUFn3gaQrwe5Ald48
   ewqQqxytLJdtOYULpSL+dD8/ZqD64yCIBoMU8Vsl+zRT6CbkQTQMy3Mx0
   yvBu38OfI255Xj8NaYJtXWIYRD6rLLtEKwsgeaCFXfeWIwFsWzJlWJErb
   ags+Aj0WrFevGnOSXhtGfXSPmmviXzQnMp0dQQvx2WQC5luCJhICKqxiw
   A==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603204"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Jun 2022 13:49:55 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 48097280056;
        Wed, 22 Jun 2022 13:49:55 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH v2 0/3] TQMa8MPxL + MBa8MPxL support
Date:   Wed, 22 Jun 2022 13:49:46 +0200
Message-Id: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this patch set adds support for TQMa8MPxL on mainboard MBa8MPxL. This
already includes some pinctrl and/or peripheral configurations which are
not yet in use, e.g. PWM for PWM fan, backlight for LVDS panel, etc.
Also note. this only supports MBa8MPxL Rev.2xx, Revision 1xx is
not supported!

Changes in v2:
* Added a-b in patch1
* Changed LED label to function + color
* Renamed some nodes
* Added more pwm-backlight properties
* Added comment about missing display compatible
* Added display power-supply regulator
* Fixed pinctl settings for HDMI mux
* Added patch3 as WIP to show the LVDS overlay

Best regards,
Alexander

Alexander Stein (2):
  arm64: dts: freescale: add initial device tree for TQMa8MPQL with
    i.MX8MP
  [DNI/WIP] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL

Markus Niebel (1):
  dt-bindings: arm: add TQMa8MPxL board

 .../devicetree/bindings/arm/fsl.yaml          |  12 +
 arch/arm64/boot/dts/freescale/Makefile        |   3 +
 .../imx8mp-tqma8mpql-mba8mpxl-lvds.dts        |  44 ++
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 708 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 +++++++
 5 files changed, 1051 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi

-- 
2.25.1

