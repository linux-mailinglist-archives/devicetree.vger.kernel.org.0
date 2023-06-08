Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 254187283CE
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 17:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236231AbjFHPgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 11:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236656AbjFHPge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 11:36:34 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47A91734
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 08:36:32 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5149c76f4dbso1370715a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6s3wa98xuttqqYVIvD6ZfAcqrdXq3+Zq5PSzvf7Ns8=;
        b=msC6U5XxgDqJIbGIfXHXeTQOw5s97k58WU1yf2C+DhhEoRVSyWOXxYHYRvMZm8OZa1
         UxSuV9Lyd+ul20fZ5wHM4DxGNXs/TIsTN4YDc+Z3Abk75aJoPdg4ruvd81qqh2ifVMdS
         1hlA8ozjUPXT0MrySycRgvBEGrBdoE6lguXNvzUy5OF8tH658sF8c3ro2d4DDPfNAqzb
         lv+UXgLZ8Xq2rnvHgjY3nwF+HevkILaHDdDdUr9wu0IcEAJ5BsuVEI4QUqudQi5B6k/E
         ecH8DXsXD8oO9C702X8BfXCWdtcqMy1G90lkrMz+/ISRz8XOoAO3DoPmMg3p0gaR+zn+
         BtJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A6s3wa98xuttqqYVIvD6ZfAcqrdXq3+Zq5PSzvf7Ns8=;
        b=hcmXwlC4GVcOAB3TCeNkUddvuMH0lluvcmziNvH2mH5tUFFRTI6hj9OO6UoBJMcLyb
         LW1Z+ng8+fFSMyxPfM/xgFuOT29r+UueMzrbiXh5H5mgzF7jo6q4GBUkdiLNBEJ3doBu
         TPJKNl0vHfs2XHbuaHQItFqVz+dCy1dEnAR/23o/tMUBv3fEnNCxfZQQ73+ZqeW2qw53
         D2knJu5hbM4mSNzeS/ebUkfU78QpjIeg3okxs9dGrh7Lvfy2dw5ja3ZuZxyqXfFjkkwI
         NDr93NrGxm4ihUzNGMuegMpjbanDDaZGSsHFMgdS02UpuCpT/dXa7ipZKMpJl/gdPWUE
         CF2A==
X-Gm-Message-State: AC+VfDw5Po2MTzQuUpDhbYh1wvAM3u8sX4iuujVsvJnCx3SQ8vJFgBHM
        Lb3KJLIev89evGN6d7db2wo=
X-Google-Smtp-Source: ACHHUZ4dOncTXyCzzNDb5pQJutCwUirYRXk9yYvn+0KTo4hJwNe03MylMIYvgqQ0Q+BqGho+AAm81w==
X-Received: by 2002:a17:907:940d:b0:974:c32c:b484 with SMTP id dk13-20020a170907940d00b00974c32cb484mr70228ejc.72.1686238590895;
        Thu, 08 Jun 2023 08:36:30 -0700 (PDT)
Received: from shift.daheim (pd9e29cc7.dip0.t-ipconnect.de. [217.226.156.199])
        by smtp.gmail.com with ESMTPSA id t4-20020a17090616c400b00977d7ccd9fdsm848136ejd.95.2023.06.08.08.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 08:36:30 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q7Hgb-004atm-2A;
        Thu, 08 Jun 2023 17:36:29 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/3] ARM: dts: BCM5301X: MR32: remove partition index numbers
Date:   Thu,  8 Jun 2023 17:36:28 +0200
Message-Id: <627f57d568030a56499361790524b4d4f3381619.1686238550.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <2c4d00dd40124c2ddc0b139cbce7531b108f9052.1686238550.git.chunkeey@gmail.com>
References: <2c4d00dd40124c2ddc0b139cbce7531b108f9052.1686238550.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

removes the partition indexes in the node names under.
This brings the device tree source in line with others.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
v1 -> v2:
	- add tags
	- separate patch (can be squashed if wanted)
	- rebased on top of stblinux devicetree/next
---
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index 16c650595cb9..e61f77a10e49 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -138,31 +138,31 @@ partitions {
 		#address-cells = <0x1>;
 		#size-cells = <0x1>;
 
-		partition0@0 {
+		partition@0 {
 			label = "u-boot";
 			reg = <0x0 0x100000>;
 			read-only;
 		};
 
-		partition1@100000 {
+		partition@100000 {
 			label = "bootkernel1";
 			reg = <0x100000 0x300000>;
 			read-only;
 		};
 
-		partition2@400000 {
+		partition@400000 {
 			label = "nvram";
 			reg = <0x400000 0x100000>;
 			read-only;
 		};
 
-		partition3@500000 {
+		partition@500000 {
 			label = "bootkernel2";
 			reg = <0x500000 0x300000>;
 			read-only;
 		};
 
-		partition4@800000 {
+		partition@800000 {
 			label = "ubi";
 			reg = <0x800000 0x7780000>;
 		};
-- 
2.40.1

