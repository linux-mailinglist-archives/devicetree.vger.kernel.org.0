Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42EF64AAC5F
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 20:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233005AbiBET65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 14:58:57 -0500
Received: from mail.noreya.tech ([46.38.236.86]:46456 "EHLO mail.noreya.tech"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231583AbiBET64 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 5 Feb 2022 14:58:56 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.noreya.tech (Postfix) with ESMTP id CEE1667;
        Sat,  5 Feb 2022 20:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noreya.tech;
        s=s2048; t=1644091131;
        bh=6vuVW2ogbw9rfSs8mTJvQxlxc7d00feawFyfLfjkxYY=;
        h=From:To:Cc:Subject:Date:From;
        b=fUypYrPQN97P8UCIyU8F5/YVTBSTTNeLYj/KSQgzzTj/4y3PgOcqDhCHOM9m8cFp0
         h5AqKSkq/7LyIbn5HbQrygtEOZnGhqFPSZDmrYaHaDdaYM8Qn4UzgF5UTc/IQuioSo
         9RKrrnIZq2Mw9+R3ohtvgjn14uJzLPfl5+qB1zauKfRwaTqkD36nFb1T2L2O6u/72B
         ApMJvHH4xKUl1TtB15EPc0eRc93IF8MmK9v8dwwUzHbFSQQMIgaJn8nZhLOnSABNqR
         WNhbZzUPUr+Kzo9mZaP4M+ovPptqFd9E2d/k/7ufz7qXpmFdRWDy2vi+b/wOwceoyZ
         U9GJqeeJljRtg==
X-Virus-Scanned: Debian amavisd-new at mail.noreya.tech
Received: from mail.noreya.tech ([127.0.0.1])
        by localhost (mail.noreya.tech [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id EUic0MenAa2m; Sat,  5 Feb 2022 20:58:50 +0100 (CET)
Received: from richard-AX370-Gaming-5.lan (unknown [IPv6:2a02:1748:dd5c:72f0:b8be:4678:4410:1a1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.noreya.tech (Postfix) with ESMTPSA;
        Sat,  5 Feb 2022 20:58:50 +0100 (CET)
From:   Richard Schleich <rs@noreya.tech>
To:     robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Richard Schleich <rs@noreya.tech>
Subject: [PATCH] ARM: dts: bcm2711: Fix comment
Date:   Sat,  5 Feb 2022 20:58:02 +0100
Message-Id: <20220205195802.52449-1-rs@noreya.tech>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No functional change.

Signed-off-by: Richard Schleich <rs@noreya.tech>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index d9f31873e711..0f2f26dc5ec6 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -536,7 +536,7 @@ l2: l2-cache0 {
 			compatible = "cache";
 			cache-size = <0x100000>;
 			cache-line-size = <64>;
-			cache-sets = <1024>; // 1MiB(size)/64(line-size)=16000ways/16-way set
+			cache-sets = <1024>; // 1MiB(size)/64(line-size)=16384ways/16-way set
 			cache-level = <2>;
 		};
 	};
-- 
2.25.1

