Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95FD8338261
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 01:33:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231481AbhCLAci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 19:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbhCLAcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 19:32:20 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDAE0C061574
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 16:32:19 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id 125-20020a4a1a830000b02901b6a144a417so1136747oof.13
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 16:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vpiFAbc6Uj1QpQm54fJTeQbUXCAmAi96NAe0y5IDSWo=;
        b=aejdvpsEyC/BPed7zecl+iL1hN5CAvgm1psnCqNP9GrIMZ8BMVzDvgFU+w8FXYOX64
         NUg3GDnYBpih6KQ6Ijk6GRZQWDYuy4vs9ZYWsEEs+CnkW3n/2j6HInmSz38XOA/kiGTX
         8Qm0xAX8BLjm5iIzhWV3+VDLuofhsPaAs0JpFiQp1SQZ4CetJflbTwFdvPMivmhRU4Wz
         Z+mu5XpyN1jVwjdySmLHUxgzu4mbiAGPQQfY46Mm5vcoHYUBva1C7Cx71CO3FsC+Lxhi
         X88EWICica45qO9eMI92t6h7QV7ujca1Z5WaTB02yrGXXiGvmT3nPEoa68dHO3ysqowX
         SOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vpiFAbc6Uj1QpQm54fJTeQbUXCAmAi96NAe0y5IDSWo=;
        b=kHqxlxzXge/LPwm/oBqxV5Vab5pL8rag2kkHdunZnDc/7mZxwo+iYhZc4w2oJxifHl
         h3XXuhp/OxvOH30LMwAjAE6CFF/X5iFToZXeut4k8dWqyNp9EfgUmxWKalV42v6RfVyr
         XyIbg94+pUoGcIcDEXFluMPnuodyiMUOqlbw0ps1fNN24iCdMlW6tHSSI6J4EZq5Jlbl
         KErVtWSjvqhGyZJioLTG+Deq13/i1ogI7CwQGioqDpm5Ku97slq9GcjPY9prypuLFY9X
         YjpaahtE/uo0Haqajk/2Ew28kMFkUZAunItpfXOcIcznuYg6T/etnpB70KtPE5ILmuGy
         y3Aw==
X-Gm-Message-State: AOAM531o7lc1eUsr0D8cDbc/g9nYlmewDE2Q9BVa0/E5MWmmW3wQMq7+
        dWPBoQFqO1aw2APA9FGlkHqR+w==
X-Google-Smtp-Source: ABdhPJwV3C0wPBRrcozaVMxaPYrDPhOxXN9oLRcsCz24V/4Of+nC2WLxrO3w9bi8byr52Gwhj+9UZA==
X-Received: by 2002:a4a:e1e4:: with SMTP id u4mr1229682ood.41.1615509139396;
        Thu, 11 Mar 2021 16:32:19 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l190sm670835oig.39.2021.03.11.16.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 16:32:19 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wcn36xx@lists.infradead.org,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: qcom: msm8916: Enable modem and WiFi
Date:   Thu, 11 Mar 2021 16:33:18 -0800
Message-Id: <20210312003318.3273536-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312003318.3273536-1-bjorn.andersson@linaro.org>
References: <20210312003318.3273536-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the modem and WiFi subsystems and specify msm8916 specific
firmware path for these and the WCNSS control service.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi | 12 ++++++++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi     |  2 +-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
index 6aef0c2e4f0a..448e3561ef63 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
@@ -305,6 +305,12 @@ &mdss {
 	status = "okay";
 };
 
+&mpss {
+	status = "okay";
+
+	firmware-name = "qcom/msm8916/mba.mbn", "qcom/msm8916/modem.mbn";
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -312,6 +318,8 @@ &pm8916_resin {
 
 &pronto {
 	status = "okay";
+
+	firmware-name = "qcom/msm8916/wcnss.mbn";
 };
 
 &sdhc_1 {
@@ -394,6 +402,10 @@ &wcd_codec {
 	qcom,mbhc-vthreshold-high = <75 150 237 450 500>;
 };
 
+&wcnss_ctrl {
+	firmware-name = "qcom/msm8916/WCNSS_qcom_wlan_nv.bin";
+};
+
 /* Enable CoreSight */
 &cti0 { status = "okay"; };
 &cti1 { status = "okay"; };
diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5353da521974..1118836c15dd 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1738,7 +1738,7 @@ smd-edge {
 
 				label = "pronto";
 
-				wcnss {
+				wcnss_ctrl: wcnss {
 					compatible = "qcom,wcnss";
 					qcom,smd-channels = "WCNSS_CTRL";
 
-- 
2.29.2

