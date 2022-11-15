Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AAA9629016
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:54:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232573AbiKOCye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:54:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbiKOCyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:33 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BA9614084
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:32 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id m22so32850689eji.10
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nGhqsrWtoUF+r+GxLNoynNg4eDvQCpkc+w7aehIlpC4=;
        b=0fnevSKGjjGBJ3qbrdksjgiYMOJ3TZ9mwSy9dgBW8RpN0R1fMpj3d3LvtCpPo+dT/M
         TRKH398GUIeoh6cTSPkjGC8fNmj3ikK2PAJFq/aidDLRdxdkPzN45u3dqJPzjVFoeX1P
         Bw1uaV7V0z5IgFK6pTBKIskT9BVV4FffxU5LujTHYbDfOoMx+Gnl1/yymNFfKL6DOEnG
         ccTKP2HKw+YY34CJRizi4uWzX9C/OTot9znJNJzsexUWG5aPqVq6lvikeUQb30Bv1nUi
         G0yuCaHx6MRPnFC0i7t3bSj3+fuymxfpT/rTrIS1yQ39adSQFpUAgjCFP4B28T8AYmS5
         /hQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nGhqsrWtoUF+r+GxLNoynNg4eDvQCpkc+w7aehIlpC4=;
        b=Nv5fk4CzoPYPooAf4N/JEGAsbztNHOgtYlkrsg23BmIb5kcWeBXlUr5sZBFYmCuyk1
         qcDqOHGJYN7mM7Wpaq/gg7IXbTkQUrEQhJJYTT3J2Xlz2wE7hHghPiReTP0U3ey9yUjU
         gifVucd6SWiKJhmWVQIulqzH74QopEBmcINrJlVRKfeGIM8gO9AkkiGyrPnV1QHq/8vx
         HvaSr0FC7NQUAyB4zCDwKmxDy5cfhFmaNhC6fQiOuj0EjXfYRTcW2trtP7bWa5TDNFEZ
         toEto9PS3fkhDS7ST9zEpvqO5IEWHbRe0X02EW7ED0luoTQA4U/8u5Poqcn5ce83CLak
         xhLQ==
X-Gm-Message-State: ANoB5pndl3dkhxzxJXeQtD66d5DIcMpdrAcxOSwyc9GU7nvmWF4jhL81
        5l5Wwpn2uEs46hkIc5oLsFPQVh4LNaZlp2tl
X-Google-Smtp-Source: AA0mqf4KVfJZu9eu7sw3r5DjXqih8y43qnoBLcb0u+Dfac8Lwz6kDXTrdEyMBKtSP4hPXr0qif6+sg==
X-Received: by 2002:a17:907:2350:b0:78d:9c2f:bf78 with SMTP id we16-20020a170907235000b0078d9c2fbf78mr12175149ejb.594.1668480870745;
        Mon, 14 Nov 2022 18:54:30 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:30 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 02/15] dt-bindings: watchdog: mtk-wdt: Add MT8365 SoC bindings
Date:   Tue, 15 Nov 2022 03:54:08 +0100
Message-Id: <20221115025421.59847-3-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index 762c62e428ef2..835af28b46de0 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -20,6 +20,7 @@ Required properties:
 	"mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
 	"mediatek,mt8192-wdt": for MT8192
 	"mediatek,mt8195-wdt", "mediatek,mt6589-wdt": for MT8195
+	"mediatek,mt8365-wdt", "mediatek,mt6589-wdt": for MT8365
 
 - reg : Specifies base physical address and size of the registers.
 
-- 
2.38.1

