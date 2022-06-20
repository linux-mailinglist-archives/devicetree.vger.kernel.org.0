Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1991552239
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 18:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239578AbiFTQ1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 12:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241044AbiFTQZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 12:25:27 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46FA21AF03
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:25:25 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id w20so18051294lfa.11
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=z6IG7iDBYEWEIDyzAV2E3paapBXfICc0LLMhOvCSlcU=;
        b=VRq/Z5ys7q4JNZX+amks9AomyDFhvNIfn6dMqEl6My09wXSqd7WVRQGYW6CwFcDP9y
         5ySUJhKiXSG9/mHAH6NKGvDp1tbeLGdQVwegPMJfMbev0/u6mGBYqA9EX3N/u4hoF1Ey
         kTOkOFni6N6Ds/kONDaQlhGWcW813uG8GBPpkuh/BrFPzBtaughtTGQHC5uKeBUaAYHj
         gUvJpcvh/buBss7u5JkWoww/kxEJB9QzJDs/0JsKSEEPW/6u/ZNSj8yMfo8Pdek2YOYE
         2fvQTEplN5DeCCAnSh66r/wbb6tYDr4Yy2usYTPvaY2bgAByZs9NSBldtyBJuVZeejhc
         XgnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=z6IG7iDBYEWEIDyzAV2E3paapBXfICc0LLMhOvCSlcU=;
        b=DMdEmVcjmkKnOUsTzKKZSs06cVcJwiULGli5o/qF7vMK8ulMwONj/T5vtVr89XeI8q
         wUp0DJW0M/Sz9JeMZ0F74Y4l6Qm3DOIuNmZzMwSg8cP3LPPHops23qjSTe3/dVj06crx
         eJrsIAGQU7jREPofDuReFE2+kNjPIwu0hEj+A3zW6gEPTZyOKHEwRvuMy5BOkvfhETT+
         WZuGvHc6wsv/zhaYd7nJghtwGJUCisjSRbXei9oCwxGxME0qZ+CeVn811MRKjqYF/Gxy
         yCTGwb2c+KBs9CoWeqYr/57WWITrB2bWgsE8yera8z65Rc7SyW1Ypos6ssLYZPjylxUC
         lWlg==
X-Gm-Message-State: AJIora865DEi7m567VyCTYA+gtq/CJmN3gvFsBlSmL9D/g20jE2oR60A
        yhsNzZ8sOHbUIVZPKOv9gAQNDg==
X-Google-Smtp-Source: AGRyM1v+2XFtjZxyC3uxBTsqXyxyHmRBuOXlXfXu2NQFnmnp3JAe1U6G7qBBr4EbFYDcZPZDoFxPhA==
X-Received: by 2002:a05:6512:1385:b0:47f:781d:abc9 with SMTP id p5-20020a056512138500b0047f781dabc9mr1319050lfa.687.1655742323609;
        Mon, 20 Jun 2022 09:25:23 -0700 (PDT)
Received: from vkh-ThinkPad-T490 ([91.192.183.26])
        by smtp.gmail.com with ESMTPSA id v7-20020ac25b07000000b0047f6e91d4fesm552264lfn.141.2022.06.20.09.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:25:23 -0700 (PDT)
Date:   Mon, 20 Jun 2022 19:25:21 +0300
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org, vkh@melexis.com, ays@melexis.com,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hyun.kwon@xilinx.com,
        laurent.pinchart@ideasonboard.com, michal.simek@xilinx.com,
        kieran.bingham+renesas@ideasonboard.com, devicetree@vger.kernel.org
Subject: [PATCH 3/6] media: v4l: ctrls: Add user control base for mlx7502x
Message-ID: <20220620162521.GA14017@vkh-ThinkPad-T490>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Volodymyr Kharuk <vkh@melexis.com>
To: linux-media@vger.kernel.org
Cc: Volodymyr Kharuk <vkh@melexis.com>,
	Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Hyun Kwon <hyun.kwon@xilinx.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/6] media: v4l: ctrls: Add user control base for mlx7502x
Date: Mon, 20 Jun 2022 19:24:34 +0300
Message-Id: <a8fc4190469b459c339556c0c37fdf581204dcbd.1655738299.git.vkh@melexis.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1655738299.git.vkh@melexis.com>
References: <cover.1655738299.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

