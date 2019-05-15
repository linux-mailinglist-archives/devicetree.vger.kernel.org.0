Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 37D941F79B
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 17:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728480AbfEOPbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 11:31:37 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:33460 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727221AbfEOPbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 11:31:36 -0400
Received: by mail-pf1-f194.google.com with SMTP id z28so173681pfk.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 08:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
        b=daAtSqCJ/oTaEYkG59u3o7jjY8qmxpZRWzhLXKwEHrXH/u26lAXnoFPkn/uCG/Sl6k
         UwbWWhR3FdnriNAjE2O7MvVmW1YSlkjnNGHYNQZXSckOluh1bP7799pE5M5xRw+A+4aZ
         ZTEZR3k7vhKDR6vgJEFTaz+4TP7QaLtvPz+jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
        b=eU3QPMU4dRNB421f4ir6Mf++cHKvY/xgcgXzkxrjANKf5CQXKeF1nfmOmmzZr+pi8h
         oxVOZTgPxALgBym9NMOKFWmHt/uxh0+uOhEJeBmFixj/u1frNG1b/+matfZEQw8efMzp
         eVoEatRLGHIPO9F+xQxfACidVyzzag5CQ9LOktJ7IVITr/nnQnBBBHrT6FQOmQh8fwic
         daQRW7hgnTOzLBmj+Sg43F3+8w9T09ZYM0pUXz5tmYOHbSMfcXoqhexhhQMMnwkkcCR1
         /isTOV0PvV9rCuPhcU9/B0Cj7rNS1Np57EtdaPU8efCH90oYUZqjp7nMNgtrE2G3dBRz
         V1Iw==
X-Gm-Message-State: APjAAAWRSrz0k/wNFc/uirbq5DFzGbhNDZoYLfzeP4u/Qb48y20DaNEF
        QHotxT5anVNYINqoTOC73V17/g==
X-Google-Smtp-Source: APXvYqxOUzLo/if+h9XIHzCEFeYe9LeIRDutH5jCNlO5xeuGnD6kyzTn/1KEjr7JOey3ewert2okdQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr48532016pfw.172.1557934296145;
        Wed, 15 May 2019 08:31:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id e24sm3792704pgl.94.2019.05.15.08.31.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 08:31:35 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy to 80 degC
Date:   Wed, 15 May 2019 08:31:27 -0700
Message-Id: <20190515153127.24626-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
References: <20190515153127.24626-1-mka@chromium.org>
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
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 2ac8748a3a0c..394a9648faee 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -64,6 +64,10 @@
 	temperature = <70000>;
 };
 
+&gpu_alert0 {
+	temperature = <80000>;
+};
+
 &edp {
 	/delete-property/pinctrl-names;
 	/delete-property/pinctrl-0;
-- 
2.21.0.1020.gf2820cf01a-goog

