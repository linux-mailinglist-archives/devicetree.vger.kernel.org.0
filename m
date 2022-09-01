Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABD05A8B9F
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 04:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbiIACuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 22:50:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbiIACuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 22:50:12 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB6C8AE209
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 19:50:09 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id x80so11552807pgx.0
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 19:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ecs-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=vRLuEkdNy1fBdLOZl2aXbS/add3r8iSPYp1YgEamjYs=;
        b=HMwVyG1PNfJKgUHB1iTPa4M9DuilLNN2zHDA1/IRFtUCoS7BAo+CPcP6zpbqEu9+dE
         e5TEMrWQesGS76GCy2LD2Eq6dO2W5TZw6y/U3diBOQZAWTkvwZD0KGZjIUYcaqb9qMab
         CZhohIskvzBwH8zDP1/hsl3BUkGrSvRcQ1bcZxHA6vIDZ7OLcEDjTVmLEFXg8MhnN4Dg
         qOfsdE6MPur/0eTu2EqGlA4GyqiQHrI//2p7zOf+0mjz53Ud0uQdiwiDRpKjZdV/6dEm
         apR/CTn61FVpLMVM8v4RCTlolwVEe0gIK6YCBbGyeD5rhd7ZRkgxqhTONIDGd38jy2Eq
         FEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=vRLuEkdNy1fBdLOZl2aXbS/add3r8iSPYp1YgEamjYs=;
        b=1WFa36IGsR0+c73U4+smo0q02U/TtEOV2FU/VAQragYEM5Il1WbrpLEMLJymFiO6GH
         j9V81Bnwm+MNeGHmbDEtFoE3dlAcSHhKEhcPhlQzxBSKJRIkTmONiNT4F4a2y1RJFCEQ
         YaCjZrGCDviajwegLbjccIZb4QssE2OTXKiHZ+JJDBQmly0RQXBbdHjHnPyJtz0aaWCD
         KJQIDpIanFaQyg9fuvqEAB0Hw2eHkaG29+2rcpHqWsGIHQO3G7tKHdl3pQoR6sjtXO6i
         r0rtBLSKcymJK4l6ofgcFhGGdeJ5HVZ8l9dgwlr+kM7nFvOwOIL2MjlS3MULamJkBSrE
         CZyw==
X-Gm-Message-State: ACgBeo2hLo5Oo/fQSMCBh7nz9GIBZnimHu6uw86A5tvwhXcs/WsjkRbM
        nIrxcoKHlUL4NRrSdp9aIfArww==
X-Google-Smtp-Source: AA6agR7nzY2XkFPjxfMg34hMPF7OlA9HM9vfePoPgfuxCOtvGt/dleDK2qbHqpI+9yvESlc3EUkZlw==
X-Received: by 2002:a63:d94a:0:b0:412:6e04:dc26 with SMTP id e10-20020a63d94a000000b004126e04dc26mr24662710pgj.539.1662000609291;
        Wed, 31 Aug 2022 19:50:09 -0700 (PDT)
Received: from localhost.localdomain ([103.104.171.43])
        by smtp.gmail.com with ESMTPSA id f9-20020aa79689000000b00528a097aeffsm12014222pfk.118.2022.08.31.19.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 19:50:08 -0700 (PDT)
From:   Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Bob Moragues <moragues@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Document additional skus for sc7180 pazquel360
Date:   Thu,  1 Sep 2022 02:49:57 +0000
Message-Id: <20220901024827.v3.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pazquel360 is an extension project based on pazquel.
We create 3 sku on pazquel360:
   sku 20 for LTE with physical SIM _and_ eSIM and WiFi
   sku 21 for WiFi only
   sku 22 for LTE with only a physical SIM
 Both sku20 and sku22 are LTE SKUs.
 One has the eSIM stuffed and one doesn't.
 There is a single shared device tree for the two.

Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---

Changes in v3:
 1. Adjust the format of the changelog.

---
 Documentation/devicetree/bindings/arm/qcom.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index fb1d00bcc847..851cf5edb582 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -459,6 +459,17 @@ properties:
           - const: google,pazquel-sku2
           - const: qcom,sc7180
 
+      - description: Google Pazquel360 with LTE (newest rev)
+        items:
+          - const: google,pazquel-sku22
+          - const: google,pazquel-sku20
+          - const: qcom,sc7180
+
+      - description: Google Pazquel360 with WiFi (newest rev)
+        items:
+          - const: google,pazquel-sku21
+          - const: qcom,sc7180
+
       - description: Sharp Dynabook Chromebook C1 (rev1)
         items:
           - const: google,pompom-rev1
-- 
2.17.1

