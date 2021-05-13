Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D02B37F107
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 03:53:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbhEMBzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 21:55:00 -0400
Received: from eu-shark2.inbox.eu ([195.216.236.82]:37372 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbhEMBy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 21:54:59 -0400
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 7004D1E0072D;
        Thu, 13 May 2021 04:53:49 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620870829; bh=pb32XrLr2f8ZsH/s6jvd/OiiD3RMHBuJn7UkoYGE4U0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=tjGbfW5Rv+VuOmm1qj+wGU1A82+PtfGxr+Pl1mLWZ5hJ9OFPkRIwNEjuCTQCoEPC4
         M9op0lxs+po/a+rfEe5o2zeSHarWI8d59zAysRjywTV5jw1LftfpijJJF4UG0sn7/O
         beRXJ/sYFtbW72fyXcUuPSkIh9bjbEwEUkVG/1dU=
Received: from localhost (localhost [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 559BA1E006FB;
        Thu, 13 May 2021 04:53:49 +0300 (EEST)
Received: from eu-shark2.inbox.eu ([127.0.0.1])
        by localhost (eu-shark2.inbox.eu [127.0.0.1]) (spamfilter, port 35)
        with ESMTP id vtwWD3FOazRc; Thu, 13 May 2021 04:53:49 +0300 (EEST)
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 2588D1E0072D;
        Thu, 13 May 2021 04:53:49 +0300 (EEST)
Received: from localhost.localdomain (unknown [134.19.185.34])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 14F0C1BE00D4;
        Thu, 13 May 2021 04:35:21 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v3 2/3] dt-bindings: watchdog: mediatek: add support for mt6577 SoC
Date:   Thu, 13 May 2021 04:35:14 +0300
Message-Id: <20210513013515.31329-3-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210513013515.31329-1-arzamas-16@mail.ee>
References: <20210513013515.31329-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: +d1m6vZSeEqpi1uoRXnWAQIzrDYrL+Dg557a3RxamGX7ODCFdk0TUxSr7hJ7DSP4og==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for Mediatek mt6577 SoC to device tree binding
documentation.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index e36ba60de829..f5a5404523a3 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -5,6 +5,7 @@ Required properties:
 - compatible should contain:
 	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
 	"mediatek,mt2712-wdt": for MT2712
+	"mediatek,mt6577-wdt": for MT6577
 	"mediatek,mt6589-wdt": for MT6589
 	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
-- 
2.20.1

