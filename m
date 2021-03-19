Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E401F342868
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 23:07:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbhCSWHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 18:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbhCSWHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 18:07:13 -0400
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [IPv6:2001:4b7a:2000:18::171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95A41C061761;
        Fri, 19 Mar 2021 15:07:13 -0700 (PDT)
Received: from localhost.localdomain (abac242.neoplus.adsl.tpnet.pl [83.6.166.242])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 97B8D3F447;
        Fri, 19 Mar 2021 23:07:10 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: tsens: qcom: Document MDM9607 compatible
Date:   Fri, 19 Mar 2021 23:07:03 +0100
Message-Id: <20210319220704.198101-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for MDM9607.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 95462e071ab4..8ad9dc139c23 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -22,6 +22,7 @@ properties:
       - description: v0.1 of TSENS
         items:
           - enum:
+              - qcom,mdm9607-tsens
               - qcom,msm8916-tsens
               - qcom,msm8939-tsens
               - qcom,msm8974-tsens
@@ -94,6 +95,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,mdm9607-tsens
               - qcom,msm8916-tsens
               - qcom,msm8974-tsens
               - qcom,msm8976-tsens
-- 
2.31.0

