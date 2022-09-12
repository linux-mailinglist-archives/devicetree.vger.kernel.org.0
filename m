Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47F4E5B6261
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 22:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbiILU4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 16:56:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbiILU4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 16:56:13 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37DC6476CE
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:13 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-12b542cb1d3so16926509fac.13
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=WrL/rXZaioDZJ85eyX4S4PDMz3Mxx8m7w1X6QUwSnLWCBArO+YToXs9AlPcp+J6M3s
         ksyH7IHRWrKzqcg9BA6Nw+vVE7Li6sOw334I7ANGHyPV73ZuwkTSKdbAicUzcSX+LuXI
         XMPLa7YPFzaUK2RYIL9GItF+NArGw/u2sWZ9OR/NJndjF0XNNO0zu/4JJDk4Hwlchfjx
         v2br0oSMunfDr1n8aHmp2btKWWXg0Fdfh/kgPKDKr0g0eZz0810aBn4cVulP2WYBiUab
         d5BrvK5mKVbiyiX/qLAdraMVx7Nyf6/Fh5A7VZfZuzkpjDYHmWEFzOpG28YLtddKXsPS
         jBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yFsRMGoJfFzIx0hmtF+SSRSGsw8tVqOwTpmksCelJN0=;
        b=M+7+gaqkQKn1ecCeBRAF9vKkcQboR+NMAzN165vOjMnQ4lGRhkYeuh2OY8Yubn+CDi
         xd5zbRGXaYbpldViyI47XHjtSUmB7D7BJeN/hRXg8R0WILvzCljIDNWe7j4pqjgMFmSv
         00+AzHPOAAvcXyo1geEJGrCRpOTE8kp4KvO8BRELVVPVgYrQB9y/l8V6Lh8RL/2gsG5N
         29U/g6sjf9vlwYoeqbNxrO8icbgg5nc4p5bWncWyJr87wMD1dS3aK1d0dP0gJKWvbN/M
         2ZEKmCrAkTaqOBqAyiRcMZWHx5t7rwJOxI0KFHbcE/HB2yj9wUv32Yq4QlkQfcjsTq6v
         2GbA==
X-Gm-Message-State: ACgBeo0KLpE9pxSrdGQRqFObrB1sN/gXLCNDPFAmEAtQfbChcbZE8PR0
        +TGVS/dKF9wZHqxNQHQ/gOc=
X-Google-Smtp-Source: AA6agR4wTkFwu88EBRkOpmnRaCLj7fH4WjcwqRpbzw50/mbh89EKioonmEAU/+P2kKB35dxMILhEzg==
X-Received: by 2002:a05:6870:831d:b0:10d:a96f:8bc with SMTP id p29-20020a056870831d00b0010da96f08bcmr111462oae.143.1663016172558;
        Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        cl@rock-chips.com, s.hauer@pengutronix.de,
        frattaroli.nicolas@gmail.com, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V3 1/3] dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
Date:   Mon, 12 Sep 2022 15:56:05 -0500
Message-Id: <20220912205607.5969-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912205607.5969-1-macroalpha82@gmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
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

