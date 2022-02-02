Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6244F4A7A33
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:24:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347500AbiBBVYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:24:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347494AbiBBVYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:11 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F24C06173D
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:11 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d187so396385pfa.10
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i4WGKpLM5d225Yy80Ebf/msPm9bZWnw4jLfGHHCULaY=;
        b=kvdClqHx9m5Fx5WsiTKBnO5iR5fKTkWEyaXLdb/SgjByx/xI49QFUeoIRKzrGmHU33
         3WBiT7Pb0Y37Mbr1dNzyQMpdkngEwHguZs9gwi758yqDVAOXsRHR1UDrHhRInPx8OS+n
         2KyC/i4HRLegFrYfWGFjt5P9mnubLeCRk4Wo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i4WGKpLM5d225Yy80Ebf/msPm9bZWnw4jLfGHHCULaY=;
        b=nKyMvHVsuIPR63afNoi6j0GsGN4U6VYxeYVBguR2+EDVbHgWeUWndiwBGh1VN347ID
         M2OYy7vod7n3jnxtBlHNq1EZ5IN/hANEm/IST9ekL5keIkA+sR7vVhwZoKpRdRRXLpDt
         4oQGZFiCd4XyL6WYPyqzBJd0bdx6FFNFz0HeRnn+GGHgnVuqBV6BiX7Fw4C0KL/0BObo
         Yotf9JEQZBVQnVFAZPebfKF6rbu/+WDE0c0/j/8BoS5BDdbqnW/y9fS+agRlm3a9+LeA
         vQZ+cpebD+N8bmbyRw67w9Y3FgpByK68AuNJUdcxLlrsLklPK/nQIdftCM0/vLMIYNG3
         MrhQ==
X-Gm-Message-State: AOAM531/QEVOoq2CuGQ0eMiwQ09jN1ZFJBUYYFdeuLpnyVF1DaOfhUrV
        QHbfo6hymiOgm/XSV2W6tgBR1A==
X-Google-Smtp-Source: ABdhPJykoMzCtnDv2hPHTz2HWWXMhhw2FS1TINJjCXvSh3UzfrQ40FYv+iRPnS3ADvp6imgLpzgtNQ==
X-Received: by 2002:a05:6a00:8d2:: with SMTP id s18mr30930242pfu.5.1643837051273;
        Wed, 02 Feb 2022 13:24:11 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:10 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/14] arm64: dts: qcom: sc7180-trogdor: Add "-regulator" suffix to pp3300_hub
Date:   Wed,  2 Feb 2022 13:23:35 -0800
Message-Id: <20220202132301.v3.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the other fixed regulators have the "-regulator" suffix. Add it
to pp3300_hub to match.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 7d8bf66e8ffe..78296ed6fd29 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -284,7 +284,7 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
 		vin-supply = <&pp3300_a>;
 	};
 
-	pp3300_hub: pp3300-hub {
+	pp3300_hub: pp3300-hub-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp3300_hub";
 
-- 
2.35.0.rc2.247.g8bbb082509-goog

