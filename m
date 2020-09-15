Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9217D26A4F6
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 14:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726486AbgIOMU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 08:20:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726485AbgIOMTV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 08:19:21 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9E3FC06178B
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:19:20 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id y15so3249488wmi.0
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/f+R+j91elfFPYf4zfHO7Bzdv43BgZ5CODvbZ0Vzlb0=;
        b=ALUSvXEave0lkRZzUeEbGO8h2GDfO0EU1AiDTv2SiPlJ4oOGdkbhRYuv9hFUcMyGSO
         alirB7AKsTW6bTsLpcZ92Ic+b9IriMXONlINaxSKzFIhfodhg/IoZo/6QshxxDEFPQF9
         +z0PYAL6PDisRD661B16WsycbbcZ61BeLzcMHp1/DvhmU7DKPBTRMHjtHkMn5RmafR2Q
         s70bVvvdGwrgVsJxh0OiBJnXJwxMlOn6mg4OI+PW/l4Ap6wUcG33kZiGkZP+yBlpHoqh
         dmfDxhWB79y7cZntYKBsS+i/WkkYB0rizS9oBJEauiIWy4wyfvIo6eZjTzxlPGxabafg
         ikHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/f+R+j91elfFPYf4zfHO7Bzdv43BgZ5CODvbZ0Vzlb0=;
        b=FQQ4pdFlVyRL5VD6v1Ca8LJJcgoHsztY8qNvo3r8kdqtfTmjGZckPeT+rUXOoEwPC9
         duBAO2/ZUEmd6fJhfKXX5obNhYXIN3SN4dV6smAkDf3wpaenXPFdYoMi3JL70FjXmR43
         9gfklK0jI3WdDB86U91tMqYvQA90rTWlGwWBUQE86OXr35qOFvRB2YFciycBzttQ/7b0
         9vYHl1n/EHrKVpEip51yg3eEA8bZgpOc6vRvfNKyWxDHLFZTWoQ61ONoBRuFihZHk9B9
         88pFr2q7rOrII/pfxWnnFi0tODeiVsqkiZKoLPxeahrwZ11f68EtXSbYa1A+bum0V6cH
         iGkA==
X-Gm-Message-State: AOAM530O4hmQzgNwLXAZkqEtwMHHjgS0wbivdE9aUFeFctvfDZbvwRKa
        0tABJa01071ekYUkdFEuKMXPSA==
X-Google-Smtp-Source: ABdhPJyu3ypcdWMW/OyELVvdkIVANM6RtWY9v4+qY/DqA8slXt9wOmWk6s4o4g2lz7Q0ucEvuSK83Q==
X-Received: by 2002:a1c:f008:: with SMTP id a8mr4634653wmb.155.1600172359411;
        Tue, 15 Sep 2020 05:19:19 -0700 (PDT)
Received: from bender.baylibre.local (home.beaume.starnux.net. [82.236.8.43])
        by smtp.gmail.com with ESMTPSA id 2sm18271411wmf.25.2020.09.15.05.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 05:19:18 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v4 2/4] dt-bindings: display: panel-simple-dsi: add optional reset gpio
Date:   Tue, 15 Sep 2020 14:19:10 +0200
Message-Id: <20200915121912.4347-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200915121912.4347-1-narmstrong@baylibre.com>
References: <20200915121912.4347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple DSI panels can also have a reset GPIO signal in addition/instead of an
enable GPIO signal.

This adds an optional reset-gpios property.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index c0dd9fa29f1d..4d08e746cb21 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -54,6 +54,7 @@ properties:
 
   backlight: true
   enable-gpios: true
+  reset-gpios: true
   port: true
   power-supply: true
 
-- 
2.22.0

