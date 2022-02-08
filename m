Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5900B4AD8B3
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:15:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244504AbiBHNPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357469AbiBHMdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:33:04 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A228C03FEC0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323583; x=1675859583;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AY6SYNjlHV2b3rym8FoLVWU69XCEuKj8e2duhPew9iw=;
  b=plU2iwV5Po4pYwdUltvtnqAAIftwx4PNjdkU997133T1Ad1woQwu2zy3
   kbjkXtX+K8MDidhDmqXLQ9AwVQe/p2WZFnIaCh7ea6ySVnSKNi1VnGBOi
   HfBHuTqQwuqHtbMCDx8vKE138N170xTjR7R7ASwMorpY7k82Z1HXfah+l
   HnFy+ML+AnsMfTV1huemN7z7R8QzRzYq19YZIiTELR0tkYhsgReBtvjSX
   T5wxqPPogAtF0BIXUg9hwfrDdop/XH0l2RQHVgYKn2GgLMglx7QTfKTCP
   xV4yfywIlvCMRlchQ2gHxfzjJ/3/p8LGQGCC65NndoXnx0+vOb7Zt1Ro5
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960353"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 13:32:58 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 13:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323578; x=1675859578;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AY6SYNjlHV2b3rym8FoLVWU69XCEuKj8e2duhPew9iw=;
  b=iG/pl3QqCj7zt9XXLO7sG9SV1UQCqxAsQcS3kgu2zUhChxt6FJ+HztHq
   hmTlCr79C+vjxiYlyxsHCd/pJPQQBbXUxumsH06qbALv9FzVYUlwu3fHX
   gVj11/NySnwDS2BvBUbTz3NvrQA5wFqBhqND6FYgIJvFeDLkHAos+9kM9
   FdgDvjDxW20qe6HWBN9CEkVUca+6q+fuK105Y1TvauV3aBBLFNDSxg1xQ
   l0+v1bKhFciX3iezILI0aXFp1hyQxiJAkj/9fDH7+NUlnPdDsQXvoGkw6
   gIFE9Bx0GtzFbojcYTmMKSlEV574Y4Vdk8XSfaSrWATmS19Kk/Z2yog68
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960351"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 584C7280078;
        Tue,  8 Feb 2022 13:32:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] ARM: dts: imx6qdl: tqma6: Mark gpio-buttons as wakeup-source
Date:   Tue,  8 Feb 2022 13:32:46 +0100
Message-Id: <20220208123248.821826-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
References: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
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

They are connected directly to CPU, so they can be used as wakeup source.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 8f6e1dd82ee4..1b6943802642 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -40,18 +40,21 @@ button1 {
 			label = "s6";
 			linux,code = <KEY_F6>;
 			gpios = <&gpio7 13 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button2 {
 			label = "s7";
 			linux,code = <KEY_F7>;
 			gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button3 {
 			label = "s8";
 			linux,code = <KEY_F8>;
 			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 	};
 
-- 
2.25.1

