Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A41E56D68C0
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 18:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235518AbjDDQ11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 12:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235382AbjDDQ1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 12:27:25 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D0AF49EC
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 09:27:19 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id t19so32073847qta.12
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 09:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1680625638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JhwrIjGdHvbP7iRYz+GF4I68rmmYmSv00IVMxjU1xN8=;
        b=ZtCNBHqKs8v2GxHBkp3iZsN1/Aj4WowcQaeTkud3ULyCdCXRN3419nTF4lYEw7JCVm
         lINN0tC7Q3eUE2If0tAq2MSpjL3+GB+oggPts/3PIm9kmHzBQEU9c7kqq3FhS+KRW7Pj
         g2zyaBRKwGVb22cEq8jh1O0D4XyxUuP42v+0HT5FeQ5Gi/67Rx5mNT0rEesrbN1OoTtw
         4LWx2qQ8AJ+0p7cbYKm+9+AhMpibKe3nsn4MBkTLdnmS88PGkjgLw7rSDd51LadmyAW6
         8J+ZXzFFxtlb4xt8nqoqw1+dV6pjLDjwGxbjGFJCDQLBjEOH+X3KeHS+rJbfRog0UUSX
         si+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680625638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JhwrIjGdHvbP7iRYz+GF4I68rmmYmSv00IVMxjU1xN8=;
        b=4fJdZGUDNWBNy9cMVuW16lMISPYngHvJ5AZaOIgAJ/jJM9CaiDhy+ZyT6UbnuhPMmy
         ohJc+vsygOonGzM7qd6hHOoWsNfF2wZleTiPiRj9P3YlHXUvQNfhqnvqo6acHrO8yEcA
         NMIvRunXWuWnIx/weCTTETCkeo0SZA/6tSNp0ayomcomxn2ONGqW1UG8Vfbhsgiietec
         Y7U13rUYswcTMLuZpe9MGBjHMWDTG2kZvwOL80I/iiyb9PWwfNz4jN5sUrlToDC8nlAN
         vI+KGLwyfGJum+bZ8Gpw3eV7WJa6KST7VF7RJzaX1L3K7nyQjuatLC1g3F49l8px9dke
         /+wQ==
X-Gm-Message-State: AAQBX9egHYZeWJMw46GOUxrw83OOaERn3utAV3WrKGCfx4cBQ0TK/hjF
        zzEvdRhiIttv0heASqCHXjDjVA==
X-Google-Smtp-Source: AKy350ZaeXvGyJjLwmDXCGIwtx/7uoo3VUxwZm26dBp0mZ93D84vaD58lxabDqOzDSs7RSKv/rrIXg==
X-Received: by 2002:ac8:57c3:0:b0:3e3:86d0:4ef8 with SMTP id w3-20020ac857c3000000b003e386d04ef8mr37879614qta.28.1680625638589;
        Tue, 04 Apr 2023 09:27:18 -0700 (PDT)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id m124-20020a375882000000b0073b8745fd39sm3699594qkb.110.2023.04.04.09.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 09:27:12 -0700 (PDT)
From:   Jonathan Cormier <jcormier@criticallink.com>
Date:   Tue, 04 Apr 2023 12:26:49 -0400
Subject: [PATCH v4 2/3] drm/bridge: tfp410: Fix logic to configured polled
 HPD
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230125-tfp410_i2c-v4-2-f983bcef2df8@criticallink.com>
References: <20230125-tfp410_i2c-v4-0-f983bcef2df8@criticallink.com>
In-Reply-To: <20230125-tfp410_i2c-v4-0-f983bcef2df8@criticallink.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1161;
 i=jcormier@criticallink.com; h=from:subject:message-id;
 bh=thTBke4adSbjQB+Az7ku6gTKJI14U3xmvadZhGFOYMw=;
 b=owEBbQKS/ZANAwAKAdzX/S4LNuuqAcsmYgBkLE/YIu6HYilZxFWf+fAQXGrPc3NZJOHfU8IajFHX
 +WG0356JAjMEAAEKAB0WIQT/MozqCeZtYxNnVN/c1/0uCzbrqgUCZCxP2AAKCRDc1/0uCzbrqtx8D/
 9eYQrGQHYfDwF38dKrsTbYYGWQkO9RbvLizz2zK6sPjERuElcIyHb1tc87UgrdMz6oVwFvAf9gPSol
 mWEUPGff0hIoNlzeZtDvh+c33wxgQXejInX2eBcPryiU6jOsiQBbutNh9EKRBGa4vDDrxq/UfUiItn
 dHTY0jqxh+gSfWV7bWg0wMankS65kJtnm/wcNit00TMdbrYzjhmNnV9aLsZs2cXRG8InRC7w3db/Hc
 pwi7YQ2/AHR6YKnqvhOM7KTqWb9v2orkiFN6q9zZhaeEwWWgl0tBOR/OfGbdPfkE2uxbVdrAvWyc5Q
 aqd02xIaWKKqxIF2DJx4akESDUex5zzNb0w3wL5+PPenTYcbaHs1tMfvsO7Cgt+Bm5GDstY3BYtT+j
 ij8oaqxmJkK8++3tHCexC/uayQi7sExzN/5P7shgKGbIoi23AkiKjNw7tZ65lA6Vrh+nSNPMMbWVZb
 34datHiI6xJ+spdB0tCALG/SD1s5ImkUXEozuXbh3d2pdZAo/0SOXfr4rYZxP0b1pWG1mUScY+5vcU
 Jm8dWe7KOOxB5DHu0GyzWskm69pu+ZPwUNDdCiYpgU2tBvTtvu4UIy0dwGcOenxLksEnFvjyET1yNV
 tfsUEG65wcUY0k1RqNwXJ7yJd6lOEoS9OBb14yEkjxebzUiOGI0Hgo275XOA==
X-Developer-Key: i=jcormier@criticallink.com; a=openpgp;
 fpr=FF328CEA09E66D63136754DFDCD7FD2E0B36EBAA
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Williamson <michael.williamson@criticallink.com>

The logic to configure polling (vs async/irq notification) of hot-plug
events was not correct.  If the connected bridge requires polling,
then inform the upstream bridge we also require polling.

Fixes: 5cafa0f1853b ("drm/bridge: tfp410: Replace manual connector handling with bridge")

Signed-off-by: Michael Williamson <michael.williamson@criticallink.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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

