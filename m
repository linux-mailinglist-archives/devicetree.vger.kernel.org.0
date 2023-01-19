Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DABA96746EF
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 00:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231166AbjASXMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 18:12:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbjASXMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 18:12:18 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D87A54210
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:22 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id n24-20020a0568301e9800b006865671a9d5so2116922otr.6
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+a8us++zKCqwb90bOoz2QhCcN83KUtlRyH4tzf0Qzw=;
        b=R2lMKvx3yjc4Zbg85MDM/X6VRNai+OLurLQ9Y6g7WcdJz/HfcnHqzDwF60WHY5IyMM
         v6G1VwGQpJmSFbWmjpxj2PpD1uLbc4zbIUYHEgccxoilRVCXAy1PVT14v8EQwlUcfSyL
         PfmQS6t3k3npwYzAE17fc8QUi/Do6VxrganZcOLBqRqgFvWSxS5AB9lbWiG9Z9Hho3dq
         OQXDpPtI/VulWARdYf5PVbrQIyY6vGX7kn91hX8+q5d0PwRVnFYSpSb18buGikt/QLGs
         Nm5ubugYs+STsydVCj7+WtGTIaYNXo6MjspmTK2On9V7cblH+CbyLA4E7FF/jVh/eSBh
         UxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+a8us++zKCqwb90bOoz2QhCcN83KUtlRyH4tzf0Qzw=;
        b=n+3fbk9Y31dgPt6voHMCabJAtmy0h0xit+GWexLeJz339tW3dpiQja330unJkKnI9R
         0IBazCAsczBt8lyhfPHypHjvZtoZcN4h6y9e+u0m8n9GPXSQ1pjvxbcPNNazMgRH6yYm
         KdN1nYXlJyz7jLF1sM7ShXXLIzpmvzKOp2iRmEgcUeAT/amiItCuEjAf9kNKOg+mZXol
         +cdnQuDi34aVzOIojHtrYhy5RtzVwnCd81dXgqEa7pWw3JD7I2e5b0i3fiB/InWj2lph
         XH/6XkNhM+hphl+6dtXL3MEx5gFwGuOq+NupkhM21TYbZAdAFJXHn7iT5QhyimPhe7zU
         CBng==
X-Gm-Message-State: AFqh2koXdi5qve9LXdQEGxZOwq7cD1RDvq4h7yMmlbBusMJH+7TCBkIV
        G1+l+JMOvE7p98vUJHb2Si0=
X-Google-Smtp-Source: AMrXdXvHQoRRaaAHU+VU9MnkgBvzK/W5AF92UBQ3EHQMfNj0yCZ0ivLeFnU0lsC24ASGwgFTLu/lFw==
X-Received: by 2002:a9d:805:0:b0:670:6247:fde1 with SMTP id 5-20020a9d0805000000b006706247fde1mr6045593oty.24.1674169461645;
        Thu, 19 Jan 2023 15:04:21 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id bv10-20020a0568300d8a00b00684e09b43bdsm9254034otb.13.2023.01.19.15.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 15:04:21 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: panel: Add compatible for Anbernic RG353V-V2 panel
Date:   Thu, 19 Jan 2023 17:04:14 -0600
Message-Id: <20230119230415.1283379-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119230415.1283379-1-macroalpha82@gmail.com>
References: <20230119230415.1283379-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG353V-V2 panel is a 5 inch 640x480 MIPI-DSI LCD panel.
It's based on the ST7703 LCD controller just like rocktech,jh057n00900.
It's used in a 2nd revision of the Anbernic RG353V handheld gaming
device. Like the first revision of the RG353V the control chip is known
but the panel itself is unknown, so name it for the device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 09b5eb7542f8..150e81090af2 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -20,6 +20,8 @@ allOf:
 properties:
   compatible:
     enum:
+      # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
+      - anbernic,rg353v-panel-v2
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
       - rocktech,jh057n00900
       # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel
-- 
2.34.1

