Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2319E4CB2A5
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 23:58:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiCBW6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 17:58:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbiCBW6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 17:58:40 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55C2211628D
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 14:57:46 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id e8so4400832ljj.2
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 14:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uWYgqqLgLSrzMGcU/c8VpQ903XzyE7Iyx95nft5xtCU=;
        b=yUhGLvoDYM7EGTgSWKGyiuNP8zOlvEdxuUArj2J6w0D0cJKxFfwzRJ1x+B3tkvl4QL
         FAUZraMGzkjr4KaiRL7QC0VxHtuxc0T94gF3T3E8zPEksPB3U5n8lKJqarGZY1LWVlks
         UD4o6c+ISrCn+VzT6dALwzYVitC1ruanqV7pUx5DtbuPgt27nsIxDpm/0B/ZAehdO9i2
         rGoK15xDlR1f62eXiI+w0YkGpVFhkFfzFSxYA8DehI9yauBOhM4Hirj35xUucwVuJswi
         6/3VXdmYASwVI1wtd9TP4BgQNTXeHsNm5UnhxCLMhCQ0Y4kUAieWUnfQR7sxF8fc7HSY
         SiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uWYgqqLgLSrzMGcU/c8VpQ903XzyE7Iyx95nft5xtCU=;
        b=24Hfr/6cCDTjDDH+Bio4ebaNRSdS1Qas8k81u/w61Ynf1Wb1haB2BcVb2I1GYTwlHl
         KnHJedW7yJcKX8IC7B8aJCvzxAnNYXcgwDc6xekbQqbXjWNDzJlAiwmtOqiIeviwJhsU
         jXz6fOcjpGa5soX0LpKEnWRVk9jU0NuwGWzWYjdXlr6RmlWcHBdUnm4jp332+LrpcUeV
         ukF3QqqiAAaAKBe9R4IrqLa5Rhquh0mVA0J9pFfnsc2txusNtMcII6wb/hWg/mXd541P
         K/io0j0JShP69BbP9Jk0bJbqXs5PnikaUS8hLwCpLZTkpZqhjFnBlhg5nHimIy+KaSIm
         6f0g==
X-Gm-Message-State: AOAM532orHRDHyju+Lzds5MA2gr/aCI1hgSqiujVOVyeeZYE5ioF/jZ6
        zjaNU8va6MRH8HRiNq8GZu8TyQ==
X-Google-Smtp-Source: ABdhPJy+WeZGHzDyYc4ub06RaPnlnutlWjYKCiDmtAafNgeiIUAIAH01atz6mseIX0v4aQDtIMQeBQ==
X-Received: by 2002:a2e:a370:0:b0:246:3f82:2fe7 with SMTP id i16-20020a2ea370000000b002463f822fe7mr21921508ljn.350.1646261656429;
        Wed, 02 Mar 2022 14:54:16 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x26-20020a05651c105a00b00246585ccd53sm54236ljm.75.2022.03.02.14.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 14:54:15 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [PATCH v2 3/6] arm64: dts: qcom: sdm660: Drop flags for mdss irqs
Date:   Thu,  3 Mar 2022 01:54:08 +0300
Message-Id: <20220302225411.2456001-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
References: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
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

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Fixes: ab290284398d ("arm64: dts: qcom: sdm660: Add required nodes for DSI1")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index eccf6fde16b4..1d748c5305f4 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -163,7 +163,7 @@ dsi1: dsi@c996000 {
 		power-domains = <&rpmpd SDM660_VDDCX>;
 
 		interrupt-parent = <&mdss>;
-		interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <5>;
 
 		assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
 					<&mmcc PCLK1_CLK_SRC>;
-- 
2.34.1

