Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50CE730D9DE
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 13:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbhBCMie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 07:38:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbhBCMid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 07:38:33 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB30C061573
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 04:37:53 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id v15so25092108ljk.13
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 04:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PsKOKy4V9D9WnvUQN6LIGu7MAfCGEGVQl2UwB6I9OcM=;
        b=JPozc/2TNPFC2N1NrvfUSmM2iarvlNvhYfZ9SrlCTYHUMmOlTL8Iq9Bbgcvxb04IIc
         dlAswCtX5etR01UrRUvppwX7rKOWMG+ltiriNvtuWe4D8OcYzuiPwFsGD7mFSaBcrSic
         4rkWYAGFPKy0mEKdr/fgL4O0pPkaPQ3WKmuGWaYrDi2VGTa3STAEYEewkAnVgfUwBxqj
         M9B7jFceGHsX13lUbwSdtvkvPXXErg+AWeKuEd6Y/HWTXhk3Uf4rjp4uwVMHx5Hy2PJK
         25Ri1dNLgKi44PcoD3iRM2KjxWxa+U/mheapMxq/CmJXM3QKh9+VeqUBLbIEdlFIDJmz
         fd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PsKOKy4V9D9WnvUQN6LIGu7MAfCGEGVQl2UwB6I9OcM=;
        b=VmXVqrp3+ASZ1/WrQ/VMUC7K1cXdjt3sxGe3a6Fda1QrIlPGiWABG3q4sXKA0UV+qY
         T7CgWP46rfpw0xDlyuqS57NcJtUNuXhQkQHXxWp4nTG2M3M9/gpxbPOD2sXFF7byHEt5
         pGxyDN2qbAftX94GdpX7kRpFCToa1gLSJ62F0nRSDBI1Y0XI585UEReOfB+8F2egOwju
         PmOQBmL/rq0BFjfslcWrB2rp1Mw/HF30SrH1ioBL4yn7w30dhessjfZa1xiLLaMwb005
         sTejqcDB+OmE+vM6o17eNJbDSO1qPzsXMUaQdNT8rIL+fa2VRVdHT75B+dRe+KDVLdVM
         gscg==
X-Gm-Message-State: AOAM531+NMIT00WT5zkHMZX5rTIiTnlPHJZx7+AHmO3pDigJMNW9jjF9
        X9YviVbaSaz+fUq4bxcjL271CA==
X-Google-Smtp-Source: ABdhPJxBrEDtWi2jykHLBsvmvz6yah7CRpC8Gi1zQkspE/kj1IBE1CFE/S4XuIHxtL0VwVEs15mH4g==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr1614700ljj.148.1612355871484;
        Wed, 03 Feb 2021 04:37:51 -0800 (PST)
Received: from localhost.localdomain (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
        by smtp.gmail.com with ESMTPSA id m16sm232423lfh.109.2021.02.03.04.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 04:37:50 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] dt-bindings: Add Apple as vendor
Date:   Wed,  3 Feb 2021 13:35:47 +0100
Message-Id: <20210203123547.318876-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As noted in discussion, this prefix is already in use.

Link: https://lore.kernel.org/linux-arm-kernel/CAL_Jsq+znLsyQOw59xqYgoYo9eJrn1R1Tj--aRvPHOD_jv0fxA@mail.gmail.com/
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 076d4b26261b..450596d2a108 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -101,6 +101,8 @@ patternProperties:
     description: Anvo-Systems Dresden GmbH
   "^apm,.*":
     description: Applied Micro Circuits Corporation (APM)
+  "^apple,.*":
+    description: Apple Inc.
   "^aptina,.*":
     description: Aptina Imaging
   "^arasan,.*":
-- 
2.29.2

