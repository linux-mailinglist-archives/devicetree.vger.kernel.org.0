Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C350F63185A
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbiKUBzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbiKUBzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:13 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEEFA31347
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:09 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id i10so25344201ejg.6
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HDlc1+/DcvW68foCbGqR2wdeh+cpwxu/S6MfsBu13E=;
        b=xj9EM3zYkhGTbbAM9JInZawShpTSctQotBDNSW7ItekWMTZ9U8sy5oyMxzTcnR1Agb
         N5tEpEdJ4ODHdzHq0tvCg58Sv7C9uDZQPYaRcR0+xtfXY3teMyYoousQsqclTigemrCt
         6uUN3w4Ly3Vd7Q+9xL2WaVTIV6087sIBE1Ua9/jl/wQOAOVikUARmkF4IxH2XWBW+dGQ
         CXOhZgodqE7BTE0M9T2LIHqbOupjNELdLmRu6aGvSvS3lzTdEzhGRTBZUrNNosn6zdek
         Q5BC1l/a/1jl9f/UmIbAm87IIw9EipXGqszyOlw3xvBeXY2K7cMpQs5DQJ1JNHRlvzXd
         nOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HDlc1+/DcvW68foCbGqR2wdeh+cpwxu/S6MfsBu13E=;
        b=8GwmUiAnHGO/37QxeeSNWVA3LBftRmWKBXfzhVpavjK1+n6V4BodAmImaBRrusbAAS
         GWlwNmgpDmIRlZPe7tZ8R8xWVpI3oytLVHZc6+5hniF9Vg+dcdcW4pyUNiMPwqS7mES9
         fJxcxfSdIN4AqhgWdgXyltIyMrdn6Z/5ceP5veuL5D6VEYQaMYAuBkArJwJYfXHxf8po
         Z0C27r1Prd7P/EQLgJgw7kVNTVgNJwGCoyuJ137Earhs8kYHj0O5acaeoZDw4MT8hTx5
         Fp2D7d9Y8gcZRpGtcu6HNgIsOAKo7aNzS7jiiOxEpKnsTvWeFt3NX+uk7wofSltOYapJ
         nS4g==
X-Gm-Message-State: ANoB5plQ+Z6U2hWaVCkaSoPg8jVAvUciIeLZXDc2HugtiQkAzI1tiraC
        v8GY+0A8to7IvKyhbV7yWJcjJDdSocCfk3dS
X-Google-Smtp-Source: AA0mqf45mD5kj3zujPnEWLxQ5XlNTIKeH3Fdr1qXO7/VsrpRiIZY3/v2O8M++mNoqX30x8LccvSTMg==
X-Received: by 2002:a17:906:4a55:b0:7ad:9ada:79c6 with SMTP id a21-20020a1709064a5500b007ad9ada79c6mr13827861ejv.86.1668995708222;
        Sun, 20 Nov 2022 17:55:08 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:07 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 2/9] pinctrl: stm32: Remove check for pins-are-numbered
Date:   Mon, 21 Nov 2022 02:54:44 +0100
Message-Id: <20221121015451.2471196-3-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the check for the unnecessary pins-are-numbered
DeviceTree property

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 drivers/pinctrl/stm32/pinctrl-stm32.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index cc9472b284047..1cddca506ad7e 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -1499,11 +1499,6 @@ int stm32_pctl_probe(struct platform_device *pdev)
 	if (!match_data)
 		return -EINVAL;
 
-	if (!device_property_present(dev, "pins-are-numbered")) {
-		dev_err(dev, "only support pins-are-numbered format\n");
-		return -EINVAL;
-	}
-
 	pctl = devm_kzalloc(dev, sizeof(*pctl), GFP_KERNEL);
 	if (!pctl)
 		return -ENOMEM;
-- 
2.38.1

