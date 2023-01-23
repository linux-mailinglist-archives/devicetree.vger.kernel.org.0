Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5616781E8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233425AbjAWQlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:41:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233255AbjAWQlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:41:31 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEFD92BEF1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:43 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id b17so11959854pld.7
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SklIkx9ayFUcVrlImxzAVAqtQZ+1umWUcLW5sAOy5vI=;
        b=Z3bBPyBrxNd/40Y2ZxG5Mdi5CcX9byUTG7KrjT5G1/9PRjvsII6nImSNzOQu8WWmvF
         z1v6cxrtX0cHwfeZsmCdsof6QHgxgi5gJLXYwto6q8TgLFqq10/3UwKC5ZdHiisHvmKU
         dXElC3Xg7KEeTTqRtrPjI1LmseNA4YUc9Ad5KjIhrx7R609uaQLhTvE9JTBS3m2VwYM/
         nTeqgfYiAB2XFl5tLmi5NdsxmvAJ1Rt2a8V5fdx/YdKfhMian4/lOI/ds6T8Xqeq5mCG
         JhZQ4O+rvrDuVcMiPbBndTLXxzqfLUz+BDMTlWRNmItP2+DAF6Jo4Pr0GG6PeknA5hGn
         bqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SklIkx9ayFUcVrlImxzAVAqtQZ+1umWUcLW5sAOy5vI=;
        b=j0sp1NW65GFWaATCXE6yx5vms38zw74gNN1OSysfq02nDnpinC3IS4YmjRU3B3/eR5
         WKWr0lc383NbJE5LhMchsq7wQjSm3EqsOIluI5nIkGwrzx3uXYmuvaGe42BXXnS3qGUq
         scHcvSFYBTzZeYPfwlsGREi3Gk1/W21Rm/0/yTv9p7t+VU5LR9lzsud4tim0PYV/AyOG
         T9mHSL4qZKrewXf5nMII+Vru+RHJomAjAqk0j09F084t/oY+mqcBcddJ6jFez0CT5+fJ
         ODVy3exizkYr2z1I10BqULCrLX6HJLAt9uff6qzbmLoIfteTEkLHO5wQD51Pnet4TkoI
         dP+w==
X-Gm-Message-State: AFqh2kqgdQ4/I4GAxLXWmmUUfUGYRd6SWaflsCp6iGgwmsdjJzcaOJT5
        vmZX1XK9QwBFFkR+EYVTVXT8Mw==
X-Google-Smtp-Source: AMrXdXurDJLnWjC3ng3vTmwfVWkcgNySJOigFQAkPKfqksyYIBAUMad0cU8/CYQNmOGiKbHSdIgh0A==
X-Received: by 2002:a17:902:b492:b0:194:c733:ea0f with SMTP id y18-20020a170902b49200b00194c733ea0fmr18460066plr.50.1674492040810;
        Mon, 23 Jan 2023 08:40:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id a3-20020a170902710300b0019269969d14sm17679971pll.282.2023.01.23.08.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:40:40 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Tom Cubie <tom@radxa.com>
Subject: [PATCH 2/4] Revert "dt-bindings: vendor-prefixes: Document Chongzhou"
Date:   Mon, 23 Jan 2023 22:10:16 +0530
Message-Id: <20230123164018.403037-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123164018.403037-1-jagan@edgeble.ai>
References: <20230123164018.403037-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 90f86d0c617d9461cb00f4d8e861eda28011d46e.

[why]
The initial datasheet claimed that chouzhong designed the 10" DSI
panel on top of JD9365DA IC, but later Radxa mentioned that chouzhong
is the manufacturer. This concludes that the actual design of the
panel, gsensor, and customized FPC is done by Radxa.

So, drop the Chongzhou vendor-prefix as it is no longer useful
anywhere in the bindings.

Reported-by: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 70ffb3780621..f5d0e75dab1f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -248,8 +248,6 @@ patternProperties:
     description: ChipOne
   "^chipspark,.*":
     description: ChipSPARK
-  "^chongzhou,.*":
-    description: Shenzhen Chongzhou Electronic Technology Co., Ltd
   "^chrontel,.*":
     description: Chrontel, Inc.
   "^chrp,.*":
-- 
2.25.1

