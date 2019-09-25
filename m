Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EA82BE90F
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 01:42:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732793AbfIYXmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 19:42:39 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:33222 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732675AbfIYXmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 19:42:38 -0400
Received: by mail-pg1-f194.google.com with SMTP id i30so322640pgl.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 16:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PmHyEUv1I7IOVWdSAFJf5v6u4/LdnM00Z/zUoJS1vWs=;
        b=F2fzRlaLxb7Dor1xMHruTiW3m8u0J71MgkiCzmctu3CaYBMx9IqtG0t1zNrX+rO5HU
         Lmm2w1A7qm0FeajykEQHXtAEU9inq9YurkMfU5LlHwVzUfkQ4cjhLNqDae8zgQnHjmWS
         XxP4pApy0dbOcpsjTnPOOS9M9aGKKRAtCeONkyUl1+VCst4I217sYUWXL607uYicsNqA
         7agGaZFFLEzvqTbsXgYcs1/F3F13cyeI4mwamCJyftXMV7a1gzHmDptgKaP1YnA0m73K
         nJfO5SbB9E5w4KLCqkKegUw3tjhBE9LwErWfabsl6HStujRiVYKvSZo/DDlEZJ3ljK+H
         F4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PmHyEUv1I7IOVWdSAFJf5v6u4/LdnM00Z/zUoJS1vWs=;
        b=OTYzEKv2dZ6yubUshDeOgYG9hmLASOnJ01R2JwuGQiPbUXPkbzOkDpeLkniZK8kw8G
         0yqpxUzzKzdDk/rSO1Mdl2YnUfAodwyLgS4RpkF+XqQANPwY1BP/QFY1/U07qHGglUom
         OfLKHTbBaHL/ADULQ2LZciYxdqq7YDrMkRVQ5LdpHDTVZjOj3U76KcaScWHeinT6gtVa
         YKOlsK+aa9ootf0mLEME6TS3tyL08nt9qFr4NdEVXbomQp7/ODURzmyF7vBksEZGYoSD
         mud0MIiIMzs6dZ2GkmqnQ4e4vFzyucYbAPVj1ctQXJxPL27t3pggjzhhU17Clbo/tU7N
         hGag==
X-Gm-Message-State: APjAAAUa5tmVWZI6xo6ozA23rXbvPlwBN1WsNtCvxmcOAZ/BD+4mn4F/
        tItUCvzwpAWZo/j/2glQWpTjZA==
X-Google-Smtp-Source: APXvYqzckYaJvastZyMKVUDhmfHnddTevUdoy7ojBqVA4rHuXKdLY2ZSTQjIvMnlLnPMg3zPgDgdaQ==
X-Received: by 2002:a17:90a:ff18:: with SMTP id ce24mr267275pjb.123.1569454957565;
        Wed, 25 Sep 2019 16:42:37 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id d1sm131127pfc.98.2019.09.25.16.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2019 16:42:36 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Yu Chen <chenyu56@huawei.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: usb: dwc3: of-simple: add compatible for HiSi
Date:   Wed, 25 Sep 2019 23:42:23 +0000
Message-Id: <20190925234224.95216-5-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190925234224.95216-1-john.stultz@linaro.org>
References: <20190925234224.95216-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add necessary compatible flag for HiSi's DWC3 so
dwc3-of-simple will probe.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 .../devicetree/bindings/usb/hisi,dwc3.txt     | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/hisi,dwc3.txt

diff --git a/Documentation/devicetree/bindings/usb/hisi,dwc3.txt b/Documentation/devicetree/bindings/usb/hisi,dwc3.txt
new file mode 100644
index 000000000000..dc31b8a3c006
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/hisi,dwc3.txt
@@ -0,0 +1,52 @@
+HiSi SuperSpeed DWC3 USB SoC controller
+
+Required properties:
+- compatible:		should contain "hisilicon,hi3660-dwc3" for HiSi SoC
+- clocks:		A list of phandle + clock-specifier pairs for the
+			clocks listed in clock-names
+- clock-names:		Should contain the following:
+  "clk_usb3phy_ref"	Phy reference clk
+  "aclk_usb3otg"	USB3 OTG aclk
+
+- assigned-clocks:	Should be:
+				HI3660_ACLK_GATE_USB3OTG
+- assigned-clock-rates: Should be:
+				229Mhz (229000000) for HI3660_ACLK_GATE_USB3OTG
+
+Optional properties:
+- resets:		Phandle to reset control that resets core and wrapper.
+
+Required child node:
+A child node must exist to represent the core DWC3 IP block. The name of
+the node is not important. The content of the node is defined in dwc3.txt.
+
+Example device nodes:
+
+	usb3: hisi_dwc3 {
+		compatible = "hisilicon,hi3660-dwc3";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		clocks = <&crg_ctrl HI3660_CLK_ABB_USB>,
+			 <&crg_ctrl HI3660_ACLK_GATE_USB3OTG>;
+		clock-names = "clk_usb3phy_ref", "aclk_usb3otg";
+
+		assigned-clocks = <&crg_ctrl HI3660_ACLK_GATE_USB3OTG>;
+		assigned-clock-rates = <229 000 000>;
+		resets = <&crg_rst 0x90 8>,
+			 <&crg_rst 0x90 7>,
+			 <&crg_rst 0x90 6>,
+			 <&crg_rst 0x90 5>;
+
+		dwc3: dwc3@ff100000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xff100000 0x0 0x100000>;
+			interrupts = <0 159 4>, <0 161 4>;
+			phys = <&usb_phy>;
+			phy-names = "usb3-phy";
+			dr_mode = "otg";
+
+			...
+		};
+	};
-- 
2.17.1

