Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48F8F3D52BB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 07:08:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbhGZE2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 00:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbhGZE2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 00:28:15 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A951C061760
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 22:08:44 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id m2-20020a17090a71c2b0290175cf22899cso12617168pjs.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 22:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q19QZx3IM7uTYknYeZNzKDjl5AnKkceiIehImoXzjxY=;
        b=CZwPjWqV6j/Knp8s+qP42VKurVJ7iRtYSe7bZAsIb0X+kP/kjIqY9XEyX+FF/s0oXS
         OVkuYjiP7st6B/JKf5Mcff0AmZmDvoBaE6dDbA8MLHCfceW0Vyit7zkCByRGqUVTKHPj
         B0BNVVDg/Nx+woF7Ld5wL/jT3mYvue9wtfkTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q19QZx3IM7uTYknYeZNzKDjl5AnKkceiIehImoXzjxY=;
        b=Zmq2MaUAv9IwzLZdNpoi4CMClGKsi6vM+MV4K5hCaoiiNB8v/zMGtB/3cIJMGjn0U5
         3sofll4pEYuXq+at8pMOx291xoJetNE9d22aYvEC1582IWbXgnNYfE55fV2yBChebpnQ
         70Rokw/El3uHbchfa3FklZSqIX2oKqEphy3V4/FTxUMHCwg3vpMiu4Di1WJEGhhx1HPz
         cl9qNS93e6Su+IXMMliWv55D/GnzNu0dLWxEu+YVnk0pEv4VHJu3eZJGXoZrciiZJrkU
         /pLfhxAwumOesLWQSRpR7f/JPYBDXkZ1v36tuQzAFSQnUIYKs6vYZ92cv9rZOfn7GcEH
         FbAA==
X-Gm-Message-State: AOAM533rRAOjvDAKp8twKo3Eto2k8aCN/mk8TtDTW4mf5AF1dqyPN4qR
        LvdQj6E4yy2TgWrqveNwGXtSPA==
X-Google-Smtp-Source: ABdhPJxNYNIzJ6h+knYVR+R+nInHYQ0LoXhr0E0f86kyTkieRytU+Cg57mNifxFausYXPKEyySAXsQ==
X-Received: by 2002:a17:902:c10a:b029:12b:565f:637a with SMTP id 10-20020a170902c10ab029012b565f637amr13037468pli.57.1627276123312;
        Sun, 25 Jul 2021 22:08:43 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:24d6:d449:2832:1652])
        by smtp.gmail.com with ESMTPSA id a20sm39810768pfv.101.2021.07.25.22.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 22:08:42 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
Date:   Mon, 26 Jul 2021 13:08:31 +0800
Message-Id: <20210726050831.1917982-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use aliases to mmc nodes so the partition name for eMMC and SD card will
be consistent across boots.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ae549d55a94fc..ed499e17b6570 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -13,6 +13,8 @@
 / {
 	aliases {
 		serial0 = &uart0;
+                mmc0 = &mmc0;
+                mmc1 = &mmc1;
 	};
 
 	chosen {
-- 
2.32.0.432.gabb21c7263-goog

