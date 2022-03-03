Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B09F84CC729
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 21:40:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235345AbiCCUkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 15:40:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234387AbiCCUkv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 15:40:51 -0500
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D6677A86
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 12:40:05 -0800 (PST)
Received: by mail-oo1-xc31.google.com with SMTP id n5-20020a4a9545000000b0031d45a442feso7136634ooi.3
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 12:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r7cb4wXwgAb+HademO8oitaaEcIq6IRXHXT1fI/1BDs=;
        b=gx1YzsrIcVQpZhgmu1u3ehdKVFuafwrSFuPkP9dZ9Gme+3U5lcti6WXKiGeP53Lh6x
         CycySfHStLNH+Fw9v/qDd+Mabet6ngRTWAOH8RwRe1TRqT3i45wGuNq53PkGJxFxMNsQ
         g17gPj6a6Z0bjSoHiJ3nvjTsIok+HNMFZAAsjWlFLNeXmOq7kQR3OEXi4FlXJkFpCVEB
         7hWf0HxHhUdfO1i221aO8eLlA3T3TNDHPqdKCFMpiKyZpXiSb5kfj1zVB7UW9mBz/DO2
         G9nwbE4qpb2pdsayr7ajQEHgT8mJv7/vNegCp1L5GNp/9hjedednLmpA9gnSBedn8thR
         FvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r7cb4wXwgAb+HademO8oitaaEcIq6IRXHXT1fI/1BDs=;
        b=DY3dVzE1+d+toNgPqHxo8wPPrG1CokN+Vaxc+tU9POcg0eZTH1/4QXf6SodU/UWmH1
         8ojaC873sBmMMIolUylahdMYoe6SQPFY8tvFGhWsFDOPXEAKENYWK/Jno/jvjL1lsbro
         nmtYpD0M7R9uMVFDU8tuw/yzAaL7A4e666Iay7pctJFcS2yhTWaV1CofdJUqYiW0fZ74
         HsYm6kuUO4ciLzIF1zfUKyT3hZAs5Rav1dwbaV29lPTkjkdDU+VWc9uPCXYaHDQhB2bB
         BEc2M/UfPEdRrkZMQWjr2LH3P1feZccAqTUfH893zIzLPBtnmjvRPtQHG37ZMhXcOFh9
         aXzA==
X-Gm-Message-State: AOAM532BEpf7+k6pncpi7zACg8wfXV6d3eT1zXZ8Wo4W3xfBasM05FEW
        HbjyLN7nXOj/55gDJd2VNw49eKkTxJs=
X-Google-Smtp-Source: ABdhPJweX7avKdv7TQpX8JULbRneigWpI354El1e66GcBIIZ74H4uex6gYBf6JBwkUhKrhKV+Eysdw==
X-Received: by 2002:a4a:db64:0:b0:2ea:37f4:d798 with SMTP id o4-20020a4adb64000000b002ea37f4d798mr19461474ood.23.1646340004240;
        Thu, 03 Mar 2022 12:40:04 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 12:40:03 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4 v5] dts: rockchip: Update regulator name for PX3
Date:   Thu,  3 Mar 2022 14:39:57 -0600
Message-Id: <20220303203958.4904-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The regulator name of SWITCH_REG1 does not match any other board
with a rk818 PMIC, nor does it correspond to a regulator in the
rk808-regulator driver. Changing name to SWITCH_REG which is
consistent with other boards and is in the driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/rk3188-px3-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
index 39c60426c9c9..fc478ac4e781 100644
--- a/arch/arm/boot/dts/rk3188-px3-evb.dts
+++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
@@ -212,7 +212,7 @@ wl_18: LDO_REG8 {
 				regulator-name = "wl_18";
 			};
 
-			lcd_33: SWITCH_REG1 {
+			lcd_33: SWITCH_REG {
 				regulator-name = "lcd_33";
 			};
 		};
-- 
2.25.1

