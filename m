Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A362638DCDA
	for <lists+devicetree@lfdr.de>; Sun, 23 May 2021 22:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231986AbhEWUju (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 May 2021 16:39:50 -0400
Received: from relay06.th.seeweb.it ([5.144.164.167]:43121 "EHLO
        relay06.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231971AbhEWUjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 May 2021 16:39:49 -0400
X-Greylist: delayed 372 seconds by postgrey-1.27 at vger.kernel.org; Sun, 23 May 2021 16:39:49 EDT
Received: from TimeMachine.localdomain (bband-dyn255.178-41-232.t-com.sk [178.41.232.255])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 2866D3E8E0;
        Sun, 23 May 2021 22:38:21 +0200 (CEST)
From:   Martin Botka <martin.botka@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        konrad.dybcio@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Martin Botka <martin.botka@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: soc: qcom: smd-rpm: Document SM6125 compatible
Date:   Sun, 23 May 2021 22:38:11 +0200
Message-Id: <20210523203814.697586-3-martin.botka@somainline.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210523203814.697586-1-martin.botka@somainline.org>
References: <20210523203814.697586-1-martin.botka@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Martin Botka <martin.botka@somainline.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
index 2684f22a1d85..bcf6a0536d3b 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
@@ -38,6 +38,7 @@ properties:
       - qcom,rpm-msm8996
       - qcom,rpm-msm8998
       - qcom,rpm-sdm660
+      - qcom,rpm-sm6125
       - qcom,rpm-qcs404
 
   qcom,smd-channels:
-- 
2.31.1

