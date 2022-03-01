Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC4A4C83D3
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 07:15:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232501AbiCAGPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 01:15:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232550AbiCAGPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 01:15:49 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635A566200
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 22:15:08 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id b9so25171281lfv.7
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 22:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KBWXG+W6ooyrDrEi/Xb8wIpn2PIv0F+2p0J9FTEIZbQ=;
        b=zVlp4+9HjJTRRCjNu56Mb456mXhlh9E2tMIHf3IqFvWQDzf/WYWO4xTypGDygP3Vjy
         My26GtyyYtu0BhhnJrPOgJMDJ6CCWnTuN3C6A2plE9UYhQUlrh5+qEho0s0248qlecjz
         b79pcsUiecelwzM9zKkI9vCwat0keeXF/nGt8K09NqDoVdZXmUtQWNiQgyNaFmgBQ2WR
         2LIStna4Sefia+6ya5xSdg2mTsoobgJZ3EuE0UW2BaZrhy1pmtjYY7iCHUfMU77J6VCx
         gMdXkf3v3Z4keK88IYYYA0qqawd9UoC93oi9yoODU8OC4JabFS+Rzkh0s4QtdxqHpngt
         uSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KBWXG+W6ooyrDrEi/Xb8wIpn2PIv0F+2p0J9FTEIZbQ=;
        b=qqUY4XuT1IJa2o8JYjosyUpw1xQGZoBIxhPRfiM+Srlpc5rVkhaNiYPd1yuF2QYHcx
         2PPqwSEBg4I+vP58WckkSJrkSFFAXeAaNox6MJm5C60ZyBYUDT/Geg/HJniinn9Mtabm
         zGH5XEsZcevq2S0Vl3FV1WXnCpILDW9R9CnNgAUBcF0ik3XYDQ//DUyQWz5+AQo8yguk
         onurOIf0S2aO/1Xo+zWJF2fXwW4a4H4Tyt1zVUC7n9yaRqqJacJjgjPLw7yO6qB/6jU5
         Wi2L9nr/eWpqiv5nIKfQsaRQxNKh1KUY51ApB8gsu4XEK00cKNlUMh3TdhhOPNBU9DSz
         Ea9g==
X-Gm-Message-State: AOAM530JpH43YJXfKnn+RrpiUS3hP5bN5BPmNWDlgoQit3tnUa+rKcvh
        yIYYJ3uXtLzX+jMzNJZ4E0kYmA==
X-Google-Smtp-Source: ABdhPJx8D5Nrax7TpJUd1Lpq5KxF46VZze7Y7Bfv38VsT3XemKVqn+MYRAKO0X+MKAoWxulYV2ufTQ==
X-Received: by 2002:ac2:5dd2:0:b0:443:5940:e418 with SMTP id x18-20020ac25dd2000000b004435940e418mr14620820lfq.245.1646115306733;
        Mon, 28 Feb 2022 22:15:06 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f15-20020ac25ccf000000b004442220c67fsm1318898lfq.27.2022.02.28.22.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 22:15:06 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date:   Tue,  1 Mar 2022 09:14:59 +0300
Message-Id: <20220301061500.2110569-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301061500.2110569-1-dmitry.baryshkov@linaro.org>
References: <20220301061500.2110569-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PCIe0 host on SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 7b6324969a4e..d33e86a375c0 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -342,6 +342,10 @@ vreg_l6e_1p2: ldo6 {
 	};
 };
 
+&pcie0 {
+	status = "okay";
+};
+
 &pcie0_phy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-- 
2.34.1

