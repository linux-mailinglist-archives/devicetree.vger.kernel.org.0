Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80ADA2912BB
	for <lists+devicetree@lfdr.de>; Sat, 17 Oct 2020 17:39:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437848AbgJQPjD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Oct 2020 11:39:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437689AbgJQPjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Oct 2020 11:39:03 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C225EC061755
        for <devicetree@vger.kernel.org>; Sat, 17 Oct 2020 08:39:02 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id b8so6791672wrn.0
        for <devicetree@vger.kernel.org>; Sat, 17 Oct 2020 08:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S57koDeKUk9PDAYgtgQlZSy1LTrQ6sM1ZV8HODyjnuA=;
        b=V+07PWg7E3zcry2NI5Zrheb2Mam1kkLOYXJjko6l7ewkCpiSMFtjAMYK4i05qeUe+C
         n6Qi4SZ15TwwJHmm+V+QBYzoJb2cyQV3v3Q6Po4sW8dz3vLmfzros9JiQlFmIqCYYSyp
         hO69nJ+8GSt5elCZZMtUH1gqK9/lv0wGWQGDYuVygdPNABZEJQleNy0vpA9F3Jwc0/mS
         DBqo8fJ2QBn4uU/MqBHjrY36GuA5WJsXaaJC45RgfIdN1Liik3bI0goeN9Zv0PDSoPp8
         /PG9Vdyu6GV8OoBJyPtjFIeddef3oQbAYZqzgh89zXuikTma0a7CTiwawBsLPTTOFpjx
         39xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S57koDeKUk9PDAYgtgQlZSy1LTrQ6sM1ZV8HODyjnuA=;
        b=q8HS9GYw7mm22U/lqZKMSmtaNPMmGkJg9fmtqvaJiOHSCiUXLQWI1tLb970y4sHSJk
         xLzYTWUscTT+Vl1zYeUHOpttk9uOPFYWWqPXuZyXhQCyG2GdFdIZYOsBV7L1iJZlB2MB
         iYfcu0qR8c1FlZQd5Y4gNWm6h0LRUa/tQmgw/dkbhA8BlWgUXr8dl7Zj6ejqRYqhfDsW
         kPa+agHtdTDhQTW4JEZHiUUlSYWGZgMMbklq7i86rjGCJL7Lx4mUoCfofJWzyiiVl88E
         JArRr5DP5rWFsEHRWvwlEDJH9p1yfq5Fj6dckoy8beF7bpfRnSVJ2N6aW8IwwfstmkZ3
         P8Iw==
X-Gm-Message-State: AOAM532DB1KJrR+8kDeJ9KkO1py2lUgv0lsikXbMtVzEI4YEJRO9fSaB
        od28+/Sgc66trXNcFGF5xh048ebTvovT+w==
X-Google-Smtp-Source: ABdhPJxaLOFBPxlbBFHRog+7C5BOZDHcTEDwnCef2nkMVMHZV6tTMIEHAy9lHwGxGrVbgIdZBSUfjA==
X-Received: by 2002:adf:bbca:: with SMTP id z10mr11255586wrg.403.1602949141476;
        Sat, 17 Oct 2020 08:39:01 -0700 (PDT)
Received: from localhost.localdomain (159.171.185.81.rev.sfr.net. [81.185.171.159])
        by smtp.gmail.com with ESMTPSA id n66sm7654953wmb.35.2020.10.17.08.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 08:39:00 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, tglx@linutronix.de,
        daniel.lezcano@linaro.org, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: timer: mtk-timer: add optional 13m and bus clock
Date:   Sat, 17 Oct 2020 17:38:56 +0200
Message-Id: <20201017153857.2494845-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer IP on MT8516 requires two clocks to be enabled. Add both
clocks.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/timer/mediatek,mtk-timer.txt         | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt b/Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt
index 690a9c0966ac..3f9bfd246f19 100644
--- a/Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt
+++ b/Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt
@@ -29,6 +29,11 @@ Required properties:
 - reg: Should contain location and length for timer register.
 - clocks: Should contain system clock.
 
+Optional properties:
+- clock-names: May contain:
+	* "clk13m": 13MHz clock system clock
+	* "bus": Bus clock
+
 Examples:
 
 	timer@10008000 {
-- 
2.28.0

