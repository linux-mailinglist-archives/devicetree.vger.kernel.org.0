Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 147AB5B1FF5
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232143AbiIHOA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:00:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232125AbiIHOAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:00:12 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5E6326D5
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 06:59:53 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id fv3so11766670pjb.0
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 06:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8YzA9DGcWeqSd1lJDOz/mQW0gmpLOqtC0NrwIzSbD34=;
        b=xefgUflbVMTJBhQZB5sZ6fOvhk/I8yl9Twht70cLvg54tFbeePZ59JNGQYOT4ubDRe
         PiejAQOGgnSBY27EzKXC869YvaHDWzowz+eaKySTpYsXNC5e+9FPzhQwJ9Xxil5QrWd6
         BO9EAlRcGGi93qiB4n3hi8iA15MLUePwZniY1QgwqU+5iA9AZ2BdOtvdEDC5MJnDQlYn
         493s2mAvv5J+C2CYyMFs2RvAMX29lzzfWc8nKNOF+s5+EIseTH888jmjeXO4f3tg0GvQ
         cZ+KAgoyNyoHUHk5Hk8b7W9FFN//kenXIEZdrBmfVGHkEowV41+0XEwY5ppBWQplhd3/
         Kc2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8YzA9DGcWeqSd1lJDOz/mQW0gmpLOqtC0NrwIzSbD34=;
        b=obrwT3kP4gYjRqZjFCxboRoyzi0yI2G1UAISfclownX3XgDqHcXQXo3JVxOqXRpInR
         71AII/IFch+LeOuer25ug02b4HdLKwA5GljqM0W3+EHeCvWKugbL9zZ/mSzDI3NlFOfj
         ArIkQ1i+xdwycFvF0sgIw4LK0fK837OgrwWBLrkBLfQZsp6HlxReojyKmjMUe3ntN4sU
         0alg3YffL8rfAr45MN+3blp+OMoFa5im3YBv1ebY1GYtWlcda/WnvJIVq0nSBiLrjHVm
         fcpBTkLtP4eGVLCTtVwfP0nTxz6iETMoXxwHpMP7PNgvQg3ib2j/D4ipEUMieQXsnu2m
         kI9w==
X-Gm-Message-State: ACgBeo1E199RJ60yXwCCE0JZHDebJ3TmvAZKe+6o1pwRfrd7fis+3fmh
        N58KxGmZUM+qmWIcLcwvwiQ+uQ==
X-Google-Smtp-Source: AA6agR66yzwPXYh8FHsAsVB3PvAJomU05bSzs4P0324/xCFmqSpghmK9BpUeF83v3tBsAUrtrdtLYA==
X-Received: by 2002:a17:90b:1d86:b0:1f7:31c6:1cce with SMTP id pf6-20020a17090b1d8600b001f731c61ccemr4436283pjb.192.1662645592556;
        Thu, 08 Sep 2022 06:59:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f525:b238:30b0:311e])
        by smtp.gmail.com with ESMTPSA id n7-20020a170902d2c700b001709e3c755fsm7073200plc.230.2022.09.08.06.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 06:59:51 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Document Jadard
Date:   Thu,  8 Sep 2022 19:29:38 +0530
Message-Id: <20220908135940.299324-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220908135940.299324-1-jagan@edgeble.ai>
References: <20220908135940.299324-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jadard Technology Inc. manufactures and distributes chips
from Shenzhen.

Add vendor prefix for it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ack
- rebased on drm-misc-next

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 8fdc9f0d5d60..d6714dcb5e4d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -623,6 +623,8 @@ patternProperties:
     description: ITian Corporation
   "^iwave,.*":
     description: iWave Systems Technologies Pvt. Ltd.
+  "^jadard,.*":
+    description: Jadard Technology Inc.
   "^jdi,.*":
     description: Japan Display Inc.
   "^jedec,.*":
-- 
2.25.1

