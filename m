Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD53F7283CD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 17:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236697AbjFHPgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 11:36:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236231AbjFHPge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 11:36:34 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D63BC2D56
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 08:36:32 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-516af4a6d65so1432082a12.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tb5Z9KVl4YlspRilNgXoPuCCEY/EEHN4fo0pAmO52oc=;
        b=obmNGxoMYRMiywLCEh1yae7o7hUuddh3+ccL9k+B4pkeTwEb60UKzuYkmvAnukQAGe
         veVmizzOAVQiI5A2DSO5pto+gU7FRYlGI/l1ttJtJDvuQNu8aLnEcK7R+zZ8iG91oyC2
         bQCrB+d5JJ351BIgvvxXdmyrsE0ijD2qF5eQmkIKBAD3Mt2RQGTQlx+csTuOuFyc91t6
         gddbTTJBIoiUeKJs7piVCkzca826I3Z95XiXTjK/uVK2YMRJHxWiHq1M51N6BuaujQ5L
         lHqG6yTHcCETf/jGT19XIyXe3zsddGou1foYJkxq40RXhtZNgDOy0BPkF+cl7V6a8r7v
         FXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tb5Z9KVl4YlspRilNgXoPuCCEY/EEHN4fo0pAmO52oc=;
        b=ewZeOiS90ch5AhWnyHLYsZbq+ZZkx6DH6aTDS0103B05DYO46fPxZv3nRiLdW1aN5U
         Tuc4aQoEaSeNETGkiOAow/u3fy2E2Ee7Go3cQ+SIQWFIAzhvzRj1aTNRNfwgI0ynAtqN
         Wr21hDlmmXVC3c/Ijtx+EGXDzpsH9h7z/fiCfOTWC2Kpp4Z0urV1dgrCWLrP+nmYQPi8
         IpKmq4f8Ts9/sXm2dLLDsB4QFgpMNBDIIs/wAfZbgKyP0O0Xrq1cpno3AhfP4oZElGBg
         +Ez1ke+C2uigHXXXvsGKU/lxzwpoGIIjscZwNIVd4reI7AmwhbrMQGEImv0+baKJNcCS
         RpAQ==
X-Gm-Message-State: AC+VfDyPQZTcX80Qm/7kQQLhfymYro92CSllTwlEC0HQU3H2EBWt7Wmm
        Uv5A0Mm9idSRAL3iDgr2WaU=
X-Google-Smtp-Source: ACHHUZ6Up2+ocYkPIdmZG50LrTDTUVKRcFrCaUVjnvIVswOzjGnlN6j0J7LTbP7SdAXb9IjHY2c8NA==
X-Received: by 2002:a17:907:7e9f:b0:978:73fb:1771 with SMTP id qb31-20020a1709077e9f00b0097873fb1771mr84844ejc.32.1686238590846;
        Thu, 08 Jun 2023 08:36:30 -0700 (PDT)
Received: from shift.daheim (pd9e29cc7.dip0.t-ipconnect.de. [217.226.156.199])
        by smtp.gmail.com with ESMTPSA id v12-20020a170906338c00b009571293d6acsm837893eja.59.2023.06.08.08.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 08:36:30 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q7Hgb-004atp-2C;
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
Subject: [PATCH v2 3/3] ARM: dts: BCM5301X: fix duplex-full => full-duplex
Date:   Thu,  8 Jun 2023 17:36:29 +0200
Message-Id: <50522f45566951a9eabd22820647924cc6b4a264.1686238550.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <627f57d568030a56499361790524b4d4f3381619.1686238550.git.chunkeey@gmail.com>
References: <2c4d00dd40124c2ddc0b139cbce7531b108f9052.1686238550.git.chunkeey@gmail.com> <627f57d568030a56499361790524b4d4f3381619.1686238550.git.chunkeey@gmail.com>
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

this typo was found by the dtbs_check
| ports:port@5:fixed-link: 'oneOf' conditional failed,
|  {'speed': [[1000]], 'duplex-full': True} is not of type 'array'
| 'duplex-full' does not match any of the regexes: 'pinctrl-[0-]..."

this should have been full-duplex;

Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
v1 -> v2:
	- added tags
	- removed hunks that are fixed by previous patches
	- rebased on top of stblinux devicetree/next
---
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 2 +-
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index 83d1b6e0b0d5..f79378bea7cd 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -124,7 +124,7 @@ port@5 {
 
 			fixed-link {
 				speed = <1000>;
-				duplex-full;
+				full-duplex;
 			};
 		};
 	};
diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index e61f77a10e49..eacaba398cc6 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -185,7 +185,7 @@ port@5 {
 
 			fixed-link {
 				speed = <1000>;
-				duplex-full;
+				full-duplex;
 			};
 		};
 	};
-- 
2.40.1

