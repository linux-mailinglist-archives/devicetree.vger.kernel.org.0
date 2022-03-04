Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 189CA4CCB2D
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 02:10:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232580AbiCDBLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 20:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232425AbiCDBLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 20:11:08 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F23170D5F
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 17:10:21 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id t187so1901985pgb.1
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 17:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wL/NSCoP7H388ddvlil8j+YJYi6ash7ezNgkxiwgWlI=;
        b=IJ0swrJnzm09mnOdENnboYPU0mXe5nnMaFOODhd0igitoGEjY2OB+M6XkyKwdelb4b
         MaFoHPhfPtzD2VGDK/7Njzj9JIXAVwr3r9E7T1xyIx4/kzgjXjsCJjeVs+HEhO5mHvmx
         PfQmMnyWwQphbZOr2Lagb4npf4NtPSPkflA83H0VnyyJMFn3PrrtC++iWZzzhjuWX3lj
         cKj8MJmskRLmsOmjODnpuFdXIeGr0PIpcOd2kxhHi/HcmImJgkcleGwGEAvKDjnCg3MP
         fS5jkk+cEHNXKlk+KQpi30OQ9vQKSjdk/ztWmR0p70WFbQQkOXVF6MtuOq4CyEYzSRj9
         tcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=wL/NSCoP7H388ddvlil8j+YJYi6ash7ezNgkxiwgWlI=;
        b=ww0/6N8gsiXveCVdOF+AMicbfjJ1BonWBSmLcdVHJqu4dhIGmZyaS5I9l8e0Da/P8i
         x06fabyveclGQuOZuAnNXzgggEWxU41YiuK430FQzW4gn2UpZnSuVNPrKfvPI1Jqu4cM
         SPWpXyIsteZLquWQEAYVqmMP0ds+sJwVlPydCxIvn0DIyRQz8fSbz+27YS6wtMITszMY
         TlOM7QNcqqtM1fISbX3+fbpGOZj3z0lJ43gYLoPKCZET/6KMxPv0u/uWj6cOpSMcdHiD
         IpOwpn9exg45s0ocUDwd//7GvxqeeIfBM3jd30kLB3aRCkVVMVVJoTrWw6TwxJwoRx8a
         bdGQ==
X-Gm-Message-State: AOAM531VJDGIQQvaEBS+7tXqNke50/yc6KwpFJvdMMNgvNw8umBsyI8E
        INRWgV/1+CTvKakGs8XpYws=
X-Google-Smtp-Source: ABdhPJwboBncI+6LWWacKEp45Ai5uNZhsXYA5RfMj8/mVXJcn6gUkkXxbDOBWWPmAVcL5en7SE9mnQ==
X-Received: by 2002:a63:ab47:0:b0:375:5d05:9f79 with SMTP id k7-20020a63ab47000000b003755d059f79mr32569913pgp.192.1646356220418;
        Thu, 03 Mar 2022 17:10:20 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id d2-20020a056a0024c200b004f6b6817549sm165765pfv.173.2022.03.03.17.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 17:10:19 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: [PATCH] ARM: dts: aspeed: Fix AST2600 quad spi group
Date:   Fri,  4 Mar 2022 11:40:10 +1030
Message-Id: <20220304011010.974863-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Requesting quad mode for the FMC resulted in an error:

  &fmc {
         status = "okay";
 +       pinctrl-names = "default";
 +       pinctrl-0 = <&pinctrl_fwqspi_default>'

[    0.742963] aspeed-g6-pinctrl 1e6e2000.syscon:pinctrl: invalid function FWQSPID in map table
￼

This is because the quad mode pins are a group of pins, not a function.

After applying this patch we can request the pins and the QSPI data
lines are muxed:

 # cat /sys/kernel/debug/pinctrl/1e6e2000.syscon\:pinctrl-aspeed-g6-pinctrl/pinmux-pins |grep 1e620000.spi
 pin 196 (AE12): device 1e620000.spi function FWSPID group FWQSPID
 pin 197 (AF12): device 1e620000.spi function FWSPID group FWQSPID
 pin 240 (Y1): device 1e620000.spi function FWSPID group FWQSPID
 pin 241 (Y2): device 1e620000.spi function FWSPID group FWQSPID
 pin 242 (Y3): device 1e620000.spi function FWSPID group FWQSPID
 pin 243 (Y4): device 1e620000.spi function FWSPID group FWQSPID

Fixes: f510f04c8c83 ("ARM: dts: aspeed: Add AST2600 pinmux nodes")
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
index 6dde51c2aed3..e4775bbceecc 100644
--- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -118,7 +118,7 @@ pinctrl_fwspid_default: fwspid_default {
 	};
 
 	pinctrl_fwqspid_default: fwqspid_default {
-		function = "FWQSPID";
+		function = "FWSPID";
 		groups = "FWQSPID";
 	};
 
-- 
2.34.1

