Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61F455550D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 18:48:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728388AbfFYQsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 12:48:47 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52534 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731128AbfFYQrq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 12:47:46 -0400
Received: by mail-wm1-f67.google.com with SMTP id s3so3550744wms.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 09:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e2iDgG+a1Cwxalhjo4sK1dl1x5ZGYIy8c2NDgb0cIKI=;
        b=hRMY0hQPqZa1EOkLq/pcbXQACdZ2vJch4Nwcss07dQdC/POnex3oN18t0XpCs3k2jP
         NvyO5+bb+SYAUpaa/6dukYsJS2HKigF9ncRCCtBSOguyAZLciEXdUxNLAOHBRmIDO+XY
         1ZT2UPFc1MMyvFBH8cKmGYRfjmoc8NVw9ITwdFWuyuXBZzgwlQPOmu336h92jyz85L32
         c2G1liFbrRMmUnrc8zuOdrTOGQcKpBhCwGfzFNalHwsyG+RpdzhcucUUltKduAZwFi1p
         pj8rEVfuV3ePPORyN7CqUsceLTjVphHP5v/f12iQFjZVxMwr1ZeIcSgn2nFlPojvEU5y
         7plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e2iDgG+a1Cwxalhjo4sK1dl1x5ZGYIy8c2NDgb0cIKI=;
        b=V/1FlKnJYw1mxWqgp6kR2yAvZjA8UgTvhukI8JUVG7ltItcujf2Y8qMMCmPkEZeC++
         y1wlPLkuR63fgDcaXxl782LoWgqg5BH+h7y2DXKRvc0qWYoXz5rVG7QrdzqtT/g9RPDk
         Bw3R/0AqDdSo9jnlHVMSKxYjTWkGgXU5Zn7RKwZOasuSUy7Xi+ykwgS0nb97bmJQm25j
         5e0qyk2gCCau0J/k/q2gEpsPQrKo77Pzc3gTskYjBWJXsHMJNlyc1oui1i85nOdpcQd9
         bQSJRj6rw5siDD4iyoAVmW4VNjZeuVRPNzCEha3gUCGcUl1Dl7LJBBhfgsKdunJQ3diu
         pvFA==
X-Gm-Message-State: APjAAAWwLapZWIi4IP946Xmcl+Ql3tlf+mMNCVCJz49/8osRE4RRjR+l
        d8ipQe9epEY7HvW72NSLynwGGQ==
X-Google-Smtp-Source: APXvYqzzKybU5L5CHAou+6YROvKHjyTDhRvTNHkGwif2kC9QtUTdJvvPwjxfryuq9YWgxxmIB0Rwqg==
X-Received: by 2002:a1c:39d6:: with SMTP id g205mr19367816wma.85.1561481264441;
        Tue, 25 Jun 2019 09:47:44 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net. [83.34.200.30])
        by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 25 Jun 2019 09:47:43 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
        bjorn.andersson@linaro.org, david.brown@linaro.org,
        jassisinghbrar@gmail.com, mark.rutland@arm.com,
        mturquette@baylibre.com, robh+dt@kernel.org, will.deacon@arm.com,
        arnd@arndb.de, horms+renesas@verge.net.au, heiko@sntech.de,
        sibis@codeaurora.org, enric.balletbo@collabora.com,
        jagan@amarulasolutions.com, olof@lixom.net
Cc:     vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
Subject: [PATCH v3 04/14] dt-bindings: mailbox: qcom: Add clock-name optional property
Date:   Tue, 25 Jun 2019 18:47:23 +0200
Message-Id: <20190625164733.11091-5-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the APCS clock is registered (platform dependent), it retrieves
its parent names from hardcoded values in the driver.

The following commit allows the DT node to provide such clock names to
the platform data based clock driver therefore avoiding having to
explicitly embed those names in the clock driver source code.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../mailbox/qcom,apcs-kpss-global.txt         | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
index 1232fc9fc709..b69310322b09 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
@@ -18,10 +18,11 @@ platforms.
 	Usage: required
 	Value type: <prop-encoded-array>
 	Definition: must specify the base address and size of the global block
+
 - clocks:
-	Usage: required if #clocks-cells property is present
-	Value type: <phandle>
-	Definition: phandle to the input PLL, which feeds the APCS mux/divider
+	Usage: required if #clock-names property is present
+	Value type: <phandle array>
+	Definition: phandles to the two parent clocks of the clock driver.
 
 - #mbox-cells:
 	Usage: required
@@ -33,6 +34,12 @@ platforms.
 	Value type: <u32>
 	Definition: as described in clock.txt, must be 0
 
+- clock-names:
+	Usage: required if the platform data based clock driver needs to
+	retrieve the parent clock names from device tree.
+	This will requires two mandatory clocks to be defined.
+	Value type: <string-array>
+	Definition: must be "aux" and "pll"
 
 = EXAMPLE
 The following example describes the APCS HMSS found in MSM8996 and part of the
@@ -65,3 +72,14 @@ Below is another example of the APCS binding on MSM8916 platforms:
 		clocks = <&a53pll>;
 		#clock-cells = <0>;
 	};
+
+Below is another example of the APCS binding on QCS404 platforms:
+
+	apcs_glb: mailbox@b011000 {
+		compatible = "qcom,qcs404-apcs-apps-global", "syscon";
+		reg = <0x0b011000 0x1000>;
+		#mbox-cells = <1>;
+		clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
+		clock-names = "aux", "pll";
+		#clock-cells = <0>;
+	};
-- 
2.21.0

