Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF2FE5AEEC0
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239578AbiIFP2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:28:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239459AbiIFP1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:27:49 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60A7E17AA6
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:39:03 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 78D856601F4C;
        Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475109;
        bh=+rwcY1WUac1w3sXnyj1l5+zLst961YRJ5Tdpg70DUtA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=kTwD//X4kobZr+u40dV2WLnCOY89qQLPQ8VzD2hHrdpcAFJyCPTWVnSYhFiaMlaDU
         PhhMaiYSseJfgLc+yGx3b7bshw40DEP9e/VMGhoODzdv/HV4tvRFWwH85GeSZw9oM4
         EqvHLdickfjBl+Au0LcH6kHRn7aOJoj85e34ooDezi1siJijnSZnH3CyMmTvRbI9BK
         0MxICevKSk2Msi8Cm/xHICbML6Rj8VnUtsMT8bmGY1zG1BTQUnWrgaC3zL5vZyQCqC
         s39fSnQECmh8QR4Rg6IdQnAs+rV7V9n1/cKJRyAOEGZDwU2Yfh0sdAzx56goR7sE7Y
         4nXbeHtxO5qJg==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 4022648016D; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com, Rob Herring <robh@kernel.org>
Subject: [PATCHv3 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Date:   Tue,  6 Sep 2022 16:38:22 +0200
Message-Id: <20220906143825.199089-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
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

Acked-by: Rob Herring <robh@kernel.org>
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

