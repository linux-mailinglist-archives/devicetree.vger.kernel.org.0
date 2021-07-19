Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A4F83CF06D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 02:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345204AbhGSXVY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 19:21:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359442AbhGSVpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 17:45:52 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B15EDC0613BF
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:21:40 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id p14-20020a17090ad30eb02901731c776526so733765pju.4
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kr2j9CaXxciS53UTRehcKMdcqK5/tdAVzDNwoCD+H6E=;
        b=fTccJfOsHh6JMWpILS6FHigeaL6i0nuLan+ze4Zs14B0LIdha0N696hFpe8xig0wCH
         AFtOWI+QIQIMUgYGlhKQtPnEBrRAIAUog0LKxAaA4xheGykQyK7RS8fJ2w2FgDS9qZwN
         Win8zqC2Nz3Mak8+pF4MbYfEhfmsrv45UEbKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kr2j9CaXxciS53UTRehcKMdcqK5/tdAVzDNwoCD+H6E=;
        b=BBeIvY4zcjZyqjx46ncUqSdV0+zEC4pv63R9CYamS40BzzMI8S7WgPC7+TylNvargG
         ZCgF+q7FVNFIE7Liq1cMO0rkoTBHZGYIyHfrozdvQFw87D6H6B9n8GeNQRi9SauC7C4X
         QO225TfNoSv5VsefynZBZZ325SnQhH2npiX1+CwZWqMh/Clkj7ygS+nZac6ESceRM5dO
         NSMGb2gfjEPQFayqAcfXDdmM+bSfc1z0XU5bzJ4QTmt/7RGWrvbUjMRnkc13mL45cd1I
         X4ybMfH9z/Z+JFq0wMvED721PgpsVNCCXMyuVz5L3/1SwZQHern5MxBiEPhCBFBI+iIE
         nrFA==
X-Gm-Message-State: AOAM533/vtbGrfkkbg+ZV7nFYUveNUj1WcQiMrMCHZS2dcUzQKN5n2Ci
        79wgP59q0PKU3YwL52EyvGIBvg==
X-Google-Smtp-Source: ABdhPJwTwZotNkoksctnaCDVBY4TNTimpPmvP3pvsoZWqhlNur1wkrLjA5vmWpxUE59ImGQVEg/JmA==
X-Received: by 2002:a17:90a:4d04:: with SMTP id c4mr31533425pjg.148.1626733300231;
        Mon, 19 Jul 2021 15:21:40 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:4d0:bf5f:b8cd:2d67])
        by smtp.gmail.com with UTF8SMTPSA id x10sm13438641pfh.56.2021.07.19.15.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 15:21:39 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     Michal Simek <michal.simek@xilinx.com>, linux-usb@vger.kernel.org,
        Peter Chen <peter.chen@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-kernel@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Nishanth Menon <nm@ti.com>, Shawn Guo <shawnguo@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v14 3/6] arm64: defconfig: Explicitly enable USB_XHCI_PLATFORM
Date:   Mon, 19 Jul 2021 15:21:25 -0700
Message-Id: <20210719152055.v14.3.Id45138610b749ff775186ac10b3d01c504ddf4f3@changeid>
X-Mailer: git-send-email 2.32.0.402.g57bb445576-goog
In-Reply-To: <20210719222128.4122837-1-mka@chromium.org>
References: <20210719222128.4122837-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dependency of USB_DWC3 on USB_XHCI_PLATFORM is being changed
from 'select' to 'depends on' by another patch. The defconfig selects
USB_DWC3 and implicitly USB_DWC3_DUAL_ROLE, to keep this unchanged
USB_XHCI_PLATFORM now needs to be selected explicitly.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v14:
- rebased on v5.14-rc1 (with the rest of the series)
- added 'Reviewed-by' tag from Doug

Changes in v13:
- patch added to the series

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f423d08b9a71..b243bd11a4ed 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -802,6 +802,7 @@ CONFIG_USB_OTG=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_PCI=m
 CONFIG_USB_XHCI_PCI_RENESAS=m
+CONFIG_USB_XHCI_PLATFORM=y
 CONFIG_USB_XHCI_TEGRA=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_EXYNOS=y
-- 
2.32.0.402.g57bb445576-goog

