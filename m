Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E926B3FA5CF
	for <lists+devicetree@lfdr.de>; Sat, 28 Aug 2021 15:18:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234342AbhH1NTM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Aug 2021 09:19:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234307AbhH1NTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Aug 2021 09:19:11 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [IPv6:2001:4b7a:2000:18::162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9373DC061756
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 06:18:21 -0700 (PDT)
Received: from localhost.localdomain (83.6.168.105.neoplus.adsl.tpnet.pl [83.6.168.105])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 995A01F6A2;
        Sat, 28 Aug 2021 15:18:18 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Hector Martin <marcan@marcan.st>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/18] dt-bindings: arm: cpus: Add Kryo 560 CPUs
Date:   Sat, 28 Aug 2021 15:17:56 +0200
Message-Id: <20210828131814.29589-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document Kryo 560 CPUs found in Qualcomm Snapdragon 690 (SM6350).

Reviewed-by:  AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 9a2432a88074..897eec887e5a 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -171,6 +171,7 @@ properties:
       - qcom,kryo385
       - qcom,kryo468
       - qcom,kryo485
+      - qcom,kryo560
       - qcom,kryo685
       - qcom,scorpion
 
-- 
2.33.0

