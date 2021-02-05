Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC7643105BD
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:21:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231401AbhBEHUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:20:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231235AbhBEHUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:20:04 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDBC5C061793
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 23:18:44 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id w14so3759560pfi.2
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 23:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cThBBHhfisbdUPR0BkCKaJgx6RZfF0oevqoz0x7YcXQ=;
        b=gs7kBuH9Kl2Esc4hMGZparVZwOgugR9fMHaIj/vMqeARwLiB+DD6trkrhEWDltv91m
         LngB76WnruOTsnwJd6m8W6cZkeVEfhUjzNei/e4OA42Ap1JhPN4i3rnIx9sPrzENRo3a
         4bu9FswKSpiKzu6PoZ5Gj1wjQWMe9ruXQ99jI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cThBBHhfisbdUPR0BkCKaJgx6RZfF0oevqoz0x7YcXQ=;
        b=PsX83p6e7neuVmvhHptpcLL3Mv7LvmGJG5ebISjmwqj2C+9D945aqjXzKvATxcZ1sf
         IlAw8UHDM1O0dVhoxDylNJEgeXSWKwdGVjeGXYBZrRxIGsvhUIuw18+SH3wqrnsTrOb9
         I3SLWHWWvgPg9dzlcJ64UZJoEqldNzThs5ASu/Sp3XgjJVyDKcjUuOkZSIwg9nhc84St
         cfKdPOPGZ3iHBoeMW+sXdp1bhTSxN7kmsV4I1BvqupFoj2l6ZqklJ3401S7WGJJyrs+y
         gaeZnshg/B3K+ul/IGjhSrA81Yd/0Kvk+TJgsTI9cBPIy7p7SeBln8ff4XnL5Zgz2dOY
         ehtQ==
X-Gm-Message-State: AOAM533mDSSGSnivbc088aZQZCnL6cbgn30pxWllByEvLc3E+tsvMwwp
        2gUf4mvXAXz2fk6ral27UdLvHg==
X-Google-Smtp-Source: ABdhPJxVTkGhbC4mb8o4v/jbnmCm1Zn/84EZDxDHwP99CjSL5G3+3Z+E4oZSCPRdCA7E7eTYRJE58A==
X-Received: by 2002:a63:5d59:: with SMTP id o25mr2963041pgm.322.1612509524491;
        Thu, 04 Feb 2021 23:18:44 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ed70:6d43:9c6a:2e22])
        by smtp.gmail.com with ESMTPSA id oa10sm6292028pjb.45.2021.02.04.23.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 23:18:44 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] arm64: dts: mt8192: add gce node
Date:   Fri,  5 Feb 2021 15:18:32 +0800
Message-Id: <20210205071833.2707243-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210205071833.2707243-1-hsinyi@chromium.org>
References: <20210205071833.2707243-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

add gce node for mt8192

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index 9757138a8bbd8..1afa6ad06b2b8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -5,6 +5,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gce/mt8192-gce.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/mt8192-pinfunc.h>
@@ -291,6 +292,15 @@ systimer: timer@10017000 {
 			clock-names = "clk13m";
 		};
 
+		gce: mailbox@10228000 {
+			compatible = "mediatek,mt8192-gce";
+			reg = <0 0x10228000 0 0x4000>;
+			interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH 0>;
+			#mbox-cells = <3>;
+			clocks = <&infracfg CLK_INFRA_GCE>;
+			clock-names = "gce";
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8192-uart",
 				     "mediatek,mt6577-uart";
-- 
2.30.0.365.g02bc693789-goog

