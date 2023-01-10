Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D611B664C46
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 20:20:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239772AbjAJTTw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 14:19:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239803AbjAJTTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 14:19:41 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA362532A4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 11:19:39 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id bt23so19981967lfb.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 11:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xlq2CbHJ+i9XV8+jNLPey1GnGzkjb+RabVFKJfxLUEk=;
        b=cCr03c8OuR3SxnQcfmUXa5UYpYW/hjC3nMq95tqfrFBv83fwN8AaPfeyefx/H7Bnzt
         irg/urOSRix4aVAUCrwcXDVrm7lkLGBlURTs2ihDKek6Ust2Cq6BkaqTyLn6oPu/gk61
         j91iraxv1DqxLFZTvyMOqBKE6Rw5HZ2sqKRjkUAZAVgQkju6G9GjFHN8ULbsv3C3WBz/
         Q50vVOo9pFaaep4yYJ+RafWYHDsNAbrAPphVtujYgewY21XzgEsypCAYYJUNhkjARy1r
         NpqQvKxZIgr06PI1BDXxLk9uzjQVDV9uLtb4N2O3lCPB6Wj+RAidFQK5jwRSvuF81abZ
         Xy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xlq2CbHJ+i9XV8+jNLPey1GnGzkjb+RabVFKJfxLUEk=;
        b=2gyq1b53kMQYa8SMzIyyw+W5pkSm5lYQAC3fNk8q+UaRFGL0dMSfpuRJpbpdaFBOCX
         IE5BPwB1dEc6+eAYQr2bv5PPCUCTpymLc20mS5djzeyMIB7e3iJjYIiqevribtstRdaO
         iwjTh5FL0HzOc+oA6EZ7dirxbRYJp3Co1hmJ7IF+liIYMSNU9Jn1Un8U8QXaLDncd8o6
         NCaN+1ElElFBXSMH+oSpqbN7+9J6bZvfGNznUVYZObGBAd9y7Y3B+QPYgPI6UcJ8f4Ar
         WPaEGKqDbqvDQWMtazAkDaFHlzbSk4AbZyl++IPUtFiivMhsGkywNnKzViVn1BQ8JWKb
         QRkA==
X-Gm-Message-State: AFqh2kqq215fxOC+4z5Kd9gsSisVy8ky59vYCASiXN80LhaWukwe8/TC
        QSlJhYfFOEy/TfOsRL+y3WIKIg8c+ua72Y2r
X-Google-Smtp-Source: AMrXdXt72stXioSMjkZTM/iKtBKW04S+MylRrfbbR19vpORoaY2m0ITpHLr/qexleH2KJ/KJ7v47aw==
X-Received: by 2002:a05:6512:c1b:b0:4cb:3e50:f5e3 with SMTP id z27-20020a0565120c1b00b004cb3e50f5e3mr10337407lfu.61.1673378377977;
        Tue, 10 Jan 2023 11:19:37 -0800 (PST)
Received: from Fecusia.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id x28-20020a056512131c00b004b549ad99adsm2297725lfu.304.2023.01.10.11.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 11:19:37 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Jan 2023 20:19:15 +0100
Subject: [PATCH v2 4/6] crypto: stm32/hash: Wait for idle before final CPU xmit
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221227-ux500-stm32-hash-v2-4-bc443bc44ca4@linaro.org>
References: <20221227-ux500-stm32-hash-v2-0-bc443bc44ca4@linaro.org>
In-Reply-To: <20221227-ux500-stm32-hash-v2-0-bc443bc44ca4@linaro.org>
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

When calculating the hash using the CPU, right before the final
hash calculation, heavy testing on Ux500 reveals that it is wise
to wait for the hardware to go idle before calculating the
final hash.

The default test vectors mostly worked fine, but when I used the
extensive tests and stress the hardware I ran into this problem.

Acked-by: Lionel Debieve <lionel.debieve@foss.st.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Pick up Lionel's ACK
---
 drivers/crypto/stm32/stm32-hash.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index cc0a4e413a82..d4eefd8292ff 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -362,6 +362,9 @@ static int stm32_hash_xmit_cpu(struct stm32_hash_dev *hdev,
 		stm32_hash_write(hdev, HASH_DIN, buffer[count]);
 
 	if (final) {
+		if (stm32_hash_wait_busy(hdev))
+			return -ETIMEDOUT;
+
 		stm32_hash_set_nblw(hdev, length);
 		reg = stm32_hash_read(hdev, HASH_STR);
 		reg |= HASH_STR_DCAL;

-- 
2.39.0
