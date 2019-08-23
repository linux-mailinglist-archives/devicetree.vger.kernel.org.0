Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7ABB9A814
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405032AbfHWHDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:06 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54744 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405049AbfHWHDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:06 -0400
Received: by mail-wm1-f66.google.com with SMTP id p74so7864393wme.4
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y6OlL/eR9h1Ghc3Dkq2YBZdnDsKxiiGiMpQwldNFWsU=;
        b=2BMhpGV4rttepJcUT2dvXB1b06ryYYyen4bJHkUiI5sHw3e49HDqSL3QaWqKk6BSoL
         HOBVmHBBbNTqVMQQyQxkDtCyqXxTjgmyJpsziONpWxz9pjtbbeuR1oeMGaamdsWw8ixU
         j7U5hyLej/ao83Mhm+S4vaGsTqPSK4ZRFL1JJbX4P4C8PrQ8B15ebcV4bpDlt1ZhREx8
         sfxd15gWro4lsT3pMjDrh4Vl4VLHHv1Kdz3sNhqJ+AcRXZcH4AWZnDapyzZjEuqrBRiB
         0gOR0HSheZa6D0C8ZZHELom0N/K7XWnUtnPDIklurgcwHf/V8QHqphX90dAQo1JOzVRm
         mYww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y6OlL/eR9h1Ghc3Dkq2YBZdnDsKxiiGiMpQwldNFWsU=;
        b=UkXbx724ywEgge4tLHFjEHbgY0Y07qrm3vh35uuW6GPiApcKq3VG1FF2bbgaXXp3h/
         xqE27R9nv1kLCspHekjsZ7xRRTP6qK8eBeidTjz8Jr4K2u/KFJJqTe/2SLYCf2KvF985
         OlNRG8TshvskhWTR9XCw9erHvEwtcJ3/Gir+yRaBJn7HpWJw19Ia4MbwrlWzBUf9HMOD
         r/YtROatOGNgoKXJbzfqmN+pv/lKvNrVH46jaUl2n5k8SKp2rb2VtUCLsBipqgsuvP9B
         OCYA4eTmmQa2mntehLyC6wQeA/SLuLfUhI4qQMkBFHBbC4OQSD46yh2voeLsVjWI+XMf
         c+Qg==
X-Gm-Message-State: APjAAAUoRV+Wh8Bpz5i7NDmS7aCDWkX0IOIzgWHIOrlqhKssQxJaDWsX
        hcxErSDMckoirQXZM3nprCICv3PMBze4mA==
X-Google-Smtp-Source: APXvYqxtN07laBxLSGSpNPngo3T29VHr60UhoGb5uhAhV6UuO0Ye5M829fLDQKUyMxekNg94cOFQNQ==
X-Received: by 2002:a1c:541e:: with SMTP id i30mr3210905wmb.54.1566543784635;
        Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
Date:   Fri, 23 Aug 2019 09:02:45 +0200
Message-Id: <20190823070248.25832-12-narmstrong@baylibre.com>
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
meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index c1e58a69d434..4770ecac3d85 100644
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

