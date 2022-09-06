Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 237095AEEC1
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238098AbiIFP21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:28:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239709AbiIFP2H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:28:07 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6C99A9A8
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:39:21 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E38E6601F39;
        Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475109;
        bh=uUGCbE6A4divJgSvS8q19N75HGWZkvLcWodKJzEIEzw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=I6G9tqiWrRRuFFrYq1qHlobGToAqH2Vl0SbMWMhJRxYgyGoFAtzXBJJyNWzUU+3Cg
         Yp984FlS5SMQkjO3XeJ/wC+K0HGHogjx/i+e7P72V6HE3OgEpOX7IylVOjzkD5v7SN
         1EoenhSL5eAXq1W15OnMZdyjdgFAEOQ9o37PsKKBD6mYHJoKfnSqmZZdkHZ8t4nXhJ
         KN7VwssQTc7qOwLtFApYUGcMUtWwOCugVREI5mKoXH9h7gGg7gn6MyBL8nldux5JwE
         G9uDRauY6lnrAyEM0OeDqxGR/PqZaAHzHpYuo8o0VxIG2dtmHJt757mTNQXlpfWCwr
         ZDA61k7r9Fnfw==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 3B93048016B; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com, Rob Herring <robh@kernel.org>
Subject: [PATCHv3 1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
Date:   Tue,  6 Sep 2022 16:38:20 +0200
Message-Id: <20220906143825.199089-2-sebastian.reichel@collabora.com>
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

Add the compatible for the pmu mfd on rk3588.

Acked-by: Rob Herring <robh@kernel.org>
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

