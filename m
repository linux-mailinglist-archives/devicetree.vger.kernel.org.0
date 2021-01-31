Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8D07309F96
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 00:55:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbhAaXzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 18:55:10 -0500
Received: from eu-shark2.inbox.eu ([195.216.236.82]:53886 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhAaXzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 18:55:03 -0500
X-Greylist: delayed 547 seconds by postgrey-1.27 at vger.kernel.org; Sun, 31 Jan 2021 18:55:02 EST
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 74FF3455628;
        Mon,  1 Feb 2021 01:45:17 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1612136717; bh=fG1Sn0FuefSJnl7h6oGEFll4/tvlfiI7RwsFgXZJoDs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=PnSTMPGP8rpwjBiEv/ETVgqeTmY9Lxib2B9qTU+5tnjz9EjUZ2XNl+X5NTHoXgFok
         ubCas5dMEeVYw9sppJeFz9xiajugOPnht/pk+OXjUDM6Q4xgFdYimJojVqQZUlLLV1
         Jyf/jTDGZq3Xw6nKe5Dae+TKHWeMmR6qHcx+enw0=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 496764541A5;
        Mon,  1 Feb 2021 01:45:17 +0200 (EET)
Received: from localhost.localdomain (unknown [165.231.161.4])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 8F65C1BE00BA;
        Mon,  1 Feb 2021 01:45:16 +0200 (EET)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Boris Lysov <arzamas-16@mail.ee>
Subject: [PATCH 1/3] dt-bindings: watchdog: mediatek: add support for mt6577 SoC
Date:   Mon,  1 Feb 2021 02:44:23 +0300
Message-Id: <20210131234425.9773-2-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210131234425.9773-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: +dBm1NUOBlzQh1+kSn3cDQIzqylVL57ojpKmsm5UmmeDUSOFeE0TUhO2g21wTGK8og==
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
index 4dd36bd3f1ad..7f84ec1b8dc7 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -5,6 +5,7 @@ Required properties:
 - compatible should contain:
 	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
 	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
+	"mediatek,mt6577-wdt": for MT6577
 	"mediatek,mt6589-wdt": for MT6589
 	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
-- 
2.20.1

