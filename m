Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFB9D4CB5B9
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 05:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiCCECI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 23:02:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiCCECE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 23:02:04 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B065315D3AE
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 20:01:17 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id n14so5793337wrq.7
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 20:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zozG4Oy5Pt0vWjsRDZ91928+qvWs4STBKU9M4pGg1h4=;
        b=GtETtXWXuQkd42nbMR6nn88ERrAR/i7/RBu9oPuEUqdPFC0Up94swtx3AIPfV9CU0z
         DubnWU6Rdz4zBpoB4BT24AeeVCJeg/XVY4jzMN61mbjqHHh0G7qFwCKD6oWolCOZIaW0
         EAMv42THAC1zrM7jytTexyPf6gnKXkWYpCou8UrEAqHLRqi/kuJk4ZAj86CpGV4TRsQz
         ibL0PvDEwNWzdJsdhCi6T0ftDjD+7IhJkUvu70vaD1dkPtNaHGaKZJlGJBZzr0OcJTri
         E8dKtf1Mwq162fLIxD6F2GphbB0Sce3N1RTatH2zLdv6uuwtDUxfV+uhqFbSApV4ORse
         xwtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zozG4Oy5Pt0vWjsRDZ91928+qvWs4STBKU9M4pGg1h4=;
        b=QZSnWh6s7SzTGYqzmFqfjBcMJU3FTPEFPwohGru9LF28RTvQOPQDxo9+meze514tXG
         ZLNhtuqLVNvwm1RBDS6q6mYo/67stveLem57kj07XrfVjXcCS4I8NK59KaM39m/dkkz3
         E+Mu1njfSes+iKG5LcY3aMOjXbBxg0z+QMwij0ial7rVdZ6XiDVUENwAjl7SE/pthMdj
         fxUYEGjVE04imyv1UaaafkPKukuJNSElliaKG8Jkvp2d+cMukIBz90Qd04RWRWuVJHdA
         l5DHJ8wojMaQiMXgq+oLdRjZYtpMe4asp/CoZm58k71fkD5J+Yt7D9s/8Wv4e1Me/Qw7
         KMrQ==
X-Gm-Message-State: AOAM531fJclrPJJeBPQ5AbBCW7hQjiBnhXrPGkFt7UwB2r1MJCDS16AJ
        lP5CpFrrz4CsHQCrC9GBURdAlA==
X-Google-Smtp-Source: ABdhPJw1sPHjiYqCY8K107nqizdZEpManrjkFDw4CZ6liqAMJD/YeEihykdQplF0Z2y28DOWEShY9w==
X-Received: by 2002:a05:6000:16cb:b0:1ef:e0f8:94d6 with SMTP id h11-20020a05600016cb00b001efe0f894d6mr11144542wrf.485.1646280076274;
        Wed, 02 Mar 2022 20:01:16 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id r16-20020a5d4e50000000b001f0075f4ca1sm702615wrt.105.2022.03.02.20.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 20:01:15 -0800 (PST)
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
Subject: [PATCH v9 6/9] arm64: dts: qcom: pmi8998: add rradc node
Date:   Thu,  3 Mar 2022 04:00:32 +0000
Message-Id: <20220303040035.1454103-7-caleb.connolly@linaro.org>
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
2.35.1

