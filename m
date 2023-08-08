Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED08774899
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbjHHTf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236504AbjHHTfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:35:40 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4542769C
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 12:02:02 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fe5c0e57d2so20402495e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 12:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691521321; x=1692126121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eaczrn+uDVu4zRaXwsIp1V486qR5q1q+geaugqipQfM=;
        b=ycRLRc+t47LToHS303dsAghXPi+WMCksYE/Zyy156NmKKpzzWsecjq8UVFucS6Eloy
         xdmkLpwSpKLhjL9+JHhcpyPfTyydM5W5xrUOxyzQkmdip15cLZdmLNCXpKZKUxjZID6L
         Xz8ePC0InZ9epnXAi1qrQeuewpybWOu5l9mnpTGNUxIhNQtuIQcGO3iv7iDQZhweUfAh
         f7RTcX08vJFsBdfxOTtYhVQAp3THIyuIuacsp5WCKXo++B4E0QxhVLdgAyi0Wa0jchT/
         mc8K0Nf2nYfS/J+rJHMY3u2Zb0rMGdth9F//QNPxVdFek454ht7m0LsiJKPeON5lPJc3
         fk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521321; x=1692126121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eaczrn+uDVu4zRaXwsIp1V486qR5q1q+geaugqipQfM=;
        b=XAuGOycP853aOnjyn5X/w62zCh3oNlOk6A5R6N5SlaV05JWvIMXtEO2zw/wmQ2hJAk
         1hQXTE0nFFKMwQ50CYvOSvGsR3CljqXaEPTOUl+9APK2r924CVIQ7ULQ/rWSU55MuuyA
         ZmR927X1/IOldnT/XyL9cHZizEdvfDSYkHXYbGxMFJ4KNyPltsjMqFP6kfKrwR29q3iI
         QJzdS90gNLmHb1OFagEhyZmE0uCYXp3pJ0twLIqFJFmmaqMMAsXcIHvYlrruMv4AXLYf
         7jgLtzyanWZ6ZSZ4O5uM1d1+9JW7YNJqZz2nfDsqCI9E8p9EGkdQ4JxPVpQaH2qiSmy+
         XaNA==
X-Gm-Message-State: AOJu0YwTtCtZXWiB3+qC6rborihKpd4A5hDhwvEXMycAeygcwlw1ID0A
        OOMyC3lptNSiGqhLfgCT6gwDgw==
X-Google-Smtp-Source: AGHT+IH46m86rYJjj9clreQLNhX5NGHUBLPhQI2xG8Bb0/JqcykrOGd7/24ix3Tw5KpU5SFHXtoITw==
X-Received: by 2002:a1c:cc0d:0:b0:3f8:f1db:d206 with SMTP id h13-20020a1ccc0d000000b003f8f1dbd206mr508160wmb.25.1691521321456;
        Tue, 08 Aug 2023 12:02:01 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:6a08:bcc0:ae83:e1dc])
        by smtp.gmail.com with ESMTPSA id z14-20020adfe54e000000b00317e9f8f194sm7301055wrm.34.2023.08.08.12.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 12:02:00 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 8/8] arm64: dts: qcom: sa8775p-ride: enable EMAC1
Date:   Tue,  8 Aug 2023 21:01:44 +0200
Message-Id: <20230808190144.19999-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808190144.19999-1-brgl@bgdev.pl>
References: <20230808190144.19999-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the second MAC on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 71 +++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 330553742204..c843bb974689 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -24,6 +24,7 @@ aliases {
 		spi16 = &spi16;
 		ufshc1 = &ufs_mem_hc;
 		ethernet0 = &ethernet0;
+		ethernet1 = &ethernet1;
 	};
 
 	chosen {
@@ -359,6 +360,76 @@ queue3 {
 	};
 };
 
+&ethernet1 {
+	phy-mode = "sgmii";
+	phy-handle = <&sgmii_phy1>;
+
+	snps,mtl-rx-config = <&mtl_rx_setup1>;
+	snps,mtl-tx-config = <&mtl_tx_setup1>;
+	snps,ps-speed = <1000>;
+
+	status = "okay";
+
+	mtl_rx_setup1: rx-queues-config {
+		snps,rx-queues-to-use = <4>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,route-up;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x1>;
+			snps,route-ptp;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x2>;
+			snps,route-avcp;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x3>;
+			snps,priority = <0xc>;
+		};
+	};
+
+	mtl_tx_setup1: tx-queues-config {
+		snps,tx-queues-to-use = <4>;
+		snps,tx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+	};
+};
+
 &i2c11 {
 	clock-frequency = <400000>;
 	pinctrl-0 = <&qup_i2c11_default>;
-- 
2.39.2

