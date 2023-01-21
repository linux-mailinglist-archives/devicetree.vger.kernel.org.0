Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC9726768A8
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 21:05:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229812AbjAUUFL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 15:05:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjAUUFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 15:05:10 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5232222A03
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 12:05:09 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id u1-20020a17090a450100b0022936a63a21so12064179pjg.4
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 12:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0j60d7iQ4NQWxCiQzwUehUL0a3y+Bi4urvTxeUjWvB8=;
        b=wz7V7Svw9SegVn7t5xdBgv0rmPDaDmHugVucHOACIk/EoelZOb1s4Jwa0vj+9nH6Pf
         fhjKIdyrdch+NgeMQgk8Fo6j0IKfA19sMs5FlvzBQgMlfHH4+A5CvN4VuXvZBOJHYcel
         zeVDIsmIvFpAtBIhavYrZIVMZh0I2vUxV/gDjk+Qf2gFHHKsvnLY6JQ4LXmq0S2+cpe1
         /dBZsFvlEOwIq0BbQ8Cipc24KrYOpVLa3hShtAwkpxHT4RK8KXlxv230Iq3D4BQCxn5o
         B8C5b/ZWtAyBbxxugpADmTiXsODRJCDcckRCPxxsG0vj0TqZr3fvMJGENK1yelgwhsA4
         wcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0j60d7iQ4NQWxCiQzwUehUL0a3y+Bi4urvTxeUjWvB8=;
        b=u/upFbENJU58PILqx7std8H4kSwDl/FT3j/qiAafMT+Zkh3tTH1Xa225Ie7lSHN0Vv
         o1h8BaEAGKfWFixX89ObT52oIbju+VkFe9XE5qazTZchhK7dsrLV/4enOskzh2TthLUT
         1QUb6J6SmmerLkRnrs1Mwx5B/VIF95mx56oKjVYv8u7hCaHDQnXsuSGJ0+ThwpfWdRuZ
         wKCHbxOM29A+L8yefYtqnWNj5PK3HEZHiQQsTOToW4p0IK0nTETYuaEru7JmBr+qUhEI
         T1fAirWXWBdBRfUmyi+g4kf2M5McQEtDKejHYkmhQeO33rhO+ejffl+bZ8cAmzOrWJfH
         C9LA==
X-Gm-Message-State: AFqh2kqnINOebymwuNSYKrt80PCcS565Ds6szYR1eMMhIcKlhMnRWizy
        utjtd4DluNdzlO3oA6LLRrxmFw==
X-Google-Smtp-Source: AMrXdXsgTu/qEHUxOMVP9vS7O/BqUv57gbtll3vcKJw/BSN9mpGVvzKzdBCWTUqBXTzNYKcMoQy+yQ==
X-Received: by 2002:a05:6a20:d80e:b0:ac:b2a3:e39c with SMTP id iv14-20020a056a20d80e00b000acb2a3e39cmr19018212pzb.62.1674331508623;
        Sat, 21 Jan 2023 12:05:08 -0800 (PST)
Received: from localhost.localdomain ([223.233.74.24])
        by smtp.gmail.com with ESMTPSA id bg7-20020a056a02010700b004785c24ffb4sm15595269pgb.26.2023.01.21.12.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jan 2023 12:05:07 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm6115: Add smp2p nodes
Date:   Sun, 22 Jan 2023 01:34:54 +0530
Message-Id: <20230121200454.1423567-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the adsp, cdsp and modem smp2p nodes to sm6115.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 72 ++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 50cb8a82ecd5..3c66f998a81b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -345,6 +345,78 @@ rpmpd_opp_turbo_plus: opp8 {
 		};
 	};
 
+	smp2p-adsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <443>, <429>;
+
+		interrupts = <GIC_SPI 279 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 10>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <2>;
+
+		adsp_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		adsp_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	smp2p-cdsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <94>, <432>;
+
+		interrupts = <GIC_SPI 263 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 30>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <5>;
+
+		cdsp_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		cdsp_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	smp2p-mpss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupts = <GIC_SPI 70 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 14>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		modem_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		modem_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.38.1

