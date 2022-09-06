Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE2E85AF688
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 23:03:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbiIFVDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 17:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiIFVDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 17:03:31 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CFE9A2A99
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 14:03:30 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1225219ee46so31362524fac.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 14:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=N9dN1r8mTcrj+Q8AThusvdLfjGCCC8ge1nifhSHJWzE8uaWIyL/VkR9MIFR5ONSYcm
         VEIDFIo4UjnQBfpqAAwf0PANCaxGuT78zHmUElOMwSO5GmrOW0oH7rFTUcXNOK6TXJVy
         CXmfMR40jXKghgi4pSATsHtBCQc+s8BZ1aBmF+E7V0KBRKh/TCyPLZzbbbiWR4twp6qv
         UGtl6QQ5Z5FUrquaDCdl2XGT7pKQ/6FgnGjY3XMjR+npwadfRSwKTdpQd3gawlI57qEk
         Yomi8I2xbJmZxFPdC/4zgLepy3v9UonDSC1AtQj6qDs6UbvieTxNHHLfRu0cDhB7AIoz
         YjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=At9V2MWnbE3fFynlmFtBv6gBv3hjTQe8XvK9bsUCvbzywtdrvt2uqTwmi8h64Kmgvi
         2iohJwUr9B9M+mTuFxfh1+YBsAuBcMuD7VKD9ZlIEs5b0W0yb2Mq/FQPFnVHHAFfhPBp
         q7dRhfFgmX7D4rDvM+J7kduP6yaWiQErPoVsvCqdJfYKH+uhedrJbKre8XjjQ7B1dIoy
         F4V/E3c+XpPvwBwWHzLWe2pvEdjYis0OaResSPl3h86by/a7G5A6HrFLOy64hroeUbcI
         cWNG5hvv2S0RuGgsssWL+Im3bdToZd5MNnSmTq3yshAG9RWIVC/WBbus+7MTjVKJas01
         ddsA==
X-Gm-Message-State: ACgBeo1UcipbQbYuLxtCWFek6suT3V0PIzzhyQoylXSbb0i+9KnXrTQx
        jT0DYL8176pbfuLCVJd8qSmHOpeWzM8=
X-Google-Smtp-Source: AA6agR5lpq1XusND0ZYtEi7XyB9D1sa8L2wuLxz9h5TReOZ9nOupbI+KXw1I/YVOBSu7/RMKSAc27w==
X-Received: by 2002:a05:6808:f8d:b0:345:6ee0:9a65 with SMTP id o13-20020a0568080f8d00b003456ee09a65mr10421071oiw.299.1662498209052;
        Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:28 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date:   Tue,  6 Sep 2022 16:03:22 -0500
Message-Id: <20220906210324.28986-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1

