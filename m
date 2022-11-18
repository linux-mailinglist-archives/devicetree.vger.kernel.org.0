Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6141962EF6B
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:30:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241457AbiKRIaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:30:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241513AbiKRI34 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:29:56 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8EDD19005
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:29:25 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso3517139wmo.1
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MehYhB6F0Q5eHfYcAMk4Q22mdZNFopk2+xLRwUYYDiU=;
        b=Tc9K7qBbu2jDZJ/r2Eoy+5Uf3qf770e9f+doGH/fjoM30oPsXj2/NidmK5eE09oGzJ
         +vgJ+4cHDqBbm8HnmUN9MigS6qOjnUnZ28FL8T9i3a3uISZAk9lo3brKybaTF60x/AHz
         PhULHjqc72htt980FOaq740ETBTbpv+XH20U/atQ+rpsHr08z+HrOC8ImM0dXyEdIjC7
         WaKd9QDOw7We6YKsO4QRBelPw/0jfOeP+Wtbj9nHeoHD3+D9LcSj0DLBnC9d0OBlsAo2
         FdPdEao0qROC7JuLuXahe5xk1hTmkvh+CA10NttYBUexvp7GzSWxcJidEWs1eVc+mSOJ
         CL+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MehYhB6F0Q5eHfYcAMk4Q22mdZNFopk2+xLRwUYYDiU=;
        b=M7QLH7bdHEtIDh3bU8p0ii+gWWAnJeY7fJjHgTU7l3sdn0wUPOZ+9gjBSIFSNjzDSR
         /wDgjkCal4QFpAq1EUT4zjg1T4ywO/dt8U4+V9j5DNjOglWNHaOBFM7Y0Eb3h6BQI7aa
         zLHkrOVDfEctk5vMyrauk0yvaOHRrtHBPnK6m5anO+iiuFvmh5KbzMLu940rtVjRBVls
         D0CDS1IDIcLLf1m7PHM0fA9FGbmv8CUej1JOuhqn5YUcR/Uvx3Notyt1tlQbgWrzh8vn
         LkDquirtr0CQd9VbnjWE4tX3GijIe596jRbBIQeyKA17FPyFUYcKseIYqtRnT79VWuGC
         8m/g==
X-Gm-Message-State: ANoB5pk4hDv63tYU0VKPmw+cHZbwN8HLkmu4APCHdaGELzYbzJyq7RcA
        ZGV+rVvzyNVMg/TMrxKlEvTDp139KuKStw==
X-Google-Smtp-Source: AA0mqf59fUADY3sUukFZnRP7lC2MzZfO/bqTdIj1/GDrGS++AzdDdwEmzyyMRBDBohKIXJizSXbk5Q==
X-Received: by 2002:a1c:e917:0:b0:3cf:681a:43e1 with SMTP id q23-20020a1ce917000000b003cf681a43e1mr3914195wmc.126.1668760164367;
        Fri, 18 Nov 2022 00:29:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id p18-20020adfe612000000b002366a624bd4sm869268wrm.28.2022.11.18.00.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 00:29:24 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 18 Nov 2022 09:29:21 +0100
Subject: [PATCH v2] dt-bindings: interconnect: qcom-bwmon: document SM8550
 compatibles
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221114-narmstrong-sm8550-upstream-bwmon-v2-0-20c555e3ba5d@linaro.org>
To:     Georgi Djakov <djakov@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatibles used to describe the Bandwidth Monitors
present on the SM8550 platform.

A BWMON v4 IP monitors the CPU bandwidth, and a v5 does the LLCC
bandwidth monitoring.

This is described by adding "llcc" and "cpu" into the compatible
strings to differentiate the BWMON IPs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>
To: Georgi Djakov <djakov@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-pm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
Changes in v2:
- Reworded commit message
- Added Reviewed-by from Krzysztof
- Link to v1: https://lore.kernel.org/r/20221114-narmstrong-sm8550-upstream-bwmon-v1-0-b6dd08927f35@linaro.org
---
 .../devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml         | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index be29e0b80995..00b635662697 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -26,8 +26,13 @@ properties:
           - enum:
               - qcom,sc7280-cpu-bwmon
               - qcom,sdm845-bwmon
+              - qcom,sm8550-cpu-bwmon
           - const: qcom,msm8998-bwmon
       - const: qcom,msm8998-bwmon       # BWMON v4
+      - items:
+          - enum:
+              - qcom,sm8550-llcc-bwmon
+          - const: qcom,sc7280-llcc-bwmon
       - const: qcom,sc7280-llcc-bwmon   # BWMON v5
       - const: qcom,sdm845-llcc-bwmon   # BWMON v5
 

---
base-commit: 3aec1f3082a7f388d04a1fa1a351aa25fd6335f0
change-id: 20221114-narmstrong-sm8550-upstream-bwmon-a7c6227fab6d

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>
