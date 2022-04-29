Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91E635157BA
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381177AbiD2WFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239494AbiD2WF0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:26 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25956DC5A0
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:02:05 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id i1so2122622plg.7
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i3slZG/YREGv9792NS06KvJhabhMlI2Rp7qXb7SE0gE=;
        b=oWlj2Zp5aCOqdQDVGlnxiaPsSqVK6peltl05TwAq6Scqs5XuFTQWo0M5bUfJ95ioak
         JV1qJn39WJ/lHWJSTGhckD0ee3gqD10+yVac792LxLN22GXDPmSUtESuQYXFiU2BOXDF
         m18K5oZTGc4YT1g0QCzxSBFD9r0wgOb+W4T+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i3slZG/YREGv9792NS06KvJhabhMlI2Rp7qXb7SE0gE=;
        b=r/T/FZcURmQZcABwzSKpWzvgFH/u8yqZWqhEHFpYTDqAMHlzGbc9q2qmR9fqsE6NB/
         YNq8KsrkPZVo/g74MKfLGpi+uwzfkXLiLrxhk1rI2owKVUsNAjlQ++5foIL7Kq3pPWjM
         5OzRklt834JzkR40Bm54Ctma1kNsI6AQN6qjHOm88TMYFUi6qODzmGs1hek7IxdGx+R0
         6COmUADBMIQuqQZGjGlI0YjseDR1pNHeJh0kK/ktI0dxIrS6kAHJ6Oykgw9pqnvjorud
         uSGW3aGasE3YkQKRthuwsaJE+Mu8sp7+EwXMQyqSaGrWHqDAO96U1DVW3gtvNDbUAk6O
         NVbg==
X-Gm-Message-State: AOAM53306FAvkcy8Rv5SE4GxI+sg7qIqBn5tIhDYyZ36fc1B/a3NvH/1
        GutQonoNJrOdaI7FEmf+Mh2DJA==
X-Google-Smtp-Source: ABdhPJwS9kzvXGCjSfwCC3eoczLstXT0CH0kXt71Tu4EbCRr03Tk0xL4L0/ZwhmEDpnFW4waFzQDMQ==
X-Received: by 2002:a17:902:f608:b0:158:29e6:c88 with SMTP id n8-20020a170902f60800b0015829e60c88mr1316424plg.174.1651269724588;
        Fri, 29 Apr 2022 15:02:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id o41-20020a17090a0a2c00b001d75aabe050sm11131597pjo.34.2022.04.29.15.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:02:04 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v5 10/10] iio: sx9360: Add pre-charge resistor setting
Date:   Fri, 29 Apr 2022 15:01:44 -0700
Message-Id: <20220429220144.1476049-11-gwendal@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220429220144.1476049-1-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ability to set the precharge internal resistance from the device
tree.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
Changes since v4:
- Added missing tests when property is not found.

Changes since v3:
- Added Review tags.

Changes since v2:
- Change kOhms into ohms.

Changes since v1:
- Suffix field with kOhms unit.

 drivers/iio/proximity/sx9360.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/sx9360.c b/drivers/iio/proximity/sx9360.c
index 3ebb30c8a4f61..d9a12e6be6ca6 100644
--- a/drivers/iio/proximity/sx9360.c
+++ b/drivers/iio/proximity/sx9360.c
@@ -51,6 +51,8 @@
 #define SX9360_REG_GNRL_REG_2_FREQ(_r)  (SX9360_FOSC_HZ / ((_r) * 8192))
 
 #define SX9360_REG_AFE_CTRL1		0x21
+#define SX9360_REG_AFE_CTRL1_RESFILTIN_MASK GENMASK(3, 0)
+#define SX9360_REG_AFE_CTRL1_RESFILTIN_0OHMS 0
 #define SX9360_REG_AFE_PARAM0_PHR	0x22
 #define SX9360_REG_AFE_PARAM1_PHR	0x23
 #define SX9360_REG_AFE_PARAM0_PHM	0x24
@@ -671,7 +673,7 @@ static const struct sx_common_reg_default sx9360_default_regs[] = {
 	{ SX9360_REG_GNRL_CTRL1, 0x00 },
 	{ SX9360_REG_GNRL_CTRL2, SX9360_REG_GNRL_CTRL2_PERIOD_102MS },
 
-	{ SX9360_REG_AFE_CTRL1, 0x00 },
+	{ SX9360_REG_AFE_CTRL1, SX9360_REG_AFE_CTRL1_RESFILTIN_0OHMS },
 	{ SX9360_REG_AFE_PARAM0_PHR, SX9360_REG_AFE_PARAM0_RSVD |
 		SX9360_REG_AFE_PARAM0_RESOLUTION_128 },
 	{ SX9360_REG_AFE_PARAM1_PHR, SX9360_REG_AFE_PARAM1_AGAIN_PHM_6PF |
@@ -722,6 +724,17 @@ sx9360_get_default_reg(struct device *dev, int idx,
 
 	memcpy(reg_def, &sx9360_default_regs[idx], sizeof(*reg_def));
 	switch (reg_def->reg) {
+	case SX9360_REG_AFE_CTRL1:
+		ret = device_property_read_u32(dev,
+				"semtech,input-precharge-resistor-ohms",
+				&raw);
+		if (ret)
+			break;
+
+		reg_def->def &= ~SX9360_REG_AFE_CTRL1_RESFILTIN_MASK;
+		reg_def->def |= FIELD_PREP(SX9360_REG_AFE_CTRL1_RESFILTIN_MASK,
+					   raw / 2000);
+		break;
 	case SX9360_REG_AFE_PARAM0_PHR:
 	case SX9360_REG_AFE_PARAM0_PHM:
 		ret = device_property_read_u32(dev, "semtech,resolution", &raw);
-- 
2.36.0.464.gb9c8b46e94-goog

