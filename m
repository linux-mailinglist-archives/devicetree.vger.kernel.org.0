Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFA6170E775
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238615AbjEWVij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238617AbjEWVih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:37 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6835CFA
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:36 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-19c7e1acf9eso141782fac.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ix+1iyVwvq5YDYEbZ/aFgQhyfZBXx0DvBnZd+gR5Wcw=;
        b=ikhR7QD/PWZ9AYHLbDesyyyoL21t6ku6E+41m6IIb3rJAyTZa4y97wt1OdHqmM/ThV
         dQNCAVfTtqpH/ur0Wb+768h9L/sIAADrlZX3mccXAGngeKayrYtjU9zNcfWOQ6C+Rrah
         2BQ4Q1uqiJKhlh5ISf7UUQjMpS46akCCq8YUceSJVYEj/GTljoX7zPSE/Ecw85KHwTJX
         ElFjA9JBheP0pXhfqpRKOro/LgIxsgBYO0Wqq2l2aFP4eT/ukIy0Q/3GYBg4rVWfruF3
         wFnd6DlYtg0KKBb+J7/iIO3oxGX3S57WsL4Gl4Oz0tWMop4ljmmrYDPZREebi80HEV6Z
         DPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ix+1iyVwvq5YDYEbZ/aFgQhyfZBXx0DvBnZd+gR5Wcw=;
        b=NyWrQDpMoso9GXoUSdCWqwTRBLXPTHHphsTJyIwi/il7s1SovPTDEVEiNJvdsRthMW
         tdN/AzNpL12D/2IN0LMVWeQgbkhMZ5y8vzQF+lYOcns+9nomyH2Y/rUjK0cIbh2YOfRz
         jmU0mI3bDQlKjceVSPYD5FvtNZ4S9+U/r6ZCcAvcpwXglT6dU+ixLFw6pxZ+Ec+eZ2cL
         4i25S6w/JUtM6ehMdD+FyG3dJmQgK1PTlRHN6Txkh/EHh4CAnvsVjp1pcNrz6+fX6CFY
         tum6zv/M3aE0sGJc2MDfI5ZA/hsGvANqy/K/Wl+Oc2x79oDcByHdxP8vV1sAKOJ+C56x
         D5Lw==
X-Gm-Message-State: AC+VfDyEcJJ2Ddpv0z1uALLv+nbmy2rNH521rYxaQ1ifRK4EOsvrZcMy
        UzcJOZGoQjhRG+UC2rcGqp0=
X-Google-Smtp-Source: ACHHUZ5MneObFTHYZ+sAb7c/LwLONHBsL0zmQRw5S21Rr5FCtGfmJRScWF1vi/l6oY18WrpSERHDSQ==
X-Received: by 2002:a05:6808:4293:b0:397:fc20:385 with SMTP id dq19-20020a056808429300b00397fc200385mr4226191oib.28.1684877915719;
        Tue, 23 May 2023 14:38:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:35 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/6] dt-bindings: arm: rockchip: Add Indiedroid Nova
Date:   Tue, 23 May 2023 16:38:24 -0500
Message-Id: <20230523213825.120077-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
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

Add Indiedroid Nova, an rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..3c5a204bcd81 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -542,6 +542,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Indiedroid Nova SBC
+        items:
+          - const: indiedroid,nova
+          - const: rockchip,rk3588s
+
       - description: Khadas Edge2 series boards
         items:
           - const: khadas,edge2
-- 
2.34.1

