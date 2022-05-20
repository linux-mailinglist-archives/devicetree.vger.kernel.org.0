Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAFB952F010
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 18:08:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351366AbiETQID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 12:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349034AbiETQIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 12:08:00 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71784179C0A
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 09:07:59 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id f10so8429088pjs.3
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 09:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jrf0USGJflM7r6+ev6OSw+77Ui3swWmu+X4UMtW509E=;
        b=dKvOtYwieNzttXuWldodCcBrtBB6RAi9zjnnyIdYM7qP2J7gpJUj+0yRHZpMAFO5ZW
         qA3xjJZj3uZgyMpMglhCFel7fpPJ1TXbsL1x42X+S8z+kq09vjuQfClTwgc7E9SrUFCk
         mwcr1Pdl+3aOn85kMR0PTXn8bB0QWhkKkgLN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jrf0USGJflM7r6+ev6OSw+77Ui3swWmu+X4UMtW509E=;
        b=sbx9CsK3q0mKzvi1o+bjPBVqbbr+BDXFJlCaGEM3CUo+/6i3i/fOCGwAQ6bna5aNg8
         2zOwZKEITihBjqQSO5xO02x3gPZdM/C5kSOqQ4bHG5kv7MtZn/lp5SOMdzo20x0VSvpk
         iq/wQLzVC+dQgdCH07wheV+7ci0Y/3XKAnWWG/Fz5MKIF+zVsC0Jj7Cj/2ntsv0PC2D9
         e4atsaHbApJyWuMp9bFq2SrhBIaeDJNYe6Z+jOSCz+82N27NthVi7j7b1XQbWBsy160G
         tQDH981e00kO4NueIwcQozNLEWkwQxL+INX6yQ1YHiusPTCfGG/BIpXW/gk+YvnuZ14r
         niuw==
X-Gm-Message-State: AOAM533+VDFr+Lty06EGWXMTCIBozEJwGBpc6kEXSIb5xbKvXMCLY2SH
        zgfmN8cCdx3gAvQxnnkT+oA2yQ==
X-Google-Smtp-Source: ABdhPJzH5MIeuj8j4P/ITotxTpSA/cE3BT2qltFyRWMLZXbRUekOD2TOK4N/8DsEAFpJQ2xKTrAVKg==
X-Received: by 2002:a17:90a:149:b0:1df:3da1:3549 with SMTP id z9-20020a17090a014900b001df3da13549mr11508069pje.90.1653062878968;
        Fri, 20 May 2022 09:07:58 -0700 (PDT)
Received: from judyhsiao0319.c.googlers.com.com (164.135.233.35.bc.googleusercontent.com. [35.233.135.164])
        by smtp.gmail.com with ESMTPSA id iw3-20020a170903044300b00161a2d98a8esm5856138plb.226.2022.05.20.09.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 09:07:58 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [v2 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
Date:   Fri, 20 May 2022 16:07:52 +0000
Message-Id: <20220520160754.1141281-2-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220520160754.1141281-1-judyhsiao@chromium.org>
References: <20220520160754.1141281-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1. Add drive strength property for mi2s1 on sc7280 based platforms.
2. Disbale the pull-up mi2s1_data0, mi2s1_sclk.

Change-Id: Ie227da1076a4343b88b331a937169745fe91902c
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9cb1bc8ed6b5..6d8744e130b0 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -612,6 +612,20 @@ &dp_hot_plug_det {
 	bias-disable;
 };
 
+&mi2s1_data0 {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_sclk {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_ws {
+	drive-strength = <6>;
+};
+
 &pcie1_clkreq_n {
 	bias-pull-up;
 	drive-strength = <2>;
-- 
2.36.1.124.g0e6072fb45-goog

