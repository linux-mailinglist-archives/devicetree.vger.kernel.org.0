Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC425547BD3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234426AbiFLTbW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235017AbiFLTaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:17 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A973541FB9
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:16 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id x138so3996008pfc.12
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XzJfdd+eY1FSY3EJrVVoRPIZ/kYDSOHrX6FKhVLc53s=;
        b=lr76V+y1HQ4bnVgVbZvn/zasgsi+ANf1vQIMC65MXiW17OFAc+Bd5l8kp3Hb85SN3a
         EzPShNsKA0QMrrRD8WdcMiy9v3ukSsggsNrvV1jLVQkLopXj4ZWtzs/gjVujrsuUQyZt
         52/xbGGELYUWodqc3Hr0a+RaPrKsR34ZmeGIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XzJfdd+eY1FSY3EJrVVoRPIZ/kYDSOHrX6FKhVLc53s=;
        b=qBBAYJ1Pv/sI0BzzsQDtH/iuvNc287oJFAWd1QW3EvCqNiI0VwQ2CiksO4jwiyYxdt
         0m55X5iNxj1pWRtDswJoz4HguLK0Jp8C/1n4oTpUoF5smenZuJfnbIN6OXFGmWQfgrJx
         PvGPCSrB98r2UvZWKsaUMlOYuXUfrDQFyp4iHg8msKxGwULJaUPDI9ZDDsTnCm4ZfAVD
         K6kzdBsOdrGGbto8hwgtQynYErFlLufD+J3J669yn+sp3ctJiLwV1yuT0Q19gpByfSeO
         ZoZqGUZibeirzRq4PAzqV4SA79wri0YV1XYJ1i/G+K/OdXurGIF51tqRT2/n+oXv8qx/
         E9ow==
X-Gm-Message-State: AOAM533Cp6LiuOO8girOnr0n/VoDGigEU/IemTMO18+TtIvJ7UTgZ8HM
        dVvA5klRHapjy9n9nX1bEEt7Eg==
X-Google-Smtp-Source: ABdhPJwSjFGDVG1mKkZhlCON9X99EX+7DU6gXE8RsS4Cl6HfyMd5nseD1V5Nnb9+azZ1eilhddkReA==
X-Received: by 2002:a63:5424:0:b0:405:230e:3d9f with SMTP id i36-20020a635424000000b00405230e3d9fmr5983355pgb.271.1655062216321;
        Sun, 12 Jun 2022 12:30:16 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:16 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 11/12] dt-bindings: marvell,pxa168: add clock ids for SDH AXI clocks
Date:   Sun, 12 Jun 2022 12:29:36 -0700
Message-Id: <20220612192937.162952-12-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These are clocks shared by SDH0/1 and SDH2/3, respectively.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 include/dt-bindings/clock/marvell,pxa168.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/marvell,pxa168.h b/include/dt-bindings/clock/marvell,pxa168.h
index b1cd4f20d175..c92d969ae941 100644
--- a/include/dt-bindings/clock/marvell,pxa168.h
+++ b/include/dt-bindings/clock/marvell,pxa168.h
@@ -60,6 +60,8 @@
 #define PXA168_CLK_CCIC0_PHY		108
 #define PXA168_CLK_CCIC0_SPHY		109
 #define PXA168_CLK_SDH3			110
+#define PXA168_CLK_SDH01_AXI		111
+#define PXA168_CLK_SDH23_AXI		112
 
 #define PXA168_NR_CLKS			200
 #endif
-- 
2.25.1

