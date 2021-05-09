Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43EF73778AE
	for <lists+devicetree@lfdr.de>; Sun,  9 May 2021 23:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbhEIV2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 17:28:10 -0400
Received: from eu-shark1.inbox.eu ([195.216.236.81]:52044 "EHLO
        eu-shark1.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbhEIV2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 May 2021 17:28:09 -0400
Received: from eu-shark1.inbox.eu (localhost [127.0.0.1])
        by eu-shark1-out.inbox.eu (Postfix) with ESMTP id 9BBB16C005F6;
        Mon, 10 May 2021 00:17:09 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620595029; bh=pb32XrLr2f8ZsH/s6jvd/OiiD3RMHBuJn7UkoYGE4U0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=f5Tc3LrWHuTWwJWTQZ0ql8/AwPuSIJK55zIexqTDkGxGJAN/kCiuTv2kpATI956wr
         ExO86Ui+zgHBa9DDxQ8ffWvIiyapq3gtO5OL3WWw1A319kz1i09+SnhzzexbBI/R6A
         0UjE1lsfZKczhRHL14w8rcI/oewzeBnraL5bIHFs=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id 7C10D6C00504;
        Mon, 10 May 2021 00:17:09 +0300 (EEST)
Received: from localhost.localdomain (unknown [196.196.216.231])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id B5EB31BE009C;
        Mon, 10 May 2021 00:17:08 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: watchdog: mediatek: add support for mt6577 SoC
Date:   Mon, 10 May 2021 00:17:01 +0300
Message-Id: <20210509211702.549-3-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210509211702.549-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210509211702.549-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: 6N1mkZY3ejOlg1i/QnLYGwQ2qTRLX+z5iJm3kEIZgAiJPFvxYip5XRGylGp0RXi8ujwX
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

