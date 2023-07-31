Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC0B876998F
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 16:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbjGaOcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 10:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231582AbjGaOb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 10:31:59 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE97D11C
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 07:31:58 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-31759e6a4a1so4125381f8f.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 07:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690813917; x=1691418717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+GJI50mwxWlMPNP5cWPxpWEEdZG5lOnOefrq0yW+CGM=;
        b=azh4UrrpTdAdPCnq+VL6yV09ES/C33R7g2ghHZMTCU1oZOetB0YwsqD+3zPh8qKXks
         h67suHf+jkQASp61dHgCaALnOBewHl/seUICPQbHKCd/xzYQ60NHY4tYgZyWwS6tMpXu
         Oon3yjpGCTOTMUw9YTggcLYc8fC760VXPctgHFdLkjEKx3naom6EjUBV6Nj4B3wJcvGN
         i2oQu60jAOshwLLmstqWPrvuRpqqtb6pAuYaQ6qwSN+rqfO2LtnyJtXnrmc4wjtlEZ4U
         t47VVA9LwRO08oMvc7nSVmnSVhHwdPjhN72CHKPqsKqqMqlL2SAqbkKAu9Xk5wDNDIsH
         dlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690813917; x=1691418717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+GJI50mwxWlMPNP5cWPxpWEEdZG5lOnOefrq0yW+CGM=;
        b=ThOjWqSzOt6EQ9QV6Dcsp4FZwAgXdbQGwSWfHlIW5svjRsJi6SC0hzYQph1L19O/iA
         0AMg34JJ1YUNvcYWOsNVSv/5/zJ0o5vqn37NczgZkH10qkyVRydZPFc+L4uXn6e0tp7p
         8aTQ5CtIX/ECgYabHO6gwtPNPvNEHvpEFbgcGQQi7tz+NEuwa8KQTDvHmdLEvLoyDKJB
         Ru0pCU3s3L+BJOaYNJKKzOf2LtjL1heCjc14+aJIj5Qy8hwqxzVyo7m4gu/tbhgpeOEY
         0kD2knbPBZAMyThFtyJYzW28/RFCIfkvRvvEk4c+jD+ueh2cNCR05bWs3V7vZ/jTVYgW
         uwbg==
X-Gm-Message-State: ABy/qLZslwOjl8ZyaTJqOZ1kKYNP92lF+OGPztiaEfc+lJWeYubgIkRL
        Vj/Xb4Y32XOevIXYatgzMoRwbA==
X-Google-Smtp-Source: APBJJlGX64MgdrkSnwTDk2MZfryNLn4qKqwiMlcaDv3x8b4A0xwDLZk1j01dUepsQC9r2++dDWHHJA==
X-Received: by 2002:adf:edc6:0:b0:313:e9dc:44d5 with SMTP id v6-20020adfedc6000000b00313e9dc44d5mr6771188wro.61.1690813917171;
        Mon, 31 Jul 2023 07:31:57 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i8-20020adfefc8000000b0030ada01ca78sm13301675wrp.10.2023.07.31.07.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 07:31:56 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Mon, 31 Jul 2023 16:31:47 +0200
Subject: [PATCH v3 3/3] arm64: defconfig: enable STARTEK KD070FHFID015
 panel
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230711-startek_display-v3-3-dc847e6b359b@baylibre.com>
References: <20230711-startek_display-v3-0-dc847e6b359b@baylibre.com>
In-Reply-To: <20230711-startek_display-v3-0-dc847e6b359b@baylibre.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Guillaume La Roque <glaroque@baylibre.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=767; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=3ewdZnRTwiLei9nYvBO9iEQ33z/6iSvXdTZm6ylJVyY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkx8XXgjha77G2f+FeTYulR1uMYFlKk9aqlXP53LP3
 NWdePhSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZMfF1wAKCRArRkmdfjHURfGvD/
 9dEJzZdYNzbFBHGBLoB7/yG6gZXLTP/gd6SoeFtGRzJukIdBgVrfY4CrbWd9OsA5RJ3hlRC4uoWZiz
 IGys/+A6F+E3yPJa8bcXwYse/fb4mrxfLpLxWS2dcoO3a5dk2PofsDoLHDs7j9oyfHSUd7sBfyBnLq
 jRRLbOK16vXBfKL0ByvS5NG256EvE0vyukalDMum0h0bwUzP/8Zi8yPHzFcqVOojVqOPorzjNQzDp8
 ckxgRnmpeuNshIgmyg2injoeHFRsezCJqjLgBC1Grchm5w8Qba8df3Geax0dptWsbmYl8fqHtlKs+d
 xDsHIa6P9p8C1RmuCeqg8PRENpNkrmAKn7s1U5SwyMPFsDGaSFUB1GHvGq8khv5gWKrbDqR0guaA5s
 T8MwEFtfryl90taY2b5hM0OwCEvuJMCCYL9Y1EHOtI1nONhX6Rg/XG/ZURLrAEtE3PskwFsYSp/BVj
 tLug/+/7tiv9+cfJx87fUKuOTK2V4TM7u3ZRkXEUAz+cAU4nY3SIRnVeWmOmHSYd+acr6tQd/ZYo4S
 UrAfE/HFuhTQE33GQACCfwt0lMXntGtU6SVGftn63pgtes659x1EwtLZzkBcj8wWSU3SuDwZFqvw9/
 4J6fKYXLz5FNOqOs331MYECZpzIm3Btanu2QEOFDA0FvOKqjxy0eRXl1pG6Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Build Startek KD070FHFID015 panel driver. This MIPI-DSI display
can be used for the mt8365-evk board for example.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0777bcae9104..cb24a3d1219b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -816,6 +816,7 @@ CONFIG_DRM_PANEL_EDP=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
+CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_LONTIUM_LT8912B=m

-- 
2.25.1

