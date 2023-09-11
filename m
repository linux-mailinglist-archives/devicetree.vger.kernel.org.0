Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD9B79B2A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237800AbjIKUvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242526AbjIKPqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 11:46:00 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 968C51B6
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:45:55 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4018af103bcso29191005e9.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1694447154; x=1695051954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3bdQljBM9G3jopTFDsO9g16l4ONvm8vQqmOSRCzAnEo=;
        b=p/lQDiEE6RtEeQ6xzME5pJZJEoG1FqEPwkevKvh8oOPCxkEI/UzbIdoWyd/f5+ET4x
         YiJ+sbrES87AmSgNmrICKuK0fl3CzLg9iRXlB5NptNe4PHzTb5B0hmWZ8bCHzJcdNdy/
         t3Tnfw1sUb1hUWFRoey8PJpyNed6SQIePQLYI31eZuE8PJTfPbIL6+WjKDfr8Yahcd0V
         MOCkC5kV46dNa9y8CGzkaEPf/qEyRp2I+ROTBndt+uFHZcu/GrieKSrLrCbChAmwAAiv
         vjyNT8eV9g7OLECNs4lyg3e4C/lt5obxHCBy6nya9uCcoGrO8yxDFNxDpmxLoLAWU/ZM
         QYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694447154; x=1695051954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3bdQljBM9G3jopTFDsO9g16l4ONvm8vQqmOSRCzAnEo=;
        b=D1RYKqNH+hQHEjgLxfgyl3zCEQIuLBm7FuJ3/AYxs9mzd2YHJIqyM+mXHi0SXv2dyl
         p43hScwFZNTQI2ZPKFFzuTHjoloZ//mG8xLBm+t1JBz+cZ81F1s7bY5clc8epqmIF5Yc
         YyWTfguOwCLBwEPHyAWHqXSZ4yIpg8KQW+CzHosH5fmctysyXZRwKxgYlNR+za2Ybm+0
         Q0/FWhpuDmJSzNfk7h0GLyr81sSb0RRHzxVVqEP9xClANb9mDKYcRKF8Ys8BUhkPPJHj
         QSpY9TRULPfSnElkc/2dYMJCaRRosddMVFLiUseoVeK+CkPch/8sr1438HcWoC7UOzCR
         VIKQ==
X-Gm-Message-State: AOJu0YwVGNG0s4KmoJbwc5/OncGWx0cOvj8L4CV3K9ZqgROD/6v3RJVG
        D/5ZtP3U3dbLyOJmdGuA9sHcdT9f6Thgjmb5NIU=
X-Google-Smtp-Source: AGHT+IHSlCpiA67RcBqWVu/yNJspToPqKhBDsN+U4vD1E3RtnOz9o0ZpI5rtn7YZWGnKnmMXksiGeg==
X-Received: by 2002:a05:600c:49a3:b0:3fb:f0b2:20eb with SMTP id h35-20020a05600c49a300b003fbf0b220ebmr22361wmp.1.1694447154131;
        Mon, 11 Sep 2023 08:45:54 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:55be:8f7e:5f59:7ed1])
        by smtp.googlemail.com with ESMTPSA id q12-20020a05600c040c00b003fe539b83f2sm13616255wmb.42.2023.09.11.08.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 08:45:53 -0700 (PDT)
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
Subject: [PATCH 2/5] arm64: dts: meson: u200: add missing audio clock controller
Date:   Mon, 11 Sep 2023 17:45:38 +0200
Message-Id: <20230911154541.471484-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230911154541.471484-1-jbrunet@baylibre.com>
References: <20230911154541.471484-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The audio subsystem will not work if the audio clock controller is not
enabled.

Fixes: cfae4eadb7cd ("arm64: dts: meson: add audio playback to u200")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 8fa17a62534c..2380d237d220 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -286,6 +286,10 @@ &cpu3 {
 	clock-latency = <50000>;
 };
 
+&clkc_audio {
+	status = "okay";
+};
+
 &cvbs_vdac_port {
 	cvbs_vdac_out: endpoint {
 		remote-endpoint = <&cvbs_connector_in>;
-- 
2.40.1

