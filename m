Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02C0467A783
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 01:23:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234182AbjAYAX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 19:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234079AbjAYAXX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 19:23:23 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4987F4B89B
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 16:23:20 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id ss4so43377066ejb.11
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 16:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9qmjL5YE1HyeJVsvTfsUWFKz+T/3Ixilqwo6/hu6Qzo=;
        b=ehG+o2447r6Td9RR2+nlur6qkPp25WNZ5VRULzjwSQnqXWt2MCg7k78WBPyeu45jwG
         NOdpFnBuzpDSS1OdTfsIl3z3WdQ15/+Y3RR4TPn2qjpDBQXWqz+0SJlGzXcdKhYVYFYV
         f+b9LPEusuXHwVWllUUPlJJiAnus4nITRAsSN2iBT5ACFqsfC/xiJ/m/2set+UOC4dIR
         vHtEv9QW7w8O3v7pcBGdyUd+cTZZPxPcoJg+YkGVVfzvnvhgqGJqzHk5dew4FSyJEmP3
         0HenwMS/nh+xF7VYGNpLE7wxnRKlybsHnHVvw7WRcJfHkOuune3yXsNkiSSUXA5z2CCT
         HOXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9qmjL5YE1HyeJVsvTfsUWFKz+T/3Ixilqwo6/hu6Qzo=;
        b=KQTXMps677kEwkhSHL2jDwBzEXLqSnRFVd2QXp2XCmgfpBkACOfsukh03tR4dL0DeB
         nlIBa2sDifgI1x4Ko8DwV/1yx0v5dxHVBvQ5X/vRKuCWUn6TW3aouov2+pKS1XMwncUl
         52I9829I+18uIJIIRnBlJod6JulId/TEVPgsVg7+fdjKkcsbd6lRaiHSfpi5swZoXrn+
         t28GJSj8uXIWgIzhXVOkIijMc50c4B1Pmcn3ZClE+ANqQY8NQXrEJSZHW5RRyQ3g3yzK
         MAm6hSbkCIe2k4aAJMaaqcZLff+/Rc2oE3fMmkempp9a9MAo4TuAVm0GF4i5TPfO6K9C
         pVrQ==
X-Gm-Message-State: AFqh2kqeji+csRSQCN059NXkmotJ1NEABQHi59On90T34adlnsBUK3b+
        P03lYZO5EIhFPF+5lVFMSakXew==
X-Google-Smtp-Source: AMrXdXsDD/LQk4PBY7vHxwupmEw2Zbk2BgwZl6oR9qqIRyEiY3CjmumNBHn7lMrPc11U8zqCl8ppjg==
X-Received: by 2002:a17:906:cd1f:b0:84d:4a2b:73b9 with SMTP id oz31-20020a170906cd1f00b0084d4a2b73b9mr32449420ejb.59.1674606198366;
        Tue, 24 Jan 2023 16:23:18 -0800 (PST)
Received: from fedora.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id if10-20020a170906df4a00b00738795e7d9bsm1584606ejc.2.2023.01.24.16.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 16:23:17 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/6] crypto: stm32 hash - reuse for Ux500
Date:   Wed, 25 Jan 2023 01:23:06 +0100
Message-Id: <20221227-ux500-stm32-hash-v3-0-32ee12cd6f06@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGt20GMC/4WOwQ6CMBBEf4X07JqyraCe/A/joZSFNlFK2kogh
 H+XohcvetlkNjNvZmaBvKXAztnMPA02WNetQuwypo3qWgJbr5ohR8wRS3iOB84hxIdAMCoYOBFh
 cRQST9iwNVapQFB51WmTgm9/pBA/Ie2nPvl6T40dt+rrbdXGhuj8tC0Z8vT9UTrkwKEqRKm01LX
 i+eVuO+Xd3vmWJdqA/wiYCFpKkY5W8ouwLMsL/cdYQBsBAAA=
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
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

By taking some small portions of the Ux500 HASH driver and
adding to the STM32 driver, it turns out we can support both
platforms with the more modern STM32 driver.

The STM32 driver is more modern and compact thanks to using
things like the crypto engine.

We add a polled mode since the Ux500 does not have any
interrupt. Incidentally, this could perhaps be re-used to
implement synchronous mode, if this is desireable.

To: Herbert Xu <herbert@gondor.apana.org.au>
To: "David S. Miller" <davem@davemloft.net>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>
To: Lionel Debieve <lionel.debieve@foss.st.com>
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

---
Changes in v3:
- Allocate the synchronous fallback algorithm in .cra_init()
  and free it in .cra_exit().
- Pick up some review tags.
- Link to v2: https://lore.kernel.org/r/20221227-ux500-stm32-hash-v2-0-bc443bc44ca4@linaro.org

Changes in v2:
- Use an else-clause in the DT bindings.
- Fix up issues pointed out by Lionel in the driver extension.
- Dropped the patch converting dma_mode to a bool after
  Lionel explained how this works.
- Link to v1: https://lore.kernel.org/r/20221227-ux500-stm32-hash-v1-0-b637ac4cda01@linaro.org

---
Linus Walleij (6):
      dt-bindings: crypto: Let STM32 define Ux500 HASH
      crypto: stm32/hash: Simplify code
      crypto: stm32/hash: Use existing busy poll function
      crypto: stm32/hash: Wait for idle before final CPU xmit
      crypto: stm32/hash: Support Ux500 hash
      crypto: ux500/hash - delete driver

 .../devicetree/bindings/crypto/st,stm32-hash.yaml  |   23 +-
 drivers/crypto/Kconfig                             |   10 -
 drivers/crypto/Makefile                            |    1 -
 drivers/crypto/stm32/stm32-hash.c                  |  266 ++-
 drivers/crypto/ux500/Kconfig                       |   22 -
 drivers/crypto/ux500/Makefile                      |    7 -
 drivers/crypto/ux500/hash/Makefile                 |   11 -
 drivers/crypto/ux500/hash/hash_alg.h               |  398 ----
 drivers/crypto/ux500/hash/hash_core.c              | 1966 --------------------
 9 files changed, 249 insertions(+), 2455 deletions(-)
---
base-commit: 1b929c02afd37871d5afb9d498426f83432e71c2
change-id: 20221227-ux500-stm32-hash-9ee26834292f

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>
