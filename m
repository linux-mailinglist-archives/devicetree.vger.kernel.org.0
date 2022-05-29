Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69EE6537098
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 12:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbiE2KvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 06:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbiE2KvU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 06:51:20 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEDAE4DF63
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:19 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id gi33so16083323ejc.3
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qgQq5YY5g1jPHR+HWdKtiA4Zjs/eV4wGZhb7rjwkR2c=;
        b=CZp/I0K3BY1MJhVXmiwcSl4w55kavz2JEgA9VVfOUNFe9TYHUEI9o+r6NXa4RRh06P
         M5Xmqkws+7WycCGLkbBVkeaW86bvoAR5S/kIn38WFdB8haiYQLILehufzOYpLXeu/TOA
         uIvEJ+X8NKoFKkcN9Bwskyh6rraK0WMKWAkuUbc6/A0OKtkjij745oq5KYqRuohdXiAn
         1V2eG0z9mltbHoD5rn24y7OJrjFfF4NV5HlMORcW4z7T4tZMhJpe8YoxVp7JXhmnC03M
         fv2zvYOFGoo82UpCc779fZve3dkYARyOtE70iY92QUTgXpoq0PAlkMDHM9vAWU25/oYB
         RbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qgQq5YY5g1jPHR+HWdKtiA4Zjs/eV4wGZhb7rjwkR2c=;
        b=GyoHZLn7lQFJ4QuAKn0HDFUXCZTypaX6SOU/wrCdRoGN+sL3ng36OfkInrWbE4K+Ne
         zT482IKuWlq543aO5FLfHH+0gzMGhDVDpHAHVjv8PR56+AGu7ckVNYGr+FwgpuSdPspm
         FJY3619aR5cECK8I2eg0+44TGcWb8eUOyhmZMIG3tC7ydGPIBFdiTqE2BSlHQDmYLhXM
         C/RkMLPm7AY1cq4xBY1rYiW78VQbgOfKB9fMYyqJiCOL6kAHFGxYlwG8lOE7ACjudOmn
         Ba2y20TU/BKP54hAoY9SMVPy2yBqLo4RemAJ1BeR0TUUtlf/tCmvq8sFKHpWprnccGQ8
         cvpQ==
X-Gm-Message-State: AOAM531M3PejK4/4t05qzI2sHBjuo9NwT5j4EZDhoVv+az9pJgatiZFu
        IKUS4sbljfVr71wF1WS7quX8nw==
X-Google-Smtp-Source: ABdhPJwLrlyqp191ide0tQO3BUOEryml6g7D35IAw9JkMrAdj0vMgCpLMo/FFIQ2sXKYs9UF7t4QbA==
X-Received: by 2002:a17:907:7207:b0:6ff:d25:ee3f with SMTP id dr7-20020a170907720700b006ff0d25ee3fmr20068800ejc.389.1653821478248;
        Sun, 29 May 2022 03:51:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w25-20020a50f119000000b0042b0fcfe966sm4746991edl.37.2022.05.29.03.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 03:51:17 -0700 (PDT)
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
Subject: [PATCH 4/7] ARM: dts: ast2500-evb: fix board compatible
Date:   Sun, 29 May 2022 12:49:25 +0200
Message-Id: <20220529104928.79636-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
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

The AST2500 EVB board should have dedicated compatible.

Fixes: 02440622656d ("arm/dst: Add Aspeed ast2500 device tree")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed-ast2500-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-ast2500-evb.dts b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
index 1d24b394ea4c..a497dd135491 100644
--- a/arch/arm/boot/dts/aspeed-ast2500-evb.dts
+++ b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
@@ -5,7 +5,7 @@
 
 / {
 	model = "AST2500 EVB";
-	compatible = "aspeed,ast2500";
+	compatible = "aspeed,ast2500-evb", "aspeed,ast2500";
 
 	aliases {
 		serial4 = &uart5;
-- 
2.34.1

