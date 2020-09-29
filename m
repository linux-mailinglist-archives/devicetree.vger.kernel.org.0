Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1726727D968
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 22:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729480AbgI2U63 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 16:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729127AbgI2U62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 16:58:28 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23AA8C0613D1
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:58:28 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id 7so4886996pgm.11
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4pRwrvNXyMRKIj9Fn/DgUQAH01RghXCWFYfTsOnjfa0=;
        b=m1eMpufPj/wvw2y0C8EJgG7faz2tbNqy8g3quGstXJNn4YZBkAkxzlmtpCsr3mPiMP
         CJ0o8U6mp9TXKpMO1zEROBhhNibzP4K1Gne5dJZhK4LMdPdFIFaCwm4FfiVA3SJVVY7D
         EEIQpQkJiFn5dY2jcLHcEDXaJSrfqYHrfniwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4pRwrvNXyMRKIj9Fn/DgUQAH01RghXCWFYfTsOnjfa0=;
        b=gCL/iSUNl1PQiRXmHW6lm47IXIezQIOJYr1axkK3i5ImiYUgakwhd9++Lnnpskj9T7
         /aSs6CA20iZFjAS6WXXwwEY5R8/FwerqKAn6XFViObepM76ddbjK+7KVO+oNGpSakhzD
         8CQv0AsQ1tMIkBPKCT/jnfecg9pGJTYPU2pqLv/DSb1tAZkfHmvJ3KM2Ny2EtZ5whZom
         ETHiSQ5aKvMxwxT3VvWeuaI28OmGTEXosGXABYXDgrXr/PkUvaLk3lftLmcleAfau6D5
         UdEwnvFFIUYjC0/kzszYEFCJ4kwosHXqFNG9ZcpQRG4RDwHBprSvNMOCyJhlbe20Nw0z
         gGLA==
X-Gm-Message-State: AOAM530C7Nft8++ilVgfbR0h6u8KDvaIs+Lg/WC9ImfMqrb7D9D1PxPQ
        MCPAL7LmEWOFKN5dte9NCWvcYg==
X-Google-Smtp-Source: ABdhPJy9sRB/lJrHXeYixFNPKCLeQ5nYf74j9ANW4WGhd1Ad/e9mhDNcXF8hcT2N/uDCLr0RPkah/g==
X-Received: by 2002:a62:6490:0:b029:13f:c196:bb77 with SMTP id y138-20020a6264900000b029013fc196bb77mr5673609pfb.14.1601413107709;
        Tue, 29 Sep 2020 13:58:27 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch ([2601:646:c780:1404:a2ce:c8ff:fec4:54a3])
        by smtp.gmail.com with ESMTPSA id k7sm5488101pjs.9.2020.09.29.13.58.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2020 13:58:27 -0700 (PDT)
From:   Evan Green <evgreen@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sc7180: Add soc-specific qfprom compat string
Date:   Tue, 29 Sep 2020 13:58:06 -0700
Message-Id: <20200929135741.2.Ia3b68ac843df93c692627a3a92b947b3a5785863@changeid>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929205807.2360405-1-evgreen@chromium.org>
References: <20200929205807.2360405-1-evgreen@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the soc-specific compatible string so that it can be matched
more specifically now that the driver cares which SoC it's on.

Signed-off-by: Evan Green <evgreen@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 6678f1e8e3958..f1f8bbc0b37bc 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -660,7 +660,7 @@ gcc: clock-controller@100000 {
 		};
 
 		qfprom: efuse@784000 {
-			compatible = "qcom,qfprom";
+			compatible = "qcom,sc7180-qfprom", "qcom,qfprom";
 			reg = <0 0x00784000 0 0x8ff>,
 			      <0 0x00780000 0 0x7a0>,
 			      <0 0x00782000 0 0x100>,
-- 
2.26.2

