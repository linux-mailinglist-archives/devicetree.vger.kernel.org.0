Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 510365A97C4
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 15:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234100AbiIAM66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 08:58:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233852AbiIAM6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 08:58:22 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F45A1DA6F
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 05:57:38 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id c131-20020a1c3589000000b003a84b160addso614591wma.2
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 05:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=gPuilAw3In4sLBTLM/O3vTLJNCLuJQ5jb5eL8ZFv5Iod4QUNem/h1qDSlfrvHCZAH8
         StWFIZtraRSdayz/b8z2Uk255VLarodlWjpxmNQO3x55mRbO6oST1UZ+d/20MkU+phu/
         VaB0M32Q3mv6CrBMLUK+O8MXHkK99vMTSVvNAiCTQ1NSBEaHo2MC/jSe/LyzsaMI4gm4
         W/iQ5YkVSsD+xWGiyvqvVDvSGdeSKISF5mhc1CVLVYFGa8x0vE2b6dBFZXGAU90miEP6
         tebB/BELlN5r4d6nYxD2kXK7h9wPZr15bO+/9wajk8pDXQ+I4em2hC2XVubS6+pmNmtE
         JUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=7pdLNEJfYv+XS9zck+c/cFDPQv9IjiL0XbqPNlYxUnZpLxTGYntBcHVUJNLvWnDxGP
         YiMnEosPD/zQk2vsczV+lEYx30tBIqnSGWwwwYcfjwq86VxdTPIMK1ZnCAPmflnC3ihk
         iM4/9ZIUFKUQIg2EwHPpRmWta5jflptrd84hTzL5h9n8+XcjeKp984vcjdnkBaOCj+2m
         wa9P1LfVg/1I/DCnnnXrWOXWxMpN2BD0NSb7cv27kW+Rdj7ucZgz6pZme9WPcQggFjA0
         C0tXYJ2YWPICzZ1p4orUYypu6kU+H/NBD1YF03iPvCpVmZ5gNC7pRRmH6U8J3Q2qVpnC
         PI2g==
X-Gm-Message-State: ACgBeo1lIwixj+g52+ZXbHYRkiP0PnTIkjj62ZTXrkJYksTAs6meT1cC
        vwCQTNRaILofI2+abuLC3cO9Ng==
X-Google-Smtp-Source: AA6agR5+OPEH3cDQuiUwxXjulon0wpg02exBkXOVsbW35hMY72r4YlI1sLLApT1+xM6Cm+7PqZpHIA==
X-Received: by 2002:a05:600c:3541:b0:3a6:28e4:c458 with SMTP id i1-20020a05600c354100b003a628e4c458mr5163013wmq.188.1662037056497;
        Thu, 01 Sep 2022 05:57:36 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:36 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org,
        davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        John Keeping <john@metanate.com>
Subject: [PATCH v9 19/33] crypto: rockchip: add support for rk3328
Date:   Thu,  1 Sep 2022 12:56:56 +0000
Message-Id: <20220901125710.3733083-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
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

The rk3328 could be used as-is by the rockchip driver.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a635029ac71d..c92559b83f7d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -202,6 +202,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1

