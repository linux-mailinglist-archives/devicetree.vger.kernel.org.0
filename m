Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6B1A2D76EE
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 14:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391453AbgLKNuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 08:50:03 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:46182 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405746AbgLKNtx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 08:49:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607694535; x=1610286535;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=peBJ5rlhdQ4UyYpmf0QrsnqFjLZlxZzBwfHvZb1zVqQ=;
        b=TC1n5Hu36Obo4xpXZkd8fhxVOu22csmvHe1V6xtS78wuY1NE22VVKCtYTwd7lD1I
        wYPpXE9gsiG+xSxyuS+9Xc3pX4xkC3XTKZzlD1h7jVGJ2YyFQ2PmNFulykJpr50l
        udSaQotbPOipHHRQNNeFTc9QQ31y9Knj6NjR+Iy+7Co=;
X-AuditID: c39127d2-96bff70000006435-21-5fd378c77ed5
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 0C.F7.25653.7C873DF5; Fri, 11 Dec 2020 14:48:55 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020121114485563-962994 ;
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
Subject: [PATCH v3 2/4] arm64: defconfig: Enable PCA9532 support
Date:   Fri, 11 Dec 2020 14:48:53 +0100
Message-Id: <1607694535-417799-3-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
References: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:55,
        Serialize complete at 11.12.2020 14:48:55
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWyRoCBS/d4xeV4g///LCz6DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfGoi2PGQvmslb0Hj3J3sB4mKWLkZND
        QsBE4tvlGYxdjFwcQgJbGSXm75rPBuGcZ5R42bwerIpNQEPi6YrTTCC2iICLxOYJz5hAipgF
        Wpgkbs5fzAaSEBZwkFh5YR9YEYuAqsTqTY3MIDavgLPE8UvbmSHWyUncPNcJZnMCDVp3agI7
        iC0EVLPh3guwzRICjUwSa2fMZoJoEJI4vfgs8wRGvgWMDKsYhXIzk7NTizKz9QoyKktSk/VS
        UjcxAkPx8ET1SzsY++Z4HGJk4mA8xCjBwawkwivLcileiDclsbIqtSg/vqg0J7X4EKM0B4uS
        OO8G3pIwIYH0xJLU7NTUgtQimCwTB6dUA+Mq9bduCspqt/qZ8s9LHGv8zSAoYblWRO63hdsz
        v+s6c7/1N7dP/lnnNUnz2ppg140VKlVMUr53XJNFLc+q6Rco1DIzazSGvDYuNouNO+s79eL0
        ueILVxQulp5xVPBjRItk7tVr6kXpD3mU1511Ei3nL3vULzLXvujh8/v333/bO3u1eOPdcCWW
        4oxEQy3mouJEAMKMXaMzAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable i2c led expander PCA9532 module support populated on
phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 38754c164348..560b0b256c60 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -801,6 +801,7 @@ CONFIG_MMC_SDHCI_AM654=y
 CONFIG_MMC_OWL=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_PCA9532=m
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_SYSCON=y
-- 
2.7.4

