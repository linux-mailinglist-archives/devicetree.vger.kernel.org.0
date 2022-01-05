Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81200485875
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 19:34:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243070AbiAESe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 13:34:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243022AbiAESeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 13:34:24 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA075C034007
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 10:34:23 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id j18so73261wrd.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 10:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+lqRhrkooB1DRVf4+Ugj5CfxzFlazGWH1jNE3D3s2OI=;
        b=m63AUIcP/hsHWSNy4ffYkMVz4F4XPKbOSnUAtPfhTPYKxz2CWKcL+NaYAolE8zBPjG
         Fr/0zi7WXIGgT3q3AacedKNriA8Xc06cBYJ6Db1wL/Y+uGXmCR2p5RzRvYhMPDRsg4fC
         nPMYW0LZdRAuTp0Oy+Hl1x5tYleyBkuKM+Gd3TuIoWLVKE2Vf1e0JSh9CjHQR9SIzo0x
         dIw1lTyesCUKED/kPmw7xBD54q35SAIO0PGEuUWESduc18u4+VPZNWBKVYryMmVnPRkt
         mQHrRoC5pr4jNy9b4Md25tVo5Yq5jAaZOSVdJHxWN2azJiWNvdEU8draZERY4AyiRox8
         hvlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+lqRhrkooB1DRVf4+Ugj5CfxzFlazGWH1jNE3D3s2OI=;
        b=T87Ly2bRLDkq/V04zP2pwil6iJ3YNH/S3W6IpUccP19EboHD+0WemZIBwqly1dddCi
         uAI4WGFWJ3vmgWCNFnaYOuNblBP5HvP7v7eN2jExq0+URCjGs72i5HyqQJE+3zePqGpj
         cHN+KyX6xJJ87Yc8BGSmrFo+NvP0GzEeo33JdoQH9ILSR9pDLVR/BCyHqSWUI0mYlhga
         bf+mRqKuj9jw5xric09pfypyTZGDCxCa4qWWpYvF8wDTU8qzUxNgfryIz9zOzersDE4R
         oyA1WazrBz/4QJcer6hMYYJ7BqDoT2T5FZTJhPspL/vXm0PooI5hlUI/fM0GKJoIJVhD
         +yGg==
X-Gm-Message-State: AOAM533iwaN02dfhah2jfN2/c18UmATTsBXc6pNBTBpvDuzlK01ec765
        R0u5GMvGAZYMcw8GKB0y8fnImw==
X-Google-Smtp-Source: ABdhPJz0N3u0K3ODf2ENu2o1jEqFhMpLXF2rMl6y8dWXUQjJhWNHaKquJILWYcgj37lywdEaVbmcmw==
X-Received: by 2002:adf:df89:: with SMTP id z9mr3502651wrl.505.1641407662295;
        Wed, 05 Jan 2022 10:34:22 -0800 (PST)
Received: from localhost.localdomain ([81.178.195.252])
        by smtp.gmail.com with ESMTPSA id o1sm3272215wmc.38.2022.01.05.10.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 10:34:21 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v2 4/7] arm64: dts: qcom: pmi8998: add rradc node
Date:   Wed,  5 Jan 2022 18:33:50 +0000
Message-Id: <20220105183353.2505744-5-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220105183353.2505744-1-caleb.connolly@linaro.org>
References: <20220105183353.2505744-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index 0fef5f113f05..da10668c361d 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -18,6 +18,14 @@ pmi8998_gpio: gpios@c000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pmi8998_rradc: rradc@4500 {
+			compatible = "qcom,pmi8998-rradc";
+			reg = <0x4500>;
+			#io-channel-cells = <1>;
+
+			status = "disabled";
+		};
 	};
 
 	pmi8998_lsid1: pmic@3 {
-- 
2.34.1

