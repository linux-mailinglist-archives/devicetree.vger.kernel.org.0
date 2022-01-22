Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6464496CE3
	for <lists+devicetree@lfdr.de>; Sat, 22 Jan 2022 17:32:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234423AbiAVQcn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jan 2022 11:32:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234410AbiAVQcn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jan 2022 11:32:43 -0500
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61878C06173D
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 08:32:43 -0800 (PST)
Received: by mail-qt1-x82a.google.com with SMTP id w6so13811132qtk.4
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 08:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yytaQK4pyBTgcORVSfAC8IIQ7r3FKCldXSAlA4X5ZAc=;
        b=JbODOxkureyDd6BlMa3c9+Zvr0tWVR2dLa0xPFtlm3jlLmewmc6VQZARSWrYOYy+c7
         Ykbx2hPeA11vv8E/ThZVvcoO8nKOnSVdhtCVzsBYJOGCA+tfUukZ17TvDP+k1BqSobHe
         livmTr86Xj2BjB23/lY/6O5P8K4xKMoC3Tu/wKrJUYBK30Eyu95zZeA2ugmBXBZpk7/f
         vjJ6GQOwPj/SEWZoz/70af9vbIz78r+QLvKQn0DIIleS4PKZSFx9M+L/BuA7mpPJHcRo
         z9UZu/c4asQrg1OwcKWjhZkUTitfCMyH5GswFBNXibUgABFfroAX+XApsQ4uTVsPq0VS
         Ri1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yytaQK4pyBTgcORVSfAC8IIQ7r3FKCldXSAlA4X5ZAc=;
        b=M8goWmqYS2bQb4kafY3CN619jezMCa++tG7oQgzoB+p59whb0RpHD/+jeL8pgDNVQ/
         rKtEriOwAdqnI/i/hQQpb1yAVe7ymHt7mXQD43cgWYpZs5PgjUqH2XWfEXmSaYd7DlE+
         pmLJY8L2aPK76enqOoEOlThR8HRdauaJaqxFwXy448oBCInDNfr2giQLtAxtpoTODdPo
         CZlUqngHjrsG8+oGwAY7D6iQ8Eb5jSM43GN8hp3/7prt2CUQb0gqpXZmlooS/drF/Fi2
         PeZ9MN0Pd8kwU4heo+8KoLj+PSBFltrtUknnLHyke20ID3CRpkvjUSQMOZj/rDN5IzMX
         d/Bw==
X-Gm-Message-State: AOAM5325WOl0cqaZLAOY5cUKEPNMXBtfau0IMTNvVFIcQL7vyGWlA7LT
        M50l2NjSEUaDfwCSkl7yXCjaCg==
X-Google-Smtp-Source: ABdhPJz1yADdbnA+8ufV2Vm2c5iiVuYvtpZS7GWHdU6WKMSEtlso9IJNFoBmAlKi9I5GJh2E3y/EZw==
X-Received: by 2002:a05:622a:1cb:: with SMTP id t11mr5526136qtw.200.1642869162462;
        Sat, 22 Jan 2022 08:32:42 -0800 (PST)
Received: from localhost.localdomain (modemcable134.222-177-173.mc.videotron.ca. [173.177.222.134])
        by smtp.gmail.com with ESMTPSA id b140sm4806440qkg.108.2022.01.22.08.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jan 2022 08:32:41 -0800 (PST)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] arm64: dts: qcom: sm8450: enable GCC_USB3_0_CLKREF_EN for usb
Date:   Sat, 22 Jan 2022 11:29:31 -0500
Message-Id: <20220122162932.7686-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

USB doesn't work at all without this clock enabled. This fixes USB when not
using clk_ignore_unused.

Fixes: 19fd04fb9247 ("arm64: dts: qcom: sm8450: Add usb nodes")
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 7611ceaa918af..5a98f2aad7099 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1442,9 +1442,10 @@ usb_1: usb@a6f8800 {
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
 				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
-				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>;
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB3_0_CLKREF_EN>;
 			clock-names = "cfg_noc", "core", "iface", "mock_utmi",
-				      "sleep";
+				      "sleep", "xo";
 
 			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
 					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
-- 
2.26.1

