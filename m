Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9FC33EDB1B
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 18:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231438AbhHPQmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 12:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhHPQmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 12:42:21 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54773C0613C1
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 09:41:49 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q11so24519228wrr.9
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 09:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jxcnjHPA5B0j7qX5chL1ZJXQsXksmgMefqmaOOvck6g=;
        b=gh2l0B5f6EJ7VXrb+GYCYmriYpOHMNPGU+nz2lisk3yiUpFuUBbr7Tmf1rybpLntdb
         hdpRJ/659TUr0FD1rANpNv/MxCvfr/etPOeFIrH5iuFKbzHh3Wg5gPMP0FxtJYdyG/Sn
         +rvl+qFCJhXyjJeAPjdCxc0/HEbb1U+6mAgWQD/4EedobPEVDBIK4V6Cru7Cu1b+pkOx
         hjEAfM3awnc2wpXxrBZXNT7nNy/xb+LBP1kv/HQJmSZDm8E8B8s3TyfMoEdUlGX95Ar3
         hQbuKj9KYNazwHZdUkPr1axAssNcx9D5NC9LBJ7PhLJg9ACo/PgzOY/Ay61t0PcRmaIe
         imDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jxcnjHPA5B0j7qX5chL1ZJXQsXksmgMefqmaOOvck6g=;
        b=NuGZDkHgS0Cw2gp9UGxs+6cteZ+Nta+0nmvG5UDCx1ORm6qXz0/lULR4wmdzUFcSvK
         uUPTHxlz4L4yQEl1cx4jGoj0LwHF34J5BhRsAsKWRx2SehcyQGxuVzVo3L5jOipllxTu
         iGTHMSmIs2YHUCqpwegArt1Abw2azQJJKe3uMGLQP+1A5ITuMXCYC6SSvfEweKxhGagz
         Ey5U798QN5GZCEQfVSbnrNVI94BEBfauGLbs9YYjzspr+L8ZfGqxMNtm60m5AM7d+tDD
         YakUqauc8H6Wbqm7bg8UezLHJFGlF/VVHp3u5U9xFrQNu+GwgcNI3ywCw4jjWcLx9pFA
         R3wQ==
X-Gm-Message-State: AOAM531JK+jqqGvshi5g0/MC1rI04Co/jD89JQm05C5PXS09OVb5gpqb
        EaqJ2zXaRk46HTySyiwTHl4gfQ==
X-Google-Smtp-Source: ABdhPJz88fBErB0TXJjcCkHN84Q0xoZWg8NEBr1BSB0Iw+EaQ1/y6x2qK2vtpblHlClHO8Q5N0gAHQ==
X-Received: by 2002:adf:f292:: with SMTP id k18mr19621618wro.249.1629132107978;
        Mon, 16 Aug 2021 09:41:47 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:3a81:3690:b885:8dcf:f8c6:7841])
        by smtp.gmail.com with ESMTPSA id m10sm15211730wro.63.2021.08.16.09.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 09:41:47 -0700 (PDT)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     rui.zhang@intel.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com
Cc:     ben.tseng@mediatek.com, michael.kao@mediatek.com,
        ethan.chang@mediatek.com, fparent@baylibre.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: thermal: Add binding document for mt8195 thermal controller
Date:   Mon, 16 Aug 2021 18:43:05 +0200
Message-Id: <20210816164307.557315-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816164307.557315-1-abailon@baylibre.com>
References: <20210816164307.557315-1-abailon@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds binding document for mt8195 thermal controller.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
---
 .../devicetree/bindings/thermal/mediatek-thermal-lvts.yaml  | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal-lvts.yaml b/Documentation/devicetree/bindings/thermal/mediatek-thermal-lvts.yaml
index 69ffe7b14c212..2e1ae00d4fd18 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal-lvts.yaml
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal-lvts.yaml
@@ -12,7 +12,11 @@ maintainers:
 
 properties:
   compatible:
-    const: mediatek,mt6873-lvts
+    oneOf:
+      - items:
+          - enum:
+              - mediatek,mt6873-lvts
+              - mediatek,mt8195-lvts
 
   reg:
     maxItems: 1
-- 
2.31.1

