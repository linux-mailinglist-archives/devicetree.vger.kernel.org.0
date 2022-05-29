Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDF653709A
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 12:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbiE2KvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 06:51:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbiE2KvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 06:51:21 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E04DD49F14
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:20 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id w27so3576703edl.7
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=32oRUurEdVyP4eLrtlvGULHRT9DbX5ENH78v/cdn0oQ=;
        b=SAEms0Q0LQZLuwDZwbGR3iLBzbV0o7Vp81Z/09GtFOGJgCesGjHseBi5RXC7IOjlJW
         8p8X2mz/+SR7ye1/YPk0rKioOlSjNQ/mzLuZJwoSgdXDa6YJenoY96r+4S20qtT58cnl
         vFpDkgzHomMrDPKgtn+xov2mei0v3oTWwEYs3gfcwfcx5HgENS8bouVTA7dnzDkp695t
         zdSCX4aU+LAyJyou81uLEmuGhZFPoitiheaBtRV6YXqBtsy0KSAIrnEvfocFflrXxQ2B
         LakVs5iA3bFVj4KtDYFyDQtwX5VCdmaqjLEK0sHo731eqQPN7GLgmdKO12mu+R5BhpEU
         pAOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=32oRUurEdVyP4eLrtlvGULHRT9DbX5ENH78v/cdn0oQ=;
        b=cX8CLisIB6yCvHWQoLBiM8n/px2QO2LhOtSvr1qz28vTizeTplK9lJYydW1/WyISty
         Q6AgbtyOdzm6WlTEUAvv0hQm2ruT9yIIVHuf/1rpvZ00KB8txr5dHDYW0kFAywl/h9FX
         sLJ5V16b5Bl7QncwrcIC+kACzQvFlKYfqR6cWkuH7/V0hWQvFMiPL762MePFql9m63Cu
         +KD/3Y9ibwq37f7GwPWLZClR3/M2tz5ysP9Ym9x7o87qRAN4eNvvGhvsTvSHn6CBAGEf
         uhdXFzZMqeOrIp/bPs4KvbKTHDKPxBQhSV951jpH+1ElzMFt2ZNP1CzT29aHgIF1C3OW
         hzkQ==
X-Gm-Message-State: AOAM532XjyMLjTFHYoSgUGj6M/NFnDL7Wg4unxsOpS7EVfwQrIu0p1bU
        PoN8+siaBYsDDtu+bLMky5Oagg==
X-Google-Smtp-Source: ABdhPJw8d7g2sDkHVBAzTeeMMRQh/0/LdRPavHItYLCzqxQjYX5Jrw7uPOyTtPJx7coy/d5zXNCQPg==
X-Received: by 2002:a05:6402:34c1:b0:42b:4047:20b8 with SMTP id w1-20020a05640234c100b0042b404720b8mr41562410edc.88.1653821479409;
        Sun, 29 May 2022 03:51:19 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w25-20020a50f119000000b0042b0fcfe966sm4746991edl.37.2022.05.29.03.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 03:51:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>,
        Steven Lee <steven_lee@aspeedtech.com>,
        Ken Chen <chen.kenyy@inventec.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     David Wang <David_Wang6097@jabil.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/7] ARM: dts: ast2600-evb: fix board compatible
Date:   Sun, 29 May 2022 12:49:26 +0200
Message-Id: <20220529104928.79636-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
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

The AST2600 EVB board should have dedicated compatible.

Fixes: 2ca5646b5c2f ("ARM: dts: aspeed: Add AST2600 and EVB")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed-ast2600-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
index 5a6063bd4508..c698e6538269 100644
--- a/arch/arm/boot/dts/aspeed-ast2600-evb.dts
+++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
@@ -8,7 +8,7 @@
 
 / {
 	model = "AST2600 EVB";
-	compatible = "aspeed,ast2600";
+	compatible = "aspeed,ast2600-evb-a1", "aspeed,ast2600";
 
 	aliases {
 		serial4 = &uart5;
-- 
2.34.1

