Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C50517423C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 23:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726816AbgB1Wm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 17:42:58 -0500
Received: from mail-yw1-f54.google.com ([209.85.161.54]:38010 "EHLO
        mail-yw1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727306AbgB1Wmr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 17:42:47 -0500
Received: by mail-yw1-f54.google.com with SMTP id 10so4947107ywv.5
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 14:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
        b=aFJmacyoYMfOrWc7Py00c+Je5msNK68dvGgpMGjv4b6l1knIu9+IIbetY2GBb/i0g1
         Uy3tDaBgLQY5nCv31krfzrDL4NajPGA4s9pswLqtwoaQiN4T5XLmg5PblTbCuhiJX7F/
         pDJFFYgTCHKHp/WzP+RBmbLrvosSAcU23o0bS5bBZA+zAjSOiaoAlATN6BnmKSx+OZhX
         ugr0CXu1V78lqqzVGow1mo0qSv0ypxJzAtrO+51fw6J4XlsIVY7BgYaK0cm93NDumSsi
         B0ukVTvkOtKfCwanqirrfraMtRgF2Ys2Wr4czjjqhnlZlnFGG3GkPZKbPXqufz0cPYPX
         6IOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
        b=pWBdN1mgY8UVMmpDOE1vj7HZ/QGrb4HYWHs3eIMwTSdg1Z8ToKTzG/cFbF0S/Zk6DB
         jvp0E8nkPlwPNsbqztK+vxyipI/TNMMyNMD62ACYztg7LKvz+GKSeTtucqCeKm56P0zc
         5HKmsWFIV1FadDCnvrAGBR5CSUEAdN+fCjerGxyyh8EAV3/HZ+gYLsTrbAXSm5NRiM4Q
         RIyMJoM0ex+TPxaWgyHBhjrTP5hID2Lv5Inirkp7nn2KXhhCbuBb/BVIUZKczWeLrqDM
         IpoMZuqUvphyi5bPP23bUQnpDEXyhfpCi6R0BADaz51Aa1F+87QXqjZegIGIlNV8v0cH
         E15g==
X-Gm-Message-State: APjAAAXHKcBuJL7IQ7LqJruyi9pYcbw2jX6pttiDoqsVcK7kpY+HD5Ez
        0Dl7qLA+Bl+BD/a4WZmvoGyXHA==
X-Google-Smtp-Source: APXvYqy/xVwiXn9ASJWR47pESZIiWVOz3fDE0idfoGWN5WK6UN8CA60IZR+AvIQawo8+inA2mbi/cQ==
X-Received: by 2002:a81:82c5:: with SMTP id s188mr6860426ywf.59.1582929765490;
        Fri, 28 Feb 2020 14:42:45 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2020 14:42:44 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     Arnd Bergmann <arnd@arndb.de>, David Miller <davem@davemloft.net>,
        Johannes Berg <johannes@sipsolutions.net>,
        Dan Williams <dcbw@redhat.com>,
        Evan Green <evgreen@google.com>,
        Eric Caruso <ejcaruso@google.com>,
        Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
        Chaitanya Pratapa <cpratapa@codeaurora.org>,
        Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Siddharth Gupta <sidgup@codeaurora.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 17/17] arm64: dts: sdm845: add IPA information
Date:   Fri, 28 Feb 2020 16:42:04 -0600
Message-Id: <20200228224204.17746-18-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add IPA-related nodes and definitions to "sdm845.dtsi".

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index d42302b8889b..58fd1c611849 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -675,6 +675,17 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		ipa_smp2p_out: ipa-ap-to-modem {
+			qcom,entry-name = "ipa";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		ipa_smp2p_in: ipa-modem-to-ap {
+			qcom,entry-name = "ipa";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	smp2p-slpi {
@@ -1435,6 +1446,46 @@
 			};
 		};
 
+		ipa@1e40000 {
+			compatible = "qcom,sdm845-ipa";
+
+			modem-init;
+			modem-remoteproc = <&mss_pil>;
+
+			reg = <0 0x1e40000 0 0x7000>,
+			      <0 0x1e47000 0 0x2000>,
+			      <0 0x1e04000 0 0x2c000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended =
+					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
+					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects =
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
+				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
+			interconnect-names = "memory",
+					     "imem",
+					     "config";
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+		};
+
 		tcsr_mutex_regs: syscon@1f40000 {
 			compatible = "syscon";
 			reg = <0 0x01f40000 0 0x40000>;
-- 
2.20.1

