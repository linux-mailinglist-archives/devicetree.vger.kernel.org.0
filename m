Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D029443B995
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 20:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238312AbhJZSbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 14:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238297AbhJZSaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 14:30:52 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9AFC061243
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 11:28:28 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4Hf0gt0hw9zQkHv;
        Tue, 26 Oct 2021 20:28:26 +0200 (CEST)
Authentication-Results: gerste.heinlein-support.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635272904;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HpucNbXGwmj3uHURNv9XmVHDWvKU0dptcGmh1ayTYB0=;
        b=S9NysY42+OKT3CoWf3frFXzTxs86o6+tb3Wa+gHTixGx4HZwASLheOkft5SAU26b3P5d/q
        bI5vhHJATQi/wiskypDS928uteYdaTg1TuDWQXJHkZ++afv8CMCsmPI5vIDAt2MwNQwqyd
        Z1tD+Igb0WspOKitYLyQyPQU25XcW5c8HZAhli1p1JGO81V6jfQqkwsuQ26iz0mC47U5o5
        vUKRjNQ7KND8O8U2lUQtgMRrUCtWIjvQrgNA4/QyUjpr8jiAqdMPXVzUZOM/0Yo1WhbE/y
        pvJBEN5Dz3LpX2KkFMqKbYB5kJJ7rF30Gn7sAiQbiLcm+xPO4OGwXaEpm60+5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1635272902; bh=H7JJLWTX3+pFtzG7/dTC5rzV8xdVlcsM8
        4g8x18AsWI=; b=FtkxtoJpZ+BJWpVgSJhjDiV3XuMMFtZ2DTUEDo4vB9tfqo5yX
        heZeHsG20msYRFee5g+67yucvtonrROKFn/EqyBP1WVIq4UbYHz5m7K5kqeszSb2
        m5e2LaEMn3414192BHs3FLcQBYO8Lt/NzoGwo8xUlpEoRAUFs9BxVsfYwuG6gw7d
        6CVdIRxZIc2t1PNGXLV/XAjk6it9TPSN7zebEVG409agd5wl10pENefC1cAabWG1
        GYAe27QUa9lv6lGSWWWW4XOLn5mFAOUbvdpZw+HiftK9Sm6WmLf66xHU5ZSeAjqp
        +m0T4yUtEF0bhtKgNSWg5yPCX86pzhzCQO2mg==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: dts: amlogic: Fix SPI NOR flash node name for ODROID N2/N2+
Date:   Tue, 26 Oct 2021 20:28:13 +0200
Message-Id: <20211026182813.900775-3-alexander.stein@mailbox.org>
In-Reply-To: <20211026182813.900775-1-alexander.stein@mailbox.org>
References: <20211026182813.900775-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E27A0369
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the schema warning: "spi-flash@0: $nodename:0: 'spi-flash@0' does
 not match '^flash(@.*)?$'" from jedec,spi-nor.yaml

Fixes: a084eaf3096c ("arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node")
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Changes in v2:
* Separated from DT bindings patch in v1 (PATCH 1/4)
* Added Reviewed-by: Neil Armstrong tag

 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 6e9ff5076b38..9c05c83453f5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -611,7 +611,7 @@ &spifc {
 	pinctrl-0 = <&nor_pins>;
 	pinctrl-names = "default";
 
-	mx25u64: spi-flash@0 {
+	mx25u64: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "mxicy,mx25u6435f", "jedec,spi-nor";
-- 
2.33.1

