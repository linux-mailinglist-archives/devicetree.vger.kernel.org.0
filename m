Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51C984EFB6E
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347811AbiDAUXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352304AbiDAUVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:21:15 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61F8273818
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:18:33 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id w4so5742195wrg.12
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cR+Z8RB2co35LM6ASUB3urTOV74O7Pl6BmQw6qrgeVA=;
        b=F+b//7ebZG6SCRHXjH3fcWFvI4evbQH6PJM/pT+w539r892GHo348TQMdaMRMfNJEU
         ycStsmkvKpGsMvZcKrnBmcEGzx2cx2ShdH0u0MmZZ4cjd+CnfevBIHmPI2Gzh4JP0+eC
         hqG8Ftc9sXwA0mU/otz7fizhDV52kkniz5Mi4XP8JM+3QrSmkr+Gs5Og0wKr3ZKms1kH
         PCKVOOJwToj3KMGhfgxkS8ArFAMUqo4X/INfy20Pg+zH8+0ct8PxPGtsbU9Y3HdrYpWz
         xqtJbQ5o5vwkhJr2wkLharTSxiNLPoDgdES9dOlXcR4ZvBmuz6pAULXYuKzwSy7KG6Hu
         isdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cR+Z8RB2co35LM6ASUB3urTOV74O7Pl6BmQw6qrgeVA=;
        b=M2b1q668ngH+jLFYJvP88H5zi8KRavqiGrgGCyQNgsNZ+jGE7p4n61eiPmB6ftDIgb
         dXPlTcmN/k360XmomcVDztKLgVgMu15tu9PJHih7AENiX97Okt4VV2l+AYgBEjaElCYY
         +cTeTE7QAPSzzTSotnEGNE0iMiz/jeIxM1joo534ITJnghVFId3Okae6S2ALiy8b0Who
         ofMHHBdbh2GKvC+QYnCcwaDORBLSti5EQGV7gFM/HcNQL3d9OUmYPZnMc1/IK2bCd7gv
         Izx3vk7Px+7lvYVT9Asb9h0q7/mPmczUNJi9ojs8HIG0QW7UaX+dwlOkkvWwZEuP1B5y
         L0kg==
X-Gm-Message-State: AOAM531fby0rTJnA2S1u6MNatLgDbMnewXB6KrRS2tUmRYgX/Udd8Vl9
        y0v2M4e6EBIEpOB1TJWth0uTdQ==
X-Google-Smtp-Source: ABdhPJx7aIKPQJg3dNNasF8MG7dM+sdSO97S/xOctU0CE2QNY6+zyb9ZXNyg4h8USL9vf6hITMWslA==
X-Received: by 2002:a05:6000:18a7:b0:204:1bc0:45a with SMTP id b7-20020a05600018a700b002041bc0045amr8815545wri.119.1648844312181;
        Fri, 01 Apr 2022 13:18:32 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 13:18:31 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 29/33] clk: rk3399: use proper crypto0 name
Date:   Fri,  1 Apr 2022 20:18:00 +0000
Message-Id: <20220401201804.2867154-30-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them, add a 0 to be consistent with the TRM and crypto1 entries.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.35.1

