Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 300689D7AA
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 22:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731504AbfHZUpQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 16:45:16 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:35165 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731426AbfHZUpP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 16:45:15 -0400
Received: by mail-wm1-f65.google.com with SMTP id l2so802808wmg.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 13:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/ZJzCcrxyM6IhpQ4LAj7ILikjbYfCQse07WeYUJxBzQ=;
        b=N/2V0MqH6uUI/PbxTsOZSQz+Zpd9bK7VVLZF1nDiWA5rmBkVk3yrJlFKYKLuN396Ob
         DnKPxf6Q8D67GuonmhDcsrAVB78c77v3BzfCJplIhghjNQwnE6pws4mcPXspmlYD9gTJ
         lcVvxT/mdxt7j6SUtlTBsFYLuqGaPqznF7AQ2IEuzytDfwxxZIrpsvfPQKZPzwNsozqi
         5BKGruFUKPJbUcsoQ5/2Rm9X8qM8ylIl66YhKCOQV1CHbVbL6jp5VeLv0KbCzwfWdr/o
         +dnDRBv2oipFUPIKFUgDHl3UsL8WB7AzC6oapi/gMiGuZTbtfDxychKGfnLgkbuCP3Fa
         joVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/ZJzCcrxyM6IhpQ4LAj7ILikjbYfCQse07WeYUJxBzQ=;
        b=YTbDfUOnXoUY9DgXoV12X8nS+3dsOqtQgls1LXBgw7RGR6grYE8N0FR9cRx1PVcgIU
         JnD6R7F5PyM8FZ1Eec8kHLuWxTcmiRfaQbL0HO/ifNv5Yn7shmMlq3PzxutDhx1FPU2r
         I78tBK+Y3D1GNkO9LGy9/sZV7TdOThqzM5joXiIJhSi64/gk3u9VsCcLO/TwIc/DJ+s7
         Ye0rtEz4U71F5eXZiqFw1i4MZr5lLDH5t8BM48Hi0OKeaz+wzUji+/PArCa6+XWKqfRn
         9ICR+QF+FNZPpIJqdp285OP21QLMwhhfJ5i0gcTqU1ASCh0mZy9mSn1RU78lWC7qx/jJ
         Ea/w==
X-Gm-Message-State: APjAAAUayzcRXlZjfPsJ28bhBJN+WnKehMK2tqcR57qjzt5iHPoxbYSa
        w5hvCMSRdYlz1lXX7/LC8fIRsw==
X-Google-Smtp-Source: APXvYqwGM423m/8J2uV94EllXX05xaqFz5ml/GXFzKK0c+fqCbyNLcwLGic/fxkqA/W8KZ6VWrYo7A==
X-Received: by 2002:a1c:7606:: with SMTP id r6mr23209536wmc.118.1566852313866;
        Mon, 26 Aug 2019 13:45:13 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
        by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 13:45:13 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     tglx@linutronix.de
Cc:     linux-kernel@vger.kernel.org,
        Magnus Damm <damm+renesas@opensource.se>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS)
Subject: [PATCH 15/20] dt-bindings: timer: renesas, cmt: Update CMT1 on sh73a0 and r8a7740
Date:   Mon, 26 Aug 2019 22:44:02 +0200
Message-Id: <20190826204407.17759-15-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Magnus Damm <damm+renesas@opensource.se>

This patch reworks the DT binding documentation for the 6-channel
48-bit CMTs known as CMT1 on r8a7740 and sh73a0.

After the update the same style of DT binding as the rest of the upstream
SoCs will now also be used by r8a7740 and sh73a0. The DT binding "cmt-48"
is removed from the DT binding documentation, however software support for
this deprecated binding will still remain in the CMT driver for some time.

Signed-off-by: Magnus Damm <damm+renesas@opensource.se>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../devicetree/bindings/timer/renesas,cmt.txt          | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.txt b/Documentation/devicetree/bindings/timer/renesas,cmt.txt
index 45840d475050..a297fca5b61e 100644
--- a/Documentation/devicetree/bindings/timer/renesas,cmt.txt
+++ b/Documentation/devicetree/bindings/timer/renesas,cmt.txt
@@ -12,17 +12,10 @@ datasheets.
 Required Properties:
 
   - compatible: must contain one or more of the following:
-    - "renesas,cmt-48-sh73a0" for the sh73A0 48-bit CMT
-		(CMT1)
-    - "renesas,cmt-48-r8a7740" for the r8a7740 48-bit CMT
-		(CMT1)
-    - "renesas,cmt-48" for all non-second generation 48-bit CMT
-		(CMT1 on sh73a0 and r8a7740)
-		This is a fallback for the above renesas,cmt-48-* entries.
-
     - "renesas,r8a73a4-cmt0" for the 32-bit CMT0 device included in r8a73a4.
     - "renesas,r8a73a4-cmt1" for the 48-bit CMT1 device included in r8a73a4.
     - "renesas,r8a7740-cmt0" for the 32-bit CMT0 device included in r8a7740.
+    - "renesas,r8a7740-cmt1" for the 48-bit CMT1 device included in r8a7740.
     - "renesas,r8a7740-cmt2" for the 32-bit CMT2 device included in r8a7740.
     - "renesas,r8a7740-cmt3" for the 32-bit CMT3 device included in r8a7740.
     - "renesas,r8a7740-cmt4" for the 32-bit CMT4 device included in r8a7740.
@@ -59,6 +52,7 @@ Required Properties:
     - "renesas,r8a77990-cmt0" for the 32-bit CMT0 device included in r8a77990.
     - "renesas,r8a77990-cmt1" for the 48-bit CMT1 device included in r8a77990.
     - "renesas,sh73a0-cmt0" for the 32-bit CMT0 device included in sh73a0.
+    - "renesas,sh73a0-cmt1" for the 48-bit CMT1 device included in sh73a0.
     - "renesas,sh73a0-cmt2" for the 32-bit CMT2 device included in sh73a0.
     - "renesas,sh73a0-cmt3" for the 32-bit CMT3 device included in sh73a0.
     - "renesas,sh73a0-cmt4" for the 32-bit CMT4 device included in sh73a0.
-- 
2.17.1

