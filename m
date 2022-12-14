Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E721F64C67C
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238054AbiLNJ7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238056AbiLNJ7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:30 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D172F165A3
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011969; x=1702547969;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9E1DRDPN91qa1gYjGmU1Cn0cTTv6iT6wAGrFF9xMkDg=;
  b=eT0DqKUHhGhn6z2fmnJ5K5VhrxhgQqgqDphVStTsr/b/VHXLFVXIpFI9
   R5shGm12UhcxKWclmYNiGRH3oMu9Ql4OfnxdqzIgyJHlogZuueKZAEdOq
   GgijDbVwdy0Q5N5pr+ZM5g2y55VdVtFCRsyRk17evFcbiVXSUHj41WpPM
   mkmTMHa4QWVNGSgfBoXoc87SIgWAVijkhm1o80EVRwJHlTDfdyspmLi1i
   jWAqasEwWwdEk9z6UdKE0XxUKxjPcTx/lrjMKWrT/uadcKy2pqOPVmbV2
   beE/flpi97v8IWd7kSmGZYkPYJ0knRvY/nOJhDUFyzUKFxz2kWsCHAys/
   w==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943351"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011964; x=1702547964;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9E1DRDPN91qa1gYjGmU1Cn0cTTv6iT6wAGrFF9xMkDg=;
  b=J8A8vKbVjy2VKkeC6ndylN+1y0kyVPSw0cM/zt2VxEti6r4IEv38I/FK
   +My/A8NRCHKwGIsXVCs89GeFM5cWmpRjDhCu57nyNj9piGxLzM70jQFLW
   QeubPYytBVf0d3lKjjF7HeLzJJ2CPjSQceEm6bQORK00xMs5Bcp0A+NH1
   tUsUAsM8RqnLENl529Laxg5urFK12cEAPFEPU65oKZsXN5kdsUYkdwQ6A
   NWhTHEqc2gPVEc4hb2i0pbyYBEZpRApX5J4eVXTr8z5RX+7HxYU80pQin
   +gj1og4ISUBsNHeABeWnIbhnpgfC1J5ZHnrNxiNn0+yTwbZ+e7xUb5/Ph
   w==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943350"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 32E26280071;
        Wed, 14 Dec 2022 10:59:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/7] ARM: dts: imx6ul-tqma6ul: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:17 +0100
Message-Id: <20221214095917.964695-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
index eca94ed6451b0..57e647fc32374 100644
--- a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
@@ -116,8 +116,8 @@ reg_vldo4: vldo4 {
 		};
 	};
 
-	jc42_1a: eeprom-temperature-sensor@1a {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	jc42_1a: eeprom-temperature@1a {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1a>;
 	};
 
-- 
2.34.1

