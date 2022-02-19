Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFF104BCAE8
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 22:59:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243281AbiBSV43 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 16:56:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243196AbiBSV4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 16:56:13 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E00541BA
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 13:55:48 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id z4so10883240pgh.12
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 13:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=65Eb1HUPdIjM8zVi86DKNREnJ4z9OvkieF1s3FEMLrI=;
        b=4VytRZT6CAyhgtB0WgTO1CmH6FyEiVE195+cE4dlZVCWFZ8iudpzgTS+gBHtUACxvT
         MIhY2IZkpmy+hYNGyiNLj9Y0MnvZ5oytRW9znNCeTPHETg9mvXJEBGHAHEdlGiJRuNLt
         D+NUYwS3fm0pLZSNi2C+PmG/A8uDIxZr9DmzK08CFnih9aSO6qES+NCnIBrB3KUMnrbm
         kpLLAwu2YKChJx0fZYrR3/P1jV9rMelaKyUtjcKN/EnWjFr8gf9C+6LL0fF+akcmtImi
         Bk0gAc2Jo5ISBuUh8e3VOK1t/cbq9ZGfd+0hq6z+P+AQypLHD1kIcNXwooUfd9dPHsB4
         evUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=65Eb1HUPdIjM8zVi86DKNREnJ4z9OvkieF1s3FEMLrI=;
        b=WxyeoHf5pyrRAfBhQ1diB373x/qtvXaA5XSr/xL7s9dom6BAlUjFRDkhcQvFGVDD5R
         Gpg7+fSxVWDkz+VnL+CmPS+j1OgoTcktQhIikIzx1QmwdSCVjh2xhD+TMOm/aWBNXhYo
         JPWlucVx0cdWDQVRewauQVXAS+NOeiCPi1B8wM+kg9aKZHwHJARaagWeeXK8v98udDGS
         rfJWjoFqqOaN1bVjKcs/lRDgt7uO+9Ux+JdRd0FANW5oW+vWaWRwppCuT3nWXohQ0RRD
         y+m271ar6Xa8wY7mY8y8k7MprURIjlxnNujzdvxHdAGgHje1GvbNrW+5JJftPxbJIOd+
         k5zw==
X-Gm-Message-State: AOAM532wR7n67T7fsYIxruMrmPIsp6TWoOG+R2GVwapmOc3Q+uapcsCR
        aDp9A9FJCaobXlNW8Cu0z/zRUg==
X-Google-Smtp-Source: ABdhPJzR11qeGJpsKF8keWXr323YCIBX9Clo8mnHXsBsgwGyif8SWMepT1n0NinmAP+YMeQZ1Q2ZaA==
X-Received: by 2002:a63:3f42:0:b0:363:c08a:8dfd with SMTP id m63-20020a633f42000000b00363c08a8dfdmr11119666pga.108.1645307747624;
        Sat, 19 Feb 2022 13:55:47 -0800 (PST)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:31ab:1e81:9550:f30a])
        by smtp.gmail.com with ESMTPSA id i17sm13447337pgn.82.2022.02.19.13.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Feb 2022 13:55:47 -0800 (PST)
From:   Drew Fustini <dfustini@baylibre.com>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dave Gerlach <d-gerlach@ti.com>, devicetree@vger.kernel.org,
        Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Tony Lindgren <tony@atomide.com>, s-anna@ti.com,
        khilman@baylibre.com
Subject: [PATCH 06/11] ARM: dts: am437x-gp-evm: Enable wkup_m3 control of IO isolation
Date:   Sat, 19 Feb 2022 13:53:23 -0800
Message-Id: <20220219215328.485660-7-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220219215328.485660-1-dfustini@baylibre.com>
References: <20220219215328.485660-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dave Gerlach <d-gerlach@ti.com>

With this flag wkup_m3 is able to control IO isolation during
suspend on the board.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/arm/boot/dts/am437x-gp-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/am437x-gp-evm.dts b/arch/arm/boot/dts/am437x-gp-evm.dts
index 4416ddb559e4..91b67b428a06 100644
--- a/arch/arm/boot/dts/am437x-gp-evm.dts
+++ b/arch/arm/boot/dts/am437x-gp-evm.dts
@@ -1127,6 +1127,10 @@ &cpu {
 	cpu0-supply = <&dcdc2>;
 };
 
+&wkup_m3_ipc {
+	ti,set-io-isolation;
+};
+
 &pruss1_mdio {
 	status = "disabled";
 };
-- 
2.32.0

