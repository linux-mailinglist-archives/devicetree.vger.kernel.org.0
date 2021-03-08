Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BBF833143C
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbhCHRKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:36 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33301 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbhCHRKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:10:06 -0500
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOO-0003RM-GL
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:10:05 +0000
Received: by mail-wr1-f69.google.com with SMTP id e13so5097025wrg.4
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:10:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8UIxmMoK7O3FkaOob5cP+/PnQ80rUSbfD+m9tRUlmEM=;
        b=WqrnlpCimGVOCiZ7iKkGpajWA+cRIoXJpIIPK+8a6EGQZJYNZgGim5G1IESOhVK6Yh
         Ag5N1sdClbmyHglgsX2JquUccT8iRqSdvAoA3W/pKK1BKEtzhwOC2RgKx378+Af6yK4p
         4h6vyDGw37Wx+ceHeJs3qRCYZT+zDYzdD//Tduud6SsgCaOenfaK5ldXvLSXy1ST2Vam
         ga1aMK49eLJ7J/Q8s9nrKxXGMs2sNJvrzYJ4OSAPzhi0vsWtndMGDb1m3NSHsHjBhaVW
         liIzqLvsCTumxiGX1tBx5aLnvtIYygzpCCEZLrhGj0SlaPgD3uN6DsuTIoFa2+i5m/uh
         0f3g==
X-Gm-Message-State: AOAM531fsSmwRS/iqC8pe37awA5pqNzHSJo71XiisWoRuP8DCSx33zSb
        RwhHK8A5VeMR3uyxBiLlSmnBBONwjQzXZFtR4LiLoSLBdzzgUIjRRw+up1O+UJeVJJl3mvMEI2p
        YdsaDmyRQdor4aRS1VTLKvJRYCPOeTmXBWy4E2FY=
X-Received: by 2002:a1c:7f84:: with SMTP id a126mr23492981wmd.151.1615223404290;
        Mon, 08 Mar 2021 09:10:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyXltzJ6sLx3WURNyl3beda2GfjyDZjIZYw/h31TUwo0blj0hc3a6mTF7dGhqg3KNsXa1WrGg==
X-Received: by 2002:a1c:7f84:: with SMTP id a126mr23492962wmd.151.1615223404135;
        Mon, 08 Mar 2021 09:10:04 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:10:03 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 09/10] arm64: dts: intel: socfpga_agilex_socdk: align LED node names with dtschema
Date:   Mon,  8 Mar 2021 18:09:44 +0100
Message-Id: <20210308170945.161468-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
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

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index f14a89ca8784..13718ab5ed91 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -20,17 +20,17 @@ chosen {
 
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
2.25.1

