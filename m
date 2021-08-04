Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A25A53E09BB
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 23:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238969AbhHDVCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 17:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238899AbhHDVCd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 17:02:33 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1FD0C06179B
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 14:02:20 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id d10so2924632ils.7
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 14:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=47+5nNS7AYyM9CTmDnvMFct9hls4ocxJYMxZvhUV6xc=;
        b=nBZTHCEtheFnzyarQzDlACUotxlyIl+VVTUsv+qM7R4/O61xFCPEn5pm5Rs797Ubm6
         Jn9wq+9pusOAC9yQRcV5MLxQ61bzji1QQntoKIzkHOOHSVSY+yWgJ+KX61Vszjpkqa/I
         T9LSNn6Fi2Wz8EG+d60R6GT0K+E62eMK0qf5Wrw0pPPZF3zM1r3UJ8Mb1W31KnhDSARc
         HqhEv4jnQ85l+p/7VM2VOU+Yn4Y3vLMAOyixd0hOIMsxRUEyRukcnZKmkW8at8QY/9Kl
         sRD+39WqPqhlIs/MUrDZsd3McNlsnNk9wFgFC1dM4LAE4fo6NXqNjIoBMBI9cLVeML2x
         bQTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=47+5nNS7AYyM9CTmDnvMFct9hls4ocxJYMxZvhUV6xc=;
        b=oDYysbi3Y10JfpyapNNBBP0Yak0LETjMq67Afgn+9OXBjTQdFtdnkFO2i52S3sFysa
         zLR2oBrUnAR3z2PgSyfJCfW2eCf/L46AE28F1g8yRTsBSQd7GPluiUF2mPTp/cohvcKc
         U2aJ6aFXFGEJZPom6oau/RX7n+RYCzePlCAf7lH9hQGPFKG1fR2HBQf3II9xHy5Vx360
         Afl1Gwt9GFd3nysjiVpiMoNb13LYCtYAMtaMNepKqUjx/SmcYiKrmnBCcmnc4ZxbNDlR
         tauLI25WqUYluxwGRDTeR6A7fAqe4qJ1HQQNMFFyl1Es2SQze1e7XETdxmg1Qnsk4DVZ
         5hFw==
X-Gm-Message-State: AOAM533gA14O6+YDPsDFlOhRp5XjsA870PIPePU4N6M6hge4N90rxMho
        XtfYGyMO/t3PhvyjY48MR4+5eg==
X-Google-Smtp-Source: ABdhPJww5KHdDEzRwT1tRzG8KgctXeqPWYUz4oIEscLGtTbFnsCsemBH/HFNIjlZYolcWRv/ZEbnKg==
X-Received: by 2002:a05:6e02:156b:: with SMTP id k11mr98925ilu.51.1628110940241;
        Wed, 04 Aug 2021 14:02:20 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id d18sm1687396ile.32.2021.08.04.14.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 14:02:19 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     robh+dt@kernel.org, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: qcom: sc7280: enable IPA for sc7280-idp
Date:   Wed,  4 Aug 2021 16:02:12 -0500
Message-Id: <20210804210214.1891755-3-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210804210214.1891755-1-elder@linaro.org>
References: <20210804210214.1891755-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable IPA for the SC7280 IDP, with the modem performing early
initialization.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
index 73225e3c2f86f..66640ce959124 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
@@ -243,6 +243,11 @@ vreg_l6e_0p8: ldo6 {
 	};
 };
 
+&ipa {
+	status = "okay";
+	modem-init;
+};
+
 &pmk8350_vadc {
 		pm8350_die_temp {
 			reg = <PM8350_ADC7_DIE_TEMP>;
-- 
2.27.0

