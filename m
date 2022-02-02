Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B504D4A7A41
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:24:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347531AbiBBVYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:24:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347527AbiBBVYR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:17 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D84B5C06173D
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:17 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id i186so458707pfe.0
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ERootrk4zEfHUOhgfH+rtttwTculem/Ci38KL1ItthA=;
        b=kTFPH7ge3u8ih6rXPvUXkPrD716e8ZuO6zMoUv2PUu6ouO8/1Wyf3VttthKbKX/xnC
         Ubo2iv6gfgibz21/E0sZOk3M1bTFk6d/myXdcgvBSNCBTof66XJa/Ol0AbJLy6jSWw4l
         8j+sfBdoH5OnlJdU9qCARzJlfCLbO3KHXbJlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ERootrk4zEfHUOhgfH+rtttwTculem/Ci38KL1ItthA=;
        b=DliwYojGup2qfsKTSGv1FLydmj50frRq5m+rOuhzvS8HySykcauY9Kuv2AHVJMnLUY
         8Rjrn2hu5JkglfJ60wHuLHnREoufQci3SY3OpT+MRFsQeGh2yXi95X83kw8eM8D3RjRN
         1QlWySTNua1U9vreJ2ewuNRRgDDktH2/DCvvCB5N6QsXlmJpFtdl8CXsPlrcwQ9/Ro+1
         +y/9MgYZPVvNhlz8Tsby/os4/0ZUGq3QfNxrbnE0Z1mEAKPiwyYLzb3l1cdjh5MRfGcq
         Xx8AjC3WxvVQwACJj3cphGWiaUHhN1Py5nf5I4uqAXuSYVUulR1dUo07yFsFIb+Cras4
         46MA==
X-Gm-Message-State: AOAM531NWBNyOli0LncjrmvoY+5s2MYdpgUMvsVsZQUKcFmy8OQtCgpz
        dGFoKBmT6JRy3uBIOM0ixmbOcQ==
X-Google-Smtp-Source: ABdhPJzGt9IZqVcKjMM8YZfcWuKOpKUaKOweWeXNxVqlnJLPq3Hl62vZ/F/iW15Vou7b8cOhjD3irg==
X-Received: by 2002:a63:5908:: with SMTP id n8mr25626217pgb.390.1643837057379;
        Wed, 02 Feb 2022 13:24:17 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:16 -0800 (PST)
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
Subject: [PATCH v3 05/14] arm64: dts: qcom: sc7280-idp: No need for "input-enable" on sw_ctrl
Date:   Wed,  2 Feb 2022 13:23:39 -0800
Message-Id: <20220202132301.v3.5.Ibaf8a803802beb089cc6266b37e6156cff3ddaec@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specifying "input-enable" on a MSM GPIO is a no-op for the most
part. The only thing it really does is to explicitly force the output
of a GPIO to be disabled right at the point of a pinctrl
transition. We don't need to do this and we don't typically specify
"input-enable" unless there's a good reason to. Remove it.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 7a987bc9b758..23e656e51904 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -534,7 +534,6 @@ sd_cd: sd-cd {
 	sw_ctrl: sw-ctrl {
 		pins = "gpio86";
 		function = "gpio";
-		input-enable;
 		bias-pull-down;
 	};
 };
-- 
2.35.0.rc2.247.g8bbb082509-goog

