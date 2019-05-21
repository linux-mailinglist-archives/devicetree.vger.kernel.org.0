Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2717825AEF
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 01:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726083AbfEUXuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 19:50:09 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:45502 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbfEUXuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 19:50:09 -0400
Received: by mail-pg1-f196.google.com with SMTP id i21so288105pgi.12
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 16:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
        b=PgFRHz9LTKAW06xheSlCgmaBYlHudfTzK+hJD9m+hf4w8jZW0zxEWlzYfdhjW8BoOz
         sDx93ktSy6nK4r9e0Z/eFmV3NlH0dxZppw28/hubD1RTw5WFELEY0B28z0t71MVdkawX
         tofgt+pzOVwVuSxr4zX7Kr3vgG7xf/Uf45AW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
        b=hVQp1jQtnO+MagAPZiuRJs2FvL68tbj/gQh/p89oyvhnmRg+retvBjUvHmS/NgcJpp
         6RbgGSSlx7c4cUiMCIIRpUdeK6S+PPvF3C7U+q1fW56e6MiKFj1GAF6v8foTxFxNo68B
         zbZ3Auik6p6l+yZeRspsBxvjqLTyXvA2F1xVxRDQfWCZAlNseoNOAYVZkMiQ8YxXOuZu
         u/EckIK3ey7qdIp3OUAwRxkZL+fKrYlA2CFWPkviD4Qk+NiLN30cCNol7qjunRDvYMjX
         gnjxfCa0T+JqryOMajt0fdfSb3TtC5Jqlbjfz74gixG3SV04UnNgIKLRa7r3TmcAC5Aj
         h81A==
X-Gm-Message-State: APjAAAXCiTKn2qhQHNprbJvTEC8QAQAtj0V+Ehyh9Ev3y+xJnpf+axdG
        xMuFweE+YUW8d44oy5bmITj1WQ==
X-Google-Smtp-Source: APXvYqyw8kaeTYK/TiQMeIZGSd18nYuR1FaVotEhqU23R+CYW+qg0qbUu1Ce2nBjA7PX/xVkt40Fqw==
X-Received: by 2002:a65:64c9:: with SMTP id t9mr85741782pgv.221.1558482608692;
        Tue, 21 May 2019 16:50:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id 194sm19955605pgd.33.2019.05.21.16.50.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 May 2019 16:50:08 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     briannorris@chromium.org, ryandcase@chromium.org, mka@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: Mark that the rk3288 timer might stop in suspend
Date:   Tue, 21 May 2019 16:49:33 -0700
Message-Id: <20190521234933.153953-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is similar to commit e6186820a745 ("arm64: dts: rockchip: Arch
counter doesn't tick in system suspend").  Specifically on the rk3288
it can be seen that the timer stops ticking in suspend if we end up
running through the "osc_disable" path in rk3288_slp_mode_set().  In
that path the 24 MHz clock will turn off and the timer stops.

To test this, I ran this on a Chrome OS filesystem:
  before=$(date); \
  suspend_stress_test -c1 --suspend_min=30 --suspend_max=31; \
  echo ${before}; date

...and I found that unless I plug in a device that requests USB wakeup
to be active that the two calls to "date" would show that fewer than
30 seconds passed.

NOTE: deep suspend (where the 24 MHz clock gets disabled) isn't
supported yet on upstream Linux so this was tested on a downstream
kernel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 171231a0cd9b..1e5260b556b7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -231,6 +231,7 @@
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		clock-frequency = <24000000>;
+		arm,no-tick-in-suspend;
 	};
 
 	timer: timer@ff810000 {
-- 
2.21.0.1020.gf2820cf01a-goog

