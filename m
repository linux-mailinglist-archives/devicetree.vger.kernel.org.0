Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE23D323950
	for <lists+devicetree@lfdr.de>; Wed, 24 Feb 2021 10:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232563AbhBXJVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Feb 2021 04:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234583AbhBXJVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Feb 2021 04:21:01 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30278C06174A
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 01:20:21 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id t9so906645pjl.5
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 01:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K6QbaVKtgtUI1ubiXeNENn0SvGUBYVnolrmYp1NXybw=;
        b=lhrDhFL9BPsIUJr+sHv8QFAokk6fIi+d3ao6ADbx57svNfTlb6pKOr05hv45/voIya
         9Go6qlRZbtKY9YXNx13LjCGzRkZTrWTfHqCAN3ruCmAR5J4G+t5ycwl0Ud0/2d65miA5
         aykld+iKInnGjJB1HIhORveAhbZXZbrk7gKEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K6QbaVKtgtUI1ubiXeNENn0SvGUBYVnolrmYp1NXybw=;
        b=WIuQVTXDEHu273b1+RKw5133Y5X5+HDoPRo2UD2HCfA5k2xdwdunv+pFTn6ekEyBfm
         Tale3H/uYFOpztHpsCdT0WSfE8j3iqcHnFihxS2kmtn2cPp8Wq+kYVlsKIycukeJf7RY
         PFdklzJyQ6bLsydu1PakdlObEhJ9bZx3+LuHVynDoQ2tlAOkCEHXaM6XPyICy3FSZWbn
         wwHvf208mxg3BqzTARLn+b+qvvTWw5zNBv+SzZQnZkCZtSLuE//RCPabMG165iylAK8H
         kWCcpI/UINmrR7BP5QytXt38q7EE6mcgGD+1+CixAJIID3f8DKNEqp3DRFDofXrjm0J9
         fgdw==
X-Gm-Message-State: AOAM530PmHPIJ/KTbDwtUlnas/WOFBTGYYy7+q/939n16hO74uolvUqE
        iAfY5HoYSGQtbOsqkd27QtBlfQjqAfEaPw==
X-Google-Smtp-Source: ABdhPJzdWYNLyuGtkFHMNT1hFuQvLfPscgO8J+QdoZyQv16sdgGt+CJC44NDs5lHg4sX5U8g1+tZJA==
X-Received: by 2002:a17:90a:fb58:: with SMTP id iq24mr3533991pjb.64.1614158420489;
        Wed, 24 Feb 2021 01:20:20 -0800 (PST)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:186a:b03e:afb5:9b45])
        by smtp.gmail.com with ESMTPSA id q2sm1906456pfu.215.2021.02.24.01.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 01:20:20 -0800 (PST)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Weiyi Lu <weiyi.lu@mediatek.com>, Ikjoon Jang <ikjn@chromium.org>
Subject: [PATCH] arm64: dts: mt8183: Add power-domains properity to mfgcfg
Date:   Wed, 24 Feb 2021 17:17:42 +0800
Message-Id: <20210224091742.1060508-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mfgcfg clock is under MFG_ASYNC power domain

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5b782a4769e7..3384df5284c0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -962,6 +962,7 @@ mfgcfg: syscon@13000000 {
 			compatible = "mediatek,mt8183-mfgcfg", "syscon";
 			reg = <0 0x13000000 0 0x1000>;
 			#clock-cells = <1>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_ASYNC>;
 		};
 
 		mmsys: syscon@14000000 {
-- 
2.30.0.617.g56c4b15f3c-goog

