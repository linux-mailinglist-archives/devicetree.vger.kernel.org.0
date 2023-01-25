Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D45F67A786
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 01:23:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234295AbjAYAX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 19:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234090AbjAYAXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 19:23:24 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1EFE4B89A
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 16:23:22 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id y11so20048943edd.6
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 16:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9/AsczzAoIWOzK8lXXQYr+oZjWpK7SKdHJ3MVSXvuVY=;
        b=G5sSLdwLn4mg94HvxPiDfL7ErUh2JaPb1dvXZIK7dW4TB9o4KJCsGO+civsatRjENj
         eB5CnYxpgVTynGQFCDLap3gEHuE3VsV6qAYe6Od/8USkm/H7MwWPqfnnX/RD4qIjtb4S
         4Z+4o7PbWsOD+zftvKx/HqRqH16rruAVChrd2R9oDdlDjgoVptjcnZNvJ/16j23vI5lf
         h00IW0b2nnEDfMoEYQHgFLmj8fxPSXiaBc/rNFwJSp2Yef20EZnMAVwg9pnliUanstTj
         RFPP76mjCFI7dOc92UuDD547Rr68oFWF870u8NqijqqpfY6Jh7jvk8tpRry100+RA/VI
         88Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/AsczzAoIWOzK8lXXQYr+oZjWpK7SKdHJ3MVSXvuVY=;
        b=dC5ArIikofhxRqGVhUv/t2IG1q0CjjA9ODZQGoiR9tS9Wsg4yvwdbru4valchemb7Q
         jVCensJnIzRYpO5jRjqBVyhjACCOA1ORkXzLLpitIVPiMJ+1+BCqKuY15fRDzX0D50Ct
         fd/ZXmbfms2eB3Lg5ZtvZln8BPoNH5OUqaD+bkFT2KqNw4GxHdmh387jo+MM6hRc1X5/
         tQPS7HoTmjOpK6ZjXTRSFIAlnOLHFst4DK8gbanko31xPaokFoTXfaBfMH8JgvkVDHoy
         VN+pQfU2CrIJzrVxHk/hwu/oT4VmdFiZMcyfb6fD+ZM38UDUXGx5RFXpq8SJhYB6R+A1
         T7Gg==
X-Gm-Message-State: AO0yUKX/K/uyCPMppAfjnZS2Iv8gyHVMRfjUn0KBsU53ihFqEM/lazFR
        Lh66Ld/86mTtwnyEJAdi1y1X/w==
X-Google-Smtp-Source: AK7set8pICFlSnupzt+B/4dEj+GIHPXyXilClxiORWUNlNS5tqZ3vG+e4gQbF27oTL658xWqahpvKQ==
X-Received: by 2002:a05:6402:298c:b0:49f:a3d7:b84d with SMTP id eq12-20020a056402298c00b0049fa3d7b84dmr5449787edb.34.1674606201166;
        Tue, 24 Jan 2023 16:23:21 -0800 (PST)
Received: from fedora.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id if10-20020a170906df4a00b00738795e7d9bsm1584606ejc.2.2023.01.24.16.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 16:23:20 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 25 Jan 2023 01:23:07 +0100
Subject: [PATCH v3 2/6] crypto: stm32/hash: Simplify code
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221227-ux500-stm32-hash-v3-2-32ee12cd6f06@linaro.org>
References: <20221227-ux500-stm32-hash-v3-0-32ee12cd6f06@linaro.org>
In-Reply-To: <20221227-ux500-stm32-hash-v3-0-32ee12cd6f06@linaro.org>
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
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We are passing (rctx->flags & HASH_FLAGS_FINUP) as indicator
for the final request but we already know this to be true since
we are in the (final) arm of an if-statement set from the same
flag. Just open-code it as true.

Acked-by: Lionel Debieve <lionel.debieve@foss.st.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- No changes
ChangeLog v1->v2:
- Pick up Lionel's ACK
---
 drivers/crypto/stm32/stm32-hash.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index d33006d43f76..0473ced7b4ea 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -399,8 +399,7 @@ static int stm32_hash_update_cpu(struct stm32_hash_dev *hdev)
 	if (final) {
 		bufcnt = rctx->bufcnt;
 		rctx->bufcnt = 0;
-		err = stm32_hash_xmit_cpu(hdev, rctx->buffer, bufcnt,
-					  (rctx->flags & HASH_FLAGS_FINUP));
+		err = stm32_hash_xmit_cpu(hdev, rctx->buffer, bufcnt, 1);
 	}
 
 	return err;

-- 
2.39.0
