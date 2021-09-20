Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C81D4114B8
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 14:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234775AbhITMng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 08:43:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234464AbhITMnf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 08:43:35 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBD8AC061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:42:08 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i25so67763876lfg.6
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hr7++l5WuIJ3QbTb1muJLIYeQhycvVCwIfK8xwCK0lk=;
        b=nDLfjWYlYoJdQDKQVkel8PQOrJt2sQoW4MYJA3uqAsNj59p9NbFuwlUokwasgQHucu
         7VEjc4T0sqUhLEubj8xk5UHvL+XYRKgmCRaHjAM19BwHP/2fdqokZeTfQwslqKWoUEsV
         i/J0hdUos3p3PEQ84D2/iJ0VMrK5lm8I3sR66ovnlB6NZTjvch6Thb0K53KbPVEryUbb
         85gGt3QdgXVtAaF0e2wtR3HAg0XKdUJsEXkv5Z+JmETfWN1wtWCadYtAtsrqtvHey4BU
         uHiehJK1sg9Eb1puxisTNfq3wEnNDb7cbWNVUix+Z7RFZRZXwEAJEXEzDITXj/OaINZ/
         4FQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hr7++l5WuIJ3QbTb1muJLIYeQhycvVCwIfK8xwCK0lk=;
        b=t507NipwD8gQ7C9guoSfonU/BqZqwP7DIq3RmV1MXy4CbPFFLjPkurTPb3H9dGkPjQ
         kUFdyxWfSr2zVNxP54xx6FtVihGADk+XbekCz+ShZGEf9qdQ2/JlFkNLJL09Wyglr9gA
         CGVa04RqOanfBbLxQqIDvUBlzruiSZ8T8Py0OLtZ6CUNwyHKMhgXXCPkL/PtsB41eOdw
         f+soxZqgXRfM2Rd9ZH4j8nx6rOyhEHXFEpwlNX1F53xuUoRnpNv8OQLQuMwXfA2vUNJu
         g4GZkwCxBYFIWpUqRCSXvuFSs7ccQ0q+K62HmMoGBpm2UrIVrosRq8JaRD/LweNkqfTa
         RxKA==
X-Gm-Message-State: AOAM532t1cCNouR83QToWghcPswjkmJTl8B3aRx/GHoiYKj32ksB56rN
        dYcwAAdh9aVkIvcXx2LFONHOwQ==
X-Google-Smtp-Source: ABdhPJwoadCgb7r/qWWgGsAlmHH0LQz9izuJ5mTYhJpd9dpLOLSNCUkppvO6+7N7MNxy+hsNTWCTeQ==
X-Received: by 2002:ac2:4e98:: with SMTP id o24mr18180477lfr.295.1632141727145;
        Mon, 20 Sep 2021 05:42:07 -0700 (PDT)
Received: from grasshopper.googchameleon.semihalf.net ([83.142.187.85])
        by smtp.gmail.com with ESMTPSA id v1sm630944lfo.308.2021.09.20.05.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 05:42:06 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        dinguyen@kernel.org, p.zabel@pengutronix.de
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        tn@semihalf.com, ka@semihalf.com, jam@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH 1/3] dt-bindings: mtd: spi-nor: add n25q00 schema
Date:   Mon, 20 Sep 2021 14:41:39 +0200
Message-Id: <20210920124141.1166544-2-pan@semihalf.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920124141.1166544-1-pan@semihalf.com>
References: <20210920124141.1166544-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add schema for the n25q00 NOR flash memory.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index ed590d7c6e37..efb3c5e05c5a 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -18,7 +18,7 @@ properties:
       - items:
           - pattern: "^((((micron|spansion|st),)?\
               (m25p(40|80|16|32|64|128)|\
-              n25q(32b|064|128a11|128a13|256a|512a|164k)))|\
+              n25q(00|32b|064|128a11|128a13|256a|512a|164k)))|\
               atmel,at25df(321a|641|081a)|\
               everspin,mr25h(10|40|128|256)|\
               (mxicy|macronix),mx25l(4005a|1606e|6405d|8005|12805d|25635e)|\
-- 
2.25.1

