Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 898685A85A6
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233022AbiHaSbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:31:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232866AbiHaSbV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:31:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54A66FE80D
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:26:40 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 34FEA6601DEE;
        Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1661970398;
        bh=ozbZAR/ZPaFIawh+7c7nCegPwLLDEJxqWGRcV6jl+cM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=GX7cYYgVdfh0bjYVa/1f4LT2Y4QsV/SS1pGparNCeFUQIFLki2BmD40K2Vs0gdaFq
         yavVEYh+oa3yxaoilaGqCp8dsjTBzyn5cuxKuYT5TwWQZ5D1i/3jweLxto5+hx4yO3
         qX1yxMl29pvnkRmz49UrFR1tUXrhrVsLB8M84qgbQ9Qg3ZxC9YJMIGmI4xepy7AN2a
         ZLZeH5fDEdpHSxGqAcDSH66UD1mw6WH3ICo8jFkt8YujZXM/xKVmhGIxvBAUKVmWrJ
         CjNsSOw1WJl1n1o52cCVgIg0jnFW2WKrroKM1Fujzx9A/x5Pa1Qw4qnsrwYitBwRfr
         pKxTMz/+7e3Nw==
Received: by jupiter.universe (Postfix, from userid 1000)
        id C03AD48015E; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
Date:   Wed, 31 Aug 2022 20:26:24 +0200
Message-Id: <20220831182629.79255-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831182629.79255-1-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
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

Add the compatible for the pmu mfd on rk3588.

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

