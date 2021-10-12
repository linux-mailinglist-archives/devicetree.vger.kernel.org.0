Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38F6342AA91
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 19:16:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232148AbhJLRSb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 13:18:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232085AbhJLRSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 13:18:31 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0228AC061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 10:16:29 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t9so116689lfd.1
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 10:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c+pdIjVhlHP+7rLIgR547hoyyJNbKcaM94b/z/uUGNg=;
        b=RMnxV/1YtFxE7Q8wud9+d7bLEPHNyIGrs+cww//wo4ndpXbcuTDow3HrHd081pG4V0
         5Q0k/GeBegYJYpQwP59zv7lkhB+1vGA0LnH8HkXvBuMiEA+mWhcppcijyksHAuqvwFF3
         13h+A+uTXW8KeKFP2BhWCwfdlsdNu+lwzVP1FuH6zbTvMlaDoPNhUVPuZUB8s5OfrVAG
         ofn2YRiZhB65RZMJNoM4priMldiaw809Gq7hhCATJ8ly45jDGSjrFKKGprZJaXwEb707
         LaJSy66soeYeZ5CPhdFwaa/NMMcEWH9nV80y3vcuG/ncHGn/YAAt4KjE2wGwWGZTslVM
         HVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c+pdIjVhlHP+7rLIgR547hoyyJNbKcaM94b/z/uUGNg=;
        b=Mr0971qfR9rAwiTsM7+ApZrvUHGstYkY73DEo4lrK3FIPkU9qdFUTwewCfmz6ehOzT
         cbTl0fQFTvSnxzG3qJKiVj86ShFUkb1SOdsY9zNYU1xq15hTi7LawXI+VDziUCaKEy1h
         BbzEKYBAD5EuFIKBQFAIdtTPWUo4Xg/ntrkoJAGk8im5OuHvfxsn94abheLsAN5NyW24
         KNoyeiNxgNzUr9VR1PqvnZ8Rmm/My1wU3ZFYAVndMD3qwqWqB+wagUgfyT/eCbXj4P80
         suVI6gNZ/Nq4KhkXUrxfAdnNN/2H278LYpuPqvrX5Pt44ol3x59hnCMk92eUZilC5Gn7
         Cdlw==
X-Gm-Message-State: AOAM533dLCBuA7tr1kPXsTKTZok69icK9V8bcszIfesi03eZwvlHhhIJ
        fPhK8MDpQgD2xmsANK3f7xe6JA==
X-Google-Smtp-Source: ABdhPJwwNkuxXjuENhbZ78o1lnzW5pPti+1zbyB4pQWzpRNwws0NrIb+iSfvg3PU0C0WWVi2Z3/cRQ==
X-Received: by 2002:ac2:4bc2:: with SMTP id o2mr32675620lfq.462.1634058987323;
        Tue, 12 Oct 2021 10:16:27 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id k24sm989627lfe.76.2021.10.12.10.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 10:16:26 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: samsung: exynos-chipid: Document Exynos850 compatible
Date:   Tue, 12 Oct 2021 20:16:23 +0300
Message-Id: <20211012171624.14338-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012171624.14338-1-semen.protsenko@linaro.org>
References: <20211012171624.14338-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for Exynos850 chip-id. While at it, use enum
instead of items/const, to reduce further cluttering of "compatible"
list.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../devicetree/bindings/arm/samsung/exynos-chipid.yaml       | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index f99c0c6df21b..bfc352a2fdd6 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -11,8 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    items:
-      - const: samsung,exynos4210-chipid
+    enum:
+      - samsung,exynos4210-chipid
+      - samsung,exynos850-chipid
 
   reg:
     maxItems: 1
-- 
2.30.2

