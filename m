Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC865638B46
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbiKYNep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229748AbiKYNee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:34 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A58427907
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:33 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id ha10so10425703ejb.3
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ry6vpBY5sEcwGbAi4otGsLxf2CvPTMM0zzHiIX66/tg=;
        b=lNjZhZsVw9SepEAJAvetf9jj5ohdUcEXTXCVNVMiWkYMjXQk4uqQNxN5LjmYOeCaDI
         MaYi2Ot+VyZoyXImKm6V4cQAdpbN1gqTBYM7EVr6BiUKMhfqvvZuvVqNKgTfiuRhm6oi
         tyJffXGKPo3k/LUmKM30YiWbFONvoDSbE8N1nmTOns8uVe0Gfp5jWvzwuJvdVI0kLAwE
         bDRA4mCEAYsaI27FOKH3rKSbctfEY+A9+bS+xhHAM9dXe/kcN+JTDXOxcvoABRGGZMgc
         ++LZZw7cUGXH8UHlRmEXeKLpz4RKDAbUdzZCelmS2lkCvCywqmjim5AZzakZDh0a3Zc7
         GGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ry6vpBY5sEcwGbAi4otGsLxf2CvPTMM0zzHiIX66/tg=;
        b=FrPl4K/+k3OS7/Wy4XGWwn6V1Z1Pjkc5h5U7Essbg/tIRI3nEta+ZizYS9UD4Trnux
         0oIP9+lOALp5zNso7oH51n1V3mL9z9P4Ph0id/quNwqeT63lvForNkGBe2J1IBgxD995
         Wuc+xC0GzMk5lm2CUeFCwTjXql/ChDKlEzY8OFgjn6B7A33I6W6T82xZKuw9eO85BJ5Q
         OA7XrJJJB3tIy3QSLAzqplMVQn85vRj+b5WVFdOd9XwUXDjAIlpwPXefpCvI7NVsSfaS
         PBcfRMeFb4vko7JipETDvEaUCESudxlQNYIVQuCEAfYqpSi6+Z8sqQPbOr3D3qDiL00A
         tPWw==
X-Gm-Message-State: ANoB5pmsejWO2VFkGV57XMgZGeG5aNoUg/kIPId4PNh0i75GlzFHX/4U
        zQ47nJ5LccK+MhmrjiGYKmgyJg==
X-Google-Smtp-Source: AA0mqf6kRhk2EjjqrWhMFX3g0KVhqqNd7hVw4EI4r3WBaQWa/ea4cW9nHdFtbGOB9pQ4fWtI3sRraA==
X-Received: by 2002:a17:906:14c2:b0:78d:554f:fb16 with SMTP id y2-20020a17090614c200b0078d554ffb16mr32345835ejc.151.1669383271778;
        Fri, 25 Nov 2022 05:34:31 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id fe9-20020a1709072a4900b007ae0fde7a9asm1560886ejc.201.2022.11.25.05.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:31 -0800 (PST)
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
Subject: [PATCH v3 4/8] media: v4l: ctrls-api: Allow array update in __v4l2_ctrl_modify_range
Date:   Fri, 25 Nov 2022 15:34:07 +0200
Message-Id: <1758f7525f6c8c602f36eef5e07a97ddfb1b548f.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669381013.git.vkh@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For V4L2_CID_TOF_TINT, which is dynamic array, it is required to use
__v4l2_ctrl_modify_range.  So the idea is to use type_ops instead of u64
from union. It will allow to work with any type.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-api.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-api.c b/drivers/media/v4l2-core/v4l2-ctrls-api.c
index d0a3aa3806fb..09735644a2f1 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-api.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-api.c
@@ -942,8 +942,6 @@ int __v4l2_ctrl_modify_range(struct v4l2_ctrl *ctrl,
 	case V4L2_CTRL_TYPE_U8:
 	case V4L2_CTRL_TYPE_U16:
 	case V4L2_CTRL_TYPE_U32:
-		if (ctrl->is_array)
-			return -EINVAL;
 		ret = check_range(ctrl->type, min, max, step, def);
 		if (ret)
 			return ret;
@@ -960,17 +958,10 @@ int __v4l2_ctrl_modify_range(struct v4l2_ctrl *ctrl,
 		ctrl->default_value = def;
 	}
 	cur_to_new(ctrl);
-	if (validate_new(ctrl, ctrl->p_new)) {
-		if (ctrl->type == V4L2_CTRL_TYPE_INTEGER64)
-			*ctrl->p_new.p_s64 = def;
-		else
-			*ctrl->p_new.p_s32 = def;
-	}
+	if (validate_new(ctrl, ctrl->p_new))
+		ctrl->type_ops->init(ctrl, 0, ctrl->p_new);
 
-	if (ctrl->type == V4L2_CTRL_TYPE_INTEGER64)
-		value_changed = *ctrl->p_new.p_s64 != *ctrl->p_cur.p_s64;
-	else
-		value_changed = *ctrl->p_new.p_s32 != *ctrl->p_cur.p_s32;
+	value_changed = !ctrl->type_ops->equal(ctrl, ctrl->p_cur, ctrl->p_new);
 	if (value_changed)
 		ret = set_ctrl(NULL, ctrl, V4L2_EVENT_CTRL_CH_RANGE);
 	else if (range_changed)
-- 
BR,
Volodymyr Kharuk

