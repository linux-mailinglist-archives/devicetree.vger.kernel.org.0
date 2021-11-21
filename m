Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16C0D45814E
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 01:21:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236491AbhKUAYC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 19:24:02 -0500
Received: from relay04.th.seeweb.it ([5.144.164.165]:51223 "EHLO
        relay04.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236461AbhKUAYC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 19:24:02 -0500
Received: from localhost.localdomain (83.6.168.18.neoplus.adsl.tpnet.pl [83.6.168.18])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id A1B831F872;
        Sun, 21 Nov 2021 01:20:55 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: soc: qcom: llcc-qcom: Add SM8350 compatible
Date:   Sun, 21 Nov 2021 01:20:45 +0100
Message-Id: <20211121002050.36977-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible string for SM8350.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
Changes since v1:
- Move the .h defines to the second patch

 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
index e12fc7999356..c0ea3df2d2ce 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,sm6350-llcc
       - qcom,sm8150-llcc
       - qcom,sm8250-llcc
+      - qcom,sm8350-llcc
 
   reg:
     items:
-- 
2.33.1

