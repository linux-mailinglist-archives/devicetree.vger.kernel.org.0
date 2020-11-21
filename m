Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E55ED2BBD75
	for <lists+devicetree@lfdr.de>; Sat, 21 Nov 2020 06:58:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726058AbgKUF6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 00:58:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725934AbgKUF6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 00:58:06 -0500
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E4E6C061A49
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 21:58:06 -0800 (PST)
Received: by mail-ot1-x344.google.com with SMTP id o3so10896210ota.8
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 21:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0fdEteydIB9dQTcBH4OSK3Fx/squLDtRvJTQhhgsCOs=;
        b=qiflOkmxdB3HSnVM9f+bffvFhTbVaZ1wkKzbmOYGYyTcymNXo5J0xzsw26lQvTKs1+
         XBfBUUF+JZ5E9dJQSxemZzqicykRb09+8DJTt3XHvyd84QZEcpvE7gax51N09mcTot+R
         phT84XipulaVABuDJzuSjG7IvOoTDB7uT+2w2eRJ47FjXlyWRqpMrorVnIw/vtdqnCmi
         nzcZh7MMn7fcDgo7EuaXu675JaZmWMhgxb6vilvWeMGmsa289fA44eKzmLWcauwbWSGv
         sLLcjNJn3fIwDHLbfgDO3XLqR4F9PhToKsQQAjQbU+SJtpHmMrsnRga6omY3qSdtm9G5
         YUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0fdEteydIB9dQTcBH4OSK3Fx/squLDtRvJTQhhgsCOs=;
        b=iEDxdPTTOI582vmy3IQnrx1l3eaA8uycu3JHrJZQUmZiX/LiSyTdMH75jKFrPePepr
         HhHlkIEMiZ0x/9IuodsA/zY3Jr6NPi4hx0sjqPMnm/hHU+fZfGJCQ9+P82x9EfuJsgMF
         AwERiN22n/ooun0gUtRiUdSrxUCOsF/NgYI7OpInxwwbjH4MkNei/pmR+BrNs4O4T9Mu
         NnZ35WnpqCaxjqp5nvEs7lvqJwLT1flZC1PS9t0GHRDwex4qO/vLzBRFOYOLZxXDEtDY
         lHqiBF3qtBbBgBcvT2WC8bcDwjFye8td18XBW2DLqI697r1Z0aKHZxh9OAAebT6pxBIN
         YwGA==
X-Gm-Message-State: AOAM531p8hRDdhZrUc5mPX9t7FUjxo7OTrkPZnutpUhanKFWauptKmuv
        /ACvuSfBwECLVqtJYvEPxvOMwg==
X-Google-Smtp-Source: ABdhPJx7HHmVHB71SDrRONy5F/Q19O4oPzqYnnZkEPTSMTdYjmsS7HQiNKJwWeBfFHDfR6gqZHDueA==
X-Received: by 2002:a05:6830:359:: with SMTP id h25mr15882416ote.184.1605938285841;
        Fri, 20 Nov 2020 21:58:05 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k20sm2634352ots.53.2020.11.20.21.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 21:58:05 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sm8150: Add wifi node
Date:   Fri, 20 Nov 2020 21:58:07 -0800
Message-Id: <20201121055808.582401-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Marek <jonathan@marek.ca>

Add a node for the WCN3990 WiFi module.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
[bjorn: Extracted patch from larger "misc" patch, added qdss clock]
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index c2f8c3097ac5..f4c3fbf36e87 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1297,6 +1297,29 @@ cpufreq_hw: cpufreq@18323000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		wifi: wifi@18800000 {
+			compatible = "qcom,wcn3990-wifi";
+			reg = <0 0x18800000 0 0x800000>;
+			reg-names = "membase";
+			memory-region = <&wlan_mem>;
+			clock-names = "cxo_ref_clk_pin", "qdss";
+			clocks = <&rpmhcc RPMH_RF_CLK2>, <&aoss_qmp>;
+			interrupts = <GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>;
+			iommus = <&apps_smmu 0x0640 0x1>;
+			status = "disabled";
+		};
 	};
 
 	timer {
-- 
2.28.0

