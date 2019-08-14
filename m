Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B0B58D604
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728343AbfHNO36 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:29:58 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:37315 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728203AbfHNO3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:36 -0400
Received: by mail-wm1-f68.google.com with SMTP id z23so4664989wmf.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zee9ZRDcb5inoC93RJS0uCkZrQQq9+sqXLbyGEkf3es=;
        b=m9BQRXokoK3oSLoUUWSs2P/Defc/M0t9ePLgdmYqsJtzJ0HI3LnXX5AHvsqPrmMUsU
         iUI3sllxVhZnHVaLcTFiqiSPDYCnotEhoZIj6UAhJ5GZNeyK8CfZbltY0t5zysRiVJJG
         IE2X30uYI3ir2Ab2j/XPggNbgLrxPzAa/QIgoIuPnWrpxfow4T2kSU2vV+1Ks5xczDJy
         nknhfRbZ2oz8bmTU1UwHiE8mZaMjczktURT+D8oqWgcHgUTWq9d6JsXqfkz1yM7ytxCL
         roF2OK8GdvWpWHwbpOGdkGIGmlWwEMvM3aYtyARyEil6Dnd9MvCi4R0a5LrAgLqMgVzg
         Q91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zee9ZRDcb5inoC93RJS0uCkZrQQq9+sqXLbyGEkf3es=;
        b=D3zQGGa+muHUsdctndtEMvTCXB7GeddN4Tm1VoqZR4YogsGaTQ4F/r24yiWaPsjwZp
         tPBoda085fDnBNI3gYtEgLWYK3AsJDn3V7bDDjLOjodg4PSf6PXqWaYTzSKoiEwUGV3G
         c/g+u3vCGMwdaFyi9eFJk0QckhzKK9Xp1g4bPDW4C9VSY7bLMZ5yo06AgByHdBbHr7P5
         Y+qVCmweoc8u1ML9dzkPdTC+Y8bOSatP1NM53s03Q/nB/yBwSD5h+6JTwgNErdsCFLeE
         PKAI8dwgZpGu/1Ybc4qriLGAkjfwXhIRglW0RTyhwmZJCSU1DcUpNwHvJw9CDQdTLI0v
         4qfQ==
X-Gm-Message-State: APjAAAU/jrwxXVNJpBk7srmNmI+MAPgQ+S8NnrpvF6mGrBHB5sXDe5C0
        F1p98LAvbq5XbrWD36mBb5VxsA==
X-Google-Smtp-Source: APXvYqyObvPZ5EwHEMDDw6HePxLmKaHa/IrznJlLwb7R76uBXAsL0zEnQqlQ0zVdkK3gER53KlcZjg==
X-Received: by 2002:a1c:a481:: with SMTP id n123mr8225671wme.123.1565792974524;
        Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:33 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
Date:   Wed, 14 Aug 2019 16:29:15 +0200
Message-Id: <20190814142918.11636-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index fe4013cca876..acb931cf3e7c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -11,7 +11,7 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "amediatech,x96-max", "amlogic,u200", "amlogic,g12a";
+	compatible = "amediatech,x96-max", "amlogic,g12a";
 	model = "Shenzhen Amediatech Technology Co., Ltd X96 Max";
 
 	aliases {
-- 
2.22.0

