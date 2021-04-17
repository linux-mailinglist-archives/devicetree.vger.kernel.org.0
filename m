Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5376A362CA3
	for <lists+devicetree@lfdr.de>; Sat, 17 Apr 2021 03:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235483AbhDQBMA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 21:12:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235476AbhDQBL6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 21:11:58 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05781C061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 18:11:33 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id lt13so6051652pjb.1
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 18:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IpFNR7GakxyWW4TgxZZHx0a179MD/+kz0HEu0bWO0a8=;
        b=Po04f5sBLq7CyI8NVDbw/oRJPwJrkwmlN5bP8ByR58YDJv+L9Grp4W25XVsVqoX50U
         VAfoQJEiLxxgSS6cIDQv3YuoH2WxogF9nVU7CRgkamzQj1t7F7C1M5UWw+55cn3fLuQT
         BOgHL49GK0Zg7IzYDsct+zh1egbo8TNUa+3Wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IpFNR7GakxyWW4TgxZZHx0a179MD/+kz0HEu0bWO0a8=;
        b=d5AImYTmIaIxW+mBlaKID3TWHyJ4r4YnA1sV6nu6PE6E34KdBEsYlutBkgq/Q33LGL
         QsgfMR7KN/aujrPvdU6WUIlmnHEEDWGM+yIwfrNJfiev3DTO8QN7SovYfCNLju1tYIZ1
         7yUefdWKNDZvhlBAiBXUBHyMuNUkqfDjCZwnPCrBtyjp8TncTvGy7JfGxWsUdjdAybW0
         Dygdp6yj78UezWujqhOoUYcy9G7oJU4SyuzJOKYFIc95iDchw2u7Q7MJ7OHGetdAXGeD
         glU5Ps1CiWdKXvgW06pqIhPaISsJc1VEQjaxGqjDNk2mLPhB6Vbmj/WgRFcWbiFFYdiu
         6Cxg==
X-Gm-Message-State: AOAM532SRdjxR6+AzreN8sWiV54N7UTBGATHlFPWqS66/8tzidl+aEbJ
        +9j2ciHL9m3k8XHfxsYAokPvgLQYZwGgrQ==
X-Google-Smtp-Source: ABdhPJzbgyZPwNL7XTnTWHarGeS8Luqog9MeO9ogPU0obIFCDGmVAGgPhcXB6udRhP8Z5OWNJLE7Dg==
X-Received: by 2002:a17:90a:64c9:: with SMTP id i9mr12919746pjm.213.1618621892443;
        Fri, 16 Apr 2021 18:11:32 -0700 (PDT)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id x17sm2181515pjr.0.2021.04.16.18.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 18:11:32 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, olof@lixom.net, arnd@kernel.org
Cc:     w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add vendor prefix for M5Stack
Date:   Sat, 17 Apr 2021 10:10:13 +0900
Message-Id: <20210417011015.2105280-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210417011015.2105280-1-daniel@0x0f.com>
References: <20210417011015.2105280-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

M5Stack make various modules for STEM, Makers, IoT.
Their UnitV2 is based on a SigmaStar SSD202D SoC which
we already have some minimal support for so add a
prefix in preparation for UnitV2 board support.

Link: https://m5stack.com/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a424..7129fe3b9144 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -651,6 +651,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^m5stack,.*":
+    description: M5Stack
   "^macnica,.*":
     description: Macnica Americas
   "^mantix,.*":
-- 
2.31.0

