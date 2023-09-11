Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C89879B3C0
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:00:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235123AbjIKUsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242531AbjIKPqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 11:46:00 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8170ACEB
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:45:56 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-401b0d97850so51255035e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1694447155; x=1695051955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=epwO+SStz9NM69htgYjFNbJ+1k8dChdarhPRbsLmIPo=;
        b=aife+QWN03Sh84BKbqtuIsAV5UvR53QgqFEV89J9jlLYH+nLlv79ANNYzkSDwyvGr8
         95pwhu6SPIS63xmpRsdwh4YwWpII5MsvxdNdDqclYr6YSUw35Njhpy7gri2vUStKnFup
         4GhunOhpfBk0i2EN54rg8e/pXzEV0lj2H7UJZquKkHpx0JQ1ilNVysdnrD6sUw18rfmf
         gSl2p2gEEWf5VM+Px6G+RR4CWEaypxBSwwTk21+HCnA01/AuRhfOgxPmzTXF2GmyE5lH
         YByogjk7v59UXy6vSNYE3WjSrLuw1yB+wraW1uF4VJNDZiAeFr43XYicYg6aPwbsQsQz
         +sHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694447155; x=1695051955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=epwO+SStz9NM69htgYjFNbJ+1k8dChdarhPRbsLmIPo=;
        b=axmffovHfR2uCPl3vhu8oE3UTCuPNu0aPshfdIcJpT9spay90O6vGLq79IYgTOnvVm
         weJOcNH+uTGjGqS1BCkLzMSJ2uV5qpceGta7N10zdc0cosK8hUVrNrtHO4pTkgXPFsFB
         pbd8hfjAXXl/KkRAtuhxm2C9dV1emzsZNz9jTtobEMkJtodTNp/J3NUNAKAdnQMfnN5d
         N4exscsmevi/kUeJXKDM2UhDCBTs9FcnzB2Bqerjq/3yqsBDV3bp5vriOZw4IlDfGJBv
         JjCfbt2aAfULFQjzUUUWBULVZDLr2EvK+3DfZWip2LEyiMuDpvQwj2QqCBb7xIDIqiyL
         zXFw==
X-Gm-Message-State: AOJu0YwVTNVOED4UXnRBbbE1EriCO2tyrpkiCj6QyFMQI7+0FSujTeJu
        i15ucVRE+gqnr+tI7XbxHrh93w==
X-Google-Smtp-Source: AGHT+IH/l9YhTMJ8R87Jn4M26LwWErmp/fMinm+HkJON+GjKiZqfQ57rUyoelo8qX83HND/gSYm4Tw==
X-Received: by 2002:a05:600c:228f:b0:401:c338:ab94 with SMTP id 15-20020a05600c228f00b00401c338ab94mr9099563wmf.29.1694447155036;
        Mon, 11 Sep 2023 08:45:55 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:55be:8f7e:5f59:7ed1])
        by smtp.googlemail.com with ESMTPSA id q12-20020a05600c040c00b003fe539b83f2sm13616255wmb.42.2023.09.11.08.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 08:45:54 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 3/5] arm64: dts: meson: u200: add spdifout b routes
Date:   Mon, 11 Sep 2023 17:45:39 +0200
Message-Id: <20230911154541.471484-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230911154541.471484-1-jbrunet@baylibre.com>
References: <20230911154541.471484-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

spdifout B remains untested as it can only feed the HDMI controller, which
does not support spdif ATM.

Still if the u200 has spdifout b, the routes to it should be set.

Fixes: cfae4eadb7cd ("arm64: dts: meson: add audio playback to u200")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 2380d237d220..921b62c5ab33 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -166,7 +166,10 @@ sound {
 				"TDM_B Playback", "TDMOUT_B OUT",
 				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
 				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
+				"SPDIFOUT IN 2", "FRDDR_C OUT 3",
+				"SPDIFOUT_B IN 0", "FRDDR_A OUT 4",
+				"SPDIFOUT_B IN 1", "FRDDR_B OUT 4",
+				"SPDIFOUT_B IN 2", "FRDDR_C OUT 4";
 
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
-- 
2.40.1

