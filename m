Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED9A0537097
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 12:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbiE2Kv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 06:51:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbiE2KvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 06:51:24 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D7F04CD5D
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:23 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id n28so1436845edb.9
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tjHmH/k5OnwGTIX8JGp/u7wV+TKFsiA0hlmVPnIEjOI=;
        b=nwkcY8aS85BC02SBgalxJjxF5X2sRSHiazRKBPvxeWltyh9GpA2Y/3GJSo5hGdRmle
         B42JQYxzwweiSJ8LUiu/0L7nRLZ6OuJJM4d1ryf5X9RrEknmc6LB49n1uNuct3+wHA5l
         ZZiG8LJYgR+o6V83OmVlIQD2lGL1/5W8Fnyf8x26d6EDCa1gnEsyVdHkdWfllYr35Zh5
         nELvWJBSoAq9etnJ+aw4Jxf7FeK9Wr+4MMsMhRXm5xwggEt8NvoAm7rqHfnYDb4EV9ZI
         HFvGZy0WrhlqoaLBJdbstaO/JeRuZwLzTfg9+ZCQgs1g4xMy15DZ6lRyq/WnTvn3Nu8e
         lIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tjHmH/k5OnwGTIX8JGp/u7wV+TKFsiA0hlmVPnIEjOI=;
        b=AQIgnEKDmeRhrYbEhU/foSw0vqqaFGLgpZre9jt9bigUThdhCIIQoUCcUZuXk6NTNP
         D3aOCByWMImQkJIvpG4MjLqobCjgoZdCxaFBHSbSnpRvKZAGF2QRC7FfQJZQ4Q803zGQ
         4wfVwEEE8aUMZQ4JgXq1oerz8ja/gj0uNlAna2GiIjJTF9UWAWSx2SkerfHZEzv0cy32
         NAKpf2ZKTGDo61X/5tIR4/BtZphtN+6fgO7ihvz+JYxh5hwRFCE0x0wimXOhQbbYEQac
         EYOuV6qu8xJro9kwsmbFb5KjVa2Uii/oQJYkeo/bqqtsMLoaiX5XmUV6AjLVvIEl5iFX
         Agbg==
X-Gm-Message-State: AOAM532x/rr7Kl0/NDtnotlWQ5/GKgBRBBeIhk3ULvrg9mgDlMjScALw
        9F95k9fRiheGy9nc8Z2uZU6FKQ==
X-Google-Smtp-Source: ABdhPJzPfF++CclA17wW8Tsy2/nq+Rvo6+fQTJ+x5gV7m58QRmV067rGaFZx7OsF+daXLjfPYqqw1Q==
X-Received: by 2002:a05:6402:1b1e:b0:42b:cf35:2621 with SMTP id by30-20020a0564021b1e00b0042bcf352621mr20338321edb.352.1653821481695;
        Sun, 29 May 2022 03:51:21 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w25-20020a50f119000000b0042b0fcfe966sm4746991edl.37.2022.05.29.03.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 03:51:21 -0700 (PDT)
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
Subject: [PATCH 7/7] ARM: dts: aspeed: centriq2400: use qcom compatible
Date:   Sun, 29 May 2022 12:49:28 +0200
Message-Id: <20220529104928.79636-7-krzysztof.kozlowski@linaro.org>
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

"qualcomm" is not a documented compatible and instead "qcom" should be
used.

Fixes: 3719a1b13056 ("ARM: dts: aspeed: Add Qualcomm Centriq 2400 REP BMC")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
index 3395de96ee11..2e8b87783717 100644
--- a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Qualcomm Centriq 2400  REP AST2520";
-	compatible = "qualcomm,centriq2400-rep-bmc", "aspeed,ast2500";
+	compatible = "qcom,centriq2400-rep-bmc", "aspeed,ast2500";
 
 	chosen {
 		stdout-path = &uart5;
-- 
2.34.1

