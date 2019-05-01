Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 75AC3104F8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 06:37:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726173AbfEAEho (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 00:37:44 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38376 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726193AbfEAEhn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 00:37:43 -0400
Received: by mail-pg1-f196.google.com with SMTP id j26so7844301pgl.5
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2019 21:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kYQemACgtqbxChV7HlM7UTpQsyhEGfC7nSYz5voNBQE=;
        b=abB3juO+SS2LUU1SgcrraCl+bJp/tnE8gP4EhklXGXaopPMd9nyPKTj9cDfLGONhhe
         5ShLVmxluI/igrC+r+yfxlYEuR+TfbVAr7+o+BPc2zR7IhDLvHsldeFNBw9D7h/nqvGh
         lciItM4yv4MEzy5epyposxToqpTDoht8Vg9SILWfIaItHB+d+J5j56D8x0yCaS11j/P4
         yK61kli9KOcJimIA7VoJZZk1KFAY9yTACLwR0CIkFS42aqohHGJMy2WLaqqcbUi3MYA0
         bYWoq5isfXJTRhUYKwAPcO4xOs9H4P1zyRWh5m7OIaA/CVslg97vw2AffgNNBRQsX4h2
         HZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kYQemACgtqbxChV7HlM7UTpQsyhEGfC7nSYz5voNBQE=;
        b=Z7QUknf30gT6RWWHykRTlD1TpttRPikP7Q1zWFMLbpLUqisOGlWoWcw0s3iagvS3W0
         E/nNc3oOAGTuuhMp45w2Zn0VKKFrLyBzqXITNL8rMLNQU9AQBA+dFljmYfd0rpAAgX8Q
         Rp8uEgW1C/v+N+2stG+Ebo2djlJ3jEf364TO1xdB2y02fsBoJbGUcx2UrvZj0tTqI+14
         x+9uE4xCQK/uNo+GwxryQH/+CErbZ2k/sY0Zv/Vch4x7SeV2fmCIK87n5r7Xq9GVYhlp
         k/BkrnLp8tc2qCpwDi3OZCgeuL2yu5n49m4rxozh1GaDw4GSzKDfr9QwPm0wnMVFX+U1
         NG/w==
X-Gm-Message-State: APjAAAWMKanmQRF1G8Llh8ZXLO/LvaL3kcCpWAI6w2RdIUDVTXYztxLv
        wJgkdcx2BTgC/dE2jZ3troAuPg==
X-Google-Smtp-Source: APXvYqzrZ9SoEybJnVOhC2d/a1LUv6LnCcxn3uWAj24FD3GC79oNQ4GXyHclR7myxMoOuGWGiVZyew==
X-Received: by 2002:a65:5682:: with SMTP id v2mr43006216pgs.100.1556685462966;
        Tue, 30 Apr 2019 21:37:42 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id q128sm55912865pga.60.2019.04.30.21.37.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Apr 2019 21:37:41 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/4] arm64: dts: qcom: Add AOSS QMP node
Date:   Tue, 30 Apr 2019 21:37:33 -0700
Message-Id: <20190501043734.26706-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190501043734.26706-1-bjorn.andersson@linaro.org>
References: <20190501043734.26706-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AOSS QMP provides a number of power domains, used for QDSS and
PIL, add the node for this.

Tested-by: Sibi Sankar <sibis@codeaurora.org>
Reviewed-by: Sibi Sankar <sibis@codeaurora.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v6:
- Added #clock-cells

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index fcb93300ca62..666bc88d3e81 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/interconnect/qcom,sdm845.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/phy/phy-qcom-qusb2.h>
+#include <dt-bindings/power/qcom-aoss-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
 #include <dt-bindings/reset/qcom,sdm845-pdc.h>
@@ -2142,6 +2143,15 @@
 			#reset-cells = <1>;
 		};
 
+		aoss_qmp: qmp@c300000 {
+			compatible = "qcom,sdm845-aoss-qmp";
+			reg = <0 0x0c300000 0 0x100000>;
+			interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&apss_shared 0>;
+
+			#clock-cells = <0>;
+			#power-domain-cells = <1>;
+		};
+
 		spmi_bus: spmi@c440000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0 0x0c440000 0 0x1100>,
-- 
2.18.0

