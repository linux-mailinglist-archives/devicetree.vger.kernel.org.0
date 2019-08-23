Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 05D6E9A81B
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405085AbfHWHDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:20 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:40178 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405005AbfHWHDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:07 -0400
Received: by mail-wr1-f65.google.com with SMTP id c3so7599211wrd.7
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uI8qQhPoSb2o78mSYJur6fMHkdVTqendruK+vUMA+EI=;
        b=LRxuLnOgnkev29O5lb2dlPiBfPa1sUXeWz/jSvH/c6uTLmk9wmTZ+lv1qzIcNpT8x9
         jGq7Zs6Iv3r3izu/Eaq0Ej/39vRhNMYaO8vqse6XVCA4nLV4tGfzmDhu1Q/3yXJ73uvf
         LDFzEC5eadqmsQpAUKSMwUzmM20p9FQEDc0zFoXdOD/c8ufVi5RExUfpJ6l/PmaTQwgX
         mX7OFYVSszT4/R7dzAy2fTBcM3kemZTVLhBpg5th3IblC77zRJnLEOC4tZnsDJ0mt4b6
         ySZJW5y8+2KqFkEe3mLTqQX2YdgHIaS1fKrbrzNFpi5/33EZ/ufy3pfi2a5WMFzMr852
         8UXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uI8qQhPoSb2o78mSYJur6fMHkdVTqendruK+vUMA+EI=;
        b=htkQScr8jOTGGs3mCMgkQHR+2WJvJUUBcBuFxudezYOnFg3CGgoZ4OIJiYDHl1sID3
         LGS5EEtterTqzQk1Xj0+/K60R66Lb+ySaYGmgbgxwNfKVXkuerwNLXoLocY8QsSWzu5U
         BVBF6HOkdsrtRK76rJGy7ZsG9fbOWlBVAeLVHoQS+/l3An7DJY52fgl7qzij7sdL+dqS
         hTHMvBtWQXx8ih7AVrVE52HXp5V9wZLxBF1lgkobgDxfJyJs2fWlMfbBB9FRJf4gbkXs
         QZwpiPl78A8sPHZ1U0mrLfUaTtAU1Ia3dzJ29kCZLR4yBexjEe8to4/nd2KBnuag8T9c
         jJYA==
X-Gm-Message-State: APjAAAWHlLRXNCF2XF4yxeSnwloLEaKibQB7R/+MNoRQwdOZ3ADjCsu2
        1Tf0YzO6SG+lZ0j+X/eOG85QGA==
X-Google-Smtp-Source: APXvYqx5BXWNMME8DGfmLerCyIhSAAFxC3+YjVaDJOMVLxMm/VisM7XkyefM1tsKyH3BQ6Dfmiwqyw==
X-Received: by 2002:a5d:51c7:: with SMTP id n7mr3013137wrv.73.1566543785617;
        Fri, 23 Aug 2019 00:03:05 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 12/14] arm64: dts: meson-gxbb-nanopi-k2: add missing model
Date:   Fri, 23 Aug 2019 09:02:46 +0200
Message-Id: <20190823070248.25832-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: /: 'model' is a required property

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index c34c1c90ccb6..233eb1cd7967 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "friendlyarm,nanopi-k2", "amlogic,meson-gxbb";
+	model = "FriendlyARM NanoPi K2";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.22.0

