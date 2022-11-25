Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0558638B48
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbiKYNer (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbiKYNep (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:45 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B87C827FE4
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:36 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id kt23so10376060ejc.7
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdFZcEBe9YRS2Z9oaoC+3OI+JekgRZfkb0CebWI8/HI=;
        b=FKRJqf0sU13cuBdV8vz/vzuEjtwPfIsDIoBET+U8vhUqqYm2dxLeZ16F6JYD5yzaGt
         7O+o0SGZZs1LN9ZYaEes1xy2Y+bIinHEyco1kdAyKKj3vyVlvf8hP68+m4pk3yvn+qro
         0y8iUMRTavyJzZiMPRzvNbQLE/WexmL9H4xcLRvZMuBg3+gQfoRuW0vUmJTbPzFWcW0l
         A64yElKG4D3tMXgRi5OJ4nogI6novnNkVCu7FLW2cbbK08+YlgpXUyjG00EeGedxXaIb
         RYFS0Axt2Zxc7XBAnn0qbrG+Xz/R5zs6fPaiebYs8EU4zaOu8sPk/3mBT+0xQzkmg7wh
         NEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdFZcEBe9YRS2Z9oaoC+3OI+JekgRZfkb0CebWI8/HI=;
        b=FqblX3Yrb88nLuoifGefTYBONM5PgzHhtoL3AYLt5aBoYKBmGgonGvaUBtCD8Kck7v
         +rIncRMpglTU8GgZOJVp02oTiNr2m4FsGQfRePmKYlGATjpRJ/NqT3LcPkksRpJkUJDt
         WaV5WIjPdjEfvGYfIkQLMxSrvJKnyUd1aVTpi0NcaZKZ97pJkREsHzB2/Axed8O7DssA
         9HLg6tsCWpYsjO9q8joBrM2CkVJ60wTTLx9pNVVWpyAg51dnBqcOgfozhrg62fSrh/wE
         jQbFMz5Xhi8VA4X/nmUeanKkzz/AeO41iRSXYXwhbb7584frcwa3YCpD34IuXaCZo/Ze
         AUMg==
X-Gm-Message-State: ANoB5pls2AWParoI36qVul7GoiKIU5gYcYvIxBwGjD41x9tQqSp2IESG
        YmBewI7sXN0tbcz+6DZ0lZaLCg==
X-Google-Smtp-Source: AA0mqf6QbXKAGVB6zvIc4MxnN37mkgQqWJwVnR7U4Z6hD60SuyFrKEWTGcUGZ025B7eOyZD6bqZzWg==
X-Received: by 2002:a17:907:72d2:b0:7bc:15fc:5398 with SMTP id du18-20020a17090772d200b007bc15fc5398mr4354382ejc.438.1669383275293;
        Fri, 25 Nov 2022 05:34:35 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id pk3-20020a170906d7a300b0078d38cda2b1sm1562314ejb.202.2022.11.25.05.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:34 -0800 (PST)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     <linux-media@vger.kernel.org>
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
        Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v3 5/8] media: v4l: ctrls: Add user control base for mlx7502x
Date:   Fri, 25 Nov 2022 15:34:08 +0200
Message-Id: <33c064149a6194e2c48cd09d9dbc913e070cb32f.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669381013.git.vkh@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a control base for mlx7502x and reserve 16 controls.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 include/uapi/linux/v4l2-controls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index a9ecfaa4252c..086069529842 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -232,6 +232,12 @@ enum v4l2_colorfx {
  */
 #define V4L2_CID_USER_DW100_BASE		(V4L2_CID_USER_BASE + 0x1190)
 
+/*
+ * The base for Melexis ToF 7502x driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_USER_MLX7502X_BASE		(V4L2_CID_USER_BASE + 0x11a0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
BR,
Volodymyr Kharuk

