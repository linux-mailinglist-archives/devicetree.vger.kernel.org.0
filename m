Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16AFF476F2F
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 11:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236256AbhLPKw4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 05:52:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236257AbhLPKwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 05:52:55 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83AF8C06173F
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:55 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id v19so19141799plo.7
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VISxCt6uNVlSXPrOg0qtSxETrJeGne9ub26tyDD42ME=;
        b=jSRozYOCvi0no2PTPRdH1uAwBQ1bMEWSTfOcWWE193wMj9ECqkb2dHQ2I++Zdn+cMd
         BeEKWZE0Z2z3KlAz73W6Nb/ay0K7B0Rfmf/6ohuJoN8KOUPBWg4GHUwTdEhO+yzvUrtp
         zOHdAS9T9fJ2KuyQEtYLUsYxdOlPy9vKbzWT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VISxCt6uNVlSXPrOg0qtSxETrJeGne9ub26tyDD42ME=;
        b=uK6gFU3N7k+9B9HPPaaIsj30TuSnhJv4u5KHK5/AEmO+fK3rVa/ZO3Y3QS1Qmo46HV
         zxIrfLuvNqaJYHSHs65UK5cAcZf0JBj1mynWURWOxU4uEetAN1I2H+8u/9JdRW/h9i39
         kLHtOLiHdOxX8Suw4f2aaiwbgejnrnqn7QmamvbHiK6PiyMOJSmZX+E/SlH8w+NhQj+H
         BUx9sWYi5Zp8pno8oHehimvHADNOaBzIAIcLdyh16QbCO/8P+0j1VAA3QwbyuqnMi7AH
         RawGXLVN83Nt/D8+Tp+z7yrwJxCaGsexpNJiw85u6597BIx8EsnVD5seS1072fpRhgah
         v4mw==
X-Gm-Message-State: AOAM530IYsR2VOnA2J40dwrPHjrmR9GEKZCluyEFxSnvL41RGuVj1CDg
        LNdc/sVTkLpGqqP9rxhkN7rYvtx7SiwLyw==
X-Google-Smtp-Source: ABdhPJwMM6UUiGaZqGGwoI1XbPc1TId9Q5ruqmBSAwlCGK5WR0Dt3/tT3wiL5rzTFiuP6tKl6tQN/g==
X-Received: by 2002:a17:902:c78a:b0:142:1b7a:930 with SMTP id w10-20020a170902c78a00b001421b7a0930mr16197185pla.8.1639651974796;
        Thu, 16 Dec 2021 02:52:54 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id w19sm4986142pjh.10.2021.12.16.02.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 02:52:54 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for Miyoo
Date:   Thu, 16 Dec 2021 19:52:44 +0900
Message-Id: <20211216105246.3548133-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211216105246.3548133-1-daniel@0x0f.com>
References: <20211216105246.3548133-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a prefix for "miyoo". The only details I can find about
the company is their aliexpress store "miyoo global store":
https://www.aliexpress.com/store/912663639

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 66d6432fd781..3fe6117eac42 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -757,6 +757,8 @@ patternProperties:
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
     description: Mitsubishi Electric Corporation
+  "^miyoo,.*":
+    description: Miyoo
   "^mntre,.*":
     description: MNT Research GmbH
   "^modtronix,.*":
-- 
2.34.1

