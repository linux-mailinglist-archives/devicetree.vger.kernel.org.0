Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C710E44C8FA
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 20:27:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231666AbhKJT31 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 14:29:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232988AbhKJT30 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 14:29:26 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C78C061764
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:26:38 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id b12so5869852wrh.4
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67RflP8EMvWl3pms6qSQzXgIsULKMBC3q9PmqMFeHNI=;
        b=6Z+nm+/nqAhDht1rZGlH/mNfNev5GGs2XCS2grf4aCItbDCNfifaUAIHKy9l8+BQyj
         uhI5IDMkB24u5Qi++8U15ZgIa0ko5Gk8cXFmcZKIJJ4d8qzjA3Bw84qnik4R4seqk5NJ
         YV6ZCg8YWAoLspbhtwdWPjGtqTGSQ6g849jommWhtF6Q5VINSclLpCYLG9241Db6Ou3x
         sx2cvLka6b4WicRbGJsP1RmCistSuGKqaEPK8N7rU/itSFmuxm92sU3RqxNwCK6DsumG
         faG76Avn4/z2ySDBa0X/xgWlEPbL2Voq2dAkzqnNSa6hTLXjgMiLNP8D+KHz/qSQfheM
         1qBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67RflP8EMvWl3pms6qSQzXgIsULKMBC3q9PmqMFeHNI=;
        b=sIknJrqGq7XwKtcwNayy0av1z8Sh6616FkQI01BuzqbWE4JSa173oiaFLSB2vJ0Dea
         f9pcH2HRD95mFG0HgJzLxb/r7rNUL/fTYkWpSctOZxVbbqo6KgF7r0mqrnrRSrmXtGws
         0tZsKQbKKP6HPZH4Hh/r/5n63UEcT5a54EsIDME5SqgTO1Sqavosw5VNYRqjT828iADn
         ZaZBlBDeuJk/IViieqEE2lmEul4SKkj72BZdy26jfxfetjnqTG8mtkGiPIOd/kWqk2Cg
         BsDt8Yn29AXGbVks1GdOWRBTSbg1VyhLKf6+79jNUsJCu8WsPXFZi7MEjgmBsxSrzCa/
         PkAg==
X-Gm-Message-State: AOAM5320ui2pI/Hv0uGxoMc3xE+Yw2RpICMkW1QX5guwA/WrYxeZoeqT
        VCbAHAG3/hndzMubhk87+4Gr3DVbMTb2IA==
X-Google-Smtp-Source: ABdhPJz6hgMMPdrdO/rkxLRSJQ8E+hfok+dIssCwkfCmuwTnnaVIj/RzSyF9FTfspETklUhTNBXD7w==
X-Received: by 2002:a5d:604a:: with SMTP id j10mr1781746wrt.93.1636572397342;
        Wed, 10 Nov 2021 11:26:37 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id m14sm1282370wrp.28.2021.11.10.11.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 11:26:36 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8183-evb: Add node for thermistor
Date:   Wed, 10 Nov 2021 20:26:31 +0100
Message-Id: <20211110192631.4182485-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add node to be able to read the temperature for the thermistor
connected to AUXIN0.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 7bc0a6a7fadf..f3fd3cca23e9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -36,6 +36,14 @@ scp_mem_reserved: scp_mem_region {
 			no-map;
 		};
 	};
+
+	ntc@0 {
+		compatible = "murata,ncp03wf104";
+		pullup-uv = <1800000>;
+		pullup-ohm = <390000>;
+		pulldown-ohm = <0>;
+		io-channels = <&auxadc 0>;
+	};
 };
 
 &auxadc {
-- 
2.33.1

