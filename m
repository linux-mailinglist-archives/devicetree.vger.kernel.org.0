Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 255A35FF16D
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 17:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbiJNPbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 11:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231148AbiJNPbd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 11:31:33 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0923189C22
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:31:26 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id r3-20020a05600c35c300b003b4b5f6c6bdso3787117wmq.2
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sR8XzZbfaSpDw94NzG24BznFgA7mEC/NTOou7h7IByk=;
        b=sPF+GwRiXBLa1OuEr5MkQ63R2R9oM4A9xNILCIDui/xxiJY5DnZgtBnf25VWGLSioN
         Qwpg8z+PGZIyOU62bfP78CGyDenLuZfo+ROkYKkn2J35AOGMxkmp0pJH41bXLEwZ/fDy
         0RuIY7nn7pj3hQUGIQPE4VGXKaWiLaMe3ocbwsOHwD2ARgT9Ud7KaD1D/tRkB4IvwLZW
         JxYPnO7v0FMIp9we8SMUuxyE1W9xmphCyOzHrHmQO3j9rEPtmHr9/idZrLhAS/I/kE0r
         DaDdlmkxWdiI9PrTJ8JfS3qZCFRl7Ye12+3CD/95JAM54kOhoqIoCkzLGa+FHpdcm+Zu
         nBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sR8XzZbfaSpDw94NzG24BznFgA7mEC/NTOou7h7IByk=;
        b=BTS2XdekIccq1YyKiD/38EiCkRA/jnEEbvF1UvwYad1iW5ZtOzsLsmqn+oypjGIwpq
         tBNSmLoWbAEs8kLImu2iKX8qYR5ksOSFCFIs0TkD5WCZOdveh3Bp6d6joVlI3LdAk472
         LkIGN9/OJ07RtnyOU2ZkO4RrzcTVYKMvz6XWFAQN6m1vR6cLB6Xco5EjminT2WqW3BP+
         JPrgVTBkkY+fQF5+nvFtQfUSjxCnszhtJ4Qwyu0MH4ztV70DQWmFYM7g1vO0kK7dzLI8
         LSOgZ/S1hdUS4h0PhTk+Qljc8M5VTvsYCASFQbAfrM9fkmqV7wVI8xAmHvLIGtxRfFIh
         lR7A==
X-Gm-Message-State: ACrzQf2qkypTkECHRWe1a69xXud61CEw2NtDXvJkxdOuqymGkF/68I87
        lyhsSW32NiDph3CJ+HKH8C1Xpw==
X-Google-Smtp-Source: AMsMyM7jhp4DAltumSoT/yQu53w7gmQYoL0h+Mv95KVKM0JLk0YflSNHphv2ouvxOEhdKoQ61mUdxw==
X-Received: by 2002:a1c:f311:0:b0:3b5:18ca:fc5e with SMTP id q17-20020a1cf311000000b003b518cafc5emr4104232wmq.70.1665761485071;
        Fri, 14 Oct 2022 08:31:25 -0700 (PDT)
Received: from planet9.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id h11-20020a05600c314b00b003c6d896a17dsm6466286wmo.32.2022.10.14.08.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:31:24 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, dave.stevenson@raspberrypi.com,
        jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/3] media: dt-bindings: imx412: Extend compatible strings
Date:   Fri, 14 Oct 2022 16:30:43 +0100
Message-Id: <20221014153045.3683026-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014153045.3683026-1-bryan.odonoghue@linaro.org>
References: <20221014153045.3683026-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible bindings for imx577 which uses the same silicon enabling
reference code from Sony in the available examples provided.

Cc: sakari.ailus@iki.fi
Cc: dave.stevenson@raspberrypi.com
Cc: jacopo@jmondi.org
Cc: "Paul J. Murphy" <paul.j.murphy@intel.com>
Cc: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-media@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index 26d1807d0bb6..60dc25ff2b9e 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -19,7 +19,9 @@ description:
 
 properties:
   compatible:
-    const: sony,imx412
+    enum:
+      - sony,imx412
+      - sony,imx577
   reg:
     description: I2C address
     maxItems: 1
-- 
2.34.1

