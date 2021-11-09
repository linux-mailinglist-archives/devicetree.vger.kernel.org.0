Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C0D744A64F
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 06:33:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240333AbhKIFgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 00:36:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240300AbhKIFgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 00:36:24 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBA9DC061766
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 21:33:38 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id b13so18912413plg.2
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 21:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLjicxNmNpYNSdlDLoBw1hRqse8yPujz3RAWyTpfEac=;
        b=odKCJ6d7H5bH4EsvYJwQsBe08JB8jHarQYqDI5Kfwc2NLU+hySWtFgWDhQox7QAke/
         9UTGnVcsxADRJFMy3iVKlsYAdiG/6ChqgO4Iqd/v2O91diGHSJajZrEL0t6N6N7373wQ
         C59FjlO9LlxmwUN4zx8GIG6KKQPHA2yIrygYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLjicxNmNpYNSdlDLoBw1hRqse8yPujz3RAWyTpfEac=;
        b=vl8tasgZot5zgnpNdbK765qQgC47+CbkTIVmxHCNOaRfFuBjF+6IYzKjzscq/VETHU
         5mcn1qEw5ZMwvY2C4XfYWu3VpOiLxGkf5oeXPu2oFZhCFR4xVYbf5+EGh4eH68q1mxxc
         c7kMt5M0c7VJE8DAVrA9x1iMBXNzEYO2h0eCY7AXU1CglKo4BnWJWxn6+YbvLm3qPA8O
         fmtEkU2kA/3ZmUIjQKuq/8Eh8Ta5I3WR3+xw/7zPO3gyPsaa9KoT39BsrrVLNMAU2krA
         3sxgUrR6PYRn+npStikNbbqEsrXO54az280km16CJ2DuoSpQ2TsHzL7vjmgWjmmjHUrR
         4wmQ==
X-Gm-Message-State: AOAM531Vc6WiFv6KixX2L5J3JcRyiDAanop5u6wBVc2G16Zcgv0KFN9n
        KbG27YnJBvyU0Qj5r0vVVX1FDm40hAio9w==
X-Google-Smtp-Source: ABdhPJz7orF7lfNNUIyXu6Own8rdIu7+OsJ5fOjCVqxqThwEdRZ8ZBjzbGsTPGx6uq8/Cofpfn2h5g==
X-Received: by 2002:a17:90b:1e0e:: with SMTP id pg14mr4240138pjb.143.1636436018094;
        Mon, 08 Nov 2021 21:33:38 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cc3e:b71b:e327:fb32])
        by smtp.gmail.com with ESMTPSA id w5sm13741479pgp.79.2021.11.08.21.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 21:33:37 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] arm64: dts: mt8183: jacuzzi: remove unused ddc-i2c-bus
Date:   Tue,  9 Nov 2021 13:33:28 +0800
Message-Id: <20211109053334.1840273-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

EDID is read from bridge, so the ddc-i2c-bus is unused.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index d8826c82bcda29..8f7bf33f607da2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -9,7 +9,6 @@ / {
 	panel: panel {
 		compatible = "auo,b116xw03";
 		power-supply = <&pp3300_panel>;
-		ddc-i2c-bus = <&i2c4>;
 		backlight = <&backlight_lcd0>;
 
 		port {
-- 
2.34.0.rc0.344.g81b53c2807-goog

