Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0B6260C97
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 09:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729359AbgIHHzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 03:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729736AbgIHHyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 03:54:33 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B2BAC061757
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 00:54:32 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id b79so16146145wmb.4
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 00:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=un3Gh2gweDlAUsvqGdAT6fJ9irEjsQvOrf4xpheQKFc=;
        b=tCb7Xyjyf1pbyOxpVBg4F0iVcyXBpfcmtbaHZdYb60cttT+CeyHT6RB+AwUBtq2Vf1
         RdYIVREjuQImrCPeIQahoOFtc6cSUYC2q20fncg2NMlKVTVhbJ4mPXkydSj7AOgcC49n
         U7YPR9aFYv9Csqy6oOmfqK+ps590dJ8SsHDVA3QfK/8O41Zr0MK4lVvfsFSmAH6d4Kdm
         uRdElAGxaVHyKlgDX3xN/3jx0DV1HvK/dMAVAm/TKIdx4+1lgk+oHix0dZMGJ+z8TdPt
         rNpdfI0UJLbU6FJ7OcMjjAz5FCC5Ew5b1m8/tX1RLMRlfWSCIzhcj1wQhnHzLmaSTRsJ
         hW9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=un3Gh2gweDlAUsvqGdAT6fJ9irEjsQvOrf4xpheQKFc=;
        b=QF4g17PQtnFDWW5gDNEOaL6/VuOXyhwMlpTKflA3eAOxuCd2txv2UawoogTIvbVx8r
         HxEJ6MAMLWcbDxYfxizsg9Kw0wB8YtMC+Ydrhag9NT9M0EQxLgRkt7VVznnkW1nkmVEO
         u0oZA5pLk5kiMtM75M7lROZPTuasui22Oq/69nhwUpeYyfMQAeCrBYvYD8XwR1mzRuqr
         EsNUOTaBJaHWfl/zNeq2jf8cnTaVcOpz1L+97HQQ0y46wmuHrdgNeMXsapLAXeOc9lMc
         MSZc3q9oLaFrDUIdd+pfLQ4on785q4UHxN5l7p/iMkFIZfAVfrh3rvcfuyBfSe4iLiu3
         fyyA==
X-Gm-Message-State: AOAM532QVxaFTYJijPCigmYFAkAL9aeXKYDM+4UBi8Azli+huWsZQ+50
        w/XpwGWumfbIqsGOP7Fq6icNsg==
X-Google-Smtp-Source: ABdhPJy8k9dRtwiSz7EuBFI6BBdW9mwejGQ/bhYXctxJ64XJ3GDkHhArqskhdpzLqbmeozv+wzk4Eg==
X-Received: by 2002:a1c:a90a:: with SMTP id s10mr3027307wme.11.1599551670992;
        Tue, 08 Sep 2020 00:54:30 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id f14sm33788291wrv.72.2020.09.08.00.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 00:54:30 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 3/4] dt-bindings: display: panel-simple-dsi: add TDO TL070WSH30 DSI panel bindings
Date:   Tue,  8 Sep 2020 09:54:20 +0200
Message-Id: <20200908075421.17344-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200908075421.17344-1-narmstrong@baylibre.com>
References: <20200908075421.17344-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This add the bindings for the 1024x600 TFT LCD TL070WSH30 DSI panel to panel-simple-dsi.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 4d08e746cb21..a29ab65507f0 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -47,6 +47,8 @@ properties:
       - panasonic,vvx10f004b00
         # Panasonic 10" WUXGA TFT LCD panel
       - panasonic,vvx10f034n00
+        # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
+      - tdo,tl070wsh30
 
   reg:
     maxItems: 1
-- 
2.22.0

