Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEA842EEE76
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 09:19:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbhAHITO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 03:19:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727265AbhAHITO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 03:19:14 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 698E5C0612FD
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 00:18:05 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id j1so15013117ybj.11
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 00:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=bI+0dIEYVTi9BtzYNPAvr6WiFZISRySVGENe/QVVeXw=;
        b=Iyscw6HOMElHAJAqxy6xFyo6nkn4oDAvWAg+pUIizUYF/vLoLvVh+XHIA75PrE2M69
         dduZxqboECIIG01/0rGLNzDPeZxb7bnQYF9lFkxuOCXGQDyMFbfa8FA1+v3qDAybmn2H
         I6huQgDIThU7nbf8A+IZtNO1r5Qtjz+jdLWVOzBryoFrJKTutnQDSGRZ+iEP04Rv9khF
         MnWRbYRgHNgBGsrbDMS4jWu3pCeo+uVvmWLHwQUN1IXXrRgRsK0ibfUj2qwDTo78idJI
         kmTOVtuIr9Y2cgngOalOyhzyfsTBaFGLWlOcwutTD0spWf9sBmblvs92aZ03PRch+atu
         Yy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=bI+0dIEYVTi9BtzYNPAvr6WiFZISRySVGENe/QVVeXw=;
        b=lFQY7qqTYK4GNY8XBNOgoqGjTBb7jtYg+P5YZ8Fc4szsF4Yq6fMEEKLd3qe1Enb+dV
         OqfF2AS7JZf3FFnvhoYYk1M0swUvIWW0bBGyV+/Ol0Gp52NGxa1Yfa9X28YidfICFILC
         gBTW/cIlElx7+3MF5nl09pSEsGVLd+PKY1izaL2KWAXUwJ33N8lCgyhROJsHX46o/xYg
         LvgfKG4qorNRKcdrPzKRBSMiletdQQAfYLR13Eb3By2q9Aw03vXpCxb12SX67whFKiUc
         hU3UltXv4NDfQ4sL5zM8rbIE3KpIiDS3RsjvfXR+heCmq0Ie+Dmz6S/xYZx7I8xabfId
         xhbw==
X-Gm-Message-State: AOAM531Sy+P8uFylOf7vFXu5Alc6ZjQt1GxbjD+9ovEyroboOrHP5Af/
        LONSlXAUetqH5n7aWLcHznyxK2RolpiI
X-Google-Smtp-Source: ABdhPJygnrtyISlSlZ02dPQVOsCdCcsdrrSWjhpY98JkLLd5qOr7KV+rZKsNbB9nbQf38IzFNJeKIP5MZsSZ
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a25:c5c1:: with SMTP id
 v184mr4291137ybe.449.1610093884486; Fri, 08 Jan 2021 00:18:04 -0800 (PST)
Date:   Fri,  8 Jan 2021 16:17:37 +0800
In-Reply-To: <20210108081738.2175224-1-tzungbi@google.com>
Message-Id: <20210108081738.2175224-4-tzungbi@google.com>
Mime-Version: 1.0
References: <20210108081738.2175224-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH v2 3/4] dt-bindings: remoteproc: mediatek: add L1TCM memory region
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, mathieu.poirier@linaro.org,
        devicetree@vger.kernel.org, tzungbi@google.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds L1TCM memory region.  The reg-name is "l1tcm".

Acked-by: Rob Herring <robh@kernel.org>
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
2.29.2.729.g45daf8777d-goog

