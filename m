Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 860852D2FE7
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730335AbgLHQjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:39:10 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:44808 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730221AbgLHQjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:39:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607445491; x=1610037491;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=peBJ5rlhdQ4UyYpmf0QrsnqFjLZlxZzBwfHvZb1zVqQ=;
        b=fwrsqsiGkftH/q1TF8F7a+TSE9et8xAPPF1WA6oVCdnuIODlbLeHgkLZKSM7bGjL
        DQuAVE/wC0IIjGtM+loGSDQ95cQlyjbbWehAPu1Kwj+Mu5+tGTrdhoVcINTttU6+
        MBvaSVm4k7GrYtRHpeBmNS+LiqjckTy0422ZGN5IfQA=;
X-AuditID: c39127d2-981ff70000006435-ab-5fcfabf31b1e
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 3C.23.25653.3FBAFCF5; Tue,  8 Dec 2020 17:38:11 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120817381156-940641 ;
          Tue, 8 Dec 2020 17:38:11 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 2/4] arm64: defconfig: Enable PCA9532 support
Date:   Tue, 8 Dec 2020 17:38:09 +0100
Message-Id: <1607445491-208271-3-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:11,
        Serialize complete at 08.12.2020 17:38:11
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKLMWRmVeSWpSXmKPExsWyRoCBS/fz6vPxBvubjS3eL+thtJh/5Byr
        xcOr/hbnz29gt9j0+BqrReveI+wWf7dvYrF4sUXcgcNjzbw1jB47Z91l99i0qpPNY/OSeo/+
        vwYenzfJBbBFcdmkpOZklqUW6dslcGUs2vKYsWAua0Xv0ZPsDYyHWboYOTgkBEwkTu7K7mLk
        5BAS2MoosbWtuIuRC8g+xyix69wiNpAEm4CGxNMVp5lAbBEBF4nNE54xgRQxCzxilHg7YRkj
        SEJYwEGiY/VLdhCbRUBFYufqKcwgNq+As8TE5XdZQWwJATmJm+c6weKcQIN6rkPEhYBq/k05
        yAoyVEKgkUnixo+NzBANQhKnF59lnsDIt4CRYRWjUG5mcnZqUWa2XkFGZUlqsl5K6iZGYNAd
        nqh+aQdj3xyPQ4xMHIyHGCU4mJVEeNWkzsYL8aYkVlalFuXHF5XmpBYfYpTmYFES593AWxIm
        JJCeWJKanZpakFoEk2Xi4JRqYIyefnzTLc9TR4JCyr0yldljXaNlPmtGKuW2aLkp3jFIWX1N
        xzPg/FvDk2Upb27ySTTEt1Q8fbuIYYFi3bGe/bM6GWdd0esIa9p1UHWV2Yxn/bt/L1iTvib6
        7uWbwkZZk2vnq8389vhJzcwILtZ3Iq0Xo2O+zr8kbBwWX+2qKGfbP59rX5rXEiWW4oxEQy3m
        ouJEAMdQSO8oAgAA
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

