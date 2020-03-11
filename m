Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5B5918181D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 13:35:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729446AbgCKMfR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 08:35:17 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:33669 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729424AbgCKMfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Mar 2020 08:35:14 -0400
Received: by mail-wm1-f65.google.com with SMTP id r7so3077673wmg.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 05:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0S8YiKSlFY8C2wfSnfYCKEk3w9krt/5PEihft8xMBGs=;
        b=iLwUXOrjXX1JgooKK4C1Ej7aG++N6vBTyANbdSesx4J5LANkA4rttAdfoN3Cl9OWKN
         MK8FbGS80ejPexHaTTEhYRZed+ckS3C6aTIXTWQoEcjAesHoSKfGdtfNIVffBZmNij0t
         +c2hNFirdEnegtp+oJcHVUXtcCiOFQ1TIXBLoKbywdKv2X4tr3zE+Jm0Jr6KfhgZ9Hdn
         FQwJX8RDzIZLP0muodqY9eAC77ehypRz/hCnqognQa2LPPREWDxA1l8jr+KkOTWZORaS
         +0M7U1ItFDSyfQdvkdvSylEi4p8LuqqNHh2RTBb26xVVV85ZQnPO8I3Gec63XEFl93md
         8W1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0S8YiKSlFY8C2wfSnfYCKEk3w9krt/5PEihft8xMBGs=;
        b=NAziR5Eeykog2PwxiV+shP6rM9R9cTdt026gOW2XyL0/62DKUQEVlMaSYnQ+Ucyx0L
         PWh/adwwlHKRlH6T/WWkK3v9BKLuaQjBWDllpmZqpEWh3iijHqrtDt7sgdEQJNjtmrVq
         mKu5pEJ5ASdSe493vh1zcVnqtopRTpgQtWj/attheplsP21BA+xHN8r2i8EhGLC3vA73
         sRMMc72U0YLwUkeNPQISQ6VkrFrPtO366HZjEc5VXaV2Da5zPWzxppTz3+TSHNsv5S0W
         dOo7P692aR3FMzPVRKdzd/skzrAVECSkydLEI4sEcrs++awoTpR58nVXpeF+EgZnV1uh
         tIiw==
X-Gm-Message-State: ANhLgQ0qC6ApjRLujN6Rr6SZ/SZs8CCus56wdUwxPRPvIeGQarzyfl/0
        1tYa7EanG4ksanuFSrSW421Q0g==
X-Google-Smtp-Source: ADFU+vtnJUfH6dtY/lJKtuEbOdGr7AEex8lhT/SZQ0KZ7Kab7Njaq1yaVX/R+8xktDk/P5+P/+x86w==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr3670765wml.60.1583930111399;
        Wed, 11 Mar 2020 05:35:11 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
        by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 05:35:10 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
        maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
        marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Loic Poulain <loic.poulain@linaro.org>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [v1 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Date:   Wed, 11 Mar 2020 13:34:59 +0100
Message-Id: <20200311123501.18202-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pm_8998 GPIO trace names. These names are defined in
the 96boards db845c mezzanine schematic.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index a6b6837c3d68..e8c056d02ace 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -584,6 +584,36 @@
 	};
 };
 
+&pm8998_gpio {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"WLAN_SW_CTRL",
+		"NC",
+		"PM_GPIO5_BLUE_BT_LED",
+		"VOL_UP_N",
+		"NC",
+		"ADC_IN1",
+		"PM_GPIO9_YEL_WIFI_LED",
+		"CAM0_AVDD_EN",
+		"NC",
+		"CAM0_DVDD_EN",
+		"PM_GPIO13_GREEN_U4_LED",
+		"DIV_CLK2",
+		"NC",
+		"NC",
+		"NC",
+		"SMB_STAT",
+		"NC",
+		"NC",
+		"ADC_IN2",
+		"OPTION1",
+		"WCSS_PWR_REQ",
+		"PM845_GPIO24",
+		"OPTION2",
+		"PM845_SLB";
+};
+
 &cci {
 	status = "ok";
 };
-- 
2.20.1

