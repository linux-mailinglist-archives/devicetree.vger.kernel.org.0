Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C42741AD79
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 13:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240314AbhI1LCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 07:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240312AbhI1LCm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 07:02:42 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C38CEC061765
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 04:01:01 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id b26so33289699edt.0
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 04:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c86yOLM1Fw2NMoiFPEmcUQyywQO4Qv6x2yNfhyADXJ4=;
        b=zLra726wnkvkOSmf1X89RLppiIvWZFTEzrm1TBB/7qHh8ZCFilcAZe7rLX9r6yNG/1
         z3pNYlKvIO7vTvBR15T2Jp1b/ss3a5LknZxtyIVipKTc4x0Fxkv80ju1zEK2g/byCjru
         EwhLU7+he+QptHDbBNOLPndKFAS4Th8VXVtcaO/HHEKu5RuAfXqA4Yb++N4E3feaRSXq
         bXrL7Y7xv/gB4Tj1vVrBY4+MNHRQ6cZgaMHxxDs3NDVb4i4/sniPVpLNwdrQYWxAXrNl
         3Qt6c7ykv1SB2CCJvYmGFfe+xrEmO5tBjQ22sEtWepx+peMd0emEaFQzDDS2p3vMlg5v
         qgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c86yOLM1Fw2NMoiFPEmcUQyywQO4Qv6x2yNfhyADXJ4=;
        b=KsIv28MCjsSl3YGd9mESsuAoDXX7FNduCVaSH7jPvhcm3U65wdIHHPSLJPm9F6xfIO
         WmRAuKYQ5VdiIhYFM4tjSiI6qaR3KERVvbPj2mA/n4oKNDBIqvdqNQPpCl7qTfq86u7L
         hP76GRySym/nHzptwCSTpZNQWtmidwkrXUYjxc1zIf98ys2DDiexvKw0cAMDWJ8CGJWZ
         AmyzSQpQQVcpjl5qybKR9GpktWwibZE4zuu4Xxf9em1x4+Scmu09VNRurh5zfjuIzcXn
         dvpOtRa0GBK2x3owf8r3F/x+9trq5phtOrm9HsfRqzz+/fKj4UWBT4S1sqaEzTt6HHat
         81Uw==
X-Gm-Message-State: AOAM533mw77nNbQQen8uyMqjRpC41jW8TN+vSgVCJ7gKQSTMndFTN9dz
        f/UzssaYBrJ/z6bpO0zKwWIoCkBS21ROaA==
X-Google-Smtp-Source: ABdhPJwySr57vsQBPKRK5lXiAKgIvsUqRg+PrWV2pP5hdXUy2coElLgB+jCde/y/uQMdf9FwRTs2ag==
X-Received: by 2002:a17:906:3012:: with SMTP id 18mr6313135ejz.136.1632826860349;
        Tue, 28 Sep 2021 04:01:00 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id q6sm10000938ejm.106.2021.09.28.04.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 04:01:00 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] arm64: dts: marvell: puzzle-m801: update model name
Date:   Tue, 28 Sep 2021 13:00:53 +0200
Message-Id: <20210928110053.66715-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210928110053.66715-1-robert.marko@sartura.hr>
References: <20210928110053.66715-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the model name to match the vendor advertised one.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
index a6126e4c7fbd..24431ec6a0dc 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
@@ -3,7 +3,7 @@
  * Copyright (C) 2016 Marvell Technology Group Ltd.
  * Copyright (C) 2020 Sartura Ltd.
  *
- * Device Tree file for IEI Puzzle-M801
+ * Device Tree file for iEi Puzzle-M801
  */
 
 #include "armada-8040.dtsi"
@@ -12,7 +12,7 @@
 #include <dt-bindings/leds/common.h>
 
 / {
-	model = "IEI-Puzzle-M801";
+	model = "iEi Puzzle-M801";
 	compatible = "iei,puzzle-m801", "marvell,armada8040",
 		     "marvell,armada-ap806-quad", "marvell,armada-ap806";
 
-- 
2.31.1

