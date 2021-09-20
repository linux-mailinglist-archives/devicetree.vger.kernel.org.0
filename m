Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44ED14114F3
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 14:53:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238766AbhITMyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 08:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238733AbhITMyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 08:54:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CC7C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:53:12 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w17so21227286wrv.10
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=odHI/PXYXvMPwuwyJLwBNtQ4gn/Bf7sHU9R+vVUedmo=;
        b=AodceL3CODIUJY5ChjPDUZruuV5VtP6rHgwRMzfGTcEt2r/+4CBr0g3MlcxbcebP9t
         2IVPn2MrRezZYkA1xGoaF36z98W1+VM3McWaYJzMaTLuOP+MqE7oKgyRCcT7buGqclmu
         nArcfhVKssRFpgTdWk6el+mSao/k1bSdKAvf+m4cZESFhuICVQ+rV/FY9Yw4vF/m/J5q
         0frq70rl6YYo7jQHb/qudHqfRS5hb0WhgSelzTU8t0h/syEr42JvNv1WFW9b2rW8YiKi
         tScs3GhG4quzg2epczdZXWkYNN9/GkClb4HO9xS9PG0oRKHynJXZlYtFV01OR4ncGS/5
         Z9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=odHI/PXYXvMPwuwyJLwBNtQ4gn/Bf7sHU9R+vVUedmo=;
        b=N6CVrvtwKQO7UEZ6lUZ1KyZaEfC3vZUd/B77qop7CbCHSvfilZxpOcfdxa6tLb1+SA
         ahyYjzsPonJwmeGlupTjCtbqLO4R245rRrv5TeuWMm2JHIgquUGv8wlcImm/sJy14yVY
         yn3Zqj3+2o0g+4Iq++l0XNE4tTlin/2a/nPsegi6X+SWbn3HHzTT5PffE954HGlp1P1w
         duuh+UjVh2nK7lDCrr4Deqb08elTWYKNCk0E4VvFFeerbiHM5EdKgmTtVOGQXmFR8fOP
         6LCMxnswCFstF1h+B6tkH3a4k7kj7CDZ1ePr/IO8eQqOlHhEzSAYvoI5KJMMaRBGhpcP
         nYag==
X-Gm-Message-State: AOAM533nCaO4Y8EiZGP5VVEnWQ3lOC0qovYkz9T949e+FB6PIq5YWIre
        i+symfXd4VNUwjY7YtHO9kyKwe28UYlofTbq
X-Google-Smtp-Source: ABdhPJysiWMbGveCwYjQZJtXO2THZfxkNqduU85+7D+HUShT0a0vLGNCMgQwjAirlO4GyYFTZyhgsw==
X-Received: by 2002:a5d:61c1:: with SMTP id q1mr27974563wrv.154.1632142390637;
        Mon, 20 Sep 2021 05:53:10 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:aa8a:ef22:59c5:1bf3])
        by smtp.gmail.com with ESMTPSA id j21sm15791643wrd.48.2021.09.20.05.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 05:53:10 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     tony@atomide.com
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Gowtham Tammana <g-tammana@ti.com>,
        Jyri Sarha <jsarha@ti.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 2/4] ARM: dts: dra7-evm: Enable BB2D node
Date:   Mon, 20 Sep 2021 14:53:04 +0200
Message-Id: <20210920125306.12347-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920125306.12347-1-narmstrong@baylibre.com>
References: <20210920125306.12347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Gowtham Tammana <g-tammana@ti.com>

This enables the BB2D graphics accelerator for DRA7 EVM board.

Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
Signed-off-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/dra7-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/dra7-evm.dts b/arch/arm/boot/dts/dra7-evm.dts
index 87deb6a76eff..63a29caa4c8c 100644
--- a/arch/arm/boot/dts/dra7-evm.dts
+++ b/arch/arm/boot/dts/dra7-evm.dts
@@ -590,3 +590,7 @@ &dsp2 {
 	status = "okay";
 	memory-region = <&dsp2_memory_region>;
 };
+
+&bb2d {
+	status = "okay";
+};
-- 
2.25.1

