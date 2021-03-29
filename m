Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB11834CD3F
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 11:44:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbhC2Jnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 05:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbhC2JnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 05:43:15 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F3CC061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 02:43:14 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id c17so9514447pfn.6
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 02:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GCO+HLMUHqwP+IidTwyt4nWDFD74p2XFYnz20c69ZzM=;
        b=N+NkL0BvHbk+8P2TYKNJJBjn8k338s2pxeZF2+J5Ud0AXYiYmUd0XADwi0aNi7RLLK
         e81q/O1crM45iSPKGItcAD2JZZZ+we77sM0nrvcLqdLGCv3rG+lSB5AljFFUFIHq2awu
         Q9c2RM8DkcdWhwF9cYDPa3KhSracOQgkoF7kCRUOM82F4BqtndtSPyNs4vnt8jFDh8S5
         nemZKrxDXlpsnJSv7lo+zhIEkXp/xrISrCUPuZoL5tQzwJAm8nkiv286a7U/iBcnpqmL
         mLldh/Sk2Tnh4UIwPlh7wzGiSt1TrDs7I5obVmVXRP2Y8oOoeMIp/gPSwehz+Io1vGK0
         gsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GCO+HLMUHqwP+IidTwyt4nWDFD74p2XFYnz20c69ZzM=;
        b=CZ1+0CVfemWaC8p5295qxagRbIyD8NLhHl5yuulNzXUsX7MHl43i4s5vQ2r9T4JtH2
         pRDjf4CCK5h6TlrUrNIND49dJHpkf1Z+Ts9u4cDjNhKK1LWdzLTWLLIXRqKU315RmP+G
         Opp8xw5ye4+USNN9+4jWRLgOKnz3FrdFBw0DIWF7WCYEwXFLLkPO3l+SouoZFWtK/Dul
         RzHqT4XbzPc/Gb3GSpLmAUWIJcPAjt5h7ZOD/4lWeUOYoYYYnTx1oJX6KkTYCZcSlj/s
         mK6KbP00nPg6HP1oH5ayy6MsPdENIigoyIXaaDWeK/fWNxLHb9IjTaTFIBwpbnfFRjE9
         +DYQ==
X-Gm-Message-State: AOAM531kTlEkY10S7baOO52kkSzA/DRce6YI0mtm60AhpvPrrVBI3ga3
        vgmt4E55Z3JV1e69VOw7OJc=
X-Google-Smtp-Source: ABdhPJykhOXy1F3yQ7v6t33crenlcHFMadoq2XUxA9qPwLfpW/z3mLy27Ru8ch8eCQwmp8u/MFW3hQ==
X-Received: by 2002:a63:4462:: with SMTP id t34mr22756427pgk.389.1617010994285;
        Mon, 29 Mar 2021 02:43:14 -0700 (PDT)
Received: from rashmica.home.majoof.com (150.24.220.111.sta.wbroadband.net.au. [111.220.24.150])
        by smtp.gmail.com with ESMTPSA id q25sm15970980pff.104.2021.03.29.02.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 02:43:13 -0700 (PDT)
From:   Rashmica Gupta <rashmica.g@gmail.com>
To:     linux-aspeed@lists.ozlabs.org, joel@jms.id.au, robh+dt@kernel.org,
        andrew@aj.id.au, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: rainier: Update to access sensors via iio-hwmon
Date:   Mon, 29 Mar 2021 20:42:55 +1100
Message-Id: <20210329094255.347713-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index fefb0b8fd6d5..2dc72de07906 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -173,6 +173,16 @@ i2c2mux3: i2c@3 {
 		};
 	};
 
+	iio-hwmon-dps310 {
+		compatible = "iio-hwmon";
+		io-channels = <&dps 0>;
+	};
+
+	iio-hwmon-si7020 {
+		compatible = "iio-hwmon";
+		io-channels = <&si 1>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -1972,9 +1982,10 @@ &i2c7 {
 	multi-master;
 	status = "okay";
 
-	si7021-a20@20 {
+	si:si7021-a20@20 {
 		compatible = "silabs,si7020";
 		reg = <0x20>;
+		#io-channel-cells = <1>;
 	};
 
 	tmp275@48 {
-- 
2.26.3

