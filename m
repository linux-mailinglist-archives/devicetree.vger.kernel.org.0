Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABDCCA279A
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 22:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728214AbfH2UDs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 16:03:48 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36140 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbfH2UDr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 16:03:47 -0400
Received: by mail-wm1-f66.google.com with SMTP id p13so5086648wmh.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 13:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p680zAEryobKlt4lW3L6CDRlAanEpxTFkLsO4D5mjF0=;
        b=vSraP6xrw5G/N4zBQME8wvMKp2bSNx6/o6PF97n8Wb9WL6K8mrsLG5h96E7t1zyzo0
         uV8gLIzWQNCNLTZP72+mnB5U+B/dFXuz/iNHmdCx/f6SMZw/CdELkIfRw5zK2BOl9bsZ
         4UW7Ih7x0utEorDXwoOG5eXTafjn5xaJGH+bDPCHdpqGtFiQePDCIHMqNVvNT0pP1Zvy
         wL0kTgU3yyvt+gVOuy1O4sPwF+H/5Aycg6WUIw9VC0nwLVaflGZZ4LqAFU9R0mluJKl3
         qQ2T46wUnWu6C2qpSPyOQJakgsExPvFVcCKLxh93GN5Sty5PhnIY/2hmmLuDUkVS8zXb
         bHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p680zAEryobKlt4lW3L6CDRlAanEpxTFkLsO4D5mjF0=;
        b=oYXXxjGVBf0UTPFSNJ6RA/pDDm5XJNVhejG8ILvSe6+rQ586FsFwVuobxrbc5ocybF
         Rj4V3dhloX7v+bBsgOeNyYX2lTkRkQTd/BOonWPP4QcGiSLuu/biM+LfvgsQ6ZZvlKZZ
         aryZ6nO/XZHZx/mihOqusWQ0tup/QWV5I9Td+qpAJG8V7178FrZt0lYF+SyHamX1S0gr
         s0Tq4ei4JqLzLIYnLG/z6Ww+96adWlzqj4hYPiKp6qAbbIpGXSx7DqICQMymar4HbKY+
         8B7GZIRjkHZgs60tw9455a5rhFiod3JKTmvdXwPUvMDG96bLkzCb/Wu9Mt0SIIOERB7I
         PHbw==
X-Gm-Message-State: APjAAAXw7fPyxeTCAM+b3z70EIAd03dqJEEwsMxw6dot4v9tgzhd1ZEk
        UxXxMiHIun8Hi+TixfRYu1X95A==
X-Google-Smtp-Source: APXvYqxEwqKarTekylYsSy42tncYr3cgdA8AaeAKY+NPrXroOaDE+8nIBsqNnKY0aBgP4aku1hqwaA==
X-Received: by 2002:a1c:cb83:: with SMTP id b125mr6655160wmg.43.1567109025744;
        Thu, 29 Aug 2019 13:03:45 -0700 (PDT)
Received: from localhost.localdomain (124.red-83-36-179.dynamicip.rima-tde.net. [83.36.179.124])
        by smtp.gmail.com with ESMTPSA id w8sm15584995wmc.1.2019.08.29.13.03.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Aug 2019 13:03:45 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
        agross@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: qcs404: add the watchdog node
Date:   Thu, 29 Aug 2019 22:03:40 +0200
Message-Id: <20190829200340.15498-2-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829200340.15498-1-jorge.ramirez-ortiz@linaro.org>
References: <20190829200340.15498-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allows QCS404 based designs to enable watchdog support

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 131d8046d3be..17d4dd54c53a 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -875,6 +875,12 @@
 			#mbox-cells = <1>;
 		};
 
+		watchdog@b017000 {
+			compatible = "qcom,kpss-wdt";
+			reg = <0x0b017000 0x1000>;
+			clocks = <&sleep_clk>;
+		};
+
 		timer@b120000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.22.0

