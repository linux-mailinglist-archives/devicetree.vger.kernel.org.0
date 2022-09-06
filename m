Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 278015AF30C
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiIFRs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiIFRsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:48:37 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB7BB84ECA
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:48:31 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id c9-20020a4a4f09000000b0044e1294a737so2050680oob.3
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=Wer2x+YDFov3Deacn/WiARefcJWmuHOcvu2uP8uH8+YdERSLxscCoKSkGDvR/R/xIz
         y6pjcAsh9vvhPRRma4ObkA5ANV8a2Du/wiEFC97ViE0Xwtco+qwg9xnHSo3R/yStTDCY
         LvpEdpHin/RU7d4o1ZEhrKoFlsKRfQ6iJPN8PdfbBChtz1hKAfOeqXAfHetBQB3nJ41M
         CCH9a4EIkMKsEbOqRjQ0FSqW9Hpv0fLSh31VvFdEBWIvVNRjnTOvdROnTzAz2fgYDXf3
         pfYqLzBahOfYEjtF5+c8vTF+rjlWfxILejZcSjyq1ykvyA3TPVM/fq8LhwXdEabTNFVf
         Qm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=YapAYG4sBo6lR/dIn3DSy/FYxc0udaPiESkdZBgOJZfcNnTMeQHurv3m1MiQ8RIRk0
         apfc1i9hTbwiU5r3XxjXaNzaiiNHfxNvqFGlkhCwjJl6HkYyffTaaS8+FQGZ1+uFjs5d
         ykWLBybuzn2TBQOA4SRSnld9dV0tvqN6WlEx02Jq+EE8yeLFYaLYQb206GfCF/x34H4l
         jFbkk3ftPt2OmCXoiunSMVHvJ9VNzNtm3rdK3xZ5LvDdj2p0C9xfLgza0lchvqBjN3dT
         hvzRRnHbcD8w1RzDqIHGIVGRcUF6AG2KBsMM2EjxlRjL60e4XywtFnpcxPLv89gG10/+
         hbNg==
X-Gm-Message-State: ACgBeo24HQTk/M8uMRgIAxAak4tu0aM7nUYeycVEbEGD67eLXWu1YEjX
        QMvEKojTo+wJKBdJRf02OTk=
X-Google-Smtp-Source: AA6agR7QdeMD60yDHlEgNwk83J8km40Qr5XTioo9P1Fu6QVKPdibmHtPFNzCY/x6hkmeQ/qdtBZjug==
X-Received: by 2002:a4a:bb19:0:b0:44a:9cda:56a1 with SMTP id f25-20020a4abb19000000b0044a9cda56a1mr18660613oop.14.1662486510547;
        Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        heiko@sntech.de, hjc@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date:   Tue,  6 Sep 2022 12:48:20 -0500
Message-Id: <20220906174823.28561-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
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

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1

