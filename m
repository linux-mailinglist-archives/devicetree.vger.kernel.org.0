Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6E48673CBC
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 15:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbjASOrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 09:47:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231390AbjASOrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 09:47:12 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF1F87298
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 06:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139498; x=1705675498;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=z5BOX24eWOopSXeN2xDF09qwu6cHJYzrrndKi7ZS7C8=;
  b=VOP0x+ur4bCeON0KZ/escw0MyqwF6O6wLSx11f0A5kxDg1lX3jwAvGBg
   dug0FMoFzQl//MIb2EazR4rNaCDTZZLf0xOUI/wiNwYgBof5HIdt1+2Ko
   qV+Xjb1u7xDoN0Z9oFuLVloB8+n/3RHw5bHQeir/oiQY4AQUFpL8wgxAK
   F+YKQIQywlqJzSw/BeV5S0C1AR77g09d7m2Nk/ozTq9cjWCrQFgr7oC++
   AfRXIXZSrI3WH+5dXfmDjtb/OcP94GGkC8JwiZxmiCRi+2poCapaEBSl8
   3E06FT/BwxDc1ArTiayQwCFlojpDz3O+fJdrm55v6WyaHUM5Ko2xX8bkG
   A==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537321"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 15:42:45 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 15:42:45 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 15:42:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139365; x=1705675365;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=z5BOX24eWOopSXeN2xDF09qwu6cHJYzrrndKi7ZS7C8=;
  b=F/GOiNDV1vM6UCF7p6tHvKYh/aAJutlVLtXZhJ5EiN8ZKoJrxbLrwJP3
   ADIRGe8SaulRupDbCDr76BdIB/kXXXHqGlplVK/ioqM6yPlzU5TYuIqO+
   zuY5ufLMGxQXqbG20l7vELHeFIiX4xK7YCISChnhi95omBM6P5cle51B9
   krU13bvF8jQY+hpsV1t3NHgsfeoYPdCdZN2g4QF/4VYU8/oB88Nan4u79
   N9LGqCvPQwJ6tWdFKmierBI7bdZ2fsSheWzKXiKSjj3HNwcvnfDZP1O8y
   D58uRsVRMk7M7/QRUZ5XqxDD7RXgLE58M/9MjlCbm6P60H93AsMQY0pgU
   A==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537319"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 15:42:45 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E78C6280056;
        Thu, 19 Jan 2023 15:42:44 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 9/9] [DNI] ARM: multi_v7_defconfig: Enable CONFIG_ARM_LPAE for multi_v7_config
Date:   Thu, 19 Jan 2023 15:42:36 +0100
Message-Id: <20230119144236.3541751-10-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is necessary to support PCIe on LS1021A.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 441a449172368..f0757f05ec2c2 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -105,6 +105,7 @@ CONFIG_ARCH_VEXPRESS=y
 CONFIG_ARCH_VEXPRESS_TC2_PM=y
 CONFIG_ARCH_WM8850=y
 CONFIG_ARCH_ZYNQ=y
+CONFIG_ARM_LPAE=y
 CONFIG_SMP=y
 CONFIG_NR_CPUS=16
 CONFIG_ARM_APPENDED_DTB=y
-- 
2.34.1

