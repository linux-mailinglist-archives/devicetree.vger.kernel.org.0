Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1CB16EF6
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 04:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726752AbfEHCU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 22:20:26 -0400
Received: from mail-yw1-f67.google.com ([209.85.161.67]:42634 "EHLO
        mail-yw1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726749AbfEHCU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 22:20:26 -0400
Received: by mail-yw1-f67.google.com with SMTP id s5so8427014ywd.9
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 19:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AG3FqXHLs4/OFGe9lSxLhNOZ2EEYR0vwOTMhYn26hGo=;
        b=P/eBgw2AZxiQULSdHa/cTRJXa0hypgcD0Sg7WsC+8N1aAaZkkB5Zf79CxpulQW2L66
         H0y4n5HkqbK6Cj22lHTSc63ASar/nQT6Q1d4VsJStFQXUVb7ORvlTSEziogYg5vkwq/A
         5OJJm23AUom2BG0qsfj4piAmSEQdDXTH5p+W7+pajHJkcsKPTnvtVZM2Qx+knKNMKJyW
         T5spVxIbcgr94pyej+So1AJYp9vmsjJeaIZBU24g+hYruPyYwJteP6z5DeSDJfG62s6H
         5AUslmpr6EiXAYrvyjFIpfYXMIwWafgJ5ufqz5eo6/zYDLk8t/3HoQYwi8ahi2+jYzs/
         ca/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AG3FqXHLs4/OFGe9lSxLhNOZ2EEYR0vwOTMhYn26hGo=;
        b=nsgpDJAc9o9sMFXzRS6kePoAVwzo2/DJ1GJk+uE91ypz8HG9urL+eeeh5Xh6DQsEUU
         YtfTRlZmR2QMkx01FI0l9jji2WovsYpa+kXgY4GathOlepKomw0WiCquhAb8zMavpLxg
         Xx8IxDzMErphzeYot7FtVJAIL3CcDjyLG4IPkDvmFcprEXfsaHFdS/urtlbElHqvsxiT
         rs4z8lgi5w6ahKrN908G76df7xW6AMJXulSkUYXNrqLU3wIk1S+Ct2lgzm9jEzp7cmN4
         eqlctH2gCFkF10fiPR1Kwpm+mWf+7ST+JhMp2QRKGycR+SioIMTAOHwTHPZvHodQa/d/
         NRUQ==
X-Gm-Message-State: APjAAAUD/wpEzvkHjUFywrt+r5W/B3nsj1iXWKh9mQp3uMY2m1zyC0OA
        BTdEFH/YGg6afr9tq15s7iKkgg==
X-Google-Smtp-Source: APXvYqw0FKw200XiMULFd5Py9JxtXGaMTZc+CwuyFGd8KR6CqMPQe9hjhCvI5Ix31kUBUi/8D01W3w==
X-Received: by 2002:a81:a414:: with SMTP id b20mr25269935ywh.278.1557282025269;
        Tue, 07 May 2019 19:20:25 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com. [45.56.113.65])
        by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 19:20:24 -0700 (PDT)
From:   Leo Yan <leo.yan@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 06/11] ARM: dts: qcom-msm8974: Update coresight DT bindings
Date:   Wed,  8 May 2019 10:18:57 +0800
Message-Id: <20190508021902.10358-7-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel,
so can dismiss warning during initialisation.

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 45b5c8ef0374..272ebea20a5f 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -897,7 +897,7 @@
 		};
 
 		funnel@fc31b000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31b000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -931,7 +931,7 @@
 		};
 
 		funnel@fc31a000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31a000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -969,7 +969,7 @@
 		};
 
 		funnel@fc345000 { /* KPSS funnel only 4 inputs are used */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc345000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-- 
2.17.1

