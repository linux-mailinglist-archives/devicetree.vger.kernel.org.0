Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35161544001
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 01:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233855AbiFHXkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 19:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233980AbiFHXj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 19:39:59 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98AF4169E1A
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 16:39:43 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id bi27so10104382qkb.10
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 16:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4bA3l8NMW5sqINO1r/1lERkOkDyuT51+2Y6gy5uYSqQ=;
        b=mXaDkRe8akpJUduhvftHXEgn4sTGP0eEV2OaV+blJVeqoLJU1FEsR+FaDtaokIeTFo
         2lK9ZQ4Btqss0RkOkxW3x432KfPG90WprbHJVWggfQXq/JRB2Eq9KakDyq54PxapLUsb
         hc6YdA++zF2yvpOYXxd4kGmXlP5tGj74azeYSpCXzSP0+1Vit7dY6IoOTH7fSQqlIj1s
         yee9YeuMp2V1s6EzXiZugIO5erzHwONKUBaKeFuAOfghBQjn4RHqP8EMP8KRQjpuqLhj
         j/JyfzkL+nHfEYgjqoadJF0gmOwtxWmOPdx8NHbKw5rZr5qqyAIjW29A8Wlv2ZY5Mo2g
         8Bzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4bA3l8NMW5sqINO1r/1lERkOkDyuT51+2Y6gy5uYSqQ=;
        b=qBfABuKYOZUGGdZloKTez6xkzl9nGRdnrKFE4J5CANK6hWOFB7UmMM6rIeK6mtg1xD
         XCgf5X+zHvF/mePPf/XCmTUat3cZoMvzzWezWHWhPrwMjJlFBES0AkyT8EqrQHW5Ih4c
         ahKLCnMPYr+NZd61SNn/mA2w8/U3lG+sp3CK0StYJxGw3cHlaigkE5Frc82Sa6T5958u
         2a72ZIH8gwoRPtNqwONEGvLI1NhNId3X2DybhWeiC8LFY7TD7HIJZq7A21O4Tpgw+YlC
         3ktmkruSW4YyL7O7MC3WknyDb+fq8VdL1Dq7Jnp/W/mBWFDsOd4IuoE+k1mb+lTRLUOS
         z7eQ==
X-Gm-Message-State: AOAM530XNEFo5wCfala+m0EH3I/gFZxSKXs99/hKPXoc0c5hg317XR48
        FRMgpSU76wCKPuC9HrGtkoFtVP78luXNVSMJ6Ue0Yw==
X-Google-Smtp-Source: ABdhPJwxVJsLtov+PvfiuEXEacNmD+Ogc8ArgM4bwUX+jOqXRNefAAAkqXzWVsoVgFJ+AB4KhEa/eKHzBy+/FzxL2p0=
X-Received: by 2002:a37:9b09:0:b0:6a6:b23e:8534 with SMTP id
 d9-20020a379b09000000b006a6b23e8534mr14825420qke.214.1654731582051; Wed, 08
 Jun 2022 16:39:42 -0700 (PDT)
MIME-Version: 1.0
From:   Atul Khare <atulkhare@rivosinc.com>
Date:   Wed, 8 Jun 2022 16:39:31 -0700
Message-ID: <CABMhjYq8WbHcA=8dRxHVy=-NhL3+GaRKsBb3X2bG2-6Azd2S1g@mail.gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: sifive: add cache-set value of 2048
To:     Palmer Dabbelt <palmer@rivosinc.com>,
        Conor Dooley <Conor.Dooley@microchip.com>,
        Atul Khare <atulkhare@rivosinc.com>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes Running device tree schema validation error messages like
'... cache-sets:0:0: 1024 was expected'.

The existing bindings had a single enumerated value of 1024, which
trips up the dt-schema checks. The ISA permits any arbitrary power
of two for the cache-sets value, but we decided to add the single
additional value of 2048 because we couldn't spot an obvious way
to express the constraint in the schema.

Signed-off-by: Atul Khare <atulkhare@rivosinc.com>
---
Changes since v1 [1]: Rebased on latest version
[1]: https://tinyurl.com/yvdvmsjd
---
---
 Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
index e2d330bd4608..309517b78e84 100644
--- a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
+++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
@@ -46,7 +46,9 @@ properties:
     const: 2

   cache-sets:
-    const: 1024
+    # Note: Technically this can be any power of 2, but we didn't see
an obvious way
+    # to express the constraint in Yaml
+    enum: [1024, 2048]

   cache-size:
     const: 2097152
--
2.34.1
