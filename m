Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAF612C0DC2
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:41:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730827AbgKWOeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:34:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729535AbgKWOeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:34:09 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29FA0C0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:34:09 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id t4so5869626wrr.12
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TzQ+MW1sRozBpQLbt6oHDRl3TR3+0qJeZOJ2PqKNVPw=;
        b=ebqRsCRRJtSqC0s8ZL2x/5Y5ZYIzJbs6cCAuKXzUsIQQ0yhEmJAMtzifwtORq7Bh52
         vFrpZXjEbkT6cESUTBbw2j+xoobJBL7lS1on/hkz0JxU8wK1PxEtM7dazwFXPlXY4Pwz
         rW0m4PXhi2ZXqijZ0tCzI8ZGmiuM7sCMUzKVOwj3eeejmNwHP/8ASIg5m2TZt9I9OYSL
         okHUwxQczORqPLyDiEHRFg9muHtwPFIzgRyL/H2NB9AP2t1ovyDkpIu/kMIUHRfs48Vs
         UJ+7qOMSaGx7kNeHqtnc3+Auz7R/8YxLiiYK7jb3e1zuv6plSnLjulgb5Yl5VjfWQmO8
         QQCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TzQ+MW1sRozBpQLbt6oHDRl3TR3+0qJeZOJ2PqKNVPw=;
        b=d6riZgJGuI8EuALOpzHbJ81Vv3/vqkIhK2LXZKSuHceE1BPhCGnI3flFSsWXkeqor5
         Rd60mJm3uaxtk7kujH7S/hWsXW1hsY3qXFqgBwn1JMXfRULTdjmfJtporPvDRaMQy+49
         5D/bfderjHEvffjxdjC1Cit0MqQ8xV6ZvhtftnFldmnm5cV2hYsOt+81EexDiNRwWxDg
         DYKUlxhAYLPOzOJF9lttnMg4rMfUVmzGdRLfhHNx+UcTO7pOTqozR0V3Svf2uNVZGRGW
         VtD4vUM4nnOmLXRssQ0nfDVo7jeXl5ThcE5mtheR7Mu5KC3m9MZQFk3vC6y/P6qBW5Lx
         HquQ==
X-Gm-Message-State: AOAM532bcfZ4xkv2rrY3kla0QxKlmUYaXhZ8eVuAhMzOuD+Hq66J3NVu
        1phN9PnhYh5+PQKYy0BF30OvUg==
X-Google-Smtp-Source: ABdhPJwehKyk0RMzN+JwyVjbkvxBf9siWp85cfodX5MrKLYB3qY3Up0iA83EJiLEjiVbMg4MOy6T9A==
X-Received: by 2002:adf:c147:: with SMTP id w7mr33954942wre.60.1606142047701;
        Mon, 23 Nov 2020 06:34:07 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:9541:d2fd:3a68:67ae])
        by smtp.gmail.com with ESMTPSA id h2sm18126723wme.45.2020.11.23.06.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 06:34:07 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     sam@ravnborg.org
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: panel-simple-dsi: add Khadas TS050 panel bindings
Date:   Mon, 23 Nov 2020 15:33:53 +0100
Message-Id: <20201123143354.295844-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123143354.295844-1-narmstrong@baylibre.com>
References: <20201123143354.295844-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This add the bindings for the Khadas TS050 1080x1920 5" LCD DSI panel designed to work
with the Khadas Edge-V, Captain, VIM3 and VIM3L Single Board Computers.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 72e4b6d4d5e1..fbd71669248f 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -35,6 +35,8 @@ properties:
       - boe,tv080wum-nl0
         # Innolux P079ZCA 7.85" 768x1024 TFT LCD panel
       - innolux,p079zca
+        # Khadas TS050 5" 1080x1920 LCD panel
+      - khadas,ts050
         # Kingdisplay KD097D04 9.7" 1536x2048 TFT LCD panel
       - kingdisplay,kd097d04
         # LG ACX467AKM-7 4.95" 1080×1920 LCD Panel
-- 
2.25.1

