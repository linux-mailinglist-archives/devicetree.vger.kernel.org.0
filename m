Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE9C79A816
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405088AbfHWHDJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:09 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43050 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405065AbfHWHDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:08 -0400
Received: by mail-wr1-f67.google.com with SMTP id y8so7592153wrn.10
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DKp/3tQaH/+CAXC5vPIgbu9pLlo8VAlZxJspdFK2/l0=;
        b=y3j3iCJEVDtu7oGjTnedwcQgrl2JHBVZOJrVixukWgmdfKEeK/FW8LAE0L8dTexkRn
         ZxN5FN5t2WY8yWY87/2pUYi5BlR1oB/YcUs6FxnPf7bVE7hjIyhbxVfDzR/34SXwtsMm
         WV5ZcPjM2SHrPP20E44e3c4XoV9qgfI1+3kyWS8iBvi7TOz3F679oEBfjvf1U7BprN3r
         50SB9ZCwTIwoPKvEBgusHzOI3zirbI07qz3AvoKZhUZ7xM3YynCN5GlgwBN8ne8DOWCZ
         yAeZMagJzM0DmDCvwcojhMb9CVGEmRQSy71orEyPT/3AD1BhhPXb/fcAPFgeb+oqmf5j
         GvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DKp/3tQaH/+CAXC5vPIgbu9pLlo8VAlZxJspdFK2/l0=;
        b=UDi+OfQ+lB/pLu1lelMBmFEKWTsMFLRv7SKwCsSXw3VEpKDEihxMiRff0/lzOsqjX/
         110UGXotyxcJv72o+qb5E/EMVH9S1Ec6xlyUBHWkEIx6Lu5aUiefZXb6NFFOZQ8hpebC
         0UdKZEKswrq1z+fIF6vvAAY8T4b5PrbdKXwpfQoCwoFuBfZy/rOIZjkmKOkcF31XIhpb
         37JPrr2VFoZSCJDXbJObDw/gz74wYeypQm9L6i6ED3DXWP6FJ0GOJxAE31vTAELDytv9
         NZT3SJuzFXDQVlnqxb4DlyLpwc3ZabqFgziuMlWTfXkcX4mES8SJvo91O2j0TC2by1pL
         YQ6g==
X-Gm-Message-State: APjAAAVzx6trfg1XDxWLYKb5VIcXny3+EkJB4AhJ5w0cHvSY7LP7+la9
        fdjOOUOZxjG7A+/VfOb0fD07YA==
X-Google-Smtp-Source: APXvYqzHQysbTFU4MseJMlikAoQNVPMZIuTg9LNrYO5FU4enKFF06okMREZkZdmBoHmutZTGESobKA==
X-Received: by 2002:adf:b60c:: with SMTP id f12mr2522969wre.231.1566543786329;
        Fri, 23 Aug 2019 00:03:06 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:05 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 13/14] arm64: dts: meson-gxbb-p201: fix snps, reset-delays-us format
Date:   Fri, 23 Aug 2019 09:02:47 +0200
Message-Id: <20190823070248.25832-14-narmstrong@baylibre.com>
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
meson-gxbb-p201.dt.yaml: ethernet@c9410000: snps,reset-delays-us: [[0, 10000, 1000000]] is too short

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
index 56e0dd1ff55c..150a82f3b2d7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
@@ -21,6 +21,6 @@
 	phy-mode = "rmii";
 
 	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
+	snps,reset-delays-us = <0>, <10000>, <1000000>;
 	snps,reset-active-low;
 };
-- 
2.22.0

