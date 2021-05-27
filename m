Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 431043928C1
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 09:42:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234922AbhE0Hnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 03:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235071AbhE0Hns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 03:43:48 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECD5AC061760
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:42:15 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id m124so3049494pgm.13
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BrbVgIij7R8LbUOrOIBIv2OLNl+Ip/Kqs7kj9XlKJUk=;
        b=SQtH/jrOEE6kk88cKkvSxsBamCau/HA6LO+WkxXT2OKIUlRPbubDXoPKK/J84DK90z
         tViLy+vQKnLAJK2PRgLoPMSraWAe08TSrKhWQ84yPmrmIDgjwjiC5qveCCmsX3JtUhaM
         S3QI3SIPi49owjcScyBxFzBrkyDdvujgOkMaw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BrbVgIij7R8LbUOrOIBIv2OLNl+Ip/Kqs7kj9XlKJUk=;
        b=HJfRDcRkqVE4K3t4PsbwilWmIHRjhzxTaN7uckhWOxuidcBdBuq5h9XV3tmpqxf7Dt
         jnu3xMTTFeEY3A1UtRTKx8t4Ebi804jrQO8xJqI5BRXWH+lsXdhCi1PfufP56qQYMIOr
         zzxgbkE2XGeZkGDJqL06OU5YBTnes11Tp/Xcevt1axBQaqDj/7/lRGmp6jOCxYb/G0Dy
         TezNifdE3ekuAOXRpAEyc94dbVxRCxaC06Pu4OBpyAwc9vFy/pDScRfDZhYODfS6gPDO
         qmX4LGkGMxXUCl4RxrCaF3KNsAF1K12tpmR6piq5rOIpfgCeR+UCT+1ngtfN9zDvlomV
         ISdg==
X-Gm-Message-State: AOAM531pGvvyrscFwY9grJkjdlu6i9GHnWahev5vP+y3w117hIw1wE7D
        iLsHlTa+lVz+1bwK9h3dnHXEeMKqvjf0Rg==
X-Google-Smtp-Source: ABdhPJxuVP5C820VQJBG/Cqe/LBzPydpiOkSUvB5K7U8neoHStr0iUEtdqLCANJ++y7pTtplnH8sHQ==
X-Received: by 2002:a65:6849:: with SMTP id q9mr2443138pgt.377.1622101335476;
        Thu, 27 May 2021 00:42:15 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ece5:55a4:6ad3:d20f])
        by smtp.gmail.com with ESMTPSA id h24sm1184857pfn.180.2021.05.27.00.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 00:42:15 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Robert Foss <robert.foss@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, intel-gfx@lists.freedesktop.org
Subject: [PATCH v6 RESEND 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Thu, 27 May 2021 15:42:02 +0800
Message-Id: <20210527074202.1706724-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527074202.1706724-1-hsinyi@chromium.org>
References: <20210527074202.1706724-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ff56bcfa3370..793cc9501337 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -263,6 +263,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.31.1.818.g46aad6cb9e-goog

