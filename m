Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A713278E5F
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 18:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729393AbgIYQ0G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 12:26:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729110AbgIYQ0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 12:26:06 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32E36C0613D3
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 09:26:06 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id t14so3016484pgl.10
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 09:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FR8tV2dJ/U11TWa0ogl2BlvkMdFOuXzEoZRJvGo7p6I=;
        b=HPl/Iy/WXJPfpgUtGMjYyt4aratJ1qBBtn1Z0w+zGlQEzXPIPiEvqgd8chlSk9bEKa
         UJuJTDdKx7j5323xHfo46Zhx/wlKRQ36ZmEeAEp4F24M+bWHS4O2EJPyTFKzCh3uc+ks
         d1wp6jjoktuY7cLfQn1UoeKfdsIbhLMpD3nb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FR8tV2dJ/U11TWa0ogl2BlvkMdFOuXzEoZRJvGo7p6I=;
        b=D5NgsPaO0XF2jJ1ucfgmKsr0KxyqZ3M2Ikp5ZhQVVDOIs/hMcpyxSbqtmeyeZz8M0R
         /jwINd/qILlAfAJKbGmJutwB596xw83X88emYfJ1pg0O7H3co/Sth2Nqjo5693h567cS
         yfapqRVZD1Jh6UXHpYhe7yeedXg5qlUPScMXPvywFooiwiIglyjpJbstwvop1dv9k5YW
         P92OvbUFT1yCjiR/u38ziefgia5wgXqYFIQNR5lZKsvNa/U5wK91rZY4zNL9a8mJ8I6P
         m1zViUc77TNaKJqBsuRHZl/eSSH81KVPMhcj/sCVDGo/B+GTi0/sTjqWiL3JE9vVpL0/
         PJGw==
X-Gm-Message-State: AOAM532yvsCZLtvgKEgE1/qVaeO00XNYSb6M6j4NiP1O25LssFEKxrVK
        trY8/+ajK4kJneEmjAfNlc0idw==
X-Google-Smtp-Source: ABdhPJzojrNphfsKZs+tcDxID5EAhu+3qnVwXwUFFj0qXQL6337a34yiur3o8McUXwfxcSgLAJc12g==
X-Received: by 2002:a63:29c8:: with SMTP id p191mr708146pgp.45.1601051165748;
        Fri, 25 Sep 2020 09:26:05 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id q5sm3076435pfb.184.2020.09.25.09.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 09:26:05 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] ARM: dts: cros-ec-keyboard: Add alternate keymap for KEY_LEFTMETA
Date:   Fri, 25 Sep 2020 09:26:04 -0700
Message-Id: <20200925162604.2311841-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On newer keyboards this key is in a different place. Add both options to
the keymap so that both new and old keyboards work.

Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm/boot/dts/cros-ec-keyboard.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
index 4a0c1037fbc0..165c5bcd510e 100644
--- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
+++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
@@ -46,6 +46,7 @@ MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
 			MATRIX_KEY(0x02, 0x09, KEY_F8)
 			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
 
+			MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)
 			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
 			MATRIX_KEY(0x03, 0x02, KEY_F2)
 			MATRIX_KEY(0x03, 0x03, KEY_5)
-- 
Sent by a computer, using git, on the internet

