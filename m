Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85AA84DB320
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 15:24:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356788AbiCPOZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 10:25:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358062AbiCPOZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 10:25:12 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09342A733
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 07:23:55 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gb39so4576404ejc.1
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 07:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o/d166yo9TtkM4+c7x0I89HNNMPO2K1Na/pBqagV1Y0=;
        b=rtOZwPphsgu3uyMdbDd22OSwK0+6n4ikP1CJyx8sfRFjUfbayyOyrRmOhyoT1GBR44
         ZniGhIHAVDL3dSapM9xbrY12VMlr898KwPehPGNDYj+vTKEj+3tiIxeMDaiPkuOhPN4C
         Q1RaQgCi8DZfFawh7+0dlXLLChSo6hw8qW6OiuYAkw40YGMrXdQiX/hMU+H6rGjiYkdz
         pFC/t7gahe1ffw5zRcEKw79hX/XDAyg4CY8h4RdefnM/VJcQioFwWRydvKpUXz4wAiqb
         TTjBcpDz3QV1jjnwyP3Tm6h8yBpvHYznMqrl0ZLt/7i/qJPAGmgRpseReBMMCEuzfcvk
         wt4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o/d166yo9TtkM4+c7x0I89HNNMPO2K1Na/pBqagV1Y0=;
        b=UoJ99c0nbiLCctk/G2g/uLcxmET7Yuty/iokrxHDfyVcmBkXQdcIkwZ0/Y1sLcp+Xj
         jgKSW2niM38igDBYE2YeByD5S1XcRphHJ7WFfO7jQeeR9LakpsRIPxVsqQKdUWieD2fR
         u9D3tP5meRA2+e0CXDacuPb6nBgpqTrieywoxeG7bG+cvioSr3bPAVAHnZ/soN1QcMWA
         sTPrwNNarfi3TPKtgBDeCf3snAoHA8exWqTRMch5FrBodxywJ88iWaKoRuqdhiX6167K
         S/JRtsEwr8UJ2f30YmaE+b1RAIcVFZoWYHNzw2gShXRkfa7/449bi+J25xQQevZzBXyU
         cndg==
X-Gm-Message-State: AOAM532dbiuk78E7jQ0xzHVNKGs7kggbQlPCW/IDHZEB90P21fS332rz
        SmNoaTrWdNeYBz6rm3UiK8GYWg==
X-Google-Smtp-Source: ABdhPJw2qu4DcOhZ4JSbpuz0Twf1IPTT/v8q0TqAbAuBWwNaOiJx1OITfd7y9SZQruN+0/Z5QVcnhg==
X-Received: by 2002:a17:906:2699:b0:6d0:9f3b:a6a7 with SMTP id t25-20020a170906269900b006d09f3ba6a7mr161238ejc.397.1647440634210;
        Wed, 16 Mar 2022 07:23:54 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id kw3-20020a170907770300b006b2511ea97dsm952263ejc.42.2022.03.16.07.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Mar 2022 07:23:53 -0700 (PDT)
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
Subject: [PATCH v12 8/9] arm64: dts: qcom: sdm845-db845c: enable rradc
Date:   Wed, 16 Mar 2022 14:23:12 +0000
Message-Id: <20220316142313.92371-9-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220316142313.92371-1-caleb.connolly@linaro.org>
References: <20220316142313.92371-1-caleb.connolly@linaro.org>
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
2.35.1

