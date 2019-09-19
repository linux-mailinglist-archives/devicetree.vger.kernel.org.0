Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7218B729E
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388151AbfISF3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:29:01 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:43459 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388147AbfISF3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:29:01 -0400
Received: by mail-pf1-f193.google.com with SMTP id a2so1481081pfo.10
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pjzjQZaNXsKJUrobfVyNEoaPXPZ7j/Y7jZihfDcfLTc=;
        b=ma2szWh3fZ0CthnlLq01YhUIhLic/fGiuCo9bW1ntc7zj8RhLiStft18NL8DLCIKhD
         xol1qetrlBNmmOldxCqP5M1RBVdgatiqw+pXn6vDzbf9GnHsMTuvjPKDbxRhYt7WVTXo
         yU1N7/WQtkp69Zn2xKy4/PwlAlrecXGJsszkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pjzjQZaNXsKJUrobfVyNEoaPXPZ7j/Y7jZihfDcfLTc=;
        b=KFQ6Lqp3zZdtuAo3WcAZLEEQGpyy1Sk8Tj3heL5goF2Z7VX6tBCFd7AAB2B13pNoPr
         zJ0S1rJ9GTdUwp2EpIRM4d6SIoRbHRWy5kGMDQIpC8hRkbQqDNJjjv5KaRFC6bbue0zR
         vIei3d0saIuVSZF/SBGGQVlyI82BbR48T5NxMK1zKLaSpYDc48YySxdZUm6rfSpuRkh7
         EFBg9cIQC6bINWWXHyuPhST4HW02bJLNfnlZIYId8r/uAr67RFgPYci+tMbngX8azsuS
         1IKaMjmrIretmN3Cx4mpz2uDCoU/EVATdysJGubTikyfngxO6TYn51Pjmb9kGaSoilsS
         T2rw==
X-Gm-Message-State: APjAAAW919Rw24GOHHkPWSWyViF+LZ3NaaE2M7Lotg3IxZw0HmpgRTld
        UCwi0LYYca+faizmzLE9i0oaDg==
X-Google-Smtp-Source: APXvYqwMn2793F7u+gsqgIZ7WKzwlSoslHkIYECsncXAbvmDGov1nn2gfmltxgWM2us7xFP2Cmf6JA==
X-Received: by 2002:a63:1c22:: with SMTP id c34mr7195695pgc.435.1568870940513;
        Wed, 18 Sep 2019 22:29:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:29:00 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech notation
Date:   Thu, 19 Sep 2019 10:58:20 +0530
Message-Id: <20190919052822.10403-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So, rename the existing rk3399-roc-pc.dts with libretch notation,
rk3399-libretech-roc-rk3399-pc.dts

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
 .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm64/boot/dts/rockchip/{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts} (100%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1f18a9392d15..73c10ddb4300 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -21,12 +21,12 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-captain.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-libretech-roc-rk3399-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
similarity index 100%
rename from arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
rename to arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
-- 
2.18.0.321.gffc6fa0e3

