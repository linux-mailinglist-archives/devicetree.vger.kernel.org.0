Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B31393B4152
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 12:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231429AbhFYKTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 06:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231436AbhFYKTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 06:19:30 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF5DC061760
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:17:07 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id j1so9967329wrn.9
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cIJcZ1Hi3DoEF/1CqsW4mJpJl8hECj9iLa8Ln8QVFSo=;
        b=U7cy1h0cVWptDWWUfpU4ico2RksrM6E1SfL/eAHUZUdgMGsizxx2HClHmoQafPXGG9
         3i+jVIgS/hqvcM4onNMG8u4MgqATSVltVqBsprLIgK6Bb9pZ7F3CEz3d4M8Bhkfb/ib4
         jfUhketbQby9lGJ/zCMVPpTERDPGqR9xDh2wa2s5pvXZ9fzXmVEK2bzct6MWXSD/9P9A
         4qhZx90viYFxl60oUkhuMQ0s8IYmsjc76FJHXWbrrgWIT3O1q3wRx00/4LVLStDgOr1h
         lDPRm8kFzoKLFqq1/1BLDWLNbsAI85izjGDmwUv4crTiELVC13QxKjMVJFccCpEGWv2a
         BE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cIJcZ1Hi3DoEF/1CqsW4mJpJl8hECj9iLa8Ln8QVFSo=;
        b=NgDz3ORqDYaXtSmVBnEZkbJ+9HUnYJ9+vYpjRR+10gDi58LGujrfjw1HPT5yVCSVZW
         /HReXkZZXZBRAqly8N1SmUm5VPZrhakXPLhehThLGJ72YQEBsVQzgY1Ru43jLQvYrhmu
         6/2cVLi6rFcURW5L9PLSBUWZndkL4Lej6D1kO/rEEYKcx2Zk2HG2J162qJ1wbD9W7rkX
         Gc1Fdo5+pXgtmbWDaUPSmAijgw0wtZAD2hGIUhtzAPEK4ImRX4UGIQ/Nj/qSgC8SM27Y
         WFyeXrZ75p+PHSzrqcXcnammfU5TVUq80tXuxsr+00IshnPLgUbn1FzUy0bQz2YO5Wk/
         fq5A==
X-Gm-Message-State: AOAM5305+h+rt5gp6GNO3nwMpmya/o/Xwfj+D5GPEYuy46aRgOyt1ewN
        yLdnu6I1LFo2px8hzCn5OGY=
X-Google-Smtp-Source: ABdhPJxeqsKJWHHGkmrWZgB5l5AlihSE0DYgHzBqRaUowI3qYFtG6+88oK9iZhepTpRmQt7/GoCtpA==
X-Received: by 2002:a5d:4703:: with SMTP id y3mr9720719wrq.321.1624616226487;
        Fri, 25 Jun 2021 03:17:06 -0700 (PDT)
Received: from morpheus.roving-it.com.com (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
        by smtp.googlemail.com with ESMTPSA id 204sm5462736wma.30.2021.06.25.03.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 03:17:05 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>,
        Tobias Schramm <t.schramm@manjaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Don't enable i2c3 on Pinebook Pro
Date:   Fri, 25 Jun 2021 11:17:03 +0100
Message-Id: <20210625101703.3290934-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210625101703.3290934-1-pbrobinson@gmail.com>
References: <20210625101703.3290934-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Pinebook Pro doesn't have anything connected to the i2c3 interface
so there's no need to enable it in the device tree.

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index f584d08a63f0..e02f6b5cc49e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -685,12 +685,6 @@ es8316: es8316@11 {
 	};
 };
 
-&i2c3 {
-	i2c-scl-falling-time-ns = <15>;
-	i2c-scl-rising-time-ns = <450>;
-	status = "okay";
-};
-
 &i2c4 {
 	i2c-scl-falling-time-ns = <20>;
 	i2c-scl-rising-time-ns = <600>;
-- 
2.31.1

