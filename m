Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 643206491A7
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 02:24:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiLKBYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 20:24:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiLKBYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 20:24:00 -0500
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCFD13F40
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 17:23:59 -0800 (PST)
Received: from TimeMachine.lan (adsl-d248.84-47-10.t-com.sk [84.47.10.248])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id B49BC3EED9;
        Sun, 11 Dec 2022 02:23:56 +0100 (CET)
From:   Martin Botka <martin.botka@somainline.org>
To:     martin.botka1@gmail.com
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Jan Trmal <jtrmal@gmail.com>, Tom <takuya@takuya.tech>,
        Martin Botka <martin.botka@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/1] dt-bindings: mfd: x-powers,axp152: Document the AXP1530 variant
Date:   Sun, 11 Dec 2022 02:21:30 +0100
Message-Id: <20221211012132.1650783-2-martin.botka@somainline.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221211012132.1650783-1-martin.botka@somainline.org>
References: <20221211012132.1650783-1-martin.botka@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,RCVD_IN_SORBS_HTTP,
        RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AXP1530 is a PMIC used on board BIQU CB1 SoM

Signed-off-by: Martin Botka <martin.botka@somainline.org>
---
 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
index b7a8747d5fa0..7559a13a071c 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -84,6 +84,7 @@ properties:
     oneOf:
       - enum:
           - x-powers,axp152
+          - x-powers,axp1530
           - x-powers,axp202
           - x-powers,axp209
           - x-powers,axp221
-- 
2.38.1

