Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9FDA557FAF
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbiFWQX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:23:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232207AbiFWQXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:23:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADA9D2F66D
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:23:20 -0700 (PDT)
Received: from jupiter.universe (unknown [95.33.159.255])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id D40EC66017E3;
        Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001399;
        bh=wQNrRBDOImsaqQM9a/eYf3eakfhEWslqVCx/TL9kHGg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NaiYsPr6dWRnIpEWBNnfBC13gxBPi28TV6tNBbsh1fue+Lh4tVqOZKSs5iGKFGebn
         Yi4feXmB9OiD5nmITOddSxbI/cRwNQHY7nEpgrjDMhhMod5MqCnrTvnIETDOCTJX/d
         DyBFnfkcf8OsSuHh3saSMMDeOeyyPZMC0KUiT1ZkkVaHQLbGKp+Efx7hWLrPEPNgta
         Hm4eeTJKc7xjb3YueyYPihjWbLgzI6PJ4V3SVxGpPAaKs9hjPGb5b81q2ZeQdMgXgT
         gabUuybDbdxhGxyA5SLFTUXlHeEgbjjghnmDizxYh/h1oQUPIQM2oJCVfJ+VyGrKKs
         FAMmUNGhu/2CQ==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 72C60480591; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Date:   Thu, 23 Jun 2022 18:23:06 +0200
Message-Id: <20220623162309.243766-4-sebastian.reichel@collabora.com>
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

Add the compatible string for RK3588 SoC.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..5a769517f5c4 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rk3588-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rk3588-power.h"
 
       clocks:
         minItems: 1
-- 
2.35.1

