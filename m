Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02C7B33C7AC
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 21:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231982AbhCOUX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 16:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232014AbhCOUX4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 16:23:56 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 959E6C06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 13:23:56 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id t37so10340834pga.11
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 13:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SumgLXEEDiSse0N2r2wNeP3SJpvgrBBQ9pGbicCVAEs=;
        b=TARURj7INPTeCxkYuNlc1Lt1LfxS4mpXImb01jpqC0RkGoV9RYZhPtDsnVFI/7eTmH
         GTVMBKlCtuHrSW/ir5AxzAs64HJv6PIa5kw3kAYJPCdpxf+W1+te+o3IwP79unkrBJ9b
         SFtbI3RWWDym7d+KyWBRa8M77ilbej639GpSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SumgLXEEDiSse0N2r2wNeP3SJpvgrBBQ9pGbicCVAEs=;
        b=XH2SiIT6Qc1fPsfkmxE7xDzYjkSmWwmdjrs6YDaus72fBm9ttzHo6rgXcMoTV3HLDV
         nIHfBYUTjjFdDZDv1+q3SDOCbixLE6q2h24QKABHvRjg+mh9GhaVCHdvYfqahvM5KOai
         0bEnfU/6zjWu1nI4XCictzVBl4ZpEmVz3yRjCbzsSYHGBzl4yiQRuGv0LweRp+gaNLyU
         10Un6pMUNG4UxVEUCu8qyDwKZGlB5IDhn0Lnn1X9QHMW7NI36G8JOS3ZHZqAV4CaWPwl
         SV8B5fnmynxG9YHNof6XvVKs13AVMuwDnAZNEhIokLACF4lIe1ploq5PVSBTloJGbP3v
         23OA==
X-Gm-Message-State: AOAM5321NyIqFdGT3oGkR36oJzTl/yb3MsYoqua2CRi7MpC84uVtcnNW
        opbQmRgk+5OblkectkBR8NRrMQ==
X-Google-Smtp-Source: ABdhPJy36KHDbtO5vnkZ/gY0V3nJT3eoSZdw94j+JhPppm60Jbxdyx5Jq9uOCangxZCVttxxGhPROA==
X-Received: by 2002:a63:f11:: with SMTP id e17mr777453pgl.296.1615839836202;
        Mon, 15 Mar 2021 13:23:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:14ce:2d12:6a1f:f42])
        by smtp.gmail.com with ESMTPSA id i17sm15614361pfq.135.2021.03.15.13.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 13:23:55 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: Add "dmic_clk_en" + sound model for sc7180-trogdor-pompom
Date:   Mon, 15 Mar 2021 13:23:19 -0700
Message-Id: <20210315132256.2.If218189eff613a6c48ba12d75fad992377d8f181@changeid>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210315132256.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
References: <20210315132256.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Match what's downstream for this board.

Cc: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc: Ajit Pandey <ajitp@codeaurora.org>
Cc: Judy Hsiao <judyhsiao@chromium.org>
Cc: Cheng-Yi Chiang <cychiang@chromium.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Cc: Matthias Kaehlcke <mka@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
This applies atop the patch (arm64: dts: qcom: sc7180-trogdor: Add
lpass dai link for I2S driver") [1].

[1] https://lore.kernel.org/r/20210313054654.11693-2-srivasam@codeaurora.org/

 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
index d253a08f6fc8..622b5f1b88a2 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
@@ -139,6 +139,13 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&sound {
+	model = "sc7180-rt5682-max98357a-2mic";
+	pinctrl-names = "default";
+	pinctrl-0 = <&dmic_sel>;
+	dmic-gpios = <&tlmm 86 GPIO_ACTIVE_HIGH>;
+};
+
 &usb_c1 {
 	status = "disabled";
 };
-- 
2.31.0.rc2.261.g7f71774620-goog

