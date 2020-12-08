Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE56E2D2FE4
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730234AbgLHQiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:38:54 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:44826 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726810AbgLHQix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:38:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607445491; x=1610037491;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=RGoL3jOomOiwQF8ZNN7gQ8f4HqQ9fhEP6y44rRaapqc=;
        b=DrpmshfWV6yzpRDNTFmJBdlk8R9M0UNoUWcALKEp0yaG0IQS7Yj1zXtLXKx/vZNE
        brtXZBAYMXXXTlny3C2gYm0G7+lVo7BQ6p+TFiv45r597bS84nyTJC3wGGeffE8V
        jHnDLIMv/PSx6Ce+ifPQvZMuLey7YlSIB5iuLTPBvXs=;
X-AuditID: c39127d2-96bff70000006435-aa-5fcfabf3c04f
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AB.23.25653.3FBAFCF5; Tue,  8 Dec 2020 17:38:11 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120817381131-940639 ;
          Tue, 8 Dec 2020 17:38:11 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Date:   Tue, 8 Dec 2020 17:38:08 +0100
Message-Id: <1607445491-208271-2-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize complete at 08.12.2020 17:38:11
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGLMWRmVeSWpSXmKPExsWyRoCBS/fz6vPxBmf2qlm8X9bDaDH/yDlW
        i4dX/S3On9/AbrHp8TVWi9a9R9gt/m7fxGLxYou4A4fHmnlrGD12zrrL7rFpVSebx+Yl9R79
        fw08Pm+SC2CL4rJJSc3JLEst0rdL4Mro2X2BraCDteLj7BXMDYwbWboYOTkkBEwk/rS9Z+ti
        5OIQEtjKKPHqzgYmCOcco8T+yw1MIFVsAhoST1ecBrNFBFwkNk94BlbELPCIUeLthGWMXYwc
        HMICbhILj5uB1LAIqEjs77nOBmLzCjhLfN19hhlim5zEzXOdYDYn0Jye63dZQWwhoJp/Uw6y
        gsyUEGhkkrjxYyNUg5DE6cVnmScw8i1gZFjFKJSbmZydWpSZrVeQUVmSmqyXkrqJERh2hyeq
        X9rB2DfH4xAjEwfjIUYJDmYlEV41qbPxQrwpiZVVqUX58UWlOanFhxilOViUxHk38JaECQmk
        J5akZqemFqQWwWSZODilGhijzjz4XNBzlPWN/8sXq9afLvrPJO84PS1CfbOTvYjTiV1Nddyz
        9tXd8Exp9Jh9Zfb5g3M/lbYHsio3ZCxMiv6UxLd16weZbXvDs/4tuP++rN9vonK/8nfhIy62
        N5nuyrHW3dO8llHJuPbcyrD4pavMX9fUnhO7KKyuci9sef+D49OSDrVz5KUosRRnJBpqMRcV
        JwIA1HYhgSkCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable rv3028 i2c rtc driver as module. It is populated on
phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
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

