Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E51481A17
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:59:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728716AbfHEM66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:58:58 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55555 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728724AbfHEM6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:58:55 -0400
Received: by mail-wm1-f67.google.com with SMTP id a15so74645701wmj.5
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=98lh3VhEJYcNP4cO6bfAWLsXJomqXzKBLTJKfb0rfuY=;
        b=tMnBMEYxd6Lk47wVxq8np1s07LPbtohRCD9xifUu+u/mzgsVZzai5W9om02Rx3+Nb1
         tv62V9YKJ2x9GGQSuyYppVpgKlfNYYE9mhFKylGM4whvoeB5s2wWMLc+W4EmXTbO0gXB
         oLjGlL8FWWWdesfvwBYBq4LJ0Vi3usyG9KhMN/2TLtcowEOakLiV8qSWKkzmCeDfxKG3
         qRtvMzkDWgc63UQxW79fR00LSbu9OWNG0btdqFgsNig9WykCCzGhqwgfs0YLE6eL0ohl
         JWXR8vRNpcJR0AGTyBKmbK1NXKrbojwL7TVJmgmCvj8GHPKFPfPXoWH9f3Nk+MRf2jzJ
         qLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=98lh3VhEJYcNP4cO6bfAWLsXJomqXzKBLTJKfb0rfuY=;
        b=LD9rUFzZERgr5j+xYjAc8b/BNpeHiToqpIoNeVY/3eUDgpdZiIjyZuiXz7EV4f1dKO
         vFsvuZ3KUHAQHnNLx/26963sVdb9Z4bh0Pv/8kh4WIgZly0taavwEIxgXfE8q1FPUbhs
         /lnUo9UAgZ9lU5MmbgelDFoPc57+q5/+bYV4kaTzwhfWSbCTjBizKYDLpzEoxMU7wyYX
         Xwj1P4nnqFlvWVbedxnf3NtV6ixeE7MUt8IhOI1/gYgFmY1uhgtdZBZXxHvjRCEQ79WU
         3eSqFKKpTXvYNRU6lxqxDKbL4Rk5RFA5REpx5GcXb/Uls7BKp7sEptH3CkAvWK5wkunv
         /+FQ==
X-Gm-Message-State: APjAAAUW+jUwRT4WUv/Qp8oC27Rb7PlhDoDLKodZkcQyGSr0eFID3kLp
        lyFvrAsh4OGNMEphzJhIzAkr8w==
X-Google-Smtp-Source: APXvYqzsqQmdgJj3jeIDVq76HPcJpxfluPpf19/xxhP3uizn5JqLt/VNLa8L7aHlrqKs6BQBR3c4qA==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr18411997wmg.65.1565009932852;
        Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
Received: from radium.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id k9sm15582779wrd.46.2019.08.05.05.58.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     thierry.reding@gmail.com, robh+dt@kernel.org,
        matthias.bgg@gmail.com
Cc:     mark.rutland@arm.com, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 2/2] pwm: pwm-mediatek: Add MT8516 SoC support
Date:   Mon,  5 Aug 2019 14:58:48 +0200
Message-Id: <20190805125848.15751-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190805125848.15751-1-fparent@baylibre.com>
References: <20190805125848.15751-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible and the platform data to support PWM on the MT8516
SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/pwm/pwm-mediatek.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index eb6674ce995f..6697e30811e7 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -302,11 +302,18 @@ static const struct mtk_pwm_platform_data mt7628_pwm_data = {
 	.has_clks = false,
 };
 
+static const struct mtk_pwm_platform_data mt8516_pwm_data = {
+	.num_pwms = 5,
+	.pwm45_fixup = false,
+	.has_clks = true,
+};
+
 static const struct of_device_id mtk_pwm_of_match[] = {
 	{ .compatible = "mediatek,mt2712-pwm", .data = &mt2712_pwm_data },
 	{ .compatible = "mediatek,mt7622-pwm", .data = &mt7622_pwm_data },
 	{ .compatible = "mediatek,mt7623-pwm", .data = &mt7623_pwm_data },
 	{ .compatible = "mediatek,mt7628-pwm", .data = &mt7628_pwm_data },
+	{ .compatible = "mediatek,mt8516-pwm", .data = &mt8516_pwm_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, mtk_pwm_of_match);
-- 
2.23.0.rc1

