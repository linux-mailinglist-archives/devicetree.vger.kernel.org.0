Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 025EB3213D5
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 11:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbhBVKLC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 05:11:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbhBVKJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 05:09:41 -0500
Received: from pmg02-out3.zxcs.nl (pmg02-out3.zxcs.nl [IPv6:2a06:2ec0:1:b::ffea])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671E3C061786
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 02:08:52 -0800 (PST)
Received: from pmg02.zxcs.nl (localhost.localdomain [127.0.0.1])
        by pmg02.zxcs.nl (ZXCS) with ESMTP id AB0D2837C9;
        Mon, 22 Feb 2021 11:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
        :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=WNwlUaMzO0voeQD0k+em6Iu2mD8MNkshIay47M4C/oU=; b=wMySf5cPZwdXB/A+RW6tV+YoGY
        ySKUAw7o+/ewvd1ITzCmb4JTPCp+L9eySYOh2/dQ5FkfKgEsdFOyOHDVikPBaiJYZWllpCeJWhxee
        fk0IdL0uIf3rkqBbP46HlBOvYvzRtWO2pfoHxzIS+IYJ8VfhkMAyTPYojCpmvB5mULNP/daC0gETw
        F0F8VMcrXCYgJRXk9AJX9zIQEvOOx3v0884550KF9LcgHhhvFpb+1hvIn28qd6XB9ZwcZ18Ahsbjh
        uUZlKPKfRbq71yq/8hoiGyKALTJNvR8JpoN+zq73NEA0xVwD7t7NrTUMPR87qMyWFsh8/467ob0/A
        vhNhZBGg==;
From:   Pascal Roeleven <dev@pascalroeleven.nl>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org,
        =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Corentin Labbe <clabbe@baylibre.com>,
        Martin Cerveny <m.cerveny@computer.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com,
        Pascal Roeleven <dev@pascalroeleven.nl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: arm: Add Topwise A721
Date:   Mon, 22 Feb 2021 11:08:25 +0100
Message-Id: <20210222100826.12478-2-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210222100826.12478-1-dev@pascalroeleven.nl>
References: <20210222100826.12478-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AuthUser: dev@pascalroeleven.nl
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the bindings for Topwise A721 tablet

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 6db32fbf81..8833a9c925 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -787,6 +787,11 @@ properties:
           - const: tbs-biometrics,a711
           - const: allwinner,sun8i-a83t
 
+      - description: Topwise A721 Tablet
+        items:
+          - const: topwise,a721
+          - const: allwinner,sun4i-a10
+
       - description: Utoo P66
         items:
           - const: utoo,p66
-- 
2.27.0


