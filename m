Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC1374E5673
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 17:28:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245462AbiCWQaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 12:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245495AbiCWQaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 12:30:18 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A8327CC4
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 09:28:47 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id k10so2513373edj.2
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 09:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IIH3IAC3eiSLLMMI+QTYcoaB+sBsuAdGEugaECzL7bM=;
        b=P2q4dtziExgSeAo8fYlx3m/AYfT+Vg8kZEk5P8pWYe+dwnC9iYa4n7gzci45Ksrtga
         MZTjihFZz9P1rvP3Uz9xdvbyfj6/yinTygwD5URHZa3pnwhx5vR1eiV/5wUTMc7s050g
         fS/UvGMr8magrrqIey0aNH58m1G5332eJPwXWLY0XST7Cz6wpyM3ZhDK8faZtSDZdG8n
         j3rCqRYoJJpLExRuRvaeyqWTKaA5IQYfmbR4+IwmP5oO5Nm25uihfOE9b3rPfTdjDOVo
         mLKxMhLNK14joUA7r7bHZzPQN2TC4CRz2mBQAdS3CXls27GCRmI4a7hnzFb6d83/oXwm
         8Biw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IIH3IAC3eiSLLMMI+QTYcoaB+sBsuAdGEugaECzL7bM=;
        b=DPxttCUB108gjLmbA5MVNWeviEWaGzQ5nePNvS+YNuUU7w2QcV0OSQRpFaiT2aygt0
         IVoZBb3xHr9PTRJ4ZG51qduQCAeN9IqDYKTCOQvIvkB7N9dzJNS/VxLmO3wutUINE0sX
         SQVM/dZ++lHe9NKXeltm3/2MbES0a1xIub4yWDYGV44UMg4SuUmJIuMPsEgrvJaUOEe8
         BkmsxbgYytB3WU73cwxPyOz090sS8uWaOYFGb1uGbQs+YHRGsbfGIOmgtYjY6rWlOkzK
         B+D83xd3VM4sHuYxEwBStxCDeTLAK85g9jeJ4a17DdNCRT/x8TElBT4C4AhqM08KzShT
         iO1g==
X-Gm-Message-State: AOAM532cr2qT/6FeK3KgKnV1Ow8AbN9xVjbtToN9JeSIdxWvHWWF5eIv
        yP0uCd9ZPEdWfPJCZ3X4ktdsRA==
X-Google-Smtp-Source: ABdhPJxKaVgMMp8uHPWQEPwXoZVtB7UWU8D/lQ9Yp1FR0rm0XWN8Y1/dcEw4X+Y8wCRUzGck2NCYVw==
X-Received: by 2002:aa7:cb09:0:b0:413:2be4:c9fa with SMTP id s9-20020aa7cb09000000b004132be4c9famr1184190edt.106.1648052925731;
        Wed, 23 Mar 2022 09:28:45 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id z11-20020a50e68b000000b00412ec8b2180sm173306edm.90.2022.03.23.09.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 09:28:45 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
X-Google-Original-From: Caleb Connolly <caleb@connolly.tech>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v13 9/9] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable rradc
Date:   Wed, 23 Mar 2022 16:28:20 +0000
Message-Id: <20220323162820.110806-10-caleb@connolly.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323162820.110806-1-caleb@connolly.tech>
References: <20220323162820.110806-1-caleb@connolly.tech>
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

From: Caleb Connolly <caleb.connolly@linaro.org>

Enable the PMI8998 RRADC.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
index 367389526b41..b3b6aa4e0fa3 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
@@ -312,6 +312,10 @@ resin {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 /* QUAT I2S Uses 1 I2S SD Line for audio on TAS2559/60 amplifiers */
 &q6afedai {
 	qi2s@22 {
-- 
2.35.1

