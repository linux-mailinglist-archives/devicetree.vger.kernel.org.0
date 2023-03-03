Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D91A6AA3FF
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 23:17:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232177AbjCCWRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 17:17:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232163AbjCCWQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 17:16:54 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E9A8B317
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 14:07:47 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id u9so15999854edd.2
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 14:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677881194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1o/g/RY/F8tw5gI99MfNC1MgutCzKG48oc2MA5z/Ao=;
        b=TLwbGrob5M9efffB5qaQxhM9M7iUgfWaoRRb7MMl55alPS/ms7l9BKvBg0b4sHIa1V
         q2xvDT3b4/Fjs9dTyxBZBSGgXszxjMei4mOogkudIBHlu7sbjxzLaE61taMWdFKktJeZ
         i/4bNM+50KStOrhIdpoCyIvbc98y1/gZBTvPjRMHH+p2n+0wWx9jg13jMvg9w04mwxLL
         Qmjt+akrmCq1L5zEysI5gjebHfwNP75GpKEQLcUAH52qJMxdXRzDDqw4GXIXKUH7rLIM
         ST7y+/vVgYbXybv4wiKUpMZ7E66MYS2deqfON/qadEKjuo8KmseKh5LTSTaFKO0DgNkr
         rqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677881194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N1o/g/RY/F8tw5gI99MfNC1MgutCzKG48oc2MA5z/Ao=;
        b=ciiPpKC00hNnG5ag6MZM3EkSIgp4UpR4zWN55habMpAvYQoXzVFe8bT7+aKskaBn/s
         8f7UEl/oVkIcHkhVz+bpefMa/ZxrTFoBent9CzWRbiasOXKbfygFgur8Usc7oR10gSxu
         7yTFZKvkkAFcemrCaRlo2eYauYgAfEkLswtzZ0dzXBRFK4M7dUuhuH/xzFuQoKWUTlSN
         v2DlG3r0yK2BczNBr5uD+k6LI3XJXm2G+pyy49eKhugNANdqUuf5F/jQoxSub3SBxYUp
         95In4pf0wdNOVg/kvvTVAMh8Y7J1BZ1mMALOzoU8Hh3MeglQOxPK+vjSYEBHsRIDNjgr
         w20w==
X-Gm-Message-State: AO0yUKX8811QnZAzuGrr+/0EIsglhvvMgleLfqwLQd9Itkt5hWL9HdTJ
        q4/VWqiiQe6MXfFdHKODR58aakczVGNxd0iiA9o=
X-Google-Smtp-Source: AK7set8HY/ZWvMDmsFszJ46x+D2bfFXOLEt62IWqldbD7EeuilM2sEPe1aGzehsz3IInfUfazDl8uQ==
X-Received: by 2002:a2e:8e8c:0:b0:295:9f20:bf16 with SMTP id z12-20020a2e8e8c000000b002959f20bf16mr834883ljk.51.1677880713790;
        Fri, 03 Mar 2023 13:58:33 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id e27-20020ac2547b000000b004cafa01ebbfsm552670lfn.101.2023.03.03.13.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 13:58:33 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 03 Mar 2023 22:58:15 +0100
Subject: [PATCH 15/15] arm64: dts: qcom: sm6375-pdx225: Add volume down
 GPIO key
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v1-15-8c8d94fba6f0@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677880689; l=1409;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=lUoSxwe6wDxHMv1iTDzFHuYZxKLyt1OMfELUkCo9Rp0=;
 b=2D1FYt5g9zW3UaMoHWv3uq5a3I+XMRqi4xOdzwph644K+Ge2XkqIHBvdS5lQ6HhN8VB5CAELrLkC
 Mc12VKGIBVJrmmDYy3Plyso23gn9bU4RYdv5EBTyg4dMyi2kUOIU
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the required nodes to enable the volume down key on the Sony
Xperia 10 IV.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../dts/qcom/sm6375-sony-xperia-murray-pdx225.dts  | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index b691c3834b6b..8220e6f44117 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -46,6 +46,23 @@ framebuffer: framebuffer@85200000 {
 		};
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+
+		pinctrl-0 = <&vol_down_n>;
+		pinctrl-names = "default";
+
+		key-volume-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			gpios = <&pmr735a_gpios 1 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+	};
+
 	reserved-memory {
 		cont_splash_mem: memory@85200000 {
 			reg = <0 0x85200000 0 0xc00000>;
@@ -133,6 +150,16 @@ &pmk8350_rtc {
 	status = "okay";
 };
 
+&pmr735a_gpios {
+	vol_down_n: vol-down-n-state {
+		pins = "gpio1";
+		function = "normal";
+		power-source = <1>;
+		bias-pull-up;
+		input-enable;
+	};
+};
+
 &pon_pwrkey {
 	status = "okay";
 };

-- 
2.39.2

