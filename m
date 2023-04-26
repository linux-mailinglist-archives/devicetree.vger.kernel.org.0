Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEC366EF679
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:32:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241412AbjDZOce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241415AbjDZOcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:32:32 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0948A449D
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:26 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-187fc21f6acso2667501fac.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682519545; x=1685111545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKt31LkUOMOVzbhHQr750NfPuXf5xSa7bbIP5o6iHnY=;
        b=HqJRPRxTaW7AIr+dZKH+gDLLKfN2N9CoFu7K5eZrpfM1aGoJzlA/2DYCSQM/km7PkR
         yK1ReMSJY7nVFRSGqSR+MH6j/Zx0fN2qdugNq8x05U/f/OAncgSAPTmdt7U/Tcxlb7eU
         s2j2IEHpXXsq9WqwWoO2BSnBuf+Ek6aTadkC4UL96LBbL7NwtHTjvN1HRo4umLNlK4f0
         5Kf5vdbwd4/QRsTU84As9Eyn3DnYbpup00XIr+6udt9wZFnM/qGtj9m7HuM7mGzAdkE2
         W3p/a0IFA8jzTiwsbHSS5cxmN9zXmXYp53t1+4CydhzAPU2OlzDeT7rlbSBh0xoi7Hhr
         WVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519545; x=1685111545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UKt31LkUOMOVzbhHQr750NfPuXf5xSa7bbIP5o6iHnY=;
        b=R6/rlBQyhxg5WhhgFSCG3fsSyWbbq9hGgVHtiR55mb7oyFdQeMBRF70Wc61WtiBARf
         zesWT9AyKWFWw5mLWaAchhJDkWsKvD66sNx8wOehVzcWGUe1XdTdoRxmUYVik/XqlWcd
         /xR1RA9XdwI1hbm1/4VYWzxVg5rIzRLWNwE9rkhkBe6Ph5qfklges5Q2c9LUjTDxsYbS
         nx40H789ULpDFNoX4P0tRvG/b6RC/DzDTM9EPJSVcwSlH/hp7vQCbymiW2kjtco7gULy
         bZ3qwePFbStZueKAwf+UCf/u2a9GhNJ7SwIqRthJhAh4OjP9FdtIenPHOSUZKtIkhjdm
         ujog==
X-Gm-Message-State: AC+VfDwA1A/ygzWd/RB5Ci+WWRN5V5PiljM/uSEBHb8Ytn260Wlz9Y1s
        02168hlABYHtwKgyv3K6dlk=
X-Google-Smtp-Source: AKy350blnrnSkBv4NNaSiw762d0pt+rrX5Fu/nYbFtPQ5+qO+0qlRQCWKLLEAATPvhgA/go9W6wTaA==
X-Received: by 2002:a05:6870:3310:b0:18e:b155:c418 with SMTP id x16-20020a056870331000b0018eb155c418mr5554086oae.55.1682519545314;
        Wed, 26 Apr 2023 07:32:25 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z18-20020a05683010d200b006a32ba92994sm2613502oto.23.2023.04.26.07.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:32:25 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 1/3] dt-bindings: panel: Add Anbernic RG353V-V2 panel compatible
Date:   Wed, 26 Apr 2023 09:32:11 -0500
Message-Id: <20230426143213.4178586-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230426143213.4178586-1-macroalpha82@gmail.com>
References: <20230426143213.4178586-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG353V-V2 panel is a 3.5 inch 640x480 MIPI-DSI LCD panel.
It's based on the ST7703 LCD controller just like rocktech,jh057n00900.
It's used in a 2nd revision of the Anbernic RG353V handheld gaming
device. Like the first revision of the RG353V the control chip is known
but the panel itself is unknown, so name it for the device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Guido Günther <agx@sigxcpu.org>
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

