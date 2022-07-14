Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F02805746D7
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 10:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235645AbiGNIfD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 04:35:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235545AbiGNIfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 04:35:01 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 922173C8EA
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:35:00 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id v14so1563655wra.5
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HIfVkfWDWEihtJOSMcOP3bxYCtkKaDBe3n5wTHFJ/g8=;
        b=r303vIAhOO24cg7W65OvThs26PX6Nn5/U2NEc7XcX9hkQJr76/eAchj6ugb2t4L63L
         2w5D4tzJbQs3l7c890pU+bkGASqz7EwUvmJ3Pv9hPs/Yhv6EPZqWFP1wKOFuFGyIQ+Zq
         cDzY2U6LpOOcJzeJsHDQtdwFTM1hY0obx/QiIE8BsOOzGjdhq+LHRbtgmeuYXIegTZ9I
         ZabiQG7Q1eUZs8eDEI0ibGatZTiKSRRFLlJarr0JJHEZOLk17D2qrUEEyH/8lRPS6aPn
         9Z/CErdZyEAtUY0dGsI8JypFWiRtuhqjXD61Kiw+J/DY4SUvEBaKp6EEP2waUAfkmVbD
         LXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HIfVkfWDWEihtJOSMcOP3bxYCtkKaDBe3n5wTHFJ/g8=;
        b=5MjLkPrZYNL4lWonf0RAuk1Kp4/TltQN3mOPMIcXJsk1bGAvQUUwRdieZkmB/pgKDf
         RnAGjz84rGrodE/xBjAAjzlHY0AqVMK+wL769peppMYCk6gc7TkTL48jnKc3vtRKutm4
         CcIIOH67AkHtXorb5lfWQwiipE3OMptFOTFPba0BOOpW5Ms6mEWubUfmMJGvf0JuZeKd
         wUn0/ZNJZh/Pfj2b+UNifQfTiwgeYcixVuK6RjRyrGSQDpsFkv5SjEPFwlqo+G8qM6zh
         N5fz8bFqKu2N/61R1qfgsop4Dnus1RTtoKiV5xWl0Z8/BpVh/yuEqEmyKEPM+lGVYw0z
         yGfw==
X-Gm-Message-State: AJIora9vQF+nsbjqx25ghmjWfPKOeYfaFQ6x+3wFKOF6gwAPReczKTGb
        78Ipwwp1uKp0RkssYz4VqP7TIQ==
X-Google-Smtp-Source: AGRyM1t2s6arbrxJoeBRWY8Kzvb9ENF8TacREy/uNg7ZYGfKwvIXxc8b0bPmKuD7ULZqNjQ+ixN5Gg==
X-Received: by 2002:a05:6000:1367:b0:21d:75cd:5ae8 with SMTP id q7-20020a056000136700b0021d75cd5ae8mr7204188wrz.282.1657787700128;
        Thu, 14 Jul 2022 01:35:00 -0700 (PDT)
Received: from melexis ([194.44.50.167])
        by smtp.gmail.com with ESMTPSA id f1-20020adff981000000b0021d6d74a0ecsm843890wrr.96.2022.07.14.01.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 01:34:59 -0700 (PDT)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org
Cc:     Volodymyr Kharuk <vkh@melexis.com>,
        Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/6] media: v4l: ctrls: Add user control base for mlx7502x
Date:   Thu, 14 Jul 2022 11:34:45 +0300
Message-Id: <756a637c14f95b9a52c4feb0a00b8f90c221e94c.1657786765.git.vkh@melexis.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657786765.git.vkh@melexis.com>
References: <cover.1657786765.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a control base for mlx7502x and reserve 16 controls.
ToF sensor requires a bunch of new user controls.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 include/uapi/linux/v4l2-controls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index dfff69ed88f7..8f68d5b53430 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -225,6 +225,12 @@ enum v4l2_colorfx {
  */
 #define V4L2_CID_USER_ISL7998X_BASE		(V4L2_CID_USER_BASE + 0x1180)
 
+/*
+ * The base for Melexis ToF 7502x driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_USER_MLX7502X_BASE		(V4L2_CID_USER_BASE + 0x1190)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
BR,
Volodymyr Kharuk

