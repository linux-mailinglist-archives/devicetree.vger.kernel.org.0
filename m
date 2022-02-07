Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D90A04AC81C
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 19:02:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242796AbiBGSBr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 13:01:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242401AbiBGRz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 12:55:58 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA23C0401E1
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 09:55:56 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 701FE40257
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 17:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644256555;
        bh=iL0LIepeQaRgfvOw682KQCC7APivisHIQkh+XV3XvQY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=s/R8Sngq+OaS6sh6NHe8zsUyuOQ8FKnmvari+FhDNC0VQPZW964d4ry4OYmgGkkLu
         iMC8xa/lNA6eQE3RpmXyM1zYCqYrZs0SsWn9htTqTUfoSU8mCInW+QWi4IJ9lH3QzJ
         t7Vgrb7RqrVJOB44MZkPyRs9AJ4K9/UWvLJfJylZMUFDg0wY8hHHZiKPdLEJl7Ouhf
         wsHygPEH2h9DhpFaTV6tsivCfKCXmOX8airBhPCed/+jI8mKjMMZ1rT6FLJq8Kgg6/
         qki9u2q+Z/O3IOmSZfRj/cxqMagUasOO7J3uiasVCaZmrgeRBxABjIir39+ps9tDrX
         wf/pEMdgeVnbw==
Received: by mail-ed1-f69.google.com with SMTP id ed6-20020a056402294600b004090fd8a936so8266058edb.23
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 09:55:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iL0LIepeQaRgfvOw682KQCC7APivisHIQkh+XV3XvQY=;
        b=PNjQmMmAP3EiRLOmTcuYtGsKo4IXUuAoLW+YTOXvL8NPPqfd68A4+Gkq5yHrgmQ4+r
         g2B9y+hZUs6viDl/MrfL5wgfNDsaW7FBaR2ml/gani7uzqU5hUyocr8XIQnvId0d15D6
         imu0zMNAj6Cnh7u8edSyg7P9Mck+6X1kc6+Dr1pzF//3psOh6fywjFnq7LbLzN1kKSKb
         7X2TjIG1COJJJH/2bpiQJVCYQPgru8Enr/bKAa1YH1cC8g7iQLNvlwKVKb2qSYbHzX8u
         s0E37kDDoKGiwhpQ1WyF1ueA+BEyezWAm3iweGaAeUAqcTLmFBi0csxaFqn81Cjqyhxk
         C+DQ==
X-Gm-Message-State: AOAM532MlK3ETC4iQCb78pdy2A6G1fLMduYufrcVgioHzpBk65kWOt1G
        Zqp0ZDK3MYwM9aWTnTalS8UqGx6BL2f08ywYVABo5/0ASeVaemnwWZdnaPwwBrL/vPGSNPoLdbv
        hnTb+LOk0rzVhCL0ZPhRCqzKnJOCFHCLZHIgwZFE=
X-Received: by 2002:aa7:db01:: with SMTP id t1mr637163eds.394.1644256554744;
        Mon, 07 Feb 2022 09:55:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy1G4vKpj2os6F6Z7fqUqCrdFZ65ttguW/jqIW3WbwlVZjZTC1cTnFdJkB82oG6+PYM+9UXHw==
X-Received: by 2002:aa7:db01:: with SMTP id t1mr637145eds.394.1644256554541;
        Mon, 07 Feb 2022 09:55:54 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c20sm3765210edy.41.2022.02.07.09.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 09:55:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Russell King <linux@armlinux.org.uk>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] MAINTAINERS: add IRC to ARM sub-architectures and Devicetree
Date:   Mon,  7 Feb 2022 18:55:03 +0100
Message-Id: <20220207175503.425200-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220207175503.425200-1-krzysztof.kozlowski@canonical.com>
References: <20220207175503.425200-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mention the IRC channels used for discussions about ARM/ARM64
sub-architectures and Devicetree.  This documents purely existing state.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e219ba2c5ac9..95ecf8ac709b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1623,6 +1623,7 @@ M:	Olof Johansson <olof@lixom.net>
 M:	soc@kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+C:	irc://irc.libera.chat/armlinux
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 F:	arch/arm/boot/dts/Makefile
 F:	arch/arm64/boot/dts/Makefile
@@ -1630,6 +1631,7 @@ F:	arch/arm64/boot/dts/Makefile
 ARM SUB-ARCHITECTURES
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+C:	irc://irc.libera.chat/armlinux
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
 F:	arch/arm/mach-*/
 F:	arch/arm/plat-*/
@@ -14443,6 +14445,7 @@ M:	Rob Herring <robh+dt@kernel.org>
 M:	Frank Rowand <frowand.list@gmail.com>
 L:	devicetree@vger.kernel.org
 S:	Maintained
+C:	irc://irc.libera.chat/devicetree
 W:	http://www.devicetree.org/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
 F:	Documentation/ABI/testing/sysfs-firmware-ofw
@@ -14454,6 +14457,7 @@ OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 M:	Rob Herring <robh+dt@kernel.org>
 L:	devicetree@vger.kernel.org
 S:	Maintained
+C:	irc://irc.libera.chat/devicetree
 Q:	http://patchwork.ozlabs.org/project/devicetree-bindings/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
 F:	Documentation/devicetree/
-- 
2.32.0

