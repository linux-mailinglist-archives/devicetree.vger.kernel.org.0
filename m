Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EFE23B4150
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 12:17:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbhFYKTd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 06:19:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbhFYKT2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 06:19:28 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2929C061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:17:06 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d11so10043250wrm.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2OvfRNkgFerBxJwOvZ8T0pE0S1djhbeNLuNpHoiwsBk=;
        b=TBOUAYHDsTdjFj4ccSIcslmXJabvBi+a4t3FrAt0Y8QVavGiMaXiK6Z5Ddfl7kX8D8
         DPfCPqPC7c2fmfOlE4UOD1NGbB75jWzWCNuTMcVrni2LFnuop2dfTtIBssNBZCnLLCyn
         zEB7jbwT0tFJGUmWJuAvYcCu2Qu4Ey9jUc4Zu+iOmg+Uvx25ITMNFsGt5amiQGPJqoGo
         Nsmqqsqw8R4I4FAj1zDWPF7W7Vw4hXxz4mp7VPlIC+591tSnNI/imA3ZMfQnh5F5cWFU
         71dRq35KZ2TSKYQ2awPdq0AhjJX12W/2reMRsq55YQKUf4EHIqRL2/taVCvRmLhj9HDh
         fylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2OvfRNkgFerBxJwOvZ8T0pE0S1djhbeNLuNpHoiwsBk=;
        b=Yyf8XPvjqLk2oZ9AtJflpaC63ks/wkSCAoskBH8zh7LKj7J2htvSArQkIMIu/5DcgK
         EpUDFPQ/gQQ5ndXqIdQuLA0sFRfQiBzL/7pusCraxszlKz6/CYRvfPHpC4ij78urWxag
         R3clfEPRLvX/YKvVpOB4EwNKlhuQpNu3ZQBlHJ6nQ2NlkL6/cFaQYOWPJaxyvBMmy3OE
         hExekvtHUzuVVWCiino0bxLu5pjdKB/4YPaRqmcPzdSjE2FgKNrOGv5CkKNaeLzqVq/D
         16LfV7NumCecKczXsg2FJ7hfETZTQL7uXg82mlxcL9OBP9Cb1XdyouJ4VmmLGDw464W9
         mk9w==
X-Gm-Message-State: AOAM533RKVSLbznpHLAsl0hyG8Q+2gf1Mdw8igMOPboZugy8FI4DkfvW
        lXAx3K1d2yh0zJpRd0g3qEM=
X-Google-Smtp-Source: ABdhPJwNCH0VNHLkU+ZWTZajqIw9K2VftYp55n/O1Lj4x6rE77oi50yKHZukZRT5d3bpTtBWTp7NhA==
X-Received: by 2002:adf:ef92:: with SMTP id d18mr9965242wro.219.1624616225361;
        Fri, 25 Jun 2021 03:17:05 -0700 (PDT)
Received: from morpheus.roving-it.com.com (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
        by smtp.googlemail.com with ESMTPSA id 204sm5462736wma.30.2021.06.25.03.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 03:17:04 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>,
        Tobias Schramm <t.schramm@manjaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Don't enable hdmi_sound on Pinebook Pro
Date:   Fri, 25 Jun 2021 11:17:02 +0100
Message-Id: <20210625101703.3290934-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Pinebook Pro doesn't have a HDMI port and neither of the hdmi_sound
dependencies are enabled so it fails to probe so drop enabling it.

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 2b5f001ff4a6..f584d08a63f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -442,10 +442,6 @@ &gpu {
 	status = "okay";
 };
 
-&hdmi_sound {
-	status = "okay";
-};
-
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <4>;
-- 
2.31.1

