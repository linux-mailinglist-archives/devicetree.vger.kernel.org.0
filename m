Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354314C2BD2
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 13:33:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234385AbiBXMdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 07:33:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234384AbiBXMdh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 07:33:37 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 759BF192E30
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 04:33:06 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id w2so1714267pfu.11
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 04:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uhqs7VB4RRUY7J0XXRbx7LXxMKz2KfECenS4KOr6xXI=;
        b=S2Vf0RYPXrLy1meYNbj0MlVf+rxsZCVo9rIwPYSB9gJ6S5SYMAh2+CxyH7aT8MxeCO
         dG8YQYAMoOCI/bT8oW3od3qZtQ9PzGMqzBfDkCrtglJFkC/+7ub+TbPnhFtW8mYrb23/
         zBeEVeuMsoq7MNg7p74+vABGuT790eFGGmOu780oEtfRK4x5u546ovA1JU8Xm68k7fHe
         ZMslKDPkEsB6k/FKtgdi7g0w36Ys9ssAVaebqZ8Jc+Fli3GAaNhIGl/ynY8WlqXmqKXi
         zATDRMYfxSNP5j3WbCiWA7cqbThaduhq2O7mFEag0NgYKPiaX4ZYaq9Z4U4ekcww1l+H
         F9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uhqs7VB4RRUY7J0XXRbx7LXxMKz2KfECenS4KOr6xXI=;
        b=PdGZFgHqPS0LzzJS5nzALlJGJB2IclyKDvLKi/RseEgwmVQEk+q9DMNWrwsR54MhNk
         QbnYdwA+UMDdhVt78l3u/PwQJxg32c5mQ7DfrW6k/JR11/tSbBfqc1uLvMcTXfyO+iak
         CVQd23ZBzBFcmDqj9X2VWkIBornRaK/TN+nd9Sc6rD8m1U88JlLjqVqTUXI1GzZzdFcl
         Ec2MREtkt2Y5ZYfBlF+rGmzDz95fBvbxQnNzntnVanAKgVXjCIPbg79iu0QVML2Mbya4
         HuFwBT02SMKNNh+tqsmXEo7POdZ687x/EE6NGra6CSFX3tm61/ro44w4vkoBkz0I8sPI
         c5IA==
X-Gm-Message-State: AOAM531VAjBX1ovsTDaZBEx9AWkdvG8C3L7UmpU+P/tp33aTlpWW7D07
        sBWkY8hxmG6tenMELUyE+b7Lww==
X-Google-Smtp-Source: ABdhPJxE9MbifRXJoWthHwSxtlJ7G04wYvzC85z9VEDcnm5iRZLyuDKyBimvDL1t5y8moHqRV9v0bQ==
X-Received: by 2002:a63:114c:0:b0:373:a701:3736 with SMTP id 12-20020a63114c000000b00373a7013736mr2134339pgr.117.1645705985897;
        Thu, 24 Feb 2022 04:33:05 -0800 (PST)
Received: from localhost.localdomain ([223.179.129.209])
        by smtp.gmail.com with ESMTPSA id ep5-20020a17090ae64500b001bc56af507dsm6237567pjb.47.2022.02.24.04.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 04:33:05 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Mark '#clock-cells' as a 'optional' property
Date:   Thu, 24 Feb 2022 18:02:47 +0530
Message-Id: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since '#clock-cells' is not a required property for several
QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
based boards), mark it as an optional property instead.

This fixes the following '$ make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  '#clock-cells' is a required property

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 9e0f60e682c4..746a929c63bb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -115,7 +115,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
-- 
2.35.1

