Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C278611BD1
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 22:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiJ1UuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 16:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229920AbiJ1UuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 16:50:19 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 761764BA72
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:16 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46-20020a9d0631000000b00666823da25fso3666974otn.0
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVGg0nA9wNIi0Jewzc4LnXJCRV2Q026/w/hAmHhcOh8=;
        b=H1029xbs79t9tr1kbLWT6fPLxjSzS7siE74Xl+uCOWnjSt7j4GsyKbM9xkyum3YzkD
         GVI31mt+VG0CBbNOGzUwk5+mGquDS9iC8rWCj6jE3gbpP5STHe5EiOEsXzWvHq75/MGR
         tyMUngcCL18QYIyyznBywbOpQr7K0MIVL/RMjhO338L4mV2IoSNmR4HRaUWSgv0Utpf0
         bzocEPVz5dgfO+but3uoUR7XAwQTXbgj3iYzfBDSFszqBH8+6zx8KnwZfuk6Bklcpc0i
         KmkkR7vgO5x6b4ndGauKWhsPGIOCynxKkQqA9bHpj0qJFOqC1yIVQBQcjA97Bq8NzuXK
         7b4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVGg0nA9wNIi0Jewzc4LnXJCRV2Q026/w/hAmHhcOh8=;
        b=X7p82/jf6QpVCYKe+Z2J4nFFfTjmnlapq8RH44YHxEOp5Lq+zJ2OKKRJ5I2AwoGOrW
         kjAyDh/ftZcBiCvdSNrfs0QrSUNnHoBWyIEDfirYH89upoSexbn0KpHoqGUgTaERoL9U
         1ndHCjYyLu83+ZpcBFbxIxt8TGSfmfQDxAcNK19FreSOc21y0ga3g/NKk/hvg9jVQPiU
         fufQxbVi+xjN6Tw6enRDM3/31lYR+LjAYLcnwYUZyV9YkwsxxPHgU7kwfRt37+b9G89m
         mbN4XEWQAQCpIw2SZv0mx6ZECnI/G+q5/hi9W29+P9PXcSWsQb7ogDVl5DFhCVPJzMjp
         LkmA==
X-Gm-Message-State: ACrzQf3ORS4ahMkXKG0anULN3i+ucpdh6TYmBJ7wIQbL7e/Qnnzd2vjJ
        DSTOnFjShbD6pSVycWPBoGQyXKRS3Qo=
X-Google-Smtp-Source: AMsMyM7z/qJohmTz3kBHDxakuJsKlqG5QpkR37Wxh1gqzFB33xlQ8lYPL1ISD+5AICD4NY7ZNulJ+w==
X-Received: by 2002:a9d:7002:0:b0:661:caa8:5fab with SMTP id k2-20020a9d7002000000b00661caa85fabmr607868otj.274.1666990215577;
        Fri, 28 Oct 2022 13:50:15 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i2-20020a056830010200b0066756fdd916sm2090778otp.68.2022.10.28.13.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 13:50:15 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V4 1/3] dt-bindings: vendor-prefixes: add NewVision vendor prefix
Date:   Fri, 28 Oct 2022 15:50:07 -0500
Message-Id: <20221028205009.15105-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028205009.15105-1-macroalpha82@gmail.com>
References: <20221028205009.15105-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

NewVision (also sometimes written as New Vision) is a company based in
Shenzen that manufactures ICs for controlling LCD panels.

https://www.newvisiondisplay.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6e323a380294..c6aa7b3d1455 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -883,6 +883,8 @@ patternProperties:
     description: Shenzhen Netxeon Technology CO., LTD
   "^neweast,.*":
     description: Guangdong Neweast Optoelectronics CO., LTD
+  "^newvision,.*":
+    description: New Vision Display (Shenzhen) Co., Ltd.
   "^nexbox,.*":
     description: Nexbox
   "^nextthing,.*":
-- 
2.25.1

