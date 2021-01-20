Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A53EF2FCA58
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 06:13:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729246AbhATFNO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 00:13:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729540AbhATFF2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 00:05:28 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C7C4C0613D3
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 21:04:48 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id t29so8654907pfg.11
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 21:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oVErpyitxxhLPGfDajEW4fVOhIOQLKcz6X3NWGJEV+g=;
        b=uae8KpuguS3BNlU2aKIemgBTkOQCef+In7mqQlFkr3oDW8LNMjmfF9rKFmc0WEj3DO
         B7Phigy/LW/xRix8UhBC0QTTX+kYe1I6uytBsM/FGqTebvGjyN9/PFv+cDIWwujm7MNY
         h2VsFSPX967OoJBmHoQXeyDkobrnYkuSLEiyfhT3moCrqyH+d6UTsw/LjGmB69daoigg
         jUQGJ5P+Zg/LNs5iS94M5FRwr6nV4p780NzgEAMsqi/FKR+h5ebVPyxMKMnDC3ozO4Pv
         O9HNoiES0tmVk4ozHIZwbMMUbZKl4abi7cWt/2Kp9BkbytuyYBcLfIz+kVDah0xII+/x
         oicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oVErpyitxxhLPGfDajEW4fVOhIOQLKcz6X3NWGJEV+g=;
        b=F7/QiUaawTX/+OpD66oBh+B10bdZ7427X+qkr9U4VETCwdxo/NpH38qXHEC+TFcblB
         z1AfkmVCWtudwKROqa7gLlFWJVNXU+MAFC0/8KREEVVUxHZJEtQS4yLpICS8A81lDOGg
         wLLA6krDzARasSpFOpyTlq+A4hzzzAutO6Fz3tFnYFqORiislHjQqkkEErQi4kAoncyt
         IGXSnjGhBEIeyGebmiyXzzmKoU0Lfq2EvjSgydHN+mOgUsrnAh5Sqtg3pZ6iy+xy7D2G
         Ba3XwaymBP2lmYyyWqXGK36pJYx77gW7sXelNBSd8muFUQy9JdYYR5/p3YOhlAun6KHs
         rz6A==
X-Gm-Message-State: AOAM532FpsXILTtZ3tkeb8TqCX5xETs6Ywbk0qu5sI/WGH6KfU0NNalH
        faJPrJtUhXRjTiHhs4wPxlLOSA==
X-Google-Smtp-Source: ABdhPJwxwrfL9EnkZQLOwI9kO2+ssEC1CnWALWlmwpz/giDP4Fdgt36PXxQaDpZ7MHxmz1v18Ks31g==
X-Received: by 2002:aa7:90cf:0:b029:1a3:a176:f4d0 with SMTP id k15-20020aa790cf0000b02901a3a176f4d0mr7366085pfk.8.1611119087844;
        Tue, 19 Jan 2021 21:04:47 -0800 (PST)
Received: from x1.hsd1.or.comcast.net ([2601:1c0:4701:ae70:900a:5243:9086:584])
        by smtp.gmail.com with ESMTPSA id z15sm708410pfr.89.2021.01.19.21.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 21:04:46 -0800 (PST)
From:   Drew Fustini <drew@beagleboard.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Drew Fustini <drew@beagleboard.org>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Tony Lindgren <tony@atomide.com>
Subject: [PATCH] pinctrl: clarify #pinctrl-cells for pinctrl-single,pins
Date:   Tue, 19 Jan 2021 21:03:44 -0800
Message-Id: <20210120050342.320704-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document that #pinctrl-cells can be 1 or 2 for pinctrl-single,pins

Fixes: 27c90e5e48d0 ("ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2")
Reported-by: Emmanuel Vadot <manu@bidouilliste.com>
Link: https://lore.kernel.org/linux-gpio/20210115190201.9273b637a7f967e7e55bc740@bidouilliste.com/
Cc: Tony Lindgren <tony@atomide.com>
Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
index f903eb4471f8..bb9999119314 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
@@ -8,7 +8,7 @@ Required properties:
 - reg : offset and length of the register set for the mux registers
 
 - #pinctrl-cells : number of cells in addition to the index, set to 1
-  for pinctrl-single,pins and 2 for pinctrl-single,bits
+  or 2 for pinctrl-single,pins and set to 2 for pinctrl-single,bits
 
 - pinctrl-single,register-width : pinmux register access width in bits
 
-- 
2.25.1

