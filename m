Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B34E343F401
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 02:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231407AbhJ2Anu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 20:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231286AbhJ2Ant (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 20:43:49 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1290C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 17:41:21 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id om14so5974030pjb.5
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 17:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vCbr9sHhPoOYTttiMC9wrUBW6ygnU7eeaDDHFz4/imE=;
        b=ECAx9YAlPnA1iDQafmSAgZSeqWS3vJClmNYWenxzFskKGgJJu/Enn7b9+gLoiXpAJL
         y9Ih/K3w255iNuV83wasztitEUlwySOreXKHMiXo6mX7jRTwBUD1Q/WW22LvH3Z3rXTQ
         qcfcyrGM5LkMOLKL6B4cvgFIXV73K0KbqHDVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vCbr9sHhPoOYTttiMC9wrUBW6ygnU7eeaDDHFz4/imE=;
        b=rLo5sBxBdcsgcP5kZMaDq5OnmuEaf/xBLAc0hD0vF0tboCMRxHUVP19G94ZffqzDrI
         pD/Ti9ljdDnV2xG8qfQOEIi5ckQuySNDZb81DX8HVJ7HexlmbiR4xO6n25We7I7+1TQj
         nIJ12ecSma5RIulJ4WcQTZ6wdgXrlfOdiXz9UQ9hs8xwxX6b1tc1wOPpsaJCPaF+kY6K
         jPz4Mi31VxREQ42Na//QouOyv1XDKfuUlcn8Zdr7vVTtvX7fswVggdoEHdVoOGeLm8oy
         JofbEVvyYXF6ABbNKoXJg5+FhEgQDLcsir1rESzhWXGkQfRtRl+4y3tX07BRvydEaiZX
         OqAA==
X-Gm-Message-State: AOAM5331BajQZaffxUMfkOMdTWlkGPUqhxqi28YzP1n7MP3+K264ou1G
        CThWyrlLcC2MMGILcOoDsgPHEg==
X-Google-Smtp-Source: ABdhPJw1+zcw8qqYdbD+AuRBSzHxdUw5h2idj0R/H3v8Uv47IRYiimIrRoNqpSgTqGVKd80DDLomLw==
X-Received: by 2002:a17:902:bf02:b0:13f:cfdd:804e with SMTP id bi2-20020a170902bf0200b0013fcfdd804emr6744632plb.1.1635468081547;
        Thu, 28 Oct 2021 17:41:21 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:e956:ddc4:6e27:e270])
        by smtp.gmail.com with ESMTPSA id s2sm4373846pfe.215.2021.10.28.17.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 17:41:21 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 1/3] arm64: dts: sc7180: Include gpio.h in edp bridge dts
Date:   Thu, 28 Oct 2021 17:41:15 -0700
Message-Id: <20211028174015.v2.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
X-Mailer: git-send-email 2.33.1.1089.g2158813163f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The edp bridge dts fragment files use the macros defined in
'dt-bindings/gpio/gpio.h'.

To help us more flexibly order the #include lines of dts files in a
board-revision-specific dts file, let's include the gpio header in the
bridge dts fragment files themselves.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi  | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
index a3d69540d4e4..6a84fba178d6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
@@ -5,6 +5,8 @@
  * Copyright 2021 Google LLC.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	pp3300_brij_ps8640: pp3300-brij-ps8640 {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
index 97d5e45abd1d..6dbf413e4e5b 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
@@ -5,6 +5,8 @@
  * Copyright 2021 Google LLC.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 &dsi0_out {
 	remote-endpoint = <&sn65dsi86_in>;
 	data-lanes = <0 1 2 3>;
-- 
2.33.1.1089.g2158813163f-goog

