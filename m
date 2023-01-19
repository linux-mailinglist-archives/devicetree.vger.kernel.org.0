Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF0E2673CB4
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 15:47:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231461AbjASOrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 09:47:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbjASOqp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 09:46:45 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E14586EEE
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 06:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139457; x=1705675457;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uB8uB86LuN3HgbMx7REOvUOru6ul+IWGzmbtPf1DUuY=;
  b=hyn9VWk4yLq9VDQ3Aq1T0fjRUWTyFQFlUL0cRIs+zqW1Tq5gxTw0HZK8
   nAkUSI6uLRUCzeTIlxDiXow15HuxfdzypOGOXA2lyrmQhinFRPlsUMpFC
   aMYTkvjtEj30qT5yby+b95hTkD8kon7d+dp3rwjRDe8rxo61pdgUN0tdQ
   6y7z1lAvSkdePjTvRNHBFYquc6hz2Po8FRULf3QmyB2FJQuI2fgjgpS9q
   wgECJWdkQFtNuMDJfLMt3HkDQ1R9yDiVsS71z/w2Wp/F9oXjePfuQ2bw3
   mJ21dHsegaTi/AUob2L9MgpuQmjMGQk4NKtlBwAH33iPtsBFhUDLSPw/f
   g==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537306"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 15:42:44 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 15:42:44 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 15:42:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139364; x=1705675364;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uB8uB86LuN3HgbMx7REOvUOru6ul+IWGzmbtPf1DUuY=;
  b=T453chmKJ7trjLS7S+Sveu+cDGz8nOTBobVAnKc/EdrXV0Clb+G3bGhx
   oOlkPDf6PSLFpupRGgkrG2YGEC+f1RBxRUxM39T6zO/rhM7azP+ewJJei
   IHJZNffMTia3qw1sicKROb5MOiCg1PDJ7oSQxezaATPc8zBrq0EZMNm61
   1vvypFuLkc75B6gG1ghmqc/i3dCXSxX5sC/woOOoEiWVndEeeyyzVeb4+
   YLB/2TBqxOKp/+qpaltVYxGZAdMPU1SRh6Pmk//NgfvYGr56EBmrvBZ/j
   UAoR4opmJZsCGLGIVY/Nt9ErKQkj1PIPbSJpXpktOVezNv5LarfS1g69b
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537305"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 15:42:43 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A9496280072;
        Thu, 19 Jan 2023 15:42:43 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/9] ARM: dts: ls1021a: add TQMLS1021A flash partition layout
Date:   Thu, 19 Jan 2023 15:42:30 +0100
Message-Id: <20230119144236.3541751-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
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

The bootloader does not add the partitions into DT, so add them manually
here.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi b/arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi
index 1ab518c489252..2e71572245303 100644
--- a/arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi
@@ -89,5 +89,36 @@ qflash0: flash@0 {
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot@0 {
+				label = "U-Boot-PBL";
+				reg = <0x0 0xe0000>;
+			};
+
+			env@e0000 {
+				label = "U-Boot Environment";
+				reg = <0xe0000 0x10000>;
+			};
+
+			dtb@f0000 {
+				label = "DTB";
+				reg = <0xf0000 0x10000>;
+			};
+
+			linux@100000 {
+				label = "Linux";
+				reg = <0x100000 0x700000>;
+			};
+
+			rootfs@800000 {
+				label = "RootFS";
+				reg = <0x800000 0x3800000>;
+			};
+		};
 	};
 };
-- 
2.34.1

