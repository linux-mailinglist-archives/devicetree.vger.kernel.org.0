Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46C4E4CB5C0
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 05:01:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbiCCECJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 23:02:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiCCECG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 23:02:06 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCBD815D388
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 20:01:20 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r10so5799696wrp.3
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 20:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=60je+LDflCDSpm+PbhIAk73PJa9MombVHWRyiPaaQWE=;
        b=I3qxxz85al0m2aBaXC6vxy5UEDUoBFOSzUamys/rReJRoyPeqfE2Jc/KRBomSVpbkt
         qltfmZL8xs6FPoCoXCjx/7AHs277KmY+sQNZayHiuFRgQlNune/Ak1cDuqsmlMf4ldVk
         N6+WC/iCNcvETgn170kXJRIlQ8sh7asywFEKOdxGTmJan9fFzwil4Kgz6Tez/KcywABW
         OO/UUTbqPj3dmNeautr104Wchu4T26dIz1JnCU2W9kgwBhXqWcGFk3k4E8dMK3SW26M7
         CV2Q0R/Pdk+twTM/TPXC0nLwUxXF/tx36PVSU1zF4kB5nMu/wYZECJ6abUVhgR5PsiR9
         7qRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=60je+LDflCDSpm+PbhIAk73PJa9MombVHWRyiPaaQWE=;
        b=RCK0gSPkdCNLzF9CL2PcIflDIXSUfOaBAqn7O6Y87glLTlvcydljZdNk5f7Wqdxu0X
         Ed4XmHEgfozUNZSs4QXfrBO1ckqOWSay46/aUKvM5utx9Oeo6lJ+D1f4nBZZ+yb5adcg
         oN5v84MsYEE8Hgo6WxcmDfBG4piO+qRoGVE7cMdbVcbHcVV5j1ha/tA6/mxNB7ZbaNJW
         KFwO42mAYv3zOxGG+1pJLePf0TB2U4yqPIN9elMcoQQoCz7/3GaJ0mjdEdOHLZXrunTN
         4FCpKU4Gl/SDnzOFBToILMuPFa0XWHLHavWs0I0majL09ewou0DQOgNWwxX6j1VYgqgT
         20vw==
X-Gm-Message-State: AOAM530Aly9G5vNYeyjHRoc6MYTKoaFRkThVyBTWVt3B8rAvTVv48SeC
        C4Q5cYBRuMydELXRGYGDp4dkPw==
X-Google-Smtp-Source: ABdhPJw4NrOABHxHCKYkrUqE1KPhGPpoKXJntO/K+tcGQy6+YNNtIadVdWh5FAreD+KqOOdpAhKPig==
X-Received: by 2002:adf:90c1:0:b0:1e4:ad27:22b9 with SMTP id i59-20020adf90c1000000b001e4ad2722b9mr25047757wri.219.1646280079463;
        Wed, 02 Mar 2022 20:01:19 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id r16-20020a5d4e50000000b001f0075f4ca1sm702615wrt.105.2022.03.02.20.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 20:01:19 -0800 (PST)
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
Subject: [PATCH v9 9/9] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable rradc
Date:   Thu,  3 Mar 2022 04:00:35 +0000
Message-Id: <20220303040035.1454103-10-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220303040035.1454103-1-caleb.connolly@linaro.org>
References: <20220303040035.1454103-1-caleb.connolly@linaro.org>
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

