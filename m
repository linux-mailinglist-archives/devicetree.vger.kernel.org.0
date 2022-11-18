Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 164D062F672
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 14:41:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241254AbiKRNlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 08:41:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235221AbiKRNlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 08:41:20 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADF9DFFD
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:41:19 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so3058967otl.10
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a8Ki/ScBkzTDQYA9RR1oC+0keIJYmqZCmxNX7c97+WA=;
        b=hYwevDUAMXbdQB35sxAwhzB0DGL9y7DdDyniYY3C0+Xs3cFY0NNLQDYlcAYYKAB2b3
         0kpFtAHC80ypq7n9HzoNcvuc/nx3iqnzqHhG+HrEz4mfBgaccsP0lnW0Jj1VvydnCdbV
         YFtxnJ83r3IOcVrChrMFw3IgdvtnBc+QFHGq4FVuL5bgEpWBBPneifA2mcQKULqef+FW
         0qw+a8tpB1Sdjwdj8zvRjRqAB3jH8r8Cl7XzwP6qUAXJwnwUoyoTx4Vt8X7NwR7v4cAl
         hYHo1lfrtnEuaTvfVjmcPcbgoxn2DfZarEZfC0QZZm5B9hBjcj1c0RZc6Ya+fnbCj7we
         kIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8Ki/ScBkzTDQYA9RR1oC+0keIJYmqZCmxNX7c97+WA=;
        b=0UcosBQU3cuIte8sJjExaTUFPoiwZdNLikniQ2YCosnhkyvvQsfpPL6XXkCARYSg2v
         JE58rXIJBgOu/P8WQKevyXY3CXGkeWGRLqR9qdH5hgcM8ckR8gkXSH7AoND+dtQPSJM3
         Z5A6SXTLpWIkpV3RwlJCfPx4/0uZD1aa7vKosJExA7/f1fjbqzOrjcCF2s2bSSyEb48R
         v845kXtZACYr6sAV4FYhz7bn+I476nDDSdldVELJZ2MRdG+5fyWy0dqnyyCs96D0I+xj
         VK2Ybru/xJUeeLgujmQAXTIxNBKLP2p+4ocwdiC6ocmH0lHtMre3zWBnQnRkTnybD521
         Esew==
X-Gm-Message-State: ANoB5pmz2GrT2BmUMJPS6c/P4QzzDXATyokghDlwS9EY69wyb9+Bm+6S
        k0Md3YrungUN4pBBS1ZVvUo=
X-Google-Smtp-Source: AA0mqf5g6WFxxPkMnuINXBlIUYG9NkufpNoosA+LFqbk0Z78Y79C5Zk1AIAv0nBQUHFennH1dDtIuQ==
X-Received: by 2002:a05:6830:2a06:b0:66c:61c8:ceeb with SMTP id y6-20020a0568302a0600b0066c61c8ceebmr3957717otu.12.1668778878638;
        Fri, 18 Nov 2022 05:41:18 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5e22:964c:bd31:bca4])
        by smtp.gmail.com with ESMTPSA id 5-20020a544185000000b0035437f4deefsm1404263oiy.26.2022.11.18.05.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 05:41:18 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6q-prti6q: Fix ref/tcxo-clock-frequency properties
Date:   Fri, 18 Nov 2022 10:41:02 -0300
Message-Id: <20221118134102.1767559-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

make dtbs_check gives the following errors:

ref-clock-frequency: size (9) error for type uint32
tcxo-clock-frequency: size (9) error for type uint32

Fix it by passing the frequencies inside < > as documented in
Documentation/devicetree/bindings/net/wireless/ti,wlcore.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6q-prti6q.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-prti6q.dts b/arch/arm/boot/dts/imx6q-prti6q.dts
index b4605edfd2ab..d8fa83effd63 100644
--- a/arch/arm/boot/dts/imx6q-prti6q.dts
+++ b/arch/arm/boot/dts/imx6q-prti6q.dts
@@ -364,8 +364,8 @@ wifi {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_wifi>;
 		interrupts-extended = <&gpio1 30 IRQ_TYPE_LEVEL_HIGH>;
-		ref-clock-frequency = "38400000";
-		tcxo-clock-frequency = "19200000";
+		ref-clock-frequency = <38400000>;
+		tcxo-clock-frequency = <19200000>;
 	};
 };
 
-- 
2.25.1

