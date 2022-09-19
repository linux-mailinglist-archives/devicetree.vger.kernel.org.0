Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C84BC5BD264
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 18:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbiISQqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 12:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbiISQqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 12:46:21 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB38B24F2E
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-12b542cb1d3so166042fac.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=SOwHdsAQqmfIn/VuDC1q546N/NgHU6hwqqf9pJHyxbHPrs514bYV0MaM64XUr7V3by
         r5yet+mfNeIGfoVdGM1SwzvoDvsupZDykCEX4Gau+ZtW2X+waMpgfXzQwd9abqWnQbDR
         1PZGw0NEqTSyZVUIixpfMitrJBEwbcS0SU4vbeA82Tf+hw96qaaPMveyX6jfztoYBWOF
         ULZa/6Nt/PNXJSW9znEqVEG5ERL9MTwZltIh+iqHdRm3VYFNPYKH5EedT0xAWq0bOdcw
         lbnUQMA23Cp50THHijA8lCbarHKeWDHKSI3ZyYl206irRLNj92q2qa+QImga1i4uJHM2
         SSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=o+nLmLHeIkeScuyOHouFUOMDkRtMwQBnuMbO8arhhd4p913I1kohC9K7j6GzGDAj0D
         PfwL+ZRazj5r7fyvbO1WBnaSAzY9OkEohmmrf1joIWymoKXrd4Yc6+AITOTK6UoMfzPd
         hSu9JUCmQ+X9srxQQn+zjYe0y2w38v9ghXfSl+Yd3Tymsxt9BnPeSpSVoFUW+BnMP6RH
         693gcxCBBmnIZEHsM1gYOBG+9ft/elEhzPRoM6cU9fmHlfL866MA4AfWy4baMx+X8I+Z
         sxhFLxZ5AiFo1Z3V67nq+QOZ1jQSYsaMG4VBYGnsntxJlP7XAraFaL7CcsGhhtprgr7c
         mZdw==
X-Gm-Message-State: ACgBeo2a6ijC3arElmiK1qmRYByOmJKVAdEPXxntCbjco5hbHpM0jKL7
        p6Jr96s36FypgBfKpOqvaD4=
X-Google-Smtp-Source: AA6agR7onvRJQhlRVZYN9O9jiqJvROQY7UDh6W3pUi6p1YR6JvFs3gmB6uJB9R25Plb6DJbJ8lCxAA==
X-Received: by 2002:a05:6870:c1d4:b0:127:ad2c:3d74 with SMTP id i20-20020a056870c1d400b00127ad2c3d74mr16136667oad.205.1663605980047;
        Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:19 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        jbx6244@gmail.com, cl@rock-chips.com, frank-w@public-files.de,
        s.hauer@pengutronix.de, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V4 1/3] dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
Date:   Mon, 19 Sep 2022 11:46:14 -0500
Message-Id: <20220919164616.12492-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
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

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
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

