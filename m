Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D2C36EAE3A
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 17:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232440AbjDUPns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 11:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232802AbjDUPnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 11:43:45 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B8612C9B
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 08:43:41 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f1957e80a2so14837975e9.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 08:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1682091820; x=1684683820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSTxzI2UL4iyV0x1qsc6iOOIHOUmxegUBSvF/ZUcYNk=;
        b=i40TYNbdQuSpdWFF00dXQx786i/9MjaamcmD6i7fvKTAN3xxgc2TJNs2u1oep1YUPB
         KzvgUjujGlJKhd6gCCnxGMP3GyH3L8F0lpfgRfzddPiVm+e+EuWXZLuXv2E2zdVJ4L8P
         vM1h1S1JpUDsWTlxclBSN439k8JqgZKD8j5WI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682091820; x=1684683820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSTxzI2UL4iyV0x1qsc6iOOIHOUmxegUBSvF/ZUcYNk=;
        b=aVfPTUryIng9aYa/K75tAnByFLD3gNNHMw/BJgvcwByr0A2PygWc5SIIZ+Um6/4dQX
         4Qo/iBOvQ6Wj6C2ivBg6VJ5cvSKhw5WQOLXcDQ2xBjVxE9IL65kLG/1HDsWP1VLFgQZp
         QHL6JZbzFg7mpnIqjBz+WUiTTBEXp84W21YqZPjGAjuyI9kBxcUYhd1aw7z9x/KiDaPj
         mg5vE6oP48IWHuyfD0XM5cgmcPZO5D4hlEYZ/7YSgciH0Oa+W7ZoooOmpeJf5vIuIvpQ
         8pePfTeEkCTmHVpXIg2/1lpg2v/wz058D42TMuXZwEH8eLBmsgKW+KY3Og1397MLYdOn
         oRAg==
X-Gm-Message-State: AAQBX9cN0JUEgBO32vN+9Qnd7vi8aiUB34zHg4mFikpLCwdtk7YDlSdJ
        mLaIF1vVTuWyy7vOjq/KupeFbw==
X-Google-Smtp-Source: AKy350Z4srGvgKG10mBjRPzYdYpuxudfGWzNDz/qzD+shoAncKiAblL4cxYi1jVsAyWCzfyuso0tLg==
X-Received: by 2002:adf:e689:0:b0:2f9:805f:eecb with SMTP id r9-20020adfe689000000b002f9805feecbmr4493211wrm.3.1682091820245;
        Fri, 21 Apr 2023 08:43:40 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([37.159.127.129])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b002e51195a3e2sm4651609wrw.79.2023.04.21.08.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 08:43:39 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [PATCH 6/7] dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
Date:   Fri, 21 Apr 2023 17:43:07 +0200
Message-Id: <20230421154308.527128-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230421154308.527128-1-dario.binacchi@amarulasolutions.com>
References: <20230421154308.527128-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Trimarchi <michael@amarulasolutions.com>

Add Tianma TM041XDHG01 that utilizes an Ilitek ILI9805 controller chip,
so its compatible string should be added to ilitek,ili9805 file.

Add the compatible string for it.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../devicetree/bindings/display/panel/ilitek,ili9805.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
index 57c36cf22e4a..6065ef5ec385 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - giantplus,gpm1790a0
+          - tianma,tm041xdhg01
       - const: ilitek,ili9805
 
   avdd-supply: true
-- 
2.32.0

