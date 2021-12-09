Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E23C46E1AC
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 05:46:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbhLIEtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 23:49:51 -0500
Received: from marcansoft.com ([212.63.210.85]:57336 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229496AbhLIEtt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 23:49:49 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 0D0AE41E64;
        Thu,  9 Dec 2021 04:46:13 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: apple: t8103: Add apple,min-ps to DCP PMGR nodes
Date:   Thu,  9 Dec 2021 13:45:01 +0900
Message-Id: <20211209044501.67028-4-marcan@marcan.st>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211209044501.67028-1-marcan@marcan.st>
References: <20211209044501.67028-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is required for DCP to boot successfully; it seems if power gating
is allowed, they do not wake up properly.

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 arch/arm64/boot/dts/apple/t8103-pmgr.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi b/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
index 1310be74df1d..fc51bc872468 100644
--- a/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
@@ -665,6 +665,7 @@ ps_dispext_cpu0: power-controller@378 {
 		#reset-cells = <0>;
 		label = "dispext_cpu0";
 		power-domains = <&ps_dispext_fe>;
+		apple,min-state = <4>;
 	};
 
 	ps_jpg: power-controller@3c0 {
@@ -1005,6 +1006,7 @@ ps_disp0_cpu0: power-controller@10018 {
 		label = "disp0_cpu0";
 		power-domains = <&ps_disp0_fe>;
 		apple,always-on; /* TODO: figure out if we can enable PM here */
+		apple,min-state = <4>;
 	};
 };
 
-- 
2.33.0

