Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E60F025D183
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 08:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726445AbgIDGhM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 02:37:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729109AbgIDGhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 02:37:01 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDC6C061258
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 23:37:01 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id d22so4065857pfn.5
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 23:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WyTTIBrYfLhw1AE2OmxNbGkbFO4+PPEQia9DHNRklGE=;
        b=I3TDcLBfqvBB36KQuNi8T/eLNAHfsM44T0RM5Ps8hN+KwYWP2rU+S4nHkAPYdOuZfR
         ibV7+QBaEV/UQMYgzQCZQx7mdmC5AaSnY6486ZnKsr2MIh+UyeIpI1IAIcRu7AZC94uD
         WKRo89ykg3IOqPlpMSsk6ijFeGPKD1B8H8choJUUfmOt5Fd5ACBB0G8/i8VFlBDBTL3J
         93UysHDs7pDcgPMdXWRSGnWQUsSzd4YZD7rxYvYY6V4oltd12aUmJH/zBw937wBOfM4l
         7uNmNPBIpVinLOL5KEk+I3Uv2m2UCtV0yDj4ITXagzZEJPQR0pwzei8nx00q8cCBWh5O
         b5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WyTTIBrYfLhw1AE2OmxNbGkbFO4+PPEQia9DHNRklGE=;
        b=rPLbOrMfqp1Lt+jwNNFxcSpoFMWbGaMW6VHYlkD2Nh5u9uP69OWCQe3hy06Jo8h80R
         AFPAVVqbd2ShxJsElhx+4088BpCic+4cBNlGH8PUxSwYQ7TiOHWjVMkzljw/ki4f4bsT
         V5L2+XciNy76t6rO0RKQLl1WSgcTeWjj5ATRZu32x4DA026doDovTIdUEWFubGeT5Qlz
         0jhKVMi0rXNL/bNe/0wh9k3pNxOrZtkVrouzW3SE9HRQwzC4Nq7bqLpgx8L7tD2WxWsg
         HdoUpBms/iSd+DMzaHxWYS98TzTVlFA4/1GONhiflQvVSeMrCULTLdrbphmYjFJLpy+y
         fW3A==
X-Gm-Message-State: AOAM531IoUv3w04Iqneu8vZdcB0+EwRoRIZsmASTvPrbv7sDrc2YbB1k
        5ZEhfq/otMb4EvsKAFwYOQi6
X-Google-Smtp-Source: ABdhPJyr/Rcw0/Ofy5B3RUU31rbUyIK5BClaFYjL1wRSSPZEYJEQAHaBCNFPsLT0P1X0RV4OwH1XQQ==
X-Received: by 2002:a63:da15:: with SMTP id c21mr6188721pgh.207.1599201420889;
        Thu, 03 Sep 2020 23:37:00 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 143sm5315040pfc.66.2020.09.03.23.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 23:37:00 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: qrb5165-rb5: Add onboard LED support
Date:   Fri,  4 Sep 2020 12:06:35 +0530
Message-Id: <20200904063637.28632-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
References: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Only User4, WLAN and BT LEDs are added for now. These GPIOs are coming
from PM8150. Rest are coming from LPG block which is not supported yet!

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index f201e064b3e7..312316e23298 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -32,6 +32,32 @@
 		regulator-always-on;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		user4 {
+			label = "green:user4";
+			gpios = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "panic-indicator";
+			default-state = "off";
+		};
+
+		wlan {
+			label = "yellow:wlan";
+			gpios = <&pm8150_gpios 9 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tx";
+			default-state = "off";
+		};
+
+		bt {
+			label = "blue:bt";
+			gpios = <&pm8150_gpios 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "bluetooth-power";
+			default-state = "off";
+		};
+
+	};
+
 	vbat: vbat-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VBAT";
-- 
2.17.1

