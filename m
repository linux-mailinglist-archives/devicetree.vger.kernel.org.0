Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C882E3CC130
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 06:57:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbhGQE7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jul 2021 00:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbhGQE7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jul 2021 00:59:41 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C553DC061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:56:44 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id o8so6310955plg.11
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 21:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8e6XlbKC+KjOCVkxo+Eb2tDouy+mshYsdsUVUAEu5P0=;
        b=gTkFAmbiJ1QVkJ2Vm7kvTo2ZOBk4PVmQMN6bdqkEpl5SDEB0Nw/ioy0AzHHOiyzU+/
         S9R/X+DOAAl1hiTV0UvPhv1kCGUAt+ZNLQdKGk8zt93hzzuVM8eV9B5dOt+infBlHK+Q
         KkEFLJv29N2/Zm7Db64oozASkYgNlD5DaWdG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8e6XlbKC+KjOCVkxo+Eb2tDouy+mshYsdsUVUAEu5P0=;
        b=YZdUZybVNjfN0UoUw/7pzFn5m+gxb22/Lzp9NIzrkmN/RtMqLXnjcds/ilXrt3un+a
         f9E15LsIiZKHSh69/tpHJVrMbr7XFw/6CiZEOYI+O5MGfXfJBnr7szCSdF8Q9RirRh6E
         LDgmddHa9vNk3EG3pcWpUaAixQVQ71ic+CjuIzT3hgBgJfM56my1yIJpFp4ibXPG7Rkd
         OZdkpBCgWe7nntW0bZKR636sfajGNt/Ls0eCsZREV6UwxufrSJGKIfPPsTbCI13k2qKf
         qUYKLpYI+tQaMaJfHTlRs+cXL8aaof1N3H0ONw2cj5wS40LInXz3ic6TUsTLJzrHIYJh
         ksHw==
X-Gm-Message-State: AOAM531qaMDE84J94QcH9oV32DVQ6j5pYLFgz3xu75EfgKLbxsdzMtZC
        FTmyMe+AvkTBdb8CcuNhl+e+z+WDsat5iw==
X-Google-Smtp-Source: ABdhPJwoR0Fkmo9Na2dM1/fOXvJF37GjeGKSSmFizRu+R+7y+/7jIjcFbBQCYikme7Ht5nSy9ZLaWg==
X-Received: by 2002:a17:90a:1d43:: with SMTP id u3mr19190689pju.121.1626497804165;
        Fri, 16 Jul 2021 21:56:44 -0700 (PDT)
Received: from shiro.work (p866038-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.60.38])
        by smtp.googlemail.com with ESMTPSA id w2sm12522885pjf.2.2021.07.16.21.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 21:56:43 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 01/10] dt-bindings: gpio: msc313: Add compatible for ssd20xd
Date:   Sat, 17 Jul 2021 13:56:18 +0900
Message-Id: <20210717045627.1739959-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717045627.1739959-1-daniel@0x0f.com>
References: <20210717045627.1739959-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string for "ssd20xd" for the SigmaStar SSD201
and SSD202D chips. These chips are the same die with different
memory bonded so they don't need their own strings.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml b/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
index fe1e1c63ffe3..18fe90387b87 100644
--- a/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
@@ -14,7 +14,9 @@ properties:
     pattern: "^gpio@[0-9a-f]+$"
 
   compatible:
-    const: mstar,msc313-gpio
+    enum:
+      - mstar,msc313-gpio
+      - sstar,ssd20xd-gpio
 
   reg:
     maxItems: 1
-- 
2.32.0

