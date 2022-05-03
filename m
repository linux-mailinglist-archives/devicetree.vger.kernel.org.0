Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08783517C94
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 06:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231162AbiECE0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 00:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231163AbiECE0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 00:26:17 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 082B53D4AB
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 21:22:47 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id g3so13161265pgg.3
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 21:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tux7WYlsKE3Hq3fiB6Pez4Xrgas8WZHOglEDZjg0C84=;
        b=a8eWepEHVXn0N7ve8g/bgltGF8cABUVPILjuiNhkT/nVxbeEkKEUcmkEQw3VfRSneX
         UlhDPlAnUfJ8cKB1FsfBPVEstleAdKOoEJGJBc3OuB7gsdevY0kvPK7b74f4HwwRe3c7
         MZspjnhDFicVVMjNhqn0/RnSeXJsHbYQ2p4oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tux7WYlsKE3Hq3fiB6Pez4Xrgas8WZHOglEDZjg0C84=;
        b=alcNNS+2mReU46OOBa58Gvj1jBNWIs7HyAE85jBYxCIntoPe6Ch9Eiv0htLagB9m4h
         K1mYoWc2G6zp2ht1SaGjSfHEGS0pAFR9OvSkMAhabAWV873RUJkqH909kLvEpiVKuLHt
         B2DcaPBnszosK8zRE/AuS8ne45XOmM1lvf9Bx2AEWQOeUeAkkFE0/ueYqeCy/uid6Ac7
         4X0DSzTLgoRcsbkaqqku1GJJh3El509n+z03fkeNsYiaWvddwAREBgKXDH/Omga9n1R7
         pDF/8VytVkzCrKSsz5VJT56ZO8Z7DrXk2CP7UbfESn5HeI31S+OgswvLv0+VUoevCOvO
         laKg==
X-Gm-Message-State: AOAM532Z1bu96rrx0BhETGRNbey6sGyN8amwE5H/a5JpVOnFy20+sHkB
        NaZOYpDfp9fp4ZTjTBMC5jqw8w==
X-Google-Smtp-Source: ABdhPJxrHlY8qyqCB+kcBtapjPpKOfc0Zgh79O+cfNMkFARQfd5ekl97fu/c4glge5mZaQ5Pu2DqOg==
X-Received: by 2002:a62:a211:0:b0:50d:cdb2:87f4 with SMTP id m17-20020a62a211000000b0050dcdb287f4mr13382836pff.63.1651551766498;
        Mon, 02 May 2022 21:22:46 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:15e:c760:9a04:7fbe])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902e34b00b0015e8d4eb24asm5390223plc.148.2022.05.02.21.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 21:22:46 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Subject: [PATCH v3 2/2] Input: cros-ec-keyb - skip keyboard registration w/o cros-ec-keyb compatible
Date:   Mon,  2 May 2022 21:22:41 -0700
Message-Id: <20220503042242.3597561-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220503042242.3597561-1-swboyd@chromium.org>
References: <20220503042242.3597561-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In commit 4352e23a7ff2 ("Input: cros-ec-keyb - only register keyboard if
rows/columns exist") we skipped registration of the keyboard if the
row/columns property didn't exist, but that has a slight problem for
existing DTBs. The DTBs have the rows/columns properties, so removing
the properties to indicate only switches exist makes this keyboard
driver fail to probe, resulting in broken power and volume buttons. Ease
the migration of existing DTBs by skipping keyboard registration if the
google,cros-ec-keyb-switches compatible exists.

The end result is that new DTBs can either choose to remove the matrix
keymap properties or leave them in place and add this new compatible
indicating the matrix keyboard properties should be ignored. Existing
DTBs will continue to work, but they will keep registering the keyboard
that does nothing. To fix that problem we can add this extra compatible
to existing devicetrees and the keyboard will stop being registered.
Finally, if google,cros-ec-keyb is missing then this driver won't even
attempt to register the matrix keyboard. Of course, this driver won't
probe until this patch is applied in that scenario, but that's OK. This
last case is likely only going to be used by new devicetrees created
after this commit.

Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: "Joseph S. Barrera III" <joebar@chromium.org>
Fixes: 4352e23a7ff2 ("Input: cros-ec-keyb - only register keyboard if rows/columns exist")
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/input/keyboard/cros_ec_keyb.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
index eef909e52e23..04c550aaf897 100644
--- a/drivers/input/keyboard/cros_ec_keyb.c
+++ b/drivers/input/keyboard/cros_ec_keyb.c
@@ -536,14 +536,11 @@ static int cros_ec_keyb_register_matrix(struct cros_ec_keyb *ckdev)
 	u32 *physmap;
 	u32 key_pos;
 	unsigned int row, col, scancode, n_physmap;
+	bool register_keyboard;
 
-	/*
-	 * No rows and columns? There isn't a matrix but maybe there are
-	 * switches to register in cros_ec_keyb_register_bs() because
-	 * this is a detachable device.
-	 */
-	if (!device_property_present(dev, "keypad,num-rows") &&
-	    !device_property_present(dev, "keypad,num-cols"))
+	/* Skip matrix registration if no keyboard */
+	register_keyboard = device_get_match_data(dev);
+	if (!register_keyboard)
 		return 0;
 
 	err = matrix_keypad_parse_properties(dev, &ckdev->rows, &ckdev->cols);
@@ -718,8 +715,13 @@ static int cros_ec_keyb_remove(struct platform_device *pdev)
 
 #ifdef CONFIG_OF
 static const struct of_device_id cros_ec_keyb_of_match[] = {
-	{ .compatible = "google,cros-ec-keyb" },
-	{},
+	{
+		/* Must be first */
+		.compatible = "google,cros-ec-keyb",
+		.data = (void *)true
+	},
+	{ .compatible = "google,cros-ec-keyb-switches" },
+	{}
 };
 MODULE_DEVICE_TABLE(of, cros_ec_keyb_of_match);
 #endif
-- 
https://chromeos.dev

