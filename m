Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1C4955E926
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:40:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345820AbiF1OY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 10:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345612AbiF1OY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 10:24:26 -0400
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93A9D2CDE0
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:24:25 -0700 (PDT)
Received: from localhost.localdomain (abxi223.neoplus.adsl.tpnet.pl [83.9.2.223])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id CB60B3F682;
        Tue, 28 Jun 2022 16:24:21 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: thermal: tsens: Add msm8992/4 compatibles
Date:   Tue, 28 Jun 2022 16:23:57 +0200
Message-Id: <20220628142359.93100-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatibles for msm8992/4 TSENS hardware.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
No changes.

 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 038d81338fcf..0dad9e662161 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -38,6 +38,8 @@ properties:
         items:
           - enum:
               - qcom,msm8976-tsens
+              - qcom,msm8992-tsens
+              - qcom,msm8994-tsens
               - qcom,qcs404-tsens
           - const: qcom,tsens-v1
 
-- 
2.36.1

