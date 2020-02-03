Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8E3B1504A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2020 11:54:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727738AbgBCKyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Feb 2020 05:54:45 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44565 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727435AbgBCKyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Feb 2020 05:54:45 -0500
Received: by mail-pg1-f193.google.com with SMTP id g3so1904223pgs.11
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2020 02:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3xwqth0j0JRZwYTHk1uzdteKd9U7z+7i4HoTqeFc82U=;
        b=KcF50IO/E4F3bV6HRoxGXWkocwgYfL4QHDNpJmohTWE7Mt/7DBO48kGOO4x1nMzBhz
         98VjsZNOxigAaq8KC68jlonM1+3zNOLMUu+6sJV4YMF/TBmKuIufMmi0FtKp4LG5P+Er
         NnIDgXFEMqPXY3DorDvWeMroZ7FFro+6qfhMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3xwqth0j0JRZwYTHk1uzdteKd9U7z+7i4HoTqeFc82U=;
        b=XKZ6cU7ywFBSEmL+G/PE+CRV7LF+Efl7Ap2ur9JEHp6n+x8HJd6pM4JBY3i9IWvXfv
         H75r6x9MUHzEllTJGxAOmD07I1N03xo+OedUHEwyvPAzlKO14WL128mpuL+FFJvsS28m
         jwZ/gTHA83/AMVgY3i9uBAhEXiiZyEIluHTKS3eh1xyLfBRp3ItFd5o+J7XnqWqMWz/N
         R9vG55i4q4KD7pY3kxB+PGrkgvoQYiIiP0+Pv+eS+thxpd8xkb/3+9X7Jn8Bc/y2js0F
         CBqjHDALWoDpSU5mH7M2jqeBF7voI7VnDoi32+gJ+E8Yn9U7ll8AR6lwmEIaRRIpOGo+
         onPQ==
X-Gm-Message-State: APjAAAXemN7DSWpltpxa/m+IcMJd2s0tz/NDcvU8NkmZr9SxOZ5rY7uW
        NqgnXfnWR+1kaKcAXJckVJj+Yg==
X-Google-Smtp-Source: APXvYqxeDCmLp2xff3fH5hTl0Vp+K0sL/O47c03M7tcS/eAYUTtC+GbrGGzgODOg24pRPZgw8vEESQ==
X-Received: by 2002:a62:3304:: with SMTP id z4mr23056111pfz.79.1580727284802;
        Mon, 03 Feb 2020 02:54:44 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 02:54:44 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Kurtz <djkurtz@chromium.org>
Subject: [PATCH v5 2/3] arm64: dts: mt8173: add uart aliases
Date:   Mon,  3 Feb 2020 18:53:48 +0800
Message-Id: <20200203105345.118294-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203105345.118294-1-hsinyi@chromium.org>
References: <20200203105345.118294-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.341.g760bfbb309-goog

