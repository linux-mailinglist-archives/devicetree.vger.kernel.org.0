Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC0252ECC71
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726906AbhAGJMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:12:55 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60292 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726703AbhAGJMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:12:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610010732; x=1612602732;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=NpR9U2FP2pYYSigV7ooCxYb76p5i3+LRTq87mpv1V1Y=;
        b=pMbha+b0YvBmf/1TyHjk+XmJxEb8gqu/zlZQvcl808zCiMaUw0UOJ2FEyemyxAuC
        p9ilx/ZjxdMif6iIEq+XLVz3T0JM9a7hrzSqvHnPiEuhWWwdE9CbDkWUXdqAGWHf
        FxEPMjkbaIqlj+/VINayTQJpPNF21+vl93W4CMfLX5Y=;
X-AuditID: c39127d2-0d3b770000001c86-0e-5ff6d06cf0d0
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id F7.B1.07302.C60D6FF5; Thu,  7 Jan 2021 10:12:12 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021010710121225-64471 ;
          Thu, 7 Jan 2021 10:12:12 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v4 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Date:   Thu, 7 Jan 2021 10:12:08 +0100
Message-Id: <1610010731-44779-2-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
References: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize complete at 07.01.2021 10:12:12
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHLMWRmVeSWpSXmKPExsWyRoCBSzfnwrd4g60T1Cz6DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfG323/WAv2sFbsvb2FuYHxAUsXIyeH
        hICJxPfbn5m7GLk4hAS2Mkpcub+cBcI5yyixZsF9RpAqNgENiacrTjOB2CICLhKbJzxjAili
        Fmhhkrg5fzEbSEJYwE1iz61TYEUsAioS33ctBmrm4OAVcJK4eU8YYpucxM1zncwgYU4BZ4lV
        XypAwkJAFQduXmYHGSkh0Mgkcf3yXzaIeiGJ04vPMk9g5FvAyLCKUSg3Mzk7tSgzW68go7Ik
        NVkvJXUTIzAMD09Uv7SDsW+OxyFGJg7GQ4wSHMxKIrwWx77EC/GmJFZWpRblxxeV5qQWH2KU
        5mBREufdwFsSJiSQnliSmp2aWpBaBJNl4uCUamAMfe/bf/f9XVn3bdL+N+LF1/1+wn32ZezW
        7vhed/EFFy8bHp37ztCSx+3EXfU3T9dYrn306Ve9dH7EUdFQxb0HTCa8YVeWVX7anDjdWGlN
        ppjkb/Htju2meq/PbPGX2X3OWcgrupL3XGPfN/cYg2sPC91t61/udp8r+36zV3h6Q+TE6xL/
        P6xQYinOSDTUYi4qTgQAnptNtDECAAA=
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
index 838301650a79..2fc0a3bd40be 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -846,6 +846,7 @@ CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
 CONFIG_RTC_DRV_RX8581=m
+CONFIG_RTC_DRV_RV3028=m
 CONFIG_RTC_DRV_RV8803=m
 CONFIG_RTC_DRV_S5M=y
 CONFIG_RTC_DRV_DS3232=y
-- 
2.7.4

