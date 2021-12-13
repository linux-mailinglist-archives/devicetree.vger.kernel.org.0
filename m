Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D8E472262
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 09:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232830AbhLMIYN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 03:24:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232943AbhLMIYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 03:24:04 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC43AC061201
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:24:03 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id e3so50025621edu.4
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wJEEqyKISVmLwrKECRv9O+FIMtzdnCM3vrfkv5xHbbc=;
        b=sEYiyL1t89Df2d2P9CNXHEX3r/4uu2WX6F+I0KEAC+I7PCIernl8hkV7r+MEwiKTRR
         RqZS/NVJjvek2//+pd2bvuIxaaO99wbk7KF5DHUWLwEh5eWgy+ZV+u5ycLeF51OuJWxu
         1zpWFPEOmFmaOq5I4y9FEcgpK9qEaDirikActt/MrVdhqXlT5qsPIdwwjaA2E3klstyq
         5F6VxXlilh6cXL2MC8HFYnMtRJujRBqvp7aIqTMFkj6Rv09cSN7mF6sPVASZ35M3yZ+n
         Epq13luQ+2oHZgtk5wml7yedMgZOfHm5xjB401+oZ2ptZxcsU4qNtDiJ8vr3G6825HIl
         Me3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wJEEqyKISVmLwrKECRv9O+FIMtzdnCM3vrfkv5xHbbc=;
        b=uWgkM8DAEV+erBZpAQG1NQC8GnG/RXrLe3sw49EyTYwNThZn4d+qJ608yzOA/oqlTs
         soFFDz41NYQNRLylzglcNh0HyrmNCOQqe6KV8x5f9oCP8RRtGcMd8aDHoqDzfL45ZV0R
         aBMFHaJ3e0Iudm+xY3yaxnDvWi1LDSCPxA186AHQgDr0tarSkGD/9SJzS33siKCIRCa1
         /gqvEPKZRDaIsRAq/RWZFJI5DSCQxoGy8iMy/LcUGDt8PyzNTk/adK7p4xU1O9l0CxKm
         JCHRk12iqLxH7YvmMBYh6xCyZCsoBO6Z0hruOCzulKUBH4/5gXM4J5R9oQJ88U4QcMKR
         Hyzg==
X-Gm-Message-State: AOAM531+wFoVVBGeRvTrhpcb3uP5Fi3npjvzk7wCwwlqMvx/GJ7PMTWv
        8JJEzsYNO3UbIeSeEotfaSsa1A==
X-Google-Smtp-Source: ABdhPJxXH0Xjx9BHfJBCZNxrhpzIndXfY4yXe4yX22wm5K4vyrOQfvlwQcXd5uuh0zbYEkjW+Is7gQ==
X-Received: by 2002:a17:906:c156:: with SMTP id dp22mr42976858ejc.36.1639383842380;
        Mon, 13 Dec 2021 00:24:02 -0800 (PST)
Received: from localhost.localdomain ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id nb17sm5535561ejc.7.2021.12.13.00.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 00:24:02 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] arm64: dts: qcom: sm7225-fairphone-fp4: Enable ADSP, CDSP & MPSS
Date:   Mon, 13 Dec 2021 09:22:08 +0100
Message-Id: <20211213082208.21492-9-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213082208.21492-1-luca.weiss@fairphone.com>
References: <20211213082208.21492-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the remoteprocs found on the SoC and add a qcom,rmtfs-mem node.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../boot/dts/qcom/sm7225-fairphone-fp4.dts    | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index ff07b7e8d64f..1ce606e66474 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -53,6 +53,27 @@ volume-up {
 			gpios = <&pm6350_gpios 2 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	reserved-memory {
+		/*
+		 * The rmtfs memory region in downstream is 'dynamically allocated'
+		 * but given the same address every time. Hard code it as this address is
+		 * where the modem firmware expects it to be.
+		 */
+		memory@efe01000 {
+			compatible = "qcom,rmtfs-mem";
+			reg = <0 0xefe01000 0 0x600000>;
+			no-map;
+
+			qcom,client-id = <1>;
+			qcom,vmid = <15>;
+		};
+	};
+};
+
+&adsp {
+	status = "okay";
+	firmware-name = "qcom/sm7225/fairphone4/adsp.mdt";
 };
 
 &apps_rsc {
@@ -269,6 +290,16 @@ vreg_bob: bob {
 	};
 };
 
+&cdsp {
+	status = "okay";
+	firmware-name = "qcom/sm7225/fairphone4/cdsp.mdt";
+};
+
+&mpss {
+	status = "okay";
+	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
+};
+
 &pm6150l_wled {
 	status = "okay";
 
-- 
2.34.1

