Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4BE66570B2
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 00:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbiL0XEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 18:04:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbiL0XEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 18:04:08 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74F53DF68
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 15:04:04 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id bn6so5165936ljb.13
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 15:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omVnieNGh1C2BQOqxL85pqNlOA8iwg1l4f9DGmSm+F0=;
        b=NpMquUy6XSCZlHF1B5JCxa1+IGZudC6z51dvvZyQWfgok2tgu+eONhBG59X2PafkeI
         K9nO5jMavETPIF67WKoPGuL+6WIhuWKFd2rOVSYXTXR6Wv7Uja617HpHDc5mv+N9zoDL
         srouCvYvhXyeEu3rHCBmx06/6txqAAy91FnspCCNRW9i+eDikpjySd3WFHrq0JtXSZOJ
         i8w/9xkbSxT0NTgOVQhxKKflSjTrfXlRr7ACVrurfcYE37o0ru88N2jBCtFB1kOjk/eo
         Kxb2cwoZndwWQMzjmEgg496wJ5IUAzr6ebbFKTYj5D7UboN1N5tD09vVUjCIEXVw2/WR
         xB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=omVnieNGh1C2BQOqxL85pqNlOA8iwg1l4f9DGmSm+F0=;
        b=5QWmbeSSHdFJ5mzJnEXYwGYx/3dpR+EczyzAqDR9N0Swq42ek28FPvExe6fmJVlGhe
         ZayRURX69xNT1kglDdPSYvRrLc9fEt8YK5IvUd5yCRcyabHOT9mZBfcul58mk7oXMuqB
         zlsO5moz5E/kAiccoN2DgxnjMihtcFIk1fbAMYkT1rppd9nRNFHExpHLsGK5nW5H14C5
         L46PU+4yis/bCjDUU38UgNsFc/TlhQ4m5XymBqIUOjcjah1dnFXQCraoZOzW0iw6XrvY
         S5b+c5iEQKiu8GsC7ls45aU52Mup94fltortGflhXSimvyT4OmXhxIh1TBc8Q1F4bsPm
         Iy5A==
X-Gm-Message-State: AFqh2ko7IFmT1dqQDIWgAi6+gkB4nlG3OLd5+2filProYKfwRuzalzsE
        xOwGFQ0jTqTca5qvhHeKaJLGdg==
X-Google-Smtp-Source: AMrXdXs6RKKLQeK7L+Utv1AckslGJBa9ecdEOR5vI3IypBndmXbMZ3kAyf/SE1bdQMkdDmv+mh+DiQ==
X-Received: by 2002:a05:651c:1992:b0:27f:b2cf:85a0 with SMTP id bx18-20020a05651c199200b0027fb2cf85a0mr4532982ljb.43.1672182244053;
        Tue, 27 Dec 2022 15:04:04 -0800 (PST)
Received: from Fecusia.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bg25-20020a05651c0b9900b0027fbd4ee003sm876925ljb.124.2022.12.27.15.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 15:03:57 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 28 Dec 2022 00:03:35 +0100
Subject: [PATCH 3/7] crypto: stm32/hash: Use existing busy poll function
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221227-ux500-stm32-hash-v1-3-b637ac4cda01@linaro.org>
References: <20221227-ux500-stm32-hash-v1-0-b637ac4cda01@linaro.org>
In-Reply-To: <20221227-ux500-stm32-hash-v1-0-b637ac4cda01@linaro.org>
To:     Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Lionel Debieve <lionel.debieve@foss.st.com>
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When exporting state we are waiting indefinitely in the same
was as the ordinary stm32_hash_wait_busy() poll-for-completion
function but without a timeout, which means we could hang in
an eternal loop. Fix this by waiting for completion like the
rest of the code.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/crypto/stm32/stm32-hash.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 0473ced7b4ea..cc0a4e413a82 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -960,11 +960,13 @@ static int stm32_hash_export(struct ahash_request *req, void *out)
 	struct stm32_hash_dev *hdev = stm32_hash_find_dev(ctx);
 	u32 *preg;
 	unsigned int i;
+	int ret;
 
 	pm_runtime_get_sync(hdev->dev);
 
-	while ((stm32_hash_read(hdev, HASH_SR) & HASH_SR_BUSY))
-		cpu_relax();
+	ret = stm32_hash_wait_busy(hdev);
+	if (ret)
+		return ret;
 
 	rctx->hw_context = kmalloc_array(3 + HASH_CSR_REGISTER_NUMBER,
 					 sizeof(u32),

-- 
2.38.1
