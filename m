Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5189A20DE5
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 19:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726394AbfEPRZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 13:25:21 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:38204 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727758AbfEPRZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 13:25:19 -0400
Received: by mail-pl1-f193.google.com with SMTP id f97so1953003plb.5
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 10:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
        b=lm3M7Abais25GdMpfAmlFd1RXZxXFphbeQ7jGJe3AKBVsknHbMxhyrH4vT+MBb28A+
         xP4nQPC5QkLetlEYajhKUsKHtuJITm+LT9nnHbWlAddEHLklQyGCAK0zKonDIjCHRuRm
         n0incRdHOE8Y3OOvZzwBzlqIvRx1Z2ohANK2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
        b=dTtxCmJVF629OnUzjICjTgfYaCcWb5rPqQA+P21C3iEmq2xg/YeWXWn4Lsqd7qao4x
         00dXwSzd3XVTNMRtfmdncET0mDJLy2/EYE8AnpAnKCi/gj49wdimV4qQofbJPSD0wh8M
         8p6v6Ky+VHxZMj6z13g5lhL5qdl9b6zDmPMJ25Z8W3KtACvy8WJxlfBQpy9bWfDrGaGC
         rBM8ixTiCqEX5pwZOLTIx+VCCnU6ARxs0DRfdGeH/Kg/aTOdeHMz4Usc23EnQ31yHbHP
         9lwFAM4UjfMeC3ofZrw0mjYIoB8xoLaNe6mZh3CIU3qdyW6QTTXmfhD1VTGo9c4XfgtW
         nnQg==
X-Gm-Message-State: APjAAAXQKjdDKUUDde1SEaauUoSkHXq+iLj/Qp+vLlqn31AVnLeWr0Gp
        QIRNBeYcpRlqq6nldlaAz/kfcQ==
X-Google-Smtp-Source: APXvYqzIUsVmhUrS26/6IMXbb7QozvzV4UhQf72EtAlcEOaL7o68fTla/TZNzSHlTZB49FW8iDdDfw==
X-Received: by 2002:a17:902:6809:: with SMTP id h9mr51869145plk.129.1558027518307;
        Thu, 16 May 2019 10:25:18 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id s77sm13264216pfa.63.2019.05.16.10.25.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 10:25:17 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for the GPU thermal zone of the rk3288
Date:   Thu, 16 May 2019 10:25:10 -0700
Message-Id: <20190516172510.181473-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
References: <20190516172510.181473-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the CPUs are used as cooling devices of the rk3288 GPU
thermal zone. The CPUs are also configured as cooling devices in the
CPU thermal zone, which indirectly helps with cooling the GPU thermal
zone, since the CPU and GPU temperatures are correlated on the rk3288.

Configure the ARM Mali Midgard GPU as cooling device for the GPU
thermal zone instead of the CPUs.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- patch added to the series
---
 arch/arm/boot/dts/rk3288.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 14d9609f0b15..988555c5118d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -547,10 +547,7 @@
 				map0 {
 					trip = <&gpu_alert0>;
 					cooling-device =
-						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 		};
-- 
2.21.0.1020.gf2820cf01a-goog

