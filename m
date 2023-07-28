Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6690F766F38
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 16:19:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237004AbjG1OTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 10:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236992AbjG1OTb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 10:19:31 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADC03ABB
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 07:19:29 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fe110de46dso4461755e9.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 07:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690553968; x=1691158768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aOPR69iAQ16PRI3TWa1E2gZcgSDBVpUe2mB3Tg7XdFY=;
        b=eCfDNPSl7vSoyBHYmOveE8fuDlgi8ZipveyzGaTlPOC0Q2OpbSPndzkwgMyclgAda/
         V6WTHb/DKo1bo2kDoa0OhOJhJ4PL5NQqBFKROAUwm4e9A72r5un/Wtm8JoiZhb4l0DE1
         Vs++o1lVFVOTFyUwli6h3oJ+wHe8tIxqaUvdlCDdAphocUK+ygU+y9/PrDVt7fIk7CW7
         Ms2GNLTCZO5/X4rTwRGcPHx0MtToecCzRNkrPA7W26gLn5kE3H/GoJhCCBHIbzGQIXn5
         Jszk8Jw96jdQ0daJjcTZN11nmfyS6iMVC2HVfmGVY0NLDFC3N9ANmvlVym1ZBAg+pMsx
         d+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690553968; x=1691158768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aOPR69iAQ16PRI3TWa1E2gZcgSDBVpUe2mB3Tg7XdFY=;
        b=VOnQeJAFb7pqIyY4ZeVN0GrrSnLvA7gjLwMNTjLhA/eyGGt68qrxwFaAeM/hdn9Jeb
         A6lmw0OBBFh6Tu5zaHH9vwfENLAamYqfwM07yLuOaegCED2lvZdOEJgrzDmKeHgN1bhK
         hWUPl8uv/lDDA3izBZ4EhCp2NdeVzrjqO/o5utTI8uplaSztPVJo+Ybc3oeuq7pz6GA8
         OcY+IZ6f4Z4xFRZU+Na7ZOmhFnG02suEbWKWyiL2CDYQBOx609XCu79N2OUma9Ul2mkT
         sampBzqhjdSVbp1HZ4NY1EpIwJzLNNYz+BAvBcBksvWWgQXcbcdCUvV0voFibseVLCN3
         +B2g==
X-Gm-Message-State: ABy/qLZwB7JGjBM06N75y6WCHeCuvZLUxIGT81pFvoGNOi0QWIssjKoI
        fKXPBNQj9+8UtKd+oD6BXE0ZgQ==
X-Google-Smtp-Source: APBJJlFhR9WAI6qiGI8oGXWvZ/UsZ0vbMPJ3iXVMm2YZyySkV1K6NGpHXIsauRuCoGnRq9hod7gT/A==
X-Received: by 2002:a5d:5101:0:b0:313:f5f8:a331 with SMTP id s1-20020a5d5101000000b00313f5f8a331mr1763758wrt.34.1690553967911;
        Fri, 28 Jul 2023 07:19:27 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4090:a246:80e3:766f:be78:d79a:8686])
        by smtp.gmail.com with ESMTPSA id l6-20020adfe586000000b0031416362e23sm5013681wrm.3.2023.07.28.07.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 07:19:27 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Vivek Yadav <vivek.2311@samsung.com>,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Simon Horman <simon.horman@corigine.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 2/6] can: tcan4x5x: Remove reserved register 0x814 from writable table
Date:   Fri, 28 Jul 2023 16:19:19 +0200
Message-Id: <20230728141923.162477-3-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230728141923.162477-1-msp@baylibre.com>
References: <20230728141923.162477-1-msp@baylibre.com>
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

The mentioned register is not writable. It is reserved and should not be
written.

Fixes: 39dbb21b6a29 ("can: tcan4x5x: Specify separate read/write ranges")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/can/m_can/tcan4x5x-regmap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/can/m_can/tcan4x5x-regmap.c b/drivers/net/can/m_can/tcan4x5x-regmap.c
index 2b218ce04e9f..fafa6daa67e6 100644
--- a/drivers/net/can/m_can/tcan4x5x-regmap.c
+++ b/drivers/net/can/m_can/tcan4x5x-regmap.c
@@ -95,7 +95,6 @@ static const struct regmap_range tcan4x5x_reg_table_wr_range[] = {
 	regmap_reg_range(0x000c, 0x0010),
 	/* Device configuration registers and Interrupt Flags*/
 	regmap_reg_range(0x0800, 0x080c),
-	regmap_reg_range(0x0814, 0x0814),
 	regmap_reg_range(0x0820, 0x0820),
 	regmap_reg_range(0x0830, 0x0830),
 	/* M_CAN */
-- 
2.40.1

