Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEE382D76EC
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 14:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391239AbgLKNuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 08:50:02 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:46204 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391453AbgLKNti (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 08:49:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607694535; x=1610286535;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=tQfRZXSeTJTWrKUXCgbY//2gL05EXfgKX80OgU6mTG8=;
        b=nqB9LO9u5uQFRkjXBEWqooOCjLsSaZJpOMDQmzeujMTOYLGnCpZrG80aclnrley9
        RgbS954zNEyRtJhicK+AdzJ+3bAVUxOsa8YN2EbR1E+1LO2V62Zx4IqIP6k5Qf/h
        6jwAQ+6BJVTKzL8H/MZ5RdxYKfjKpwlhZJQIvl4vfqo=;
X-AuditID: c39127d2-981ff70000006435-20-5fd378c75991
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 6B.F7.25653.7C873DF5; Fri, 11 Dec 2020 14:48:55 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020121114485539-962993 ;
          Fri, 11 Dec 2020 14:48:55 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v3 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Date:   Fri, 11 Dec 2020 14:48:52 +0100
Message-Id: <1607694535-417799-2-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
References: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize complete at 11.12.2020 14:48:55
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLLMWRmVeSWpSXmKPExsWyRoCBS/d4xeV4g1sntS36DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfGvsN1BXtYK2a8amZpYHzA0sXIwSEh
        YCLxe71OFyMXh5DAVkaJHzcbWLsYOYGc84wSGzfwgdhsAhoST1ecZgKxRQRcJDZPeMYE0sAs
        0MIkcXP+YjaQhLCAm8T/rtNgzSwCqhIvJs4Gi/MKOEvsmLaPEcSWEJCTuHmukxnE5gQatO7U
        BHaIZc4SG+69YAMZKiHQyCSxdsZsJogGIYnTi88yT2DkW8DIsIpRKDczOTu1KDNbryCjsiQ1
        WS8ldRMjMAgPT1S/tIOxb47HIUYmDsZDjBIczEoivLIsl+KFeFMSK6tSi/Lji0pzUosPMUpz
        sCiJ827gLQkTEkhPLEnNTk0tSC2CyTJxcEo1MO6N9E1KXvdb4IaZ4dKrFcw6/155V8fbt2Xu
        MNi7sagkqV/g3aYSsV7VUobigO07Y3OnT3uwRzZ9f5DpVmmxXYWG88XWHYmzctz5K7rDfdcO
        s7AERfYN5+5nxnFVHgj2ecuYxzmfmWXVpldmFvViv3cHfO2S/jt3uor5p5XctVssP01PnyH7
        VImlOCPRUIu5qDgRAPj7ZGcwAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable rv3028 i2c rtc driver as module. It is populated on
phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5cfe3cf6f2ac..38754c164348 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
 CONFIG_RTC_DRV_RX8581=m
+CONFIG_RTC_DRV_RV3028=m
 CONFIG_RTC_DRV_RV8803=m
 CONFIG_RTC_DRV_S5M=y
 CONFIG_RTC_DRV_DS3232=y
-- 
2.7.4

