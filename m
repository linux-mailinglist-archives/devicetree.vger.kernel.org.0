Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 239B8358143
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 13:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbhDHLCp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 07:02:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231167AbhDHLCm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 07:02:42 -0400
Received: from ssl.serverraum.org (ssl.serverraum.org [IPv6:2a01:4f8:151:8464::1:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F49CC061761
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 04:02:29 -0700 (PDT)
Received: from mwalle01.fritz.box (unknown [IPv6:2a02:810c:c200:2e91:fa59:71ff:fe9b:b851])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ssl.serverraum.org (Postfix) with ESMTPSA id F1D222224D;
        Thu,  8 Apr 2021 13:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
        t=1617879747;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=biHq6sbjGE96pYmKiKZd5FxjT6rERDkBpqsoByUxslM=;
        b=iwL4uFOz+WUXFohE8mGGMgOQa9z6uLkiJBSNQDPDDPHX7wAW3DfsnrojsHuOjxNgmCTsKX
        HRfhaV3mgu6raQoZs0aEJQsuLsEF92HwmGGpiZiLItg627OShaTvinCjb1wQRYVHfBnbYt
        D2XcMWm11gZHiaRy5JL0rJ12YZjDwlY=
From:   Michael Walle <michael@walle.cc>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Michael Walle <michael@walle.cc>
Subject: [PATCH 2/2] arm64: defconfig: enable Layerscape EDAC driver
Date:   Thu,  8 Apr 2021 13:02:19 +0200
Message-Id: <20210408110219.20149-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210408110219.20149-1-michael@walle.cc>
References: <20210408110219.20149-1-michael@walle.cc>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most Layerscape SoCs support ECC error reporting for the memory
controller. Enable the corresponding module. In particular, this will
enable EDAC support on the Kontron sl28 board which comes with ECC
memory.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 99e8a8fb5b4e..c7a62bc6df7c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -883,6 +883,7 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 CONFIG_LEDS_TRIGGER_PANIC=y
 CONFIG_EDAC=y
 CONFIG_EDAC_GHES=y
+CONFIG_EDAC_LAYERSCAPE=m
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=m
 CONFIG_RTC_DRV_HYM8563=m
-- 
2.20.1

