Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7FC2D9269
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 06:06:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727775AbgLNFG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 00:06:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727632AbgLNFG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 00:06:28 -0500
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ED92C061793
        for <devicetree@vger.kernel.org>; Sun, 13 Dec 2020 21:05:48 -0800 (PST)
Received: by mail-qt1-x849.google.com with SMTP id c14so10884547qtn.5
        for <devicetree@vger.kernel.org>; Sun, 13 Dec 2020 21:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=GUtMS/yoA8AlX35KWXx+OtSpGWP4nVdoiq93Y3LhngQ=;
        b=An+eAZV+jljp8c47GZayDSqeDwsRylkUVZ4MKqRbHnCV51SXxfvmLoLhkx7S8IyQ5T
         itglr6QOCQ+UXv3TlO+pqxRGWAqlN3+sEifWjsO1ZR+fkIjMFUkSFKOdxoeUfEv56Jo8
         hzB0aVBmm4dbYULgrE1AND+4o0PKjjfJKLSt+MvkvmiV0eS2gmAr6UAaf29Bznvt/Vto
         z1Un4WItskkMwmtkNRgOiSPVhXhenIqis5W0JvIU/G49TLCPahvBPnvDFDsYqSEO+HxH
         CCpD0Tx8DlNblfv0uXYxrMxz8fTAuJtyKBPUZ70jqs/RrSKWHHFofTaFgWkaW4wFDYtu
         DzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=GUtMS/yoA8AlX35KWXx+OtSpGWP4nVdoiq93Y3LhngQ=;
        b=eapha16A2rfoaXgVpLfRXk70Cf5C5salUTMfbgZmJCBHkS48VFeIkLtowXuN4p6O/1
         mnLi9FydB5ekBj57em3+iRc+wLWxvTsFPASrf9tfo+3GWE/l+sdMVnRjy0k9SxQ7qXvn
         zhOJOq8zVmOZmfceQjDVRYPHSAS5hrGOeujRp30xtwX/fWZQIb4mvsaOMc4/WFNIn2LP
         JSdad+THBuZr016yf3m+WvUCIM6eV6hMsjxZvXt0ayl/TxZv78Vy/hAuu2iyNe8GCKRz
         ivkvh2GBtZXISupfM0nPQouAn4M3Tb3qknQ1aoPtUqCVg+dNY7ahhfBCLb98C0AyYLeE
         jiiQ==
X-Gm-Message-State: AOAM5304oSasqE8ub9PwO3TEGXTG2X7S7wol1tOncACKbv/Er3th3caO
        y1Tk8HAwSeS+naV1UH92/uHvBKZXo8Lp
X-Google-Smtp-Source: ABdhPJxZkqsL5injXgfq7FIilIF3cOR4K4Sb1FhdSzaQnJhs6x8iVHpL1LCGl2mU/1BNaZKzYCSSLrxveN01
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a0c:df94:: with SMTP id
 w20mr29806672qvl.33.1607922347262; Sun, 13 Dec 2020 21:05:47 -0800 (PST)
Date:   Mon, 14 Dec 2020 13:05:20 +0800
In-Reply-To: <20201214050521.845396-1-tzungbi@google.com>
Message-Id: <20201214050521.845396-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20201214050521.845396-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH 1/2] dt-bindings: remoteproc: mediatek: add L1TCM memory region
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds L1TCM memory region.  The reg-name is "l1tcm".

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
index 3ba668bab14b..3f5f78764b60 100644
--- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
@@ -6,10 +6,10 @@ Mediatek SoCs.
 
 Required properties:
 - compatible		Should be "mediatek,mt8183-scp"
-- reg			Should contain the address ranges for the two memory
-			regions, SRAM and CFG.
-- reg-names		Contains the corresponding names for the two memory
-			regions. These should be named "sram" & "cfg".
+- reg			Should contain the address ranges for memory regions:
+			SRAM, CFG, and L1TCM.
+- reg-names		Contains the corresponding names for the memory regions:
+			"sram", "cfg", and "l1tcm".
 - clocks		Clock for co-processor (See: ../clock/clock-bindings.txt)
 - clock-names		Contains the corresponding name for the clock. This
 			should be named "main".
-- 
2.29.2.684.gfbc64c5ab5-goog

