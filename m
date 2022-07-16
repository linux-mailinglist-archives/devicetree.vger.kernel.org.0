Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3AA577128
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 21:33:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbiGPTdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 15:33:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232486AbiGPTdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 15:33:12 -0400
Received: from relay03.th.seeweb.it (relay03.th.seeweb.it [5.144.164.164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1C5222284
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 12:33:11 -0700 (PDT)
Received: from localhost.localdomain (abxj77.neoplus.adsl.tpnet.pl [83.9.3.77])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 2D6CD1F987;
        Sat, 16 Jul 2022 21:33:09 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: firmware: scm: Add compatible for SM6375
Date:   Sat, 16 Jul 2022 21:32:52 +0200
Message-Id: <20220716193257.456023-2-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220716193257.456023-1-konrad.dybcio@somainline.org>
References: <20220716193257.456023-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a SCM compatible for SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.txt b/Documentation/devicetree/bindings/firmware/qcom,scm.txt
index b3f702cbed87..de7bb8b8d85e 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.txt
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.txt
@@ -35,6 +35,7 @@ Required properties:
  * "qcom,scm-sm8250"
  * "qcom,scm-sm8350"
  * "qcom,scm-sm8450"
+ * "qcom,sm6375-scm"
  and:
  * "qcom,scm"
 - clocks: Specifies clocks needed by the SCM interface, if any:
-- 
2.37.0

