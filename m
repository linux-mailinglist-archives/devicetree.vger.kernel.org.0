Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63DCD54E348
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 16:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377598AbiFPOWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 10:22:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232449AbiFPOW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 10:22:29 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B935A3B3EF
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389347; x=1686925347;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0M2aYWtXdJahPcQgjUapByMBxLuM0Ad7WifDEdN45xA=;
  b=eVpXog3XI59fdgyxz0LRPtNuK0+UYYK7/RXdRgcoAcNaHdzNNNq/J29v
   F+BVyH95WNPpIjHHCd8jX954et7xWwOrrSidimkK/bAcCKMr8Vp4v82Mb
   Fs/ejmseQ+yKhZSCWLqJc0DD/gn8cV9Fxwac8UP7wdfwyBbRKnVjRKCY+
   Vw3lM8Ll1hxt60Wv29+LwJ/Tq1PGaqtHgv/S4WKvtGEG5iFppn+4+JDA5
   9xh4ojwdQOnCHj7nCpBJc2o2wUg8Fgts5mYSCo3RBlo8YbKvQetl45mYZ
   bLUXg9sOMxDKVJjwCJ4h1yhKbU1Ye0jgyE5Z0u7mDwRvn/TowKxZSxl+s
   Q==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497078"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Jun 2022 16:22:26 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Jun 2022 16:22:26 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Jun 2022 16:22:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389346; x=1686925346;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0M2aYWtXdJahPcQgjUapByMBxLuM0Ad7WifDEdN45xA=;
  b=cTIHRyCb9ztXNdttV9rjg+nQoMxiSa7ZZ6R7VpNPLgZlByq/l1Q/vgmN
   5ipWHnDDWBLZb4WLCCqLcHIv0epJDNiDKz4AObCiErofRel4BGsVoLOjw
   v7tkRitMPOpiVhYK6FY3jzoGNZLXTG6yoKXieynyL7Cce1bzpdnnDSkxi
   eDSPfYOLh3J7QBJ6AjDVbXcAhfcgjNeRWph1Iw0xF98jvdzgEBNUbKsna
   LLss0jo6XpC8Pzgk8HfqrMQsKnMuUTbxIaDfrsxJc8HWCVKuH33+UGR89
   BS6ZsD/hbIgZs4XTTeISBH9DeiN2AFqlDVdmIxusIx6hYGZZxPQTKKU3G
   Q==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497077"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2022 16:22:25 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BAA90280056;
        Thu, 16 Jun 2022 16:22:25 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH 0/2] TQMa8MPxL + MBa8MPxL support
Date:   Thu, 16 Jun 2022 16:22:19 +0200
Message-Id: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
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

this patch set adds suport for TQMa8MPxL on mainboard MBa8MPxL. This already
includes some pinctrl and/or peripheral configurations which are not yet in use,
e.g. PWM for PWM fan, backlight for LVDS panel, etc.
Also note. this only supports MBa8MPxL Rev.2xx, Revision 1xx is not supported!

Best regards,
Alexander

Alexander Stein (1):
  arm64: dts: freescale: add initial device tree for TQMa8MPQL with
    i.MX8MP

Markus Niebel (1):
  dt-bindings: arm: add TQMa8MPxL board

 .../devicetree/bindings/arm/fsl.yaml          |  12 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 689 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 ++++++++
 4 files changed, 986 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi

-- 
2.25.1

