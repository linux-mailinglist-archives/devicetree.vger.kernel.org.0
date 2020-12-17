Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9E172DD87C
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 19:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730015AbgLQSe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 13:34:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729986AbgLQSe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 13:34:26 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1241C0617A7
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 10:33:45 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id o19so34420673lfo.1
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 10:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Foy2IH04nLZv6t+FNZrv84jPZYor6kJPDkEl5GeJUJY=;
        b=nbrEfB3+iNOYepDbTysjMyobWTkH1FRZKRPcbm/4eVk5Dz/h1SXpyLxLHGC+MiyMGl
         KRS3S9J839bzPJMpaQ0n0ggJBSW14iOv0CQGjcuguQwT74hrc5H6xdCDufCg0duogkbA
         H6LA6vwAvdEAt+yZvq2L50bZ/8PuUTu7veUllV71y4awIRp3NYsCD8+4RbVVDgjL+wi7
         gKoKgEmecXBTWyP0alOcej5jER1ivr/8L5iF25Tlsagsv6QDGsd4PV/DxTtnC8mgI0vr
         BUmvJWKQmg16XF4SrQDE3U1jMBo/JdP4o+gW2CGvzQusXYTzjQomBwVNc0rmGQvsevuT
         h4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Foy2IH04nLZv6t+FNZrv84jPZYor6kJPDkEl5GeJUJY=;
        b=tMkS9DSdAPdCrlSP76aBEjhppRep2yZWG2R08m1fQnX4dyjgt07n2YQpTb9xh3RMga
         3HqiS0k5Sh/OrE+4pWOETVuBgACxBGkmyp68U4a7UYNFozzziF+wzQKqD/daKUth2WsX
         t089/hFvDoSoPp2Oz03TYraNPxeC5bCnDTJpFnAtWrb+ubBvTwrQ1sZLpeubQTt2vScN
         7s+ho4hWMhCYlS0h+NkB7MJ0UD8ITChVaOeNv/LwWcRF4FgORkz2IXkfm+vY4UBYtoyk
         kwKvYfxi64DhrngQscjAtONM1k7ppc+DUJWvzwXtmJ2FduC3AfSE5XkhP2sOSuILtbnh
         r0PA==
X-Gm-Message-State: AOAM530xYRsI9W5QIxrQiaRy8OhuAELqJM4JYTIBsLdu62eJzPCi2zK2
        pv43tdJS4wppBk2lITtsYuDkSA==
X-Google-Smtp-Source: ABdhPJyLoslUwYxWOYFGJgAjcPVuy7Ol5NU4Mb5KEg1vaqcDc2dgbRn5J4udCKFA4TO9CsiTQ1Tyqg==
X-Received: by 2002:ac2:4211:: with SMTP id y17mr25788lfh.49.1608230024191;
        Thu, 17 Dec 2020 10:33:44 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.229.149])
        by smtp.gmail.com with ESMTPSA id v5sm665824lfd.103.2020.12.17.10.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 10:33:43 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Veerabhadrarao Badiganti <vbadigan@codeaurora.org>
Subject: [PATCH] arm64: dts: qcom: qrb5165-rb5: fix uSD pins drive strength
Date:   Thu, 17 Dec 2020 21:33:41 +0300
Message-Id: <20201217183341.3186402-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lower drive strength for microSD data and CMD pins from 16 to 10. This
fixes spurious card removal issues observed on some boards. Also this
change allows us to re-enable 1.8V support, which seems to work with
lowered drive strength.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Veerabhadrarao Badiganti <vbadigan@codeaurora.org>
Fixes: 53a8ccf1c7e5 ("arm64: dts: qcom: rb5: Add support for uSD card")
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index f3da4b0a63bc..3cb3914b8305 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1081,8 +1081,6 @@ &sdhc_2 {
 	vqmmc-supply = <&vreg_l6c_2p96>;
 	cd-gpios = <&tlmm 77 GPIO_ACTIVE_LOW>;
 	bus-width = <4>;
-	/* there seem to be issues with HS400-1.8V mode, so disable it */
-	no-1-8-v;
 	no-sdio;
 	no-emmc;
 };
@@ -1382,13 +1380,13 @@ clk {
 		cmd {
 			pins = "sdc2_cmd";
 			bias-pull-up;
-			drive-strength = <16>;
+			drive-strength = <10>;
 		};
 
 		data {
 			pins = "sdc2_data";
 			bias-pull-up;
-			drive-strength = <16>;
+			drive-strength = <10>;
 		};
 	};
 
-- 
2.29.2

