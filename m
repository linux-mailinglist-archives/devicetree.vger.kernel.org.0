Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 225CF27E78F
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 13:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgI3LVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 07:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729053AbgI3LVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 07:21:38 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92551C0613D0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 04:21:37 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id x69so1676817lff.3
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 04:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CakOZMxW5irpEnK1T5k7cHWillnG3X1Ild4WGRSnQpo=;
        b=ph5s6ZJMDpUnY+SBb6CkowGX+VMHYlf19ev10OnoLZoROobK70zwtO+UBNOyhMr0bs
         1hs17w7aeveEiMJ/NfS/5oebWM6ZKfJdsjH7taz3TcbhC0s0K01XpsN3TDgNkY5aasNf
         +veOSkusE4dtxmNgPQh+Ur/jjQRr7jtrP3b64U7qVCkUB1W0ldXE3ixhV67VeqVmfh4p
         WSCDgqwDbYDSHlgFJwP0kOPR/5hQfkAkrjj+MdflzR//Gl4TSo5Gtto1djwqXRZ3it/z
         5hdr/WsOYtbpPfykmmdaJZ1jz/iFBb9MFxE3GCPIRIJJ28Vqayc67nWfyjoRa3YezwXv
         YK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CakOZMxW5irpEnK1T5k7cHWillnG3X1Ild4WGRSnQpo=;
        b=XhzpVICoT7i0Csq0RgmCuflTV7Y3h2yGe4ji4k6f8EUdZ/DnWJIDLFNnsSG2wVR/AP
         Pojc2I2MUaJ713QzD7opjIPhxZLDHh8ZlHcWubLUsx3zCa9a8MmNzaFta8Sqr87c3AwZ
         W+CeucJXQeN6ppLfA86VVKDiBL4dbLVweUMZr/Lt3u3ZBMOlgzwvbSJ7GUpLgyZZztcN
         huafUCmyw+TtkwXYxE8d+hvKB4xLEvVev/7Uzlg7cCn2O1FyptrTKrn4JsuXEJD+clEH
         Gl3ibLMU3/YHUQ3EEfiZt85Sp6AXC2yttVyXY6GJHSSvK2mCw74cPemaR2IXqkOO76vX
         5sAQ==
X-Gm-Message-State: AOAM531Pgyi0KVrRbsKM93a99bs0JXeHuoV9ZTqGo6ci0o+zBaNOLeMg
        tJzG8fs0eIXiUprq8xWA3rSSnw==
X-Google-Smtp-Source: ABdhPJwgfhe7IvqCF5tJI8/j93Ep/BBxhW5RdW7tBbcMTOYW6CR+TXXDuUu5JciEquEb/wB6AmijhQ==
X-Received: by 2002:a19:3c8:: with SMTP id 191mr650868lfd.549.1601464895937;
        Wed, 30 Sep 2020 04:21:35 -0700 (PDT)
Received: from eriador.lan ([188.162.64.138])
        by smtp.gmail.com with ESMTPSA id l17sm156765lfj.278.2020.09.30.04.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 04:21:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: correct compatible for sm8250-mtp
Date:   Wed, 30 Sep 2020 14:21:33 +0300
Message-Id: <20200930112133.2091505-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm boards should define two compatible strings: one for board,
anoter one for SoC family. sm8250-mtp.dts lists just the board
compatible, which makes it incompatible with qcom.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Fixes: 60378f1a171e ("arm64: dts: qcom: sm8250: Add sm8250 dts file")
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 66da94f6956f..95050f7d11f2 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -14,7 +14,7 @@
 
 / {
 	model = "Qualcomm Technologies, Inc. SM8250 MTP";
-	compatible = "qcom,sm8250-mtp";
+	compatible = "qcom,sm8250-mtp", "qcom,sm8250";
 
 	aliases {
 		serial0 = &uart12;
-- 
2.28.0

