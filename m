Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74FCD46F444
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 20:51:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230027AbhLITyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 14:54:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbhLITyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 14:54:53 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B7F2C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 11:51:20 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id gf14-20020a17090ac7ce00b001a7a2a0b5c3so7751695pjb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 11:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xL00HEz2mIMU5pdZJruClkdf/MyXgTu87e9xQELm18=;
        b=WZq6rypW7k+AzsUveoK3r9SKgtfhYIfGCoOT56YzjLSEpDm2YC/7rj2sgov4HqOfNu
         Q7FLDBsSEjPaCr936M1+JJ5ev1O3fWAoBWVyrzb6hEtrTstcnEUPAbAWgLkGaeUHheuu
         fxIBaBgQXkoFsdolomVW8Dr+F055S6l0K2icA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xL00HEz2mIMU5pdZJruClkdf/MyXgTu87e9xQELm18=;
        b=qbCHmHgvc5CRXwd6hn1FtY67haMiyC5RCIW9+NYBZWbkOchD/RceiOFqkR8KiqcN3J
         Nr+lB0IZgZEE6tVM5J46xMtp/kA5VXLukhEhDBRlnFSGJ3dj3HWr7T0x9yqrSVmAdRmK
         3B8RbLIZZmG3ZmDmepGCA7OKl6iwe2zwMpTW4EES0pzl2TZgbJ1r7asfXLLlb4D+67Ej
         r1er8c8B/+oiVkWEGJ7/4cSWZDdBUCQc2JIKjCitPTUnXmh0myu79sHzGsFDOkAdPp0/
         cHZdNuBZk49nLjPeYuVRn00HLDdzUud8y/R33aocDPTz0sZ0E/f/mjxyXX+QCPGRzQME
         SAxA==
X-Gm-Message-State: AOAM530U/h1I5R7EwuizcnsVwVWC+JMYJ6s3bN2ppWIrsIWdtndf7cA/
        GDo20DeiLFCj9sLJBOfc9+u6uw==
X-Google-Smtp-Source: ABdhPJzR/2Bd1qC5yCsKlKBvm1I+vCWtXKI31p2KN54Q+o8D9XrSASm2Q4rvj47MDjeVS6Tu+DEFgw==
X-Received: by 2002:a17:90a:7e0d:: with SMTP id i13mr18203822pjl.171.1639079479659;
        Thu, 09 Dec 2021 11:51:19 -0800 (PST)
Received: from pmalani2.mtv.corp.google.com ([2620:15c:202:201:14a7:14ad:d975:ffa4])
        by smtp.gmail.com with ESMTPSA id w142sm506410pfc.115.2021.12.09.11.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 11:51:19 -0800 (PST)
From:   Prashant Malani <pmalani@chromium.org>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Cc:     Prashant Malani <pmalani@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support), Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] arm64: dts: mt8183: kukui: Add Type C node
Date:   Thu,  9 Dec 2021 11:51:12 -0800
Message-Id: <20211209195112.366176-1-pmalani@chromium.org>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a node describing the USB Type C connector, in order to utilize the
Chromium OS USB Type-C driver that enumerates Type-C ports and connected
cables/peripherals and makes them visible to userspace.

Cc: Alexandru M Stan <amstan@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Signed-off-by: Prashant Malani <pmalani@chromium.org>
---

Changes in v2:
- Alexandru mentioned that HW specs suggest preferred power role for
  devices like kukui to be sink, so changed try-power-role to "sink".

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 94c13c459194..0f9480f91261 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -886,6 +886,20 @@ usbc_extcon: extcon0 {
 		cbas {
 			compatible = "google,cros-cbas";
 		};
+
+		typec {
+			compatible = "google,cros-ec-typec";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			usb_c0: connector@0 {
+				compatible = "usb-c-connector";
+				reg = <0>;
+				power-role = "dual";
+				data-role = "host";
+				try-power-role = "sink";
+			};
+		};
 	};
 };
 
-- 
2.34.1.173.g76aa8bc2d0-goog

