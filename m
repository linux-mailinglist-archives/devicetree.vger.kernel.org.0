Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C47E89D7B4
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 22:49:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730368AbfHZUpk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 16:45:40 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:52896 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731436AbfHZUpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 16:45:14 -0400
Received: by mail-wm1-f68.google.com with SMTP id o4so802868wmh.2
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 13:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9a/nmo4HleHfZCRi8ScPQm/5Ra82K05ffJZThzk2QTs=;
        b=lu16lKE1wbTcy6ZNuBOuRforM5MbT2Ne+jnJr2rCMLswpVp64GS5nb7iwRBo7I8c6M
         rX+O3u3ymVJkV9apnlC3ZI/cMWFyT9Rz7DEJJG9EzUyal8EppWDAr9sK1sD6wwDVhlVj
         XaOL2s+XnmCRx9ULx5G322klxXolV0bnJUOnMAiUtjUy3AqXOgljde2E0gh2eA03YngG
         bGxbow8Yj1Fx8zoJ7LmY5tiObI3fpgUivUiGxLdUwIsDRl3Z7Qe/n9UXvVb0NpY/ojOu
         +17bew2ZTM3RKOe1K6F5rfbLo4EACqJQM1I4MUBka47TkaOtmvHoHASXAjISRmbbwCmV
         7nqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9a/nmo4HleHfZCRi8ScPQm/5Ra82K05ffJZThzk2QTs=;
        b=ni0XlK8N3X2ETDV5lR0cqJIVaIMZ+Nkx5cby4s5ayBnBfBijFasBz4rja/TEKH9R2l
         KbMc1Aig0bAfRyF+XjRcr5+bGG5T+DfzqSO9HlDCoh5ClF8M/fMMTTZMTOY/MHPn4iqN
         ewlloH0kYla5GiaPwvjl0gRtBp7UqtVo5OrjvKpgugSKcrwh5LqYgu0v80o4KKw0sPp1
         8Oldd2opkeddRXnTjr0jU8slcmn/wGg6c601fI2oNGCpt6NQXyyE6WE+23zp3CFxzUbN
         Z2RIIU/7HgmEkPks+MBpIJw5SYFzAVS7N9pjZJE4VEiomBNgHYi+cZTlkmCmOdxQlxxI
         uq0w==
X-Gm-Message-State: APjAAAVIJt6qZRDPt7wK3j3iaza9btciBpOYKexw12RTbvOSn7M1bS58
        0/3fUj46YkMfFIme0a8Iv6tRpQ==
X-Google-Smtp-Source: APXvYqx3Dz9/5ZvakUdr4CZeHz/47q/CU+TUCt1PKvnuarTxbBhLbHMD+LdPq1NbxDU77er27jsg1w==
X-Received: by 2002:a7b:cd17:: with SMTP id f23mr24509458wmj.177.1566852312285;
        Mon, 26 Aug 2019 13:45:12 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
        by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 13:45:11 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     tglx@linutronix.de
Cc:     linux-kernel@vger.kernel.org,
        Magnus Damm <damm+renesas@opensource.se>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS)
Subject: [PATCH 14/20] dt-bindings: timer: renesas, cmt: Add CMT0234 to sh73a0 and r8a7740
Date:   Mon, 26 Aug 2019 22:44:01 +0200
Message-Id: <20190826204407.17759-14-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Magnus Damm <damm+renesas@opensource.se>

Document the on-chip CMT devices included in r8a7740 and sh73a0.

Included in this patch is DT binding documentation for 32-bit CMTs
CMT0, CMT2, CMT3 and CMT4. They all contain a single channel and are
quite similar however some minor differences still exist:
 - "Counter input clock" (clock input and on-device divider)
    One example is that RCLK 1/1 is supported by CMT2, CMT3 and CMT4.
 - "Wakeup request" (supported by CMT0 and CMT2)

Because of this one unique compat string per CMT device is selected.

Signed-off-by: Magnus Damm <damm+renesas@opensource.se>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 Documentation/devicetree/bindings/timer/renesas,cmt.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.txt b/Documentation/devicetree/bindings/timer/renesas,cmt.txt
index c5220bcd852b..45840d475050 100644
--- a/Documentation/devicetree/bindings/timer/renesas,cmt.txt
+++ b/Documentation/devicetree/bindings/timer/renesas,cmt.txt
@@ -22,6 +22,10 @@ Required Properties:
 
     - "renesas,r8a73a4-cmt0" for the 32-bit CMT0 device included in r8a73a4.
     - "renesas,r8a73a4-cmt1" for the 48-bit CMT1 device included in r8a73a4.
+    - "renesas,r8a7740-cmt0" for the 32-bit CMT0 device included in r8a7740.
+    - "renesas,r8a7740-cmt2" for the 32-bit CMT2 device included in r8a7740.
+    - "renesas,r8a7740-cmt3" for the 32-bit CMT3 device included in r8a7740.
+    - "renesas,r8a7740-cmt4" for the 32-bit CMT4 device included in r8a7740.
     - "renesas,r8a7743-cmt0" for the 32-bit CMT0 device included in r8a7743.
     - "renesas,r8a7743-cmt1" for the 48-bit CMT1 device included in r8a7743.
     - "renesas,r8a7744-cmt0" for the 32-bit CMT0 device included in r8a7744.
@@ -54,6 +58,10 @@ Required Properties:
     - "renesas,r8a77980-cmt1" for the 48-bit CMT1 device included in r8a77980.
     - "renesas,r8a77990-cmt0" for the 32-bit CMT0 device included in r8a77990.
     - "renesas,r8a77990-cmt1" for the 48-bit CMT1 device included in r8a77990.
+    - "renesas,sh73a0-cmt0" for the 32-bit CMT0 device included in sh73a0.
+    - "renesas,sh73a0-cmt2" for the 32-bit CMT2 device included in sh73a0.
+    - "renesas,sh73a0-cmt3" for the 32-bit CMT3 device included in sh73a0.
+    - "renesas,sh73a0-cmt4" for the 32-bit CMT4 device included in sh73a0.
 
     - "renesas,rcar-gen2-cmt0" for 32-bit CMT0 devices included in R-Car Gen2
 		and RZ/G1.
-- 
2.17.1

