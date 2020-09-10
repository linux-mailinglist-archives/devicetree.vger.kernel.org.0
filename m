Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C573263CB3
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 07:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726883AbgIJFrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 01:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726079AbgIJFqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 01:46:44 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0121C061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 22:46:43 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id c3so368897plz.5
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 22:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uNzBaIddFg4BsU7/nCdz1Go6c2BgLxQ8YsDvHd2gerE=;
        b=Pn9wfWzQE8+ItwhIP7soVDKiDtcl5l5xGAcjYMIxuGR5mo0tWaO8GE7UdGB1k4pJG/
         odtC+dog/YuA+Zsr3QMxu+y3DyBDEqppg6v80aXXxlI4rAn+PPdAZT8ZLPovGMc055dk
         rvT4YrPDfDdYtRL5JWBkzTa5YkYrRHpipfkkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uNzBaIddFg4BsU7/nCdz1Go6c2BgLxQ8YsDvHd2gerE=;
        b=MN/+noSBJGT8mwSbfbPy/4lDtFutuK1s3Wt7bU53HNgNiwdge34taKdIT8MiwCsiNP
         ndGIZ2+sf0AfDcd3v5ZgdAHs41OfzVDd72EOXKAD1TdG1pgwc5wwYlyOpo63WMRtkyBA
         jeBIzcQihklwW8wbIleFupjSS3OFqNucjfDOKSCaxbwQXUo+6oFcU9GrAFedC+kjtYKf
         t+IJqoAd/A5pLT0Ay3tgASOfqLZNxatztauhMU5/A6HYZv3kQRExxDTTN5w0oAaZ9+CC
         75R9TsU4vdywyNpY7L/WDIxoZovlHkyVzjKQzShVibm4TliVk4mB1diHbeQ52g++YMPs
         yzsQ==
X-Gm-Message-State: AOAM5308FAVkizx+Ty03jbWfwA1FtFnBV8UF/Un8vUVgsgzFIHrB2NXy
        bnyKADHUVLHOIgwl0+IScs0IFBSAJG2DJtfS
X-Google-Smtp-Source: ABdhPJxsvHDFmBQT3hNQfRc0K4CNX75Rf7CfBpb5b7xGQHDqjr4jxVAld9lsUXWxQm430AApr2JTwQ==
X-Received: by 2002:a17:90b:e01:: with SMTP id ge1mr3645109pjb.187.1599716802305;
        Wed, 09 Sep 2020 22:46:42 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id r6sm4598159pfq.11.2020.09.09.22.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 22:46:41 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-mediatek@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 1/2] arm64: dts: mt8173: elm: Set uart0 to mmio32 iotype
Date:   Thu, 10 Sep 2020 13:46:34 +0800
Message-Id: <20200910054635.3337487-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set uart0 iotype to mmio32 to make earlycon work with stdout-path.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index a5a12b2599a4a..d54e62f72c65d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1160,6 +1160,8 @@ &thermal {
 };
 
 &uart0 {
+	reg-io-width = <4>;
+	reg-shift = <2>;
 	status = "okay";
 };
 
-- 
2.28.0.526.ge36021eeef-goog

