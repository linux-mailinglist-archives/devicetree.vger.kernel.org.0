Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E87FA640A35
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:07:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232364AbiLBQHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:07:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233412AbiLBQHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:07:52 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC1E12127C
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:07:48 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id o13so12630733ejm.1
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5AfNXqpB6DMNrychPSr6MWpW654YYiXw8vNhHpBK+Q=;
        b=RMdfeOtQsNQ+/8/Fq8Xc60mn4XySkz60hft9vF0461mpZ5ZLBKCtwZPyIKIRHVpmiV
         FKjJjxbREtLHZ+x+k7dxHWKjf7Z68DXCqXvnhPCNyS5at9D82repNSmNs/1xnh+oJDPu
         jeWy2x04BuoD4eHemkfocCYCffozpY4mGwSCU9ef2Ep8wocDs5gLLPiLhLhWB2BvdCQ5
         jVrJg3c6wgfiPXuQdCEJeDmE6vrHcvaSkefRjU0bTI/cGa7K45qVjjGIjusXe00LYYzm
         55GUQ/AuiwbP53G/i9BkEdDett4UDh31jamV3flfreQPGzOmyfJwZTt+gMPhRosRuSeo
         kWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/5AfNXqpB6DMNrychPSr6MWpW654YYiXw8vNhHpBK+Q=;
        b=g6vsMnkCrlZSmPNWpBTj8G3GN2lIgApWNcKzOE0SZPVKhdE+S8yNPExI3+xUDolWcx
         DbEPcH1HRV7h/wWORsW+iQh9uQwtFdjV9jQoUjU8XVIGrapJ7yJqCxbUHrG+Wx5ZA4FP
         /Or7J+otib5YuTY3JvvlmeUpaRPLVgPTtYPnpstyxK38KHztv+BGHy6jR1ytpahZr2yt
         ihO6owlHnvWzYzb2l8I4ELdVc9NpW7SY35qlTPZWUMzKgwjR/Vu0qcV/KeUJpKdaKSpS
         GJHltuYCqoGFun/N5VVgTY5zjIMoZBM3ryEiI32Qxa5ht2mad0KqLOA/HocfdIICLUgA
         woTA==
X-Gm-Message-State: ANoB5pkbLAzo6PNIf9htUhoWV+CQTmCfNglnPIJ5Z9lTSwWGlDL4HRiD
        gbEOU1yjHVsGukZd1Uh7BLHDUQ==
X-Google-Smtp-Source: AA0mqf6cGBoCWv+9d8yCdT9jT5/xQg78fZ4WsDqDyjFJG1FX5OXwlmLE/31F5enLIHeiWNlNotnM/g==
X-Received: by 2002:a17:906:a1a:b0:79e:9aea:7b60 with SMTP id w26-20020a1709060a1a00b0079e9aea7b60mr62150021ejf.444.1669997267339;
        Fri, 02 Dec 2022 08:07:47 -0800 (PST)
Received: from melexis ([91.192.183.26])
        by smtp.gmail.com with ESMTPSA id o26-20020a170906289a00b007415f8ffcbbsm3230644ejd.98.2022.12.02.08.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 08:07:46 -0800 (PST)
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
Subject: [PATCH v4 2/8] media: v4l: ctrls: Fill V4L2_CID_TOF_CLASS controls
Date:   Fri,  2 Dec 2022 18:07:32 +0200
Message-Id: <76aa4a3333da2a8cda9af1f25f41abebe292b9c2.1669978791.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669978791.git.vkh@melexis.com>
References: <cover.1669978791.git.vkh@melexis.com>
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

Define names, flags and types of TOF controls. *dims* is driver specific.
It also means, that it is not possible to use new_std for arrays.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-defs.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
index 564fedee2c88..3c0ab290589a 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
@@ -1196,6 +1196,13 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_COLORIMETRY_CLASS:	return "Colorimetry Controls";
 	case V4L2_CID_COLORIMETRY_HDR10_CLL_INFO:		return "HDR10 Content Light Info";
 	case V4L2_CID_COLORIMETRY_HDR10_MASTERING_DISPLAY:	return "HDR10 Mastering Display";
+
+	/* Time of light camera controls */
+	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
+	case V4L2_CID_TOF_CLASS:	return "Time of Flight Camera Controls";
+	case V4L2_CID_TOF_PHASE_SEQ:		return "TOF Phase Sequence";
+	case V4L2_CID_TOF_FREQ_MOD:		return "TOF Frequency Modulation";
+	case V4L2_CID_TOF_TIME_INTEGRATION:	return "TOF Time Integration";
 	default:
 		return NULL;
 	}
@@ -1403,6 +1410,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_DETECT_CLASS:
 	case V4L2_CID_CODEC_STATELESS_CLASS:
 	case V4L2_CID_COLORIMETRY_CLASS:
+	case V4L2_CID_TOF_CLASS:
 		*type = V4L2_CTRL_TYPE_CTRL_CLASS;
 		/* You can neither read nor write these */
 		*flags |= V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_WRITE_ONLY;
@@ -1541,6 +1549,18 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_COLORIMETRY_HDR10_MASTERING_DISPLAY:
 		*type = V4L2_CTRL_TYPE_HDR10_MASTERING_DISPLAY;
 		break;
+	case V4L2_CID_TOF_PHASE_SEQ:
+		*type = V4L2_CTRL_TYPE_U16;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
+	case V4L2_CID_TOF_FREQ_MOD:
+		*type = V4L2_CTRL_TYPE_U8;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
+	case V4L2_CID_TOF_TIME_INTEGRATION:
+		*type = V4L2_CTRL_TYPE_U16;
+		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;
+		break;
 	default:
 		*type = V4L2_CTRL_TYPE_INTEGER;
 		break;
-- 
BR,
Volodymyr Kharuk

