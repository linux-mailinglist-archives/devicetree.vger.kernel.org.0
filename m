Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF34E4E313C
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:10:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352938AbiCUUKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:10:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353026AbiCUUKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:10:20 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E4C218615B
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:11 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id q8so10859848wrc.0
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BLjOQyn7vWMkEPL3YYfpuMi7xJgnIr5nJYm6Y0L1/14=;
        b=jKZtZBoF+9D29LJdTrP/WOpH/cL6jYaJC9M0oJuNgOyTdPr1TJAPI1W2pBoz9Layd9
         7uSO+zDYiRBUX0UM8LbbsPxXW91fIBcgIqvMT8eaf1xa2hWGc3CNRNq4CXuQ1Y6eu9eJ
         6hqRRER8yr1rBhBksWX42igHEepCKJnCHaDZbl1Kp7FdNrkS4eBZohJS+YpYLOFo5z/p
         yrr3hOdZpAuRTTFF0I7rHrh+pqKRW7GmLAGgTcNBz/DiHtFUsoM0WMfltE7owv7QMGxZ
         jG9wL+y2FdunXMckttPckesTN2HvpfXNg9vM2yI26FsFxEqFPrWGb4NI9t1tVdn4jlPD
         oHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BLjOQyn7vWMkEPL3YYfpuMi7xJgnIr5nJYm6Y0L1/14=;
        b=nJ71DpCBTECddOF1N1FlmRYqlHdpD/2vnfrN+9tOQWj/3Et8WwZjDdpA0RyoUkozCs
         Sk+FsCKu0vJQ7L8zwruoi83Cny59f7/cy2p9WqqqP82VlW2yavbgPtBDL9T12xS+UN/e
         Sx+EORI02o19+kDWVpy7Y7mVGWmTr72+XIfFewVk2L/Gz+LyrGp034sUZjHIPS8L6BUk
         HhVso3zxFHAh5cCD/lImWKbAngvDw/lvmqljsrntdU9WhYkISM2Pb8FicytEaj/p8u+7
         pEpXsPZhS8FxDIaH0/xw2nNmV9bLt0lUn3FMJVCAIp/NazIOcXgtK9yxMYemgnFXy64x
         VwjQ==
X-Gm-Message-State: AOAM531OrAGM3olvYfMLlCGIW9HOE4cxei0uxSsc8AI6xpcc9jxzioZ2
        9G2fxdJ96ezzB7gkBNFG1R8RcQ==
X-Google-Smtp-Source: ABdhPJw+15wozTaGAkfF7E2x/BPx9ctqPg1cM7rmgS855iWGEC3nUElEC3OQjcdUVIZxkSJwNtjFmw==
X-Received: by 2002:a5d:59a1:0:b0:204:1777:fc08 with SMTP id p1-20020a5d59a1000000b002041777fc08mr3924749wrr.545.1647893289973;
        Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 26/26] crypto: rockchip: use read_poll_timeout
Date:   Mon, 21 Mar 2022 20:07:39 +0000
Message-Id: <20220321200739.3572792-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use read_poll_timeout instead of open coding it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 1d20f58275f0..0ea47f50607e 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -9,6 +9,7 @@
  * Some ideas are from marvell/cesa.c and s5p-sss.c driver.
  */
 #include <linux/device.h>
+#include <linux/iopoll.h>
 #include <asm/unaligned.h>
 #include "rk3288_crypto.h"
 
@@ -314,8 +315,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		 * efficiency, and make it response quickly when dma
 		 * complete.
 		 */
-	while (!readl(reg + RK_CRYPTO_HASH_STS))
-		udelay(10);
+	read_poll_timeout(readl, v, v == 0, 10, 1000, false, reg + RK_CRYPTO_HASH_STS);
 
 	for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++) {
 		v = readl(reg + RK_CRYPTO_HASH_DOUT_0 + i * 4);
-- 
2.34.1

