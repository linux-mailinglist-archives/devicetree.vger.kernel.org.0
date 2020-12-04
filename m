Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C93242CF5D6
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 21:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730332AbgLDUtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 15:49:45 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:56224 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730241AbgLDUtm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 15:49:42 -0500
X-Greylist: delayed 941 seconds by postgrey-1.27 at vger.kernel.org; Fri, 04 Dec 2020 15:49:25 EST
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607113983; x=1609705983;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=c5KOTTMHIHJYediZAqawgmWmdRhYpqG2gVgOgM7+P+g=;
        b=EG7XJYMxa7wnjI46AesWZf05oSssGeeefGw24bB6hMi2m7746/w7szFDYQYWccon
        hq4298LcYJAK+ZXPAVsf8FHr30xFnDG+UnMfM9DqDdPOLyjyi1MLfMIcn7U3HLNJ
        HZdm86xiIFks+8/twMh6oDQw2Q8RnCe9IRT0b63FiKs=;
X-AuditID: c39127d2-981ff70000006435-71-5fca9cff8978
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 63.74.25653.FFC9ACF5; Fri,  4 Dec 2020 21:33:03 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120421330292-920466 ;
          Fri, 4 Dec 2020 21:33:02 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Date:   Fri, 4 Dec 2020 21:32:59 +0100
Message-Id: <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize complete at 04.12.2020 21:33:03
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprELMWRmVeSWpSXmKPExsWyRoCBS/f/nFPxBjPeclu8X9bDaDH/yDlW
        i4dX/S02Pb7GatG69wi7xd/tm1gsXmwRd2D3WDNvDaPHzll32T02repk89i8pN6j/6+Bx+dN
        cgFsUVw2Kak5mWWpRfp2CVwZ0yb/YSn4xlKxbM4m5gbGJSxdjJwcEgImEj+6JzN2MXJxCAls
        ZZR49HIhC4RzjlHixtLvbCBVbAIaEk9XnGYCsUUEXCQ6H6wDK2IW2M0osefzOlaQhLCAs8T+
        BU/BilgEVCT2Xj3BDGLzAsVv7pvNDLFOTuLmuU4wmxNo0PF73xhBbCGgmv+rv4MNlRBoZJI4
        sWkvG0SDkMTpxWeZJzDyLWBkWMUolJuZnJ1alJmtV5BRWZKarJeSuokRGG6HJ6pf2sHYN8fj
        ECMTB+MhRgkOZiUR3ljVk/FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeTfwloQJCaQnlqRmp6YW
        pBbBZJk4OKUaGHuDvyc6Xv4kkvBu0S03XluFHRayfM55Mm/vqTJq7jos8KIgo22/6c/AKyLq
        xarrVzyL2S595Gnp7CuLNi1KbOLZY7bwWVcDz32B5P1WchxvJ1T+fHbeViggNnTChCKJma6s
        kTvknkkmZgsq3zIIWj3NKXrjowrme/bH/599ufvdgpPbpZutpyqxFGckGmoxFxUnAgBI5kp+
        JQIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable rv3028 i2c rtc driver populated on phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5cfe3cf6f2ac..2034fefb3f44 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
 CONFIG_RTC_DRV_RX8581=m
+CONFIG_RTC_DRV_RV3028=y
 CONFIG_RTC_DRV_RV8803=m
 CONFIG_RTC_DRV_S5M=y
 CONFIG_RTC_DRV_DS3232=y
-- 
2.7.4

