Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30CA933C7DD
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 21:40:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbhCOUj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 16:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232692AbhCOUjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 16:39:40 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61026C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 13:39:40 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso215037pjb.4
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 13:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dO0IpY4eNf90HXjdWjmKTVkYdLkZaDxwV02yAEYmvs0=;
        b=EHBh/IIvcyAmVR2clNnd1OoJKlhkoZh/7PoomhbR0cM8OiqY+L1gYfrYT6zIgWHUWb
         x+QejVdG6nDz+PbeNjYg0MtMIms+/ysrG1CQdX4xqSR/TdKFWkpd2TQBWI2FryUmCT6G
         62YYgFf/E+4O3r5M+kIPyEDeojwRw5xNoyD6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dO0IpY4eNf90HXjdWjmKTVkYdLkZaDxwV02yAEYmvs0=;
        b=I7LkSmATt6m6AZ/kVsBtm/vTOccfAwUwBa1PPxNJGl7bC6/hwz8Pb5ICzSc2SpBntM
         Ad7J10YgedJFeAj39RO9sY5Trp8W48rGZNVUqotN8RqeoCmksX77TDMDeko1mv3Hk4vu
         Pj2yB8QQF+IIQRo8rmlvmNSKugQFopRlAUVL81nwBj8HRWmV/gSWZxVYc/4bfenlSVdM
         yEWHdHwjAr2bJr14+8hw8qvOwW6FDkUftjybGQxAGtUCl2Zeq3K+A/88pfq3xCySZOZ4
         AX2QRHlPCadiovklNjMepHNd1CVyubCCl20H9uDMjsQap3e3UbvHpcqBUDeZepAHvKIt
         pd+g==
X-Gm-Message-State: AOAM5334YYdxnW3KB5BAJF/qSoMDh5L0WsP/OXfMnsHsoHus0BmG/n07
        gnjFKDIN2v2gkkojmT45jLgavw==
X-Google-Smtp-Source: ABdhPJxMRTNLkPsulbJ8SSe7uQCh5WZJ6jghJu9UWXiC6Pw8T5ormTtJMtnn1YQj+58FQfI78d5vEg==
X-Received: by 2002:a17:903:3053:b029:e6:5cde:bef with SMTP id u19-20020a1709033053b02900e65cde0befmr13068425pla.81.1615840780021;
        Mon, 15 Mar 2021 13:39:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:14ce:2d12:6a1f:f42])
        by smtp.gmail.com with ESMTPSA id bb24sm510619pjb.5.2021.03.15.13.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 13:39:39 -0700 (PDT)
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
Subject: [PATCH v2 2/2] arm64: dts: qcom: Add "dmic_clk_en" + sound model for sc7180-trogdor-pompom
Date:   Mon, 15 Mar 2021 13:39:31 -0700
Message-Id: <20210315133924.v2.2.If218189eff613a6c48ba12d75fad992377d8f181@changeid>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210315133924.v2.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
References: <20210315133924.v2.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
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

(no changes since v1)

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

