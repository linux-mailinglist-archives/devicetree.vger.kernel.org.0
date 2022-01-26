Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC1AD49D10F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 18:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232126AbiAZRmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 12:42:42 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:43204
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229989AbiAZRml (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 12:42:41 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2D9703F1C9
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 17:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643218955;
        bh=gEM6VSiZGn9+riCesXh6Ndj0fTM5V3VNUzWbxDz0u7k=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=aXC5olx+rVtygbdF5epzgjgWV2OiV4C9pX6s400OoH0oZNd0B2R4h8D0pu9LVqnSi
         PUMxLd2m7227/oh+uC0g39/xqVsigTGqm0HsEpOhF7xE9CW28++4SGRHpZ5wUvPmwn
         K6O3nrcFfiEgF8AFZ1r+bhx0Qa4jEy0+7Xd7sQi6M80hjRLW90CDsX8qmnMb/f8V0A
         PYeIgmqoXYjNAEHEr51w7azViY5ECFLEotmTeq7lq0RreGNXHBZoB/XbK0HtHvhIYM
         15ESELGJoDriYvr2ciM/sQL7SPMd/a6MAebZlShTPP0LFQy/rwvW4cmIbFwMy+t8c/
         6git/igr/CvOw==
Received: by mail-wm1-f71.google.com with SMTP id o3-20020a1ca503000000b0035056b042deso234134wme.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 09:42:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gEM6VSiZGn9+riCesXh6Ndj0fTM5V3VNUzWbxDz0u7k=;
        b=qaBnMmoFxYmKXUcdXJGMIazGKNFMFywvfsSRkPWrGVdNfl1O7nq5GCp0Pi3kIHoe+s
         N42Oi5E4FQkNH0+ZjtWDmaH/TOPR1zbn7u/OZk3rt5VJDs3sGI7Wl1nBdGUktgF7R4QO
         IafCZEuwhwwPlynL/s1/An1YHXqKQo+95Rp+5zZM18NxZ2sZo+ptyfAAfP3INjelAmni
         ZLbM4dcNA+Vt1k18MMI8tIZSsnsYq7qyv9MJDaj29rbH5xAO0tbuW02jGVC3d3VAHLEc
         byIAR3QXE1LnNxkVtfUmrT1rCwBNLARhvFIEEgxTY8cmTJEjPT/ib4kIVgQp1pHeaUcz
         J9HA==
X-Gm-Message-State: AOAM533Tz2veHRv7NbuiAIdBoRyGgdv0txGMveCF/Pbqdu/ThNK45s0R
        BnzzH8jZH/f6AvrjJtWevASP649ahQ14uSvE3PwerP2bmLxs7k4EYXQfZWB30WL0358OIbiqkUC
        U4M/0/iauo8hDieCDeXi3rXECiVmUaF6JlV4Okmk=
X-Received: by 2002:a7b:c182:: with SMTP id y2mr8635254wmi.139.1643218954807;
        Wed, 26 Jan 2022 09:42:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy6kdysdMCq3VW5eb4T595OgQuQT6Z+gTtfvxQP+Z6YAumo97c6qlaVhjpPpKKj/OOAmgJgwQ==
X-Received: by 2002:a7b:c182:: with SMTP id y2mr8635243wmi.139.1643218954548;
        Wed, 26 Jan 2022 09:42:34 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f8sm21074368wry.46.2022.01.26.09.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 09:42:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND, third time][PATCH] arm64: dts: intel: socfpga_agilex_socdk: align LED node names with dtschema
Date:   Wed, 26 Jan 2022 18:41:57 +0100
Message-Id: <20220126174157.288111-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Align the LED node names with dtschema to silence dtbs_check warnings
like:

    leds: 'hps0', 'hps1', 'hps2' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

---

This patch waits for a year. Dinh, you previously acked it but can you
apply it?
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index ea37ba7ccff9..26cd3c121757 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -21,17 +21,17 @@ chosen {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led0 {
 			label = "hps_led0";
 			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps1 {
+		led1 {
 			label = "hps_led1";
 			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps2 {
+		led2 {
 			label = "hps_led2";
 			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.32.0

