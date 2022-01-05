Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46614485879
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 19:34:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243023AbiAESe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 13:34:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243061AbiAESe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 13:34:26 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8FECC0611FD
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 10:34:25 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id o3so26668102wrh.10
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 10:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W8/SX4B6pGqMw5D9hjNeLzM7aFQMvNtbchzA9WgHZ3g=;
        b=JYkdxgfDavEn2IJ/YM8Q3lfDES0NrdxCExHLploLBfxnYWwtuUh8SR2J9Ns3MyAOCV
         XA53Zua7Ifz3lQXw06XmeBsYoNPPOtjHk043syVShRw5uZvjKtD1YvIOySXLZotWNJto
         0gkzrRK7N8lAMTeWEtjzOS1+MBrpvOGRp8vu84UkishUchCWxOsC4QW/zKrXu9JXUhvF
         ipaL4oAeQ51z19Gt38+zrBdPaMLoqU6ZliBwSqGkqcYkrOpJn4qQKmJKXGDFZT/tv3p8
         mLb1EnCmAEIcyCKm8jmDtNMTImGq5XdlnFrRPgGFR1b4m701fDl2Sgm2qZ9zgBuHcfr9
         fr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W8/SX4B6pGqMw5D9hjNeLzM7aFQMvNtbchzA9WgHZ3g=;
        b=a7/d4lsc3E7ra80YtnkgeMkWiqWNvo0Sf3gm/9gmDGC872CO3qwVK0SwdXizWfhPGo
         opJVGESxYA4bEM0VsehXkGEJ6ZDPdUp65GYywNpsuFWv62ePmJoDspP8JMAagdj2V8Dh
         0Zt41cMqXedK4s6rwXQXjBEQe+zwPLYN3zhCOyMNXGjS8XBZnX7mEyI3QpOofUOYUMkM
         ci6oDa/Qi/gUwQVK5zv537ZIhngjzrkL343yg8BmZO32W+co54tY5nY+DYVMq8WUc3Hk
         48xvw7jzDJpOVTi1I3hSbu8gbEfA1iZ/vFDJsVmtRveJNhH/XOOY4aN2wx9bkYGCVk4u
         hsTg==
X-Gm-Message-State: AOAM531ThFXb7bnvv5wVdqbd5Xlur56u50G0O6qrTSOZw1qyi1EL0rJB
        g3bmm9HSCj9Q8KiSH5lQUjcNog==
X-Google-Smtp-Source: ABdhPJw9AveyAGyJLsI9/c1D+tYG8QKmHLy8rrrqHIrpJ6Ff8Ed5ewFy8XHvr8XWiChuxRFa3umuUw==
X-Received: by 2002:a05:6000:144a:: with SMTP id v10mr47100170wrx.357.1641407664405;
        Wed, 05 Jan 2022 10:34:24 -0800 (PST)
Received: from localhost.localdomain ([81.178.195.252])
        by smtp.gmail.com with ESMTPSA id o1sm3272215wmc.38.2022.01.05.10.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 10:34:24 -0800 (PST)
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
Subject: [PATCH v2 6/7] arm64: dts: qcom: sdm845-db845c: enable rradc
Date:   Wed,  5 Jan 2022 18:33:52 +0000
Message-Id: <20220105183353.2505744-7-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220105183353.2505744-1-caleb.connolly@linaro.org>
References: <20220105183353.2505744-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the Round Robin ADC for the db845c.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 13f80a0b6faa..1c452b458121 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -595,6 +595,10 @@ resin {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 /* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
 	qi2s@22 {
-- 
2.34.1

