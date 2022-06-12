Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83B5B547BC1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234234AbiFLTaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234910AbiFLTaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:12 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFD342481
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:11 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id e9so3834322pju.5
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jYyuIzkRUZ/ETLXLEkF1edqBOnsRUFVhHuMnqcsR9Qs=;
        b=lXBMN4yL9tG8E5eDzs1gqAi/J40Rv2XEosqThocMSbyGQivFRAJWI45CbYoB4vMK8B
         iu5AyiXp8XGevTmk16J2ARicLVDg06Z86lWRLVNW8iRiMByjdVYyJeyJgQMlyh6GDaU7
         6vz42RzRueDjXxCwip7rHeyeQkvqpBv/SxfH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jYyuIzkRUZ/ETLXLEkF1edqBOnsRUFVhHuMnqcsR9Qs=;
        b=Q6LRVhx7JLzMgHCWfREg13K8ocLQZvgj9p3vu2XjRHjpoiYFwicPtIeR4qUsL870ej
         Apqvpl3w5V/u7zH0PuLyAeperRkGT84M4Z948QWPCd9DJyAdcz3v+udVC3M7IrA83iAr
         vt7O2OcIaq2TH0Fxd4CXof5V2Gaj9pUyaR5cGgLphdUtYiHhf77ez8ypyQvn2yQPCq3T
         iEeLVREnZFeYN8x67KVgr222ptWlIY13vCS1wF20mXeOdiFu438/2d1ojsl77vBC3KNo
         z2XAKiHARMUgGhUEnBNY7v1qz09cj9gRIzLETigBU6gsiQajYl1aFrijErm9rycbMkYz
         URhw==
X-Gm-Message-State: AOAM533yxxEh5gHFxqX7ADokpPq9cIG0Nemxohcx3/Njh2vjBrRw7KMw
        rz3/7mt13olUYq7pNVTxm48YFw==
X-Google-Smtp-Source: ABdhPJxmilQFpnr19n+NZ92iuTDCn8cjeBQBoehAKcO8xfKGUrEE+3EsZ2HApI2j4BOgzs4d/DUuMg==
X-Received: by 2002:a17:90b:287:b0:1e3:45c9:9a93 with SMTP id az7-20020a17090b028700b001e345c99a93mr11842774pjb.80.1655062210958;
        Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 03/12] dt-bindings: marvell,pxa168: add clock ids for additional dividers
Date:   Sun, 12 Jun 2022 12:29:28 -0700
Message-Id: <20220612192937.162952-4-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a few new clocks divided from PLL1 and CLK32 that are
potentially used by a few peripherals with muxed clocks.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 include/dt-bindings/clock/marvell,pxa168.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/clock/marvell,pxa168.h b/include/dt-bindings/clock/marvell,pxa168.h
index db2b41f1b127..8686bc7bf7b6 100644
--- a/include/dt-bindings/clock/marvell,pxa168.h
+++ b/include/dt-bindings/clock/marvell,pxa168.h
@@ -20,8 +20,11 @@
 #define PXA168_CLK_PLL1_2_1_5		19
 #define PXA168_CLK_PLL1_3_16		20
 #define PXA168_CLK_PLL1_192		21
+#define PXA168_CLK_PLL1_2_1_10		22
+#define PXA168_CLK_PLL1_2_3_16		23
 #define PXA168_CLK_UART_PLL		27
 #define PXA168_CLK_USB_PLL		28
+#define PXA168_CLK_CLK32_2		50
 
 /* apb peripherals */
 #define PXA168_CLK_TWSI0		60
-- 
2.25.1

