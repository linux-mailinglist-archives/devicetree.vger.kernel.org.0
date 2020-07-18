Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6D40224DF7
	for <lists+devicetree@lfdr.de>; Sat, 18 Jul 2020 22:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728379AbgGRUvL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Jul 2020 16:51:11 -0400
Received: from v6.sk ([167.172.42.174]:37632 "EHLO v6.sk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727869AbgGRUvL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 18 Jul 2020 16:51:11 -0400
Received: from localhost (v6.sk [IPv6:::1])
        by v6.sk (Postfix) with ESMTP id 0B08160D38;
        Sat, 18 Jul 2020 20:51:10 +0000 (UTC)
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 11/13] ARM: dts: mmp2-olpc-xo-1-75: Enable the GPU
Date:   Sat, 18 Jul 2020 22:50:17 +0200
Message-Id: <20200718205019.184927-12-lkundrak@v3.sk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200718205019.184927-1-lkundrak@v3.sk>
References: <20200718205019.184927-1-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the 3D + 2D (GC860) GPU core.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts b/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts
index 5f1da58550987..f1a41152e9dd7 100644
--- a/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts
+++ b/arch/arm/boot/dts/mmp2-olpc-xo-1-75.dts
@@ -272,3 +272,7 @@ sspa0_0: endpoint {
 		};
 	};
 };
+
+&gpu {
+	status = "okay";
+};
-- 
2.26.2

