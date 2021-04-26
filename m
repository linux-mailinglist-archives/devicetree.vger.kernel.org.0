Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A8E536ABCC
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 07:19:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbhDZFTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 01:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231704AbhDZFTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 01:19:37 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3431C061574
        for <devicetree@vger.kernel.org>; Sun, 25 Apr 2021 22:18:56 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id d10so936561pgf.12
        for <devicetree@vger.kernel.org>; Sun, 25 Apr 2021 22:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=PLSD7jhKImFPl98DBSFMj8R/b5Ul4bbE+BoQg9DsV2ma3TcmldaXG7B0oHdDFuM1lD
         /HVqkDvzFawztE9+VgbeJojJAMZvcfkOkTS7KH/HG+p21hPsekQVIJpXS07mWJHskcY4
         rEnzo0eFpJwFbTCLUYHx9TOYDAeOD6D9JpLVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=ZrKYiuIsWciL32FY3oo2pwSgrM+GkkGDdWa8ZmDVItvXgyYYKoj9qpBTbKOBFfGX2I
         DBOIH6pBl/PPYYdtv9ZbreGGsQteYVwNuJTjW2XndpyPmrAnccLka9F77u3TxWTG0ePk
         U9IY8s9hJRnmSYbqXQgb6I42sKtNNukNnCYwWDKusR3051CO2E2TwnWRJNGWe351aUXQ
         fgNs6DSX3NzwOmXx/P99CaHRzSjN+JPv9ZCu7REd4ER6S1D+Rxp6IJvqxu/mu5AASSI4
         ULUoggliVJxO5FPJLfWbYWjMKXeEhc3gaVP2e47tUW/QCNWi8N/5VSFw/dXxwP252hwq
         UENg==
X-Gm-Message-State: AOAM5327xpuFhtvrLTy4ikgQgABDbhkQPJkXIkyHyDeiOl7ao3/sRpMS
        Edr/Kb/WiqJtl4npgzh/qDHdSQ==
X-Google-Smtp-Source: ABdhPJwhzSFNys1E+rEQpwqHLs4DcKy+qdcvTtSweq5ZIYRg4MfS83Z6E4sOu0fwV5TrQEfwqkVuOQ==
X-Received: by 2002:a63:6b4a:: with SMTP id g71mr15306124pgc.274.1619414336303;
        Sun, 25 Apr 2021 22:18:56 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:49dc:8519:4648:67e])
        by smtp.gmail.com with ESMTPSA id h9sm9928420pgl.67.2021.04.25.22.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Apr 2021 22:18:56 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: mt8183: Add panel rotation
Date:   Mon, 26 Apr 2021 13:18:48 +0800
Message-Id: <20210426051848.2600890-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210426051848.2600890-1-hsinyi@chromium.org>
References: <20210426051848.2600890-1-hsinyi@chromium.org>
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
2.31.1.498.g6c1eba8ee3d-goog

