Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46A4C2B18A3
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 10:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726310AbgKMJuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 04:50:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726149AbgKMJuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 04:50:20 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39593C0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 01:50:20 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id s30so12922415lfc.4
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 01:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AgGM5GYkyaYknpwCiDV14Mlrd0w42oCNS7w3lInFIVo=;
        b=XxiMbTHrAoG5BKExsFXg01ByyXlad6ZoUZkqHfeL70qJAEzghAmPNNNih8LTD9bTFX
         LZEerSXuhDiNYnKYp6kw84a0IllB+WLh2eVva5X4j5ysdguz/CDoeTmX3egtnRAU1WeB
         CeDeMuMv1ddSZpoDqz/9Y+9hhw2viQ897M5Ydl1GMjD38W5M1TsJ6DB9k8KoFNEzmQ68
         Urwj1MwNodqKtCfHMmjja2AW45ft6VkgrjFoRAec9wlwFuYki5+pWUSiViyuLCSvGw1Y
         UjebO1lX+XP+D1lQ9OS8SxA4fx4EjsKrSIjsQCVNdigOsuZTKUphsFYfkaWovgeuKZcu
         esAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AgGM5GYkyaYknpwCiDV14Mlrd0w42oCNS7w3lInFIVo=;
        b=mmux7ebJvAZljeB6pO9zI1FJiqZKSDUq+ZfRA5l+rOxhnzyrTyXhyzJBeX92jqIJnP
         DH9n36vqbDxXm456RsUFSWsLyoGU8QBp08jKgYQesscRXX5UUbzVIiAOwURCFr5/v+JZ
         0wcYCTzGEJXi3Zpdlw5cxbeB4o+gN8HTxb1iIaxCUliwbmIJMcBu4Hv/L+wOj5LxMP5m
         jr2uq0sfwJrZ4q3oU7AcX2slCTFaNdd0tGrmx3eRpQFc04k5moDMuPW2F+Z1T5vBgmQR
         kMjqn41QH0YtFqtl0tmV6iYjt0+s3OhVuEtSYhrxbdWjY035ToFbDyuArMX5QKh+trlB
         G91A==
X-Gm-Message-State: AOAM531++Hu1RBdVOzkNTL9uu44YSGr/P3CU7p1aWUqCsAdekBrT42sZ
        YTxDUi3rqI0jRBVeetAsHeUKzTbc3dw=
X-Google-Smtp-Source: ABdhPJzbmUTCY4+p3FyrxdlX8xzhIu7i7xIa3CeY/yyQfNY0pNy4+c6Tzev/zyKH9gMuci0BgELGUw==
X-Received: by 2002:a05:6512:36c3:: with SMTP id e3mr500431lfs.360.1605261018745;
        Fri, 13 Nov 2020 01:50:18 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o7sm1574597ljg.41.2020.11.13.01.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 01:50:18 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Enable USB 3 PHY on Luxul XWR-3150
Date:   Fri, 13 Nov 2020 10:50:12 +0100
Message-Id: <20201113095012.22422-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This device has a functional USB 3 port so PHY is required.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 4d5c5aa7dc42..1a6b9f56d67a 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -71,6 +71,10 @@ &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
 
+&usb3_phy {
+	status = "okay";
+}
+
 &spi_nor {
 	status = "okay";
 };
-- 
2.27.0

