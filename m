Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D723C4B7663
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:49:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242003AbiBOQzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 11:55:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242009AbiBOQzh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 11:55:37 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEF26119F5F
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 08:55:21 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id c192so11684904wma.4
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 08:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qImSYxU2i/y/qV71r8EFW+LTWk9ZfhM4KeM2jcTcklQ=;
        b=QyN+krO1vGGqYNynGXD3QnwvYk1OZeN+h1hNRMTQ8THbgMDDvcH4tQdr0YLlcCNtDH
         LzQHiO4OYw+jkBfuOGZXHTXciZnpJb2X4aESenzid82VRqC5Lwuk4Ob68bJrF1nutx5w
         Uwjko4VF6yPfsbId2SLAUqN8JVUAcMqN55TQem5u57uVEccWbF7nzmZodKr+WRylsty9
         yoN3paZVAXADEtZEz51uL+PidUMi5J+2OSukZ+8t7PNHzgJXgTFCmU85CTfU1o05biAd
         LhytQ9G6HVWbubuNlXogb4Gsc+6BaMlVP3mAA2AWmEQraBsWwWydSsbRgjMcH6S1abRx
         ccgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qImSYxU2i/y/qV71r8EFW+LTWk9ZfhM4KeM2jcTcklQ=;
        b=JR8VZhAPbHhAIPHEwx7ddK971hukxLevmmOOyYd13PSiVKBhwRnFH6GWz6IHZAZ2jR
         /OBg/BhBqPtmiuDQMn0hdostcqHGIdmQRUxYDNLE2dcV8icf7lVsIT7PNdoVuspbFFat
         Ap61+HQYKOGA+5SlQLSRxeasplNiIRv7MlJ4SBW4OkK8ZLVM3rE58f/kAf5y0RYc9xWe
         OBE8DV+uwXtTKRKAzUF+G4dBYH1+ZRCaEdTM6qCjMffQX9CmLL5FlQUAPHUFgFoEIx8b
         e4rfIQtEmCgp25F7QxZarHeNt5h6CtjEWDFl6caTG8XvLc/nPjuf8ZOCwTQkcyx9U5bL
         gWIg==
X-Gm-Message-State: AOAM532OTdm6LilcBbk1tmUibIBDQvhwbL7PjJbgoYXsow6LGGgj7wKx
        d1eM0QALpYNJy5Xas74220tjWw==
X-Google-Smtp-Source: ABdhPJwmAJpol9TqUBgbmkJr4kKdjSEONwdF/OUGTfIPNB61y78v4fFccx9LHfBaPh2jDixkBlSFKg==
X-Received: by 2002:a05:600c:21ce:b0:37c:526:4793 with SMTP id x14-20020a05600c21ce00b0037c05264793mr3869705wmj.120.1644944120566;
        Tue, 15 Feb 2022 08:55:20 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id f14sm15373652wmq.3.2022.02.15.08.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 08:55:20 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v5 7/9] arm64: dts: qcom: sdm845-oneplus: enable rradc
Date:   Tue, 15 Feb 2022 16:54:54 +0000
Message-Id: <20220215165456.1205583-8-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220215165456.1205583-1-caleb.connolly@linaro.org>
References: <20220215165456.1205583-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the RRADC for the OnePlus 6.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index 7f42e5315ecb..e8287cf02511 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -450,6 +450,10 @@ pinconf {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
-- 
2.35.1

