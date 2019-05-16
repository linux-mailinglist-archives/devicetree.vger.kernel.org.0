Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 273BE20CFD
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:30:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727113AbfEPQ3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:29:51 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:42063 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727103AbfEPQ3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:29:50 -0400
Received: by mail-pf1-f194.google.com with SMTP id 13so2109320pfw.9
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
        b=MkJydfFNb8Zarh1j8X6Nl7cZR1+cKqVxQrYZ0p/8MRxz06Xrun/tupqmE6v8jCMnpb
         jbSSanskoXF6x0hoBAhAGR48KDIIxgbxfZ+7kJhS/gAzPjro3h1FdLMLJkTx4WY/mXoq
         sfTF/JOBJPhgwL5NJWHhaVbxr+nH8ynJAG1LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
        b=IE/ZGRILZ1QcRXyQ79NadKDb+FQkd8w/dt6wYncqCl4fklIMB4STM/97jlJ61TWvsL
         LKM50i8X5+fdWQJbpSvB3DshqHgqtYZS3smR8N00t4zpTNsVkzcAphspL73b89xcbG6u
         Cb/35csFOXX85elFVu/GL4p6a8kGJwCDSGwASutfvX/b6GqK1+B43Ra8Npy7k5D0Zu1G
         iVrAclY4uZhdLFO8UUWmP6FNQqwyXzFlLnJ/VN4sw7ugnwsTC9M41sgHzNSATGBNLqfg
         bFuY9NvLt7MJCAZJ2/n0pKifpd5OoL+ejBLJc7aKjzzISymX7Ceu303EcigbH8jxvBoS
         Oevw==
X-Gm-Message-State: APjAAAUTPidufYvaeBj/yLpK5vYbAeqmiacTkLmLXLZzPPMC9PzWuXqo
        GokVsGBsbNaYAgEuVx/aWh8ZVQ==
X-Google-Smtp-Source: APXvYqw+BIh+offSQSSziALymyeAhxhq1O7ckJ1x3tzKL9gNG55hDnHX76jw+v/G285jFXE5k2ohHA==
X-Received: by 2002:a62:2b43:: with SMTP id r64mr54971169pfr.210.1558024190331;
        Thu, 16 May 2019 09:29:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id s198sm8644416pfs.34.2019.05.16.09.29.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 09:29:49 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for speedy to 80 degC
Date:   Thu, 16 May 2019 09:29:42 -0700
Message-Id: <20190516162942.154823-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Raise the temperature of the GPU thermal trip point for speedy
to 80°C. This is the value used by the downstream Chrome OS 3.14
kernel, the 'official' kernel for speedy.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- add entry at position in alphabetical order
---
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 3d2769f1bef2..6f870d89866b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -75,6 +75,10 @@
 	force-hpd;
 };
 
+&gpu_alert0 {
+	temperature = <80000>;
+};
+
 &gpu_crit {
 	temperature = <90000>;
 };
-- 
2.21.0.1020.gf2820cf01a-goog

