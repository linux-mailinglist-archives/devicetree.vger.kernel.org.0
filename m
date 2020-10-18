Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E480291B3C
	for <lists+devicetree@lfdr.de>; Sun, 18 Oct 2020 21:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732497AbgJRTaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Oct 2020 15:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731584AbgJRTaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Oct 2020 15:30:21 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2013C061755
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 12:30:20 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s9so9009979wro.8
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 12:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OiO/CbYiErh+VMCoZF8e42eNV4rVIWemGcIMMY1+JXo=;
        b=NO4BBseFZMaLr8Ping9guGMNWZ1CDpYUAPxPRADAuwkhBTiCKXXny83bHqMUO4pWHp
         Cb7yex3BZ8LvGX/cOXX101giFa0IVT/1ZaVCjJelWjS/u1jDcxX96OZwmUfGTuj4feQ+
         eIRwxPqkGXyVHPScYlmqJYOGX8lkUD9NKIqKqnykzjy7guTsquwJgQqOE5GLVAXwjhnd
         aJazSik69uPmb5OZk2jvnmiJTVCB7PYCvUsUeXtaRSuG+H0ZHW7pEZKnKkLvIu4/fiWr
         QZc18ABP001JKDv1CDH5APJsH4sCP2NIkr38QBNYXXwQRpRgzocDlC3nwAgTliYvDrjy
         911A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OiO/CbYiErh+VMCoZF8e42eNV4rVIWemGcIMMY1+JXo=;
        b=K0j+inCUjYTwvxdovIFa3ujaYwNkYcn3GXiJq6Al55+TlH2i1vfuGN3O/4Z0JS0YDR
         JdmKQhif3t962VQBMDb+jqyIiRR2NxzyWaC5KcuKCMiCbyQMCLmgG3oMWAWI1YjLkhWA
         GbR7SE7oM7UQqLlXneLBrmERKFJ5y2NXPInfq2IcWUosB60GvAuQI4AzRsGshetQ0P0y
         yrbMaYWfGZbMfoygqoysz7JXEkWzrPPnJcmthWhc/SDdR+fwPezHwBIoz2QyElCLxJsw
         D3p6QHxEcYbduadTK9NSZLVIFXuVyWiQBHEdSMDNmQxecVYRbXwDrDbcqYrxzWoQrozy
         q0OQ==
X-Gm-Message-State: AOAM530CS5SnAevnfC/QQGz27MEps63uq3fhsTimlpWYMD/05bHt5dBG
        Aw9vDrZQrgDiUUpGzIoEoKvQSQ==
X-Google-Smtp-Source: ABdhPJxjk2lJO5ut9RfrL95tkil3NUyCvwqdq6rPg6tJq6126c2Etcp0yxa8XlIz5XjHq8J8lTbXqQ==
X-Received: by 2002:adf:e589:: with SMTP id l9mr15846465wrm.110.1603049419718;
        Sun, 18 Oct 2020 12:30:19 -0700 (PDT)
Received: from localhost.localdomain (124.171.185.81.rev.sfr.net. [81.185.171.124])
        by smtp.gmail.com with ESMTPSA id v8sm13571628wmb.20.2020.10.18.12.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:30:19 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dennis-yc.hsieh@mediatek.com, ck.hu@mediatek.com,
        bibby.hsieh@mediatek.com, jaswinder.singh@linaro.org,
        matthias.bgg@gmail.com, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH] dt-bindings: mailbox: mtk-gce: fix incorrect mbox-cells value
Date:   Sun, 18 Oct 2020 21:30:16 +0200
Message-Id: <20201018193016.3339045-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As the binding documentation says, #mbox-cells must have a value of 2,
but the example use a value 3. The MT8173 device tree correctly use
mbox-cells = <2>. This commit fixes the example.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index cf48cd806e00..7771ecaac586 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -47,7 +47,7 @@ Example:
 		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
 		clocks = <&infracfg CLK_INFRA_GCE>;
 		clock-names = "gce";
-		#mbox-cells = <3>;
+		#mbox-cells = <2>;
 	};
 
 Example for a client device:
-- 
2.28.0

