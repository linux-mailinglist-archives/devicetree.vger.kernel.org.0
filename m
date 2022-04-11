Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC174FB15C
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 03:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbiDKBdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 21:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237353AbiDKBdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 21:33:49 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3582A3EA86
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 18:31:37 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id m30so20862318wrb.1
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 18:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=Nh7jCsuTVNWjS2uWjY3zMHBdnEq3JQRfiXdVez/H02JTH4fA06ICUOGZLNmd3TxsY5
         A4cI4ZqMnVF+b/oAUDWofHNxmNyfUunb2JdPtcSe/Gw166qboftQujmO3P7A76liRxYb
         cP8xu3eL/Y+6r00osZdc6E18lqD6MJGRSezcrr0/GS+dJe1VFPMTJdWINutXFfl+py3e
         PMY97wOR6huyIZyJnJQQRSUhRKWfRWgE2Ilu5Jfibi/dM45I415nF+/PCYjHqJcfXGmX
         cHI0Z1+S6Wcpj974sjqP5Ay+I9DXvEgcyGSq7pO+1V4sEQqPNr7mu0MtdOCWMh3Y/v25
         HvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=gTSAxJYzuTAvaHOpNWYwhRLB2owD1uCPa+kmOprxc9NgokQz/szmyR5YNv+oQfR13D
         tSI8R9J612F3Kw3xcYrlBYv0/z2Ol0b+ofAwwUGTo4VWVXXqdCaFr7VKgGojjMscKuYx
         e78FREmXdqfLYDE+ewNDFNJQMaRsgYwCVXHi2rd3f+1/a0IcBTe9xeFiEr/nNK27z5Zh
         tdxz49c0WGCUYNIgJZJz+X3UdcgSV058ANCL6LfUiBAtkfHDt8ywtVjp7xTTINz+cbZd
         AqWOejBn8I/fAFMh87xPqW8St6k1g+DP5n/5kdN5XqFZ2D+8d4V9UrU6u1HBWXOc250L
         xmBw==
X-Gm-Message-State: AOAM531x+uJrtuK0LS0cKQUKHzoKz70A27ytDiPG0EFljKwTsW6P1khm
        v2Q2NpMnKCQp4kWpYMxmJhqs1Q==
X-Google-Smtp-Source: ABdhPJwIJIitRDIHSBPO8qsdreJXfABhtyIvkAog2qxJDQCyAUz7/K8lyjLcLN4MzX9ezIflq2NBjw==
X-Received: by 2002:a5d:64ae:0:b0:207:8830:fa57 with SMTP id m14-20020a5d64ae000000b002078830fa57mr14580891wrp.272.1649640695684;
        Sun, 10 Apr 2022 18:31:35 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d6081000000b002061b616b83sm15862934wrt.39.2022.04.10.18.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 18:31:35 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] media: dt-bindings: imx412: Add regulator descriptions
Date:   Mon, 11 Apr 2022 02:31:30 +0100
Message-Id: <20220411013131.3553098-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411013131.3553098-1-bryan.odonoghue@linaro.org>
References: <20220411013131.3553098-1-bryan.odonoghue@linaro.org>
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

The imx412 like many I2C camera sensors has three voltage rails which
depending on platform may be necessary to switch power onto directly.

Add in as optional rails so as not to break anything for existing users.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/media/i2c/sony,imx412.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index afcf70947f7e..26d1807d0bb6 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -32,6 +32,15 @@ properties:
     description: Clock frequency 6MHz, 12MHz, 18MHz, 24MHz or 27MHz
     maxItems: 1
 
+  dovdd-supply:
+    description: Interface power supply.
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
   reset-gpios:
     description: Reference to the GPIO connected to the XCLR pin, if any.
     maxItems: 1
-- 
2.35.1

