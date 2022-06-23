Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63CB6557FA9
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:23:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbiFWQXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbiFWQXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:23:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 661082668
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:23:20 -0700 (PDT)
Received: from jupiter.universe (unknown [95.33.159.255])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id DD14B66017E4;
        Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001399;
        bh=1k76+Z2E09lVPZkdnZgMSbCx3lTMmi73P+p2vvelDUI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=nj3U6ZGVJKrzXBjLhjilrvVA72jJGi+xewy9uDejeihojbCYnZMNnh6uYwfOZAHJ/
         FvOKaFTgu6AI6JlwxdYGykjGhGWFl/xymiv7wjdUdfFYw3QVy8NWvJDpOqpv387+YI
         003xzcDAmyzRVUsQl4NobE15M9+0puoqWgyyRY57UdhNmHhrddGKAChKVlKAY9Xa0t
         HqqCYG99YEtUZj0DHCyBYRjnHjfQjUQffLHgpGBMJSKaB4zAZiNEGgWA0m3V5wboyY
         XctJS1M5NVppbZ4Kr1oXlReYo8Ntv05VVEO9SEcfwYqmJXQ7gM51nBMBfv9y/XOgFc
         pvixK2UtsIh9g==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 7474648059B; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3388 QoS register compatible
Date:   Thu, 23 Jun 2022 18:23:07 +0200
Message-Id: <20220623162309.243766-5-sebastian.reichel@collabora.com>
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

Document rk3368 compatible for QoS registers.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fb784045013f..ff1a7aae33f2 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3588-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.35.1

