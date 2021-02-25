Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1245332577E
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 21:22:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234204AbhBYUWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 15:22:04 -0500
Received: from relay06.th.seeweb.it ([5.144.164.167]:50931 "EHLO
        relay06.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234111AbhBYUV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 15:21:59 -0500
Received: from localhost.localdomain (abab236.neoplus.adsl.tpnet.pl [83.6.165.236])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 933203F356;
        Thu, 25 Feb 2021 21:21:07 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: qcom,gcc: Document MSM8976 compatibles
Date:   Thu, 25 Feb 2021 21:18:42 +0100
Message-Id: <20210225201845.109670-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the newly added compatibles for 8976 GCC.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/clock/qcom,gcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
index ee0467fb5e31..af4427ab6017 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
@@ -46,6 +46,8 @@ properties:
       - qcom,gcc-msm8939
       - qcom,gcc-msm8960
       - qcom,gcc-msm8974
+      - qcom,gcc-msm8976
+      - qcom,gcc-msm8976-v1.1
       - qcom,gcc-msm8974pro
       - qcom,gcc-msm8974pro-ac
       - qcom,gcc-msm8994
-- 
2.30.1

