Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 199A367D8AB
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 23:41:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232830AbjAZWkx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 17:40:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233205AbjAZWkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 17:40:52 -0500
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CEFC30EC
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 14:40:51 -0800 (PST)
Received: by mail-qt1-x832.google.com with SMTP id v19so2621942qtq.13
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 14:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=THHRayynm5AbgmOQpvB3lJW0friOEzmgv0B/wGzZtaA=;
        b=RF6Mnh/85qLjgyMlDUJSkvImtH9djlYTgKg7XXoQrPUdiKC1uKZs/pj6vNLsC5g/NH
         HOSjTmW4fvlZ4cKKsAhGL6k9TgT8eKTueFUoDEUTSmu1du0FaUxlEzkqnTVU049591+3
         e+Til8baR6eC8XUAHdglp5Q4n1pHk+3CtQ7Gv777sAXZYq38ZvBbQhI2uD/q/3FXv6lZ
         LbtyEw5k+KRc7hTD79sp9vsO6d0elqy6j6Fsxym09JKwRMDHFQaLZAP6aVq9LAOLABHG
         /GRZcbwUvCjZiZL/nU/53xU4dJsNSmnqzdZAQ9sVDlLwj7jVy0WctKldeq6JE5YPcIbj
         R2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THHRayynm5AbgmOQpvB3lJW0friOEzmgv0B/wGzZtaA=;
        b=6cPyfcOg7Iai/kbWqNZWbzS/J42t/80Ubfm4NdtFtg/gk0p851Hw8STn1ENJZIWBq8
         hkYU7g+gH0oordMnRvfegMmiuvI7ow5QDrkWpYtwGNNoHyGczLg331zjhahbYA5EXAEd
         hEsMJgm769xBziyZiXa0MfHgYkqH5jNYfQFAGsVgHxuvNm6dTwNw/QFiBIg/EoBEDVl2
         wfbed0FlteKW0b7wR+o4Rj6Vf8L3TxpUvWOR4GvJnM50806JIj3oEOqvnY3WGA4O4jEs
         A/n8PX/z+V2mt80o6LSE9do2nf4ADqKrTWcPegR5QBDyPFHTueHx5gqDwobXlOuOUudh
         OXvg==
X-Gm-Message-State: AFqh2kqZp/CI9D9xPn3HEmlqXGLmXIm5+6iNO7ubRYkEwjFvuIqju0SI
        v1QfcuHoGp5ve7MTCubqtsbUQA==
X-Google-Smtp-Source: AMrXdXvKN/LjDYlcxc9vCnKH8wEBUcicaEmbvDVyprFDfxm2K55esHvebv8vBoq+T1Yh3H2IWEi0cQ==
X-Received: by 2002:a05:622a:1f16:b0:3a6:a4ed:7c42 with SMTP id ca22-20020a05622a1f1600b003a6a4ed7c42mr56284841qtb.54.1674772850458;
        Thu, 26 Jan 2023 14:40:50 -0800 (PST)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id ek3-20020a05622a4fc300b003b68ea3d5c8sm1505678qtb.41.2023.01.26.14.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 14:40:50 -0800 (PST)
From:   Jonathan Cormier <jcormier@criticallink.com>
Date:   Thu, 26 Jan 2023 17:40:44 -0500
Subject: [PATCH v2 3/4] drm/bridge: tfp410: Fix logic to configured polled
 HPD
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230125-tfp410_i2c-v2-3-bf22f4dcbcea@criticallink.com>
References: <20230125-tfp410_i2c-v2-0-bf22f4dcbcea@criticallink.com>
In-Reply-To: <20230125-tfp410_i2c-v2-0-bf22f4dcbcea@criticallink.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Williamson <michael.williamson@criticallink.com>,
        Bob Duke <bduke@criticallink.com>,
        Jonathan Cormier <jcormier@criticallink.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1011;
 i=jcormier@criticallink.com; h=from:subject:message-id;
 bh=mvqilqhA2ozv8fVrZmSQf6YxF7B70T7NT6GdEuGjaz8=;
 b=owEBbQKS/ZANAwAKAdzX/S4LNuuqAcsmYgBj0wFuYWPQsfYUyfpIcVOrIwiInhKS0eFH53Pn3Wja
 SLuLT/KJAjMEAAEKAB0WIQT/MozqCeZtYxNnVN/c1/0uCzbrqgUCY9MBbgAKCRDc1/0uCzbrqo6VEA
 ClyYJaNl41nKR3DS58OZYnTE5jYasRyURXyHJa0vtk0k0ECOzJeDTpAZaNloUrW46d0xnb4iUSwMoX
 pAGMe/omvBPn66/UHW01DDk3v+l/1eaudv74eRIWpOJ5AVIc7HX8RAFqxKhbE8rFJwBBBjR02tRbtC
 Argdfw6geohKw3j80C7HvhoRqA1rC6RbWuAHgtKreEShgXWjcI3W+KFdtR83pSVBH/RdAOBnY2FD0Q
 4cbesCtPS4OMOnURLwHsmf5goawW903UWn3gV1LlZhcoB5qnqODMZiGxrtDABSoqZvxgzINLVDZo6o
 jwhilA81CUkpsa0eNO4XYHH4kQP7z3RBi5Q+Scyhz4XFnabzNtUODIciOtQKruDviEpGl+I5ny0f0h
 QWM+5WmnxEE59M3oh1HWi1xgIdg9fVik+prV8hejluk8rMMmaVR4hY4Bvv+hoQnQtQ4Ctte3WB2JBo
 GZlnKPpldX63R2lhh7YDcDOlyquUlnckXlduIeRSRRtx5AAUNLd9sSJVKyPWFbaFxthWbDu2i2d2eO
 Uri1N2J3CEzZ9Jj38+QYj0h1wakCXJ5DYscok+95I/DQJ04mJrqXDdkt1UBIIsS1PhbPwcRaqjY5eW
 JNmuunXjwB/L8f0cMqwOyRAS/t07K76HEffLwtAmKa742XzzFLGgi48R6FBg==
X-Developer-Key: i=jcormier@criticallink.com; a=openpgp;
 fpr=FF328CEA09E66D63136754DFDCD7FD2E0B36EBAA
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Williamson <michael.williamson@criticallink.com>

The logic to configure polling (vs async/irq notification) of hot-plug
events was not correct.  If the connected bridge requires polling,
then inform the upstream bridge we also require polling.

Signed-off-by: Michael Williamson <michael.williamson@criticallink.com>
Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
---
 drivers/gpu/drm/bridge/ti-tfp410.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index bb3f8d0ff207..41007d05d584 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -155,7 +155,7 @@ static int tfp410_attach(struct drm_bridge *bridge,
 		return -ENODEV;
 	}
 
-	if (dvi->next_bridge->ops & DRM_BRIDGE_OP_DETECT)
+	if (dvi->next_bridge->ops & DRM_BRIDGE_OP_HPD)
 		dvi->connector.polled = DRM_CONNECTOR_POLL_HPD;
 	else
 		dvi->connector.polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;

-- 
2.25.1

