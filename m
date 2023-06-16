Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72E8E7327DE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 08:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233252AbjFPGvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 02:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230378AbjFPGvb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 02:51:31 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C0882130
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:51:30 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-666ac5b63beso406855b3a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686898289; x=1689490289;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2ePxkvXc3ez7RaG4t+b4SJYW3YfRAjragn1h3BVbXng=;
        b=LChvz2X+hj7s7ldfSLBo7Q4o3S6V0QEojFzHeNlLz+mqu2QDAN/GVxiDDXl/LfisiA
         kg71efrGUIs+OFuj08ikZmUEQsNloGlvdeNBuPqmISjpKmv4MQ0Adb7y3pRyoXunrXMb
         HNdqaq+0oJ2i4khq1GDfSX1c96No+qa82HUnGPQ8LHDBvmTHRSk7SI6Ds/7hB8/ILfVo
         cwE7zhQc21f3f1BvR3HBQv/JqrVSFt6WSEpvVjei3lIaL87rtK5oDwpM2Y/56c3CiAAI
         q0PlaZRS2FqUTTeq680F/VbDdftvtK0VWM3XYRIvor5KGPYd2EzpEBunml0g6W5yiOLA
         38qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686898289; x=1689490289;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ePxkvXc3ez7RaG4t+b4SJYW3YfRAjragn1h3BVbXng=;
        b=YV5qPWIz8eJNYGEBSDGySxk/SHRlEWuBznW3qJDOO51HBldgRChiwaLxmsvuX0IFFP
         yx8ztPhZFncKuocAgPd9BA2TW1kFhmg+e0kCpG/NfyuLqFN5l8c49v2okK5yEhTjifvR
         lf6mJhHkxAwocVMNxyc3sBGM27e+C8XemLgA0a3D65adi0EqCWzIUlZdT1i7DDjzcH/U
         DyouBxklkci7tjFAypTvw2B3Yp/KKM4WxV6IOt6SDGsN7gh3yUD4t+W4OpDZZGOKjpi0
         uC/Q8k+aPsjsIsNYEzTkmTCGu+zbAeqs2Llddi6+/rkSf8FlICcIlcvPhljmkSndaR7R
         XcNA==
X-Gm-Message-State: AC+VfDxjB6F4OmOeX+RuTg7sgsaoiC/fS1Z6Ghsi7/nbCoUZoFS+UN7e
        /ca9feQ4z1KM0DimBTZ02pYqbQ==
X-Google-Smtp-Source: ACHHUZ7mCmhLo3bjUDLpe/NUKX2+e5MJLc4Sq+J15sSNEIdqea6uqjAlFw0cSjS14vTJZSKWMapqJQ==
X-Received: by 2002:a05:6a21:3997:b0:111:2a64:83e7 with SMTP id ad23-20020a056a21399700b001112a6483e7mr1384962pzc.22.1686898289554;
        Thu, 15 Jun 2023 23:51:29 -0700 (PDT)
Received: from localhost.localdomain ([49.207.50.231])
        by smtp.gmail.com with ESMTPSA id j11-20020a170902690b00b001b03842ab78sm15079395plk.89.2023.06.15.23.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 23:51:28 -0700 (PDT)
From:   Amit Pundir <amit.pundir@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Bryan Donoghue <bryan.odonoghue@linaro.org>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Subject: [PATCH v3] arm64: dts: qcom: sdm845-db845c: Mark cont splash memory region as reserved
Date:   Fri, 16 Jun 2023 12:21:23 +0530
Message-Id: <20230616065123.3710734-1-amit.pundir@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Author: Amit Pundir <amit.pundir@linaro.org>
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding a reserved memory region for the framebuffer memory
(the splash memory region set up by the bootloader).

Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
---
v3: Point this reserved region to MDSS.

v2: Updated commit message.

There was some dicussion on v1 but it didn't go anywhere,
https://lore.kernel.org/linux-kernel/20230124182857.1524912-1-amit.pundir@linaro.org/T/#u.
The general consensus is that this memory should be freed and be
made resuable but that (releasing this piece of memory) has been
tried before and it is not trivial to return the reserved memory
node to the system RAM pool in this case.

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index df2fde9063dc..503136eb9c06 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -101,6 +101,14 @@ hdmi_con: endpoint {
 		};
 	};
 
+	reserved-memory {
+		/* Cont splash region set up by the bootloader */
+		cont_splash_mem: framebuffer@9d400000 {
+			reg = <0x0 0x9d400000 0x0 0x2400000>;
+			no-map;
+		};
+	};
+
 	lt9611_1v8: lt9611-vdd18-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_1V8";
@@ -517,6 +525,7 @@ &i2c14 {
 };
 
 &mdss {
+	memory-region = <&cont_splash_mem>;
 	status = "okay";
 };
 
-- 
2.25.1

