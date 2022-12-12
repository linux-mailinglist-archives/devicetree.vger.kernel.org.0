Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12D7064A70C
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 19:25:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbiLLSZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 13:25:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbiLLSZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 13:25:04 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8591007C
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670869408;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=RNRWKbvSrCXZ9TypSYBFGXfCQmVHCCSFxdSjpbnG1lo=;
        b=U8brsojr8++tBc8qnwOQc6TJMYBf05wvmxy6G5Ba4/y72Z5cU7WzqVu9W1KMEhvAbY5yKC
        hNLs6k9YhpnSKOmIWNZl8twcjrkE3zsSFKHjVXWrxMiD6QhWwRwfj72E5c3uo6f6ufrHhU
        f3DNAeS7SiYA0xYtVbFBc6AAC6I0dwU=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-424-KsTMsPEgMw2QGG8Sb8FCwA-1; Mon, 12 Dec 2022 13:23:27 -0500
X-MC-Unique: KsTMsPEgMw2QGG8Sb8FCwA-1
Received: by mail-qt1-f200.google.com with SMTP id fz10-20020a05622a5a8a00b003a4f466998cso12274899qtb.16
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RNRWKbvSrCXZ9TypSYBFGXfCQmVHCCSFxdSjpbnG1lo=;
        b=4+zTgpUuQIrAIN1+FqGtFzEohcdna7GJyMoTDZJzBEHjcOgAfzmGlJnDKlviatT22s
         +v6YsTtlw7USipUsoafUqfRA6ZiOQxL1O6ugP1v5yk+dwTmnoIn/EmwlDJy/EAoe5mac
         alnq1jwjr0yF6Op0iVzCBC6+ARwJQu7TGxysjAIZfCjnuDMepEq2FGFs/upLJaJwiGbr
         w0Z7+J8NKLaDWAhGClDKOIb19F5dBZcexJlNTTGoV1ajPrZCrj5tHfAzWEuaKbZDdd/F
         qsySdcYiz7v8B/XTxZ1e+khBuFFWOHbDWzA7bnncuBz7+PV7M087e9iwL5vlSrbpMz++
         zenw==
X-Gm-Message-State: ANoB5pmcXpHRf+HPXCuJ9ZoHzpVad144PnJ2PhrLQKnadvCZMX3oS6Zh
        3uyAGsk4hCDMfyxM27U94YcdE6CwO9RxhumbbNJCJTjxgRGc72ow3RBfUTMhvlF8jtqNaBKKI8R
        btUYrA1nRVxPliQ/vicZAQQ==
X-Received: by 2002:a05:622a:1002:b0:3a5:4e34:fafe with SMTP id d2-20020a05622a100200b003a54e34fafemr31500848qte.68.1670869406482;
        Mon, 12 Dec 2022 10:23:26 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4HBiTstXeYxhuHfnbAyBQx9WQlcLgo2NvTrwin0TtsiHxqIxmtIb7g4OADwFQ1eShhvPKZ8w==
X-Received: by 2002:a05:622a:1002:b0:3a5:4e34:fafe with SMTP id d2-20020a05622a100200b003a54e34fafemr31500828qte.68.1670869406248;
        Mon, 12 Dec 2022 10:23:26 -0800 (PST)
Received: from x1.redhat.com (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id 3-20020ac85643000000b003a816011d51sm1998185qtt.38.2022.12.12.10.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 10:23:25 -0800 (PST)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com, quic_shazhuss@quicinc.com
Subject: [PATCH 3/4] arm64: dts: qcom: sa8540p-ride: add qup1_i2c15 and qup2_i2c18 nodes
Date:   Mon, 12 Dec 2022 13:23:13 -0500
Message-Id: <20221212182314.1902632-4-bmasney@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212182314.1902632-1-bmasney@redhat.com>
References: <20221212182314.1902632-1-bmasney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the necessary nodes in order to get qup1_i2c15 and qup2_i2c18
functioning on the automotive board and exposed to userspace.

This work was derived from various patches that Qualcomm delivered
to Red Hat in a downstream kernel. This change was validated by using
i2c-tools 4.3.3 on CentOS Stream 9:

[root@localhost ~]# i2cdetect -l
i2c-15  i2c             Geni-I2C                                I2C adapter
i2c-18  i2c             Geni-I2C                                I2C adapter

[root@localhost ~]# i2cdetect -a -y 15
Warning: Can't use SMBus Quick Write command, will skip some addresses
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:
10:
20:
30: -- -- -- -- -- -- -- --
40:
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60:
70:

Bus 18 has the same output. I validated that we get the same output on
the downstream kernel.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 46 +++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index d70859803fbd..6dc3f3ff8ece 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -17,6 +17,8 @@ / {
 	compatible = "qcom,sa8540p-ride", "qcom,sa8540p";
 
 	aliases {
+		i2c15 = &qup1_i2c15;
+		i2c18 = &qup2_i2c18;
 		serial0 = &qup2_uart17;
 	};
 
@@ -188,10 +190,28 @@ &pcie3a_phy {
 	status = "okay";
 };
 
+&qup1 {
+	status = "okay";
+};
+
+&qup1_i2c15 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qup1_i2c15_default>;
+
+	status = "okay";
+};
+
 &qup2 {
 	status = "okay";
 };
 
+&qup2_i2c18 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qup2_i2c18_default>;
+
+	status = "okay";
+};
+
 &qup2_uart17 {
 	compatible = "qcom,geni-debug-uart";
 	status = "okay";
@@ -313,4 +333,30 @@ wake-pins {
 			bias-pull-up;
 		};
 	};
+
+	qup1_i2c15_default: qup1-i2c15-state {
+		mux-pins {
+			pins = "gpio36", "gpio37";
+			function = "qup15";
+		};
+
+		config-pins {
+			pins = "gpio36", "gpio37";
+			drive-strength = <0x02>;
+			bias-pull-up;
+		};
+	};
+
+	qup2_i2c18_default: qup2-i2c18-state {
+		mux-pins {
+			pins = "gpio66", "gpio67";
+			function = "qup18";
+		};
+
+		config-pins {
+			pins = "gpio66", "gpio67";
+			drive-strength = <0x02>;
+			bias-pull-up;
+		};
+	};
 };
-- 
2.38.1

