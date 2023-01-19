Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4917D6738E0
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 13:43:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbjASMnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 07:43:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbjASMnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 07:43:17 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58CDE6EBF
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:41:37 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id q125so2065057vsb.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VVHadHPnsAxe96lEMjlVubzr7hDvqNBQbiLIOco/JAA=;
        b=G3B16q6zX9KtLqkD6O2Ptjp80X2CjF7ktMkRYZnzENoap7KZqincMlO2ligj4Jsofp
         o6WChe7Y/gYfuPPqUlVLlmzOeo0zQYf5VYbpuNnJLakFwNLIXLr/3HdzVjxzzn07K7TF
         aPA64Vx5et9pjjlAqmE+YZZ3pavhJiH5Hx62M1FL9e0k7/mIaxhgtSinunN1KlS2DfMm
         E66NyOcYCvuKHz/VqEutfM/983LFYQQXC+0Co+UzHDtWjGKcxkqgmqh5EunVCs/tYCUv
         sbJkhqRUoUSBSSHwpbSwTF83lIkRBqenIIz0XZCePcTDUd6PK+YjtgJUspuHhQD3GFu2
         eFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VVHadHPnsAxe96lEMjlVubzr7hDvqNBQbiLIOco/JAA=;
        b=srJwjd7nw14psJPdE22y7y0trSOYiSpYeAo2yooshKFanKg7F1PnrCncCIJ9sczzV1
         nuLLTdPWOxstS4YBX9NueX4S85gCVUfNMKXWVmhLgpCAiIDlX6ag5Rtv6Yp/vgc1fmgu
         yN72zpYohldonO+cMtI/jF/j/V2/zj1jT0AXEmMk6i8nFnpOdLrY/XPbtqV9KRyhl077
         vJVSlcT2wY1gMe22/6KgF7bt/TvdAchtnw+ddbfZU0mlLcpTkNxeEuUHtrYfixyH9/Xq
         0OdzilRqWdZ1Xi0DNzvXWk8VTVPenAel6phBW4ythUOvBl6exQgJzMfOSemN2ovVfonu
         EBig==
X-Gm-Message-State: AFqh2krBbnl1u3ix2mdktVLl39FYrwKSvT/Wd8IXwnRWGAkT5d2ttSoC
        ShhpiKNjaHL3FpyqnIXpqlW7a0okcav3k8NN
X-Google-Smtp-Source: AMrXdXsu9yx2ILY16DoQSOLrm1614oinvj8IxQvKDAiveKxMeb15Ii5+2R34UdM9BFrkqYnNkAp/5A==
X-Received: by 2002:a17:90a:690c:b0:227:1745:3478 with SMTP id r12-20020a17090a690c00b0022717453478mr10623350pjj.30.1674131531077;
        Thu, 19 Jan 2023 04:32:11 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:63d3:2d69:9f71:187e:f085])
        by smtp.gmail.com with ESMTPSA id a18-20020a17090aa51200b002294615bf59sm3094449pjq.18.2023.01.19.04.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 04:32:10 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm6115: Add watchdog node to dtsi
Date:   Thu, 19 Jan 2023 18:02:00 +0530
Message-Id: <20230119123200.1021735-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add watchdog node in Qualcomm sm6115 SoC dtsi.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
- Note that this patch depends on the dt-bindings change sent via [1].
  [1]. https://lore.kernel.org/linux-arm-msm/20230119122619.1020908-1-bhupesh.sharma@linaro.org

 arch/arm64/boot/dts/qcom/sm6115.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 08f93b1dc2f8..0dfd48ea8896 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1944,6 +1944,13 @@ wifi: wifi@c800000 {
 			status = "disabled";
 		};
 
+		watchdog@f017000 {
+			compatible = "qcom,apss-wdt-sm6115", "qcom,kpss-wdt";
+			reg = <0x0f017000 0x1000>;
+			clocks = <&sleep_clk>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_EDGE_RISING>;
+		};
+
 		apcs_glb: mailbox@f111000 {
 			compatible = "qcom,sm6115-apcs-hmss-global";
 			reg = <0x0f111000 0x1000>;
-- 
2.38.1

