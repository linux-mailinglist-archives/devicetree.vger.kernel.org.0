Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 348A062B778
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:15:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbiKPKPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:15:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233480AbiKPKPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:15:33 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E432B26F
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:15:27 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id cl5so29086803wrb.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JFNBqUbq7QtJBrTFvdvHZDXMUJZQ6lA9hFG9lR0t9+Q=;
        b=EronlhrHxpZss+/Nij6KcTtyp8A6x7b6YP/pXKReUcgy4hEcDUH2YkNvOH4YPIInVa
         bcMaf87KToLk8RI8N9e4YCVGWkcotshZZjYgHvb5Qs1ABk3gXGbGNuxkWGKsHr2F/yAv
         vQ8HVsYfTnfRUYxp5C77jmE7w+WddGZwUP3NI+HI2STQWv1DtJgDPZhAZHLGVNtLlxiF
         B7klhlWB8ZxhqstTZr2hY3mslv1kipyOeaXiHVlU5Rn5Fmbx1Rky/Q7lTzLYCQ7oWFkx
         T3z9rIlPcNiDyfaWTKyE9q9GTO6JUhtTEdqe8eY5A39Fy05eFUMzJ0kX0gJzLFdPqaNE
         5zYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JFNBqUbq7QtJBrTFvdvHZDXMUJZQ6lA9hFG9lR0t9+Q=;
        b=YBUkxsQ2KeZemem/U4uvl5GEbZgkx3zsNXFUxC/1WH4DjwMd28rKLE8PwUPS9VCacs
         YxDgtn7Rz03jgdYQdBeFtfjvKiILBRgeSQvF6fPV4zv6wfBadP5BaP240C4QUuGgtVQU
         rLFR3Vu7OaIQdKj2qx9Y5sh2vv0ZgGRbLSS+CgRcy11e6BWd9UlyWUohSIeu+lNYD0fA
         bbUUY3w7Jwi9hDHumKPwggkKyp++forX6s3a13KEDPOdm287MJ52JzTdBnchQcLlZH2k
         ghAdj81ypzQV/eDDATzXTmTPjrr5Byzs8HUqcbhD6xEqJyLzXKgt/y+Ezy/+9JZzvU+S
         z+2A==
X-Gm-Message-State: ANoB5pnDFTVt0MysyB0lekFkGEBMESjx9SDwSDmKg6o4pqjQ4h8Q2B34
        5xb1yo7cw8ybjqsDNv7GHlINEVSxq9+miA==
X-Google-Smtp-Source: AA0mqf7lEtfuHhZttiInCJa3i7vFKG84cjr+0N93WM/sR9X8A3fops/U1IJS2YSJlTTFA38xzfW7qw==
X-Received: by 2002:adf:dc09:0:b0:236:7180:6ccc with SMTP id t9-20020adfdc09000000b0023671806cccmr13581889wri.573.1668593726318;
        Wed, 16 Nov 2022 02:15:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id e17-20020a05600c4e5100b003cfa81e2eb4sm1718366wmq.38.2022.11.16.02.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:15:25 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 16 Nov 2022 11:15:24 +0100
Subject: [PATCH] dt-bindings: mmc: sdhci-msm: Document the SM8550 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221114-narmstrong-sm8550-upstream-sdhci-v1-0-797864a30e71@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abel Vesa <abel.vesa@linaro.org>

Document the compatible for SDHCI on SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
To: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-mmc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index fc8a6b345d97..f0b7e6d0ecbf 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -49,6 +49,7 @@ properties:
               - qcom,sm8150-sdhci
               - qcom,sm8250-sdhci
               - qcom,sm8450-sdhci
+              - qcom,sm8550-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
   reg:

---
base-commit: 3c1f24109dfc4fb1a3730ed237e50183c6bb26b3
change-id: 20221114-narmstrong-sm8550-upstream-sdhci-1ae5ac4924e5

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>
