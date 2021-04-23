Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66C6369858
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 19:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243414AbhDWR3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 13:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243396AbhDWR3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 13:29:02 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7675AC06138B
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 10:28:23 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id 66so10784696qkf.2
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 10:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0dIM7Z+izOVG/oERmdhb/AMzsUaJVmcES7PVqS331VM=;
        b=apOR0knurXWFkWtUKkhaYdc0wvkv0INvP0vg2nRSRsUKi9dcrFP87lQjZqxyvrgqNI
         YwqkMrKG1/kahvSQV4MMcfd/RECKjK+QlxSPWgTMk55Hc+6o5P1BF5b0HaK6TzkTc2kX
         w0dft9Ljn6gOwIvMF4JyesNuF6FePqO6bpuqI382E4xW3hiZEQ/IQ01OpcER25BuJ86o
         jyr4QBKPZQRpBymWZFZtaCp6kDKtfJnv9jy9s+VHKC5P3jVp/hbeSt7J0NaEbmZHc6GP
         eaCteezieRkwN4rKLTAwMmyYm8+dahqgFTdoP+F3il1VAvmrCWiYh1NAET0y/ltSheTO
         RIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0dIM7Z+izOVG/oERmdhb/AMzsUaJVmcES7PVqS331VM=;
        b=RMDgaLqZ1FS0yygvyGbthxsnyEd+jtU4Vt5C62V7aJS0IbGydqzPbgc6GYdLdDaKYS
         60t7mLuwaynexde0vE70hvjEDAWpjmLzJWnbdtDA+oftXHtGAbY8BD7iwhApuNFJ3wmV
         65W2NbpZ6dBqzOe11LFJRloOscVk7FdyVdrcNgyA1E6jjHdaS38mBG1tccT0cT7fGRTt
         sfRrASNxvnZ1TuQXPf6gmW0FhYSS7F9hOb/jpLb+G8PElnMVXcbTAUyJFynqsY6xx3Fn
         jxq1rLlQL0TWkqhJv0+iM4eAKnqGh0BwkOqc4xvqdcyBNClMIeBJ/d8hnxHygYY8Z73Y
         YPiQ==
X-Gm-Message-State: AOAM531TnEg/GJUIcru03osuZABWUPqirEfl1DMvXWeL03b5OHSZY5FX
        SAld8QgbKLajOIT60IDTgiL3fw==
X-Google-Smtp-Source: ABdhPJxArxkdk3Sbb5pycb0lGdXVtFll8pGKYnMJCsR7OqSOwl+mhD2ZRyqP2CBOfxpc8LqVI+uXpg==
X-Received: by 2002:a37:a34b:: with SMTP id m72mr4953889qke.92.1619198902742;
        Fri, 23 Apr 2021 10:28:22 -0700 (PDT)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id y23sm4782627qkb.47.2021.04.23.10.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 10:28:22 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     freedreno@lists.freedesktop.org
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org (open list:DRM DRIVER FOR MSM ADRENO GPU),
        dri-devel@lists.freedesktop.org (open list:DRM DRIVER FOR MSM ADRENO
        GPU),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/2] dt-bindings: display: msm/dsi: add qcom,dsi-phy-cphy-mode option
Date:   Fri, 23 Apr 2021 13:24:40 -0400
Message-Id: <20210423172450.4885-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210423172450.4885-1-jonathan@marek.ca>
References: <20210423172450.4885-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document qcom,dsi-phy-cphy-mode option, which can be used to control
whether DSI will operate in D-PHY (default) or C-PHY mode.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 Documentation/devicetree/bindings/display/msm/dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi.txt b/Documentation/devicetree/bindings/display/msm/dsi.txt
index b9a64d3ff184..7ffc86a9816b 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi.txt
+++ b/Documentation/devicetree/bindings/display/msm/dsi.txt
@@ -124,6 +124,7 @@ Required properties:
 Optional properties:
 - qcom,dsi-phy-regulator-ldo-mode: Boolean value indicating if the LDO mode PHY
   regulator is wanted.
+- qcom,dsi-phy-cphy-mode: Boolean value indicating if CPHY mode is wanted.
 - qcom,mdss-mdp-transfer-time-us:	Specifies the dsi transfer time for command mode
 					panels in microseconds. Driver uses this number to adjust
 					the clock rate according to the expected transfer time.
-- 
2.26.1

