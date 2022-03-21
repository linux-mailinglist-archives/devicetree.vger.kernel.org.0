Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45DC4E316F
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:10:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353108AbiCUUKU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:10:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353024AbiCUUJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:09:51 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462AA2DE7
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u16so21214752wru.4
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9ucjurjOvrnrrbawIJXLKDlqa8V8uccBbyHnKi4+U0E=;
        b=3wuPfy2RH+Ymxx/9SwcWmTDsnnJEKwy/r9XF6UO5MnE+O8LuVg6+0EzZnQfixXVAvP
         VkH9TpOf6SHabA+zBwjbo9v6wt2HrypvzA8FG1hHvBBUd/y0l6gmEINU6AFVQGXxI5En
         U5Ds7xy1uYkiUXBTx6dWcGWll13LPaVrTUjryrVyc76cpC20WVohsCJCxrKyYfnEFk7Q
         QrSW4FIDI1Zed5rtVxgw3TIdefmHnrJ3mgrjvzhNajq1rSgODe5zPj6NXxjVTZJ0mbFu
         nRTGEYf06+zIg+kq5vvn84dExn3QrgSxwZ866mnMpBAx5VPMjy9l57uWiwiGlGYRvui2
         W2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9ucjurjOvrnrrbawIJXLKDlqa8V8uccBbyHnKi4+U0E=;
        b=NyrmZ2YFsmIRIK8DStKwUhkA97g1DkS+AzrEDsYgLTw7XS/sOSWe8aH8GU2rTzEWmq
         85Q3U/aKhQuCtp/qi7zCnByYCXlx+GMs1HJ8mCUuZx/hGRTJgMPE2Bn5i4w9tXJtmqSY
         xUrqKp0UhbwCUfvRXcc5OkK7cz9ouurfOXqOlFCXGL6hBPA/uxPbknu1kLxS68WC8Hay
         OxHz1z/GwWh9G/JoAxoOtHEY8rLp57Z1U8I7NH7lTmPiY7ptYxfYHs9K+F4wLqv/XSx2
         KfnB7sS6G/nPz+CWpvjI+vPgkuX16+mNfbSVAelLvYbDDBCFtDjeXU9IwYI/kISzefnl
         sbyA==
X-Gm-Message-State: AOAM530tlS7P6jxV7Zsj5imtXJuc6bGSLhRqxhFzynfohyWZVQe585ja
        TL6Mz5voaBwyxQYQN92XD1HG8Q==
X-Google-Smtp-Source: ABdhPJyE/LR3AyjH3tqnMFFD+/rjJUMIzhATha74RVKWFJS8fgaKQKdvfFPfuNT01HSFlOARgkVZOw==
X-Received: by 2002:a5d:5255:0:b0:203:ec9c:6d5e with SMTP id k21-20020a5d5255000000b00203ec9c6d5emr17807215wrc.70.1647893282761;
        Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 17/26] clk: rk3399: use proper crypto0 name
Date:   Mon, 21 Mar 2022 20:07:30 +0000
Message-Id: <20220321200739.3572792-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
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

rk3399 has 2 crypto instance, reset for crypto1 is correctly named, but
crypto0 not.
Add a 0 to be consistent.

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
2.34.1

