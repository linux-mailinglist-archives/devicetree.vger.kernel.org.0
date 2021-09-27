Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D59FE419819
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 17:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235278AbhI0Pnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 11:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235255AbhI0Pnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 11:43:50 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42092C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 08:42:12 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id b26so22671424edt.0
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 08:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CBjJ13FCpP/hd5pZS3FX6dverz31Y4VFTcEH/pao96g=;
        b=SY3wZKR6nOSIasw400g6YgMHSTKCcwuM1yJYuIOu3iQgOwy3IVNZkpZY9rrMHeiGMj
         Sv132G4Gf92KTR68tzfhJhImoWPQ0KqVJrl9+emmmrQuP1p8J7Oathc4m3N336ZE5DRf
         5gdGS34cFE1yZ2dNu2XSZyKtLJ8ANQsJSsAXZgC7R3YdRiZUA0CjJyyXOqeUXWfOK0TA
         9wh1g8ptrCwhbq7RFqM77bCS3kPZIMNx7uhBMQXO+eTHCHF5BT7jeP5UuCrKCghEqecp
         CZFgDsToDyNHVUjWRQ7/jgVRkzDeGRmvB1hYB4jV1UU54oKsgIBHv4NyeFzoV5ausFug
         1LWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CBjJ13FCpP/hd5pZS3FX6dverz31Y4VFTcEH/pao96g=;
        b=E/BXQPeb3P9RsX5aMKzK09uh4JE0rd2t2FDvfXnYFXXwivbwvqa0lCV01JNpx/JmKU
         LiIDUgWV2Y8GcR1JmSkxdIhm3LCqa742YKOqr7+fo8Nem/z1E9zJ1GQUcej83jYKh8px
         O5YI1X0+dhXqV7a5y/l0pWUXOCvwRXjYLK9kQDx7iKkyPWHQ9/qM/tfZbscDCJK9liVN
         wv3ejdmBUmai+N1S3cr1mzV7IFzzj9JX6an651s3JQRkR8Q1TijatXvaT9VIxd0XzjOB
         66KRp6xA1Mb5ydgns28E2VEhcSwcqNZwnUBOWxks/1Fu8cY2tydu1E4Wa4hA9e0a4HlG
         WI5w==
X-Gm-Message-State: AOAM532vaMz+wyW1TLMBjhNqiH3DgUX2tQxjVddSpAvHRQjH5KS52A0d
        8Hfr01pdR03yUycRxHl1ANTQKw==
X-Google-Smtp-Source: ABdhPJwvHjPrL+qmjed/Prp0vaMpNeTWufcaTSjUjOBOwnBt2Oqz37Fp7yXMd6pTd1pmdKHGr6PngQ==
X-Received: by 2002:a17:906:a24d:: with SMTP id bi13mr707693ejb.481.1632757330882;
        Mon, 27 Sep 2021 08:42:10 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id n16sm10768025edd.10.2021.09.27.08.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 08:42:10 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 4/4] arm64: dts: marvell: espressobin-ultra: enable front USB3 port
Date:   Mon, 27 Sep 2021 17:41:59 +0200
Message-Id: <20210927154159.2168500-4-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210927154159.2168500-1-robert.marko@sartura.hr>
References: <20210927154159.2168500-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Espressobin Ultra has a front panel USB3.0 Type-A port which works
just fine so enable it.
I dont see a reason why it was disabled in the first place anyway.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 96855a10b4a0..aada43fa236c 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -112,7 +112,6 @@ rtc@51 {
 
 &usb3 {
 	usb-phy = <&usb3_phy>;
-	status = "disabled";
 };
 
 &mdio {
-- 
2.31.1

