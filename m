Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2299783635
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 01:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231660AbjHUXZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 19:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbjHUXZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 19:25:36 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11136A1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 16:25:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so6097367e87.1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 16:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692660333; x=1693265133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nbkG+4F3rqmkeQ3RjOKmJpD9paUCq+1HgpfgepEqZns=;
        b=R/pW/4ELA3FOmAFqqaXb6kwILsnb7nRKdQleT2g7d6TEPpIiV/hUzMJkkkZjy2/EwM
         RdFORkPgXLAqDlhwcHPYRxML3AwnuolsvB6RJVeMWK239alcdaPlhH30cE+f6A+hLQoT
         CPWRrZHvnlxgEBq1Y+p2xxuWxwh9Y8NCpFMZrn2wzfLYcsTi9nTVeR1/tcPO4IB6Qjs0
         ey77Gu2aTipfpe0j5hc/FvwvEOQ5rfgAXn4KAVMgpVS+5vrP8n7gu1LnhbAjvu9kXrkD
         7tk8RYIniYojC1LKK4omOIxaVZtSo8wFRdAebRswoDhqgT/miX/fGbcTWtSblkcFG6mV
         hhdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692660333; x=1693265133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nbkG+4F3rqmkeQ3RjOKmJpD9paUCq+1HgpfgepEqZns=;
        b=GGt3mqmF7fGsXfalVnhTdOdxB1WKwY3gaXXpOy1QbJ56c8HVokd/XYwKr7rOWA+o7k
         obhOTg21onDhEuQCgLRs4tgX2qWgB9GhH8TaBnmbc6Izk4cTGCXhYohdWZqTqhMFlm20
         H/LAE+bpx6nydw5GXjtgXJs9reD45XAkVIfpIj47AttXi/oTmEPN5PwDmDRoHJKkaf7V
         IoKVy/0ynmPIqGebUmkaGSfZguZTEXS3q2onlYQXBOcoVStlyrCSAyXzKo30CNZR6oTJ
         PgaI2gknL6anfHJj1Xi/UZhTjfRX6c38K0Ixnb0YgawGfPE9c1E2lOhMv7HLSskM6Kgm
         eWUA==
X-Gm-Message-State: AOJu0YyIi7PLEykoZrHYyyV98KXZZ+7ugHedidovcC9zqqWKp16B+yST
        lVuRvE2Xj5GiijhYNwW1IP1Tfg==
X-Google-Smtp-Source: AGHT+IEKzNQqEM7QhoStdbjbAX2Rd8YVzEXkpwB2kD8xFAgHiT4dI3V5e190LHnmLNXHfly4x+CE1A==
X-Received: by 2002:ac2:4f15:0:b0:4fb:911b:4e19 with SMTP id k21-20020ac24f15000000b004fb911b4e19mr6284102lfr.35.1692660333306;
        Mon, 21 Aug 2023 16:25:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020ac25483000000b004fcdf8b8ab4sm1957148lfk.23.2023.08.21.16.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 16:25:32 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: mfd: qcom-spmi-pmic: add pm8450 entry
Date:   Tue, 22 Aug 2023 02:25:32 +0300
Message-Id: <20230821232532.3110607-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the PM8450 PMIC (qcom,pm8450). No driver changes are
necessary, since the PMIC is handled by the generic qcom,spmi-pmic
entry.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

Changes since v2:
 - rebased on top of linux-next to resolve conflicts

---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 9f03436b1cdc..debed393fa8c 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -58,6 +58,7 @@ properties:
           - qcom,pm8350
           - qcom,pm8350b
           - qcom,pm8350c
+          - qcom,pm8450
           - qcom,pm8550
           - qcom,pm8550b
           - qcom,pm8550ve
-- 
2.39.2

