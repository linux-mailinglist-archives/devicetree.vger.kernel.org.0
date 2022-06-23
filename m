Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38716557FAB
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbiFWQX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232204AbiFWQXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:23:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 335FD3A739
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:23:20 -0700 (PDT)
Received: from jupiter.universe (unknown [95.33.159.255])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id CC5DF66017E2;
        Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001399;
        bh=rjBm2R8h7petkCH6iM9MUjj3atNPYvOGs6HwOrPQqZA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=QTCZHJY18S50CZZWCOgZUOUmRIfFZailGxVZ3XS5jW1LOaXbIqmIxI5NT69761FvP
         8jwYEjhq4moOktAEJc7rBjiPKJn48gAOBYxY5AJbVlypeW7g4g3z8YsS2nqAX4H/bw
         3Tn+oXkjnqSrvXWTNVsCP+18BZTphvCkL6qUx5vHG2b9zRVbCkG4wAwvjZra4AAgNd
         XOvbd2dPROcQ5M8ANsXx9hX7VBtGjY+ekGNRhbbNxuKEPMvrR4K/lLQiK6usYS0D7s
         ybJPoHEFUaYrzCyHXfs70y9MjdY+jnZAlx+QmkbAdq4qX+7j5NB19+dFZgkV8BcluF
         LJtd3yYlpJRLQ==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 6E43F480125; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 1/6] dt-bindings: arm: rockchip: add rk3388 compatible string to pmu.yaml
Date:   Thu, 23 Jun 2022 18:23:04 +0200
Message-Id: <20220623162309.243766-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162309.243766-1-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for the pmu mfd on rk3388.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 5ece38065e54..4c645049c15b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
 
   required:
     - compatible
@@ -39,6 +40,7 @@ properties:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.35.1

