Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15ED56730D
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 17:47:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231702AbiGEPrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 11:47:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232559AbiGEPqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 11:46:24 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E1817E0D
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 08:46:17 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t19so20610457lfl.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 08:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xkMFJ9e/M/8FH5vULBoMdVfYBlSipo+Mnlcab8yEpFg=;
        b=mMoKrWFu0bgZpac13H/84hzwWoqgWmKxO2hEBDKUhwZIHj31yIR+saZxCj143TMwqW
         gipoCf8VbbbW2/Gil68hs9XMQ2J311QUimFP9g0oSCGfo/bqRgWJlbYSXnhBp1ntvAbG
         uGrF414qQg5Z6gap/wqQuqUER7bb48YYGTmEquX5vKVprV4DCcGCGnpVFgRea+43wi4b
         vQJHJQq0uTH8F0E4ePniUBMwMSxH9rmT8h+6BNtxVM3Av6EX8MFz098eExNEaMtiav6g
         VxLvf4klmYL1NBqSHK+CITUqsOcvSG1QCTiwR10cK1UR4yxqF8SfC9zh+6ldPQLdg7Gq
         CGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xkMFJ9e/M/8FH5vULBoMdVfYBlSipo+Mnlcab8yEpFg=;
        b=r7Rh9PoVRKp1umgb5LNdAdn0H0Pj5yxkvRRgI89gaUAHol5b5AxkS2E8b3EYLMA0Xs
         jbt1w+aYjiCAH3jv2x3CJmFpYgykdZD16A4OJ7nsO/0pDScf6IaGySPNtfFtXK+xUVkO
         X6CyYf1XxCCb408WoEtpu9iDLM3CXsyLBe4ua37Hql+RA3Y+a3lx8D9xryRhrwE/9kYc
         T6iwZhegovWnMlbhNCM5aK2QxXLf1qRLN5sD8Y0tYVoBXekTDhuZFOBKfGIfgbR+JENm
         wR+ja8DG0YBqWQcCJpFUylENKzgvnVy1yovE/vQ1ks4hbAn+hjY+wtrbjEEnd/YpUOkp
         KdIA==
X-Gm-Message-State: AJIora9TyOn9QpfDMbnrr+K3oG475ZUBROeRkBYgQ2s6/W15TOy71SDz
        zkebJYamiFyUs01XmKTl7dFaNQ3vhlWtsQ==
X-Google-Smtp-Source: AGRyM1twqbwiJrhztHRnbJro19dpHakGQPtOrL06UtRH56H3CVrHq/DKVEw/QwzNFnsWm+XXs6xsGw==
X-Received: by 2002:a05:6512:c24:b0:47f:7351:379b with SMTP id z36-20020a0565120c2400b0047f7351379bmr24402449lfu.328.1657035975638;
        Tue, 05 Jul 2022 08:46:15 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y14-20020a19750e000000b0047f78ad78bdsm5738394lfe.218.2022.07.05.08.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:46:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: hwinfo: group Chip ID-like devices
Date:   Tue,  5 Jul 2022 17:46:12 +0200
Message-Id: <20220705154613.453096-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Group devices like Chip ID or SoC information under "hwinfo" directory.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v2:
1. Spllit renesas,prr.yaml into separate patchset.

Changes since v1:
1. New patch
---
 .../exynos-chipid.yaml => hwinfo/samsung,exynos-chipid.yaml}    | 2 +-
 .../{soc/ti/k3-socinfo.yaml => hwinfo/ti,k3-socinfo.yaml}       | 2 +-
 MAINTAINERS                                                     | 2 ++
 3 files changed, 4 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/{soc/samsung/exynos-chipid.yaml => hwinfo/samsung,exynos-chipid.yaml} (92%)
 rename Documentation/devicetree/bindings/{soc/ti/k3-socinfo.yaml => hwinfo/ti,k3-socinfo.yaml} (92%)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
similarity index 92%
rename from Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml
rename to Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
index 4bb8efb83ac1..95cbdcb56efe 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/soc/samsung/exynos-chipid.yaml#
+$id: http://devicetree.org/schemas/hwinfo/samsung,exynos-chipid.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Samsung Exynos SoC series Chipid driver
diff --git a/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
similarity index 92%
rename from Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
rename to Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
index a1a8423b2e2e..dada28b47ea0 100644
--- a/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/soc/ti/k3-socinfo.yaml#
+$id: http://devicetree.org/schemas/hwinfo/ti,k3-socinfo.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Texas Instruments K3 Multicore SoC platforms chipid module
diff --git a/MAINTAINERS b/MAINTAINERS
index b21af94149fe..1d99d54fa881 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2665,6 +2665,7 @@ B:	mailto:linux-samsung-soc@vger.kernel.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
+F:	Documentation/devicetree/bindings/hwinfo/samsung,*
 F:	Documentation/devicetree/bindings/power/pd-samsung.yaml
 F:	Documentation/devicetree/bindings/soc/samsung/
 F:	arch/arm/boot/dts/exynos*
@@ -2898,6 +2899,7 @@ M:	Tero Kristo <kristo@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	Documentation/devicetree/bindings/arm/ti/k3.yaml
+F:	Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
 F:	arch/arm64/boot/dts/ti/Makefile
 F:	arch/arm64/boot/dts/ti/k3-*
 F:	include/dt-bindings/pinctrl/k3.h
-- 
2.34.1

