Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5A71EDA1E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2020 02:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728409AbgFDAno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jun 2020 20:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728394AbgFDAno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jun 2020 20:43:44 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADCD4C08C5C0
        for <devicetree@vger.kernel.org>; Wed,  3 Jun 2020 17:43:43 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id e4so5122666ljn.4
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2020 17:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=P61ZzuXXSFTvpekn3oEJIai3Ga3OpTbw/6LAfNZjF3U=;
        b=JC9G65jZ7ZqdKv+w/Qhes+AAVxiyLtdyiW8Um2yQUeeq3a5tXfvFTNprVQa5eJbdcn
         4Tv02NfoOzDhQKo7LEAIU72fIJpjpipkf3g6Adw6dnsNbRxFSVx6TiLkvRHiXZq8bxhg
         N/d55ZVj5oy8DbPXD+PqrxgLfIOpV5xQ8uU3GAoyBTV0bZNtdtuQDI88OuUmNq4+nymK
         xIm4YJDF1TOsqIxLjwl1znahccTYN1B/XGubgdSs5Gkp4A/1X+L1Z8+1Q1V+lcDxcCle
         8oDL5m1qII93SZXGNZUuiM+zpYD4Vntc7EEmXubHLcSr3+x3Tmua5fEjuFP8e3cKy+Pq
         l8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P61ZzuXXSFTvpekn3oEJIai3Ga3OpTbw/6LAfNZjF3U=;
        b=e4GrO+2nDcbhOISVQHYOvqAtJbpysnOJkhcMRrFnTrM+Fc89Lsnkk/4Pk7/fNqIB3W
         62T8qrLPqNzq6XccPEl4bzfJAh/JtBERh51zDRiosKyK4gQkuK3L07ddw2JEsROpLlpc
         jY3eFwdM2cveoBJ6C1jNsTGjLEkaOJ6HxR698+dcPAOKlO9UN5zltp4jpPkqkOahamHW
         3tIFm9tUb0XvXFozXxB1lpkX+YDrPeqy6wymMxOyCgf0LxrL55ETk+uNkDhrp/di0XV8
         laJW9fB6w0gSpuIsQ7QjA2KzNgLNXMZkFUk9pJAiqxMU+WG0COz91EPQbIUcSQbyO4T4
         i2UQ==
X-Gm-Message-State: AOAM531P+f3Ts6ZsikwWl+OeIqbi4lIekZ8N2Y1czw5XY6D6JMtRoYaO
        cNnS7RKoCWHzmrm8+24T6e81Ow==
X-Google-Smtp-Source: ABdhPJx77AB3h9TWpyuXHJa10RvSHHVtjR8txT+E/YKVFLjmEEaje//dqcs/nbWSS3nWY8e2svw6MA==
X-Received: by 2002:a2e:b0f9:: with SMTP id h25mr884888ljl.18.1591231422209;
        Wed, 03 Jun 2020 17:43:42 -0700 (PDT)
Received: from eriador.lan ([188.162.64.226])
        by smtp.gmail.com with ESMTPSA id t16sm858527ljj.57.2020.06.03.17.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 17:43:41 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        patches@linaro.org, linaro-kernel@lists.linaro.org
Subject: [PATCH 7/7] arm64: dts: qcom: sm8250: add watchdog device
Date:   Thu,  4 Jun 2020 03:43:31 +0300
Message-Id: <20200604004331.669936-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604004331.669936-1-dmitry.baryshkov@linaro.org>
References: <20200604004331.669936-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add on-SoC watchdog device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 972d8e04c8a2..f1641c6fe203 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1662,6 +1662,12 @@ config {
 			};
 		};
 
+		watchdog@17c10000 {
+			compatible = "qcom,apss-wdt-sm8250", "qcom,kpss-wdt";
+			reg = <0 0x17c10000 0 0x1000>;
+			clocks = <&sleep_clk>;
+		};
+
 		timer@17c20000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
-- 
2.26.2

