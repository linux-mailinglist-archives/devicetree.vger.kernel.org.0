Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78E8F639A1C
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 12:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbiK0LYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 06:24:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbiK0LYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 06:24:36 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A39B7E098
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 03:24:35 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id 62so7503635pgb.13
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 03:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A/MKZqSXFw0WnY+4GjbBOi2kgTP3/Onn2l8kHqSBl5Y=;
        b=idqBtv2m8CgU2HUBLZqKKLneakhETzn2udIcuh4/yPiDHOKMpkEsLMZJt2+vEQY6Z4
         B/VvUkQ0gkKgWlgBD6JjzP79+IzFY6WWSHiMEqR1SP+r59J1E4FPEJQfLN837PHmgk1R
         kutHYe+Z0rUKCan0ZxNS1IhMmmCGJdXKkJzGScKOOv+ccMYCCMPxi8DTWxF3Oly7PIOE
         XKojD0EgUS4okIV85Ut56KVmjlMruRVmkR7G2g4u1B43GZe9B09BdaauAUusJpkJz1v2
         MgCUGi3ipRr0jQs7bDL3BtIxch+ig+OOCbDxodA7z6i0+qN33b4q10MPD9r6mIgDnAo5
         TeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A/MKZqSXFw0WnY+4GjbBOi2kgTP3/Onn2l8kHqSBl5Y=;
        b=2T6IuT/ZKerbu4VIWXmMuOPaFnrY0dqpSjbSqXwnZkpECUGqJcYalnddGhLs2P3lzh
         xkEDGTyvdyXQdDJAvqKDkfeDIJMWvMQqluX7CuOZWp85oYGMbu74cNWAGV1/aqHXthno
         dV6rUmWFQBGCj3QHiFz3zUlcJCwEXEU7G09Ss8ZreZiWCbudzj+7zCwZMjDgkr1uywVp
         AoUxSs81imHzSS/7CsLItbymthLzBxJhnpTMZmI2sahvr3i7i2Bdm3iybP5mBwWsYsgK
         9UgjXtD+yGoP9P6rNxMOirGSYmj4FhX2PYgTQLI/ZK0eVaaTfbF1A3xHulyfq1U4X+zA
         glEg==
X-Gm-Message-State: ANoB5pl6pXFO8YTdVwdNU/UfW66g9mpTy4LGCXXfRlp/tWrXOPC8rdj1
        UQT43+ogm842PITPC5C/TYTUKA==
X-Google-Smtp-Source: AA0mqf72xDIqzBCYde93/TpUcWmhRRuwtC5BXk8dPC+ZjWMK/7vh5lG+/B406t68wV+gDZ10Me4wRA==
X-Received: by 2002:a63:fc0a:0:b0:434:7885:6ade with SMTP id j10-20020a63fc0a000000b0043478856ademr27893332pgi.243.1669548275080;
        Sun, 27 Nov 2022 03:24:35 -0800 (PST)
Received: from localhost.localdomain ([223.179.131.184])
        by smtp.gmail.com with ESMTPSA id oa14-20020a17090b1bce00b0020d24ea4400sm7691349pjb.38.2022.11.27.03.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 03:24:34 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 1/2] dt-bindings: power: rpmpd: Add SM4250 support
Date:   Sun, 27 Nov 2022 16:52:03 +0530
Message-Id: <20221127112204.1486337-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221127112204.1486337-1-bhupesh.sharma@linaro.org>
References: <20221127112204.1486337-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible and constants for the power domains exposed by the
SM4250 RPM.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rajendra Nayak <rnayak@codeaurora.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org> 
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org> 
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/power/qcom,rpmpd.yaml          |  1 +
 include/dt-bindings/power/qcom-rpmpd.h                 | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 5b4eda919911..c99ffd39e704 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -37,6 +37,7 @@ properties:
       - qcom,sdm845-rpmhpd
       - qcom,sdx55-rpmhpd
       - qcom,sdx65-rpmhpd
+      - qcom,sm4250-rpmpd
       - qcom,sm6115-rpmpd
       - qcom,sm6125-rpmpd
       - qcom,sm6350-rpmhpd
diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index f5f82dde7399..bbe3b29913af 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -274,6 +274,16 @@
 #define SDM660_SSCMX		8
 #define SDM660_SSCMX_VFL	9
 
+/* SM4250 Power Domains */
+#define SM4250_VDDCX		0
+#define SM4250_VDDCX_AO		1
+#define SM4250_VDDCX_VFL	2
+#define SM4250_VDDMX		3
+#define SM4250_VDDMX_AO		4
+#define SM4250_VDDMX_VFL	5
+#define SM4250_VDD_LPI_CX	6
+#define SM4250_VDD_LPI_MX	7
+
 /* SM6115 Power Domains */
 #define SM6115_VDDCX		0
 #define SM6115_VDDCX_AO		1
-- 
2.38.1

