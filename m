Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63C7274C918
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 01:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjGIXZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 19:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjGIXZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 19:25:12 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177BF106
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 16:25:11 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1b8ad8383faso28839985ad.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 16:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google; t=1688945110; x=1691537110;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UD2Vpdz8nxYtJtFopKOQ7/HGN5cNFiSrNvwgT+wG9tg=;
        b=BUkjQoylCal7kYTESx3TRoLpQ6KltDIEDAKGDdrWhXqfVahe9FP8QKfG9wjCzjB58Y
         QVemFCsDmuzMYHuc86VspF8vNCLVxr0PsgI09gPqmfoDSgkm28zTzQwlG+FTddQBiekh
         3PzQu7qTOj0TA6Kn7gQI5+xEPA/lG8Rjcsp6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688945110; x=1691537110;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UD2Vpdz8nxYtJtFopKOQ7/HGN5cNFiSrNvwgT+wG9tg=;
        b=Cyk3Mlkv1fEWEovKQDeENA4lnnDUjXi6AUkbND/J83YiSj42dPkGDPfVSDyD8vz1vC
         Lz+cz9UPJYAazUdKwMQ17XqfaE6Ouu5kb3K3FrwuQSUczPsDfxB0MMdPlj9jLJ/b0HFx
         5TWES8bUNOsFnClt98vJfAP7kh/HB587rE/ubJPOsVEKT1ssJCUchpBjthIms6aAnZQM
         CzMuQhn4khF2zYWP5MDwd2CXj5f7cyhZZfi/vCfDPdAM8gJcHzQPws2AeVvQ68DHCkvU
         +hBu3bRu/4KCg1oWmSlosdzgcehZTHVkhiwJx55OrphA/IAeh2C0anDPgFydvUZHmQmu
         rVAw==
X-Gm-Message-State: ABy/qLZ1wG4VEoDBq7rPDIa1/vMc8kLd0X+1FkzfdKO4r+z1LEPxhIBb
        d7DcaU0gjdq3T7hTEZJ8Ki65oPhSqOs6kwCj0fk=
X-Google-Smtp-Source: APBJJlF/F06YE/Bkyk7JzPizRJ2uyiK2K0h3HCepC824d/NxrkQlQiT2sepDSl13/ICmkg28cGURJA==
X-Received: by 2002:a17:902:9a0c:b0:1b6:69dc:44d2 with SMTP id v12-20020a1709029a0c00b001b669dc44d2mr9558072plp.51.1688945110166;
        Sun, 09 Jul 2023 16:25:10 -0700 (PDT)
Received: from localhost ([2601:644:200:aea:60e1:d34a:f5f6:64b5])
        by smtp.gmail.com with ESMTPSA id ix12-20020a170902f80c00b001b8a00d4f7asm6798669plb.9.2023.07.09.16.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jul 2023 16:25:09 -0700 (PDT)
From:   Ivan Babrou <ivan@cloudflare.com>
To:     devicetree@vger.kernel.org
Cc:     kernel-team@cloudflare.com, Ivan Babrou <ivan@cloudflare.com>,
        Lee Jones <lee@kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH] mfd: rk808: turn MFD_RK8XX into a tristate
Date:   Sun,  9 Jul 2023 16:25:07 -0700
Message-ID: <20230709232507.55096-1-ivan@cloudflare.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Prior to commit c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
it was possible to build rk808 as a module and have CONFIG_MFD_CORE=m too.
After that the intermediary CONFIG_MFD_RK8XX was added as a boolean,
forcing mfd_core to be compiled in whenever rk808 was enabled,
even if it was still built as a module.

Signed-off-by: Ivan Babrou <ivan@cloudflare.com>
Fixes: c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
---
 drivers/mfd/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6f5b259a6d6a..f6b519eaaa71 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1197,7 +1197,7 @@ config MFD_RC5T583
 	  different functionality of the device.
 
 config MFD_RK8XX
-	bool
+	tristate
 	select MFD_CORE
 
 config MFD_RK8XX_I2C
-- 
2.41.0

