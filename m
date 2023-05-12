Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01C2A7008C3
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 15:13:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241214AbjELNM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 09:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241209AbjELNM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 09:12:27 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34E101491F
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:12:06 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f427118644so57716155e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683897124; x=1686489124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tU0B69j9oYl9odVdfBAPIMS59aKUXC4/g/SkHuPw6SM=;
        b=DEa+d+uKQoEMQZGIs4gTTO3/X9AWlIU/3Qsb08OsEOQBhbyjHHtbjWpY/JAwJqya1Y
         4mF+izVr5PGl/ffs2k+N9LVtcSr4qARAKN8GGXsfKBMmVeDgZ7zc+1WXgOzwLvwLy1wR
         VY3jucYZBSMd+uRMN+HXUIhlEtXsDsnvKvN5MgAW2Mr8BrEdGFMcVq1HWcrliq7zgJVD
         84FEvJMjO4QjEMBgisKxSQqAK6qQefxO+kfR3wwjROVch7eBWT8QRN6OiLe/7hjFbxTm
         I90p5aWmr3LC9j7g06WfIqFi1tcRw06pH8QMQnoBEYAELhAeN3Y1YlUFN/dLpatWrfYe
         pEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683897124; x=1686489124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tU0B69j9oYl9odVdfBAPIMS59aKUXC4/g/SkHuPw6SM=;
        b=P+Nes1AreKo3h/38rnfOElpUYDQLMU9TZYfTr79r3wMWsfN9YYM+xH1OZum7ZqgqZ6
         hnnmbqzrj+JylNhXvHgHmZV7kxhxmSMKtzkmAZ2/hT6caS2ihn+mqF8UWZr+Xg9jX3s4
         +yo+3e23Bx9hjVQnnwh+H4ikh4SxoJKIDlBseMGyf+UUs3TQN3gBR58lAWE43tXYrs69
         Hy8KHlzPUzkNr+UFirWpfk2eO8Dw1J3/7f6cOPPFGxDswKM9/kQxRGNQGTouSSgu36+n
         nHI27Ve+AWChf6rJQh5MOOMOuqYydaLqJJjmYLKtNGYc/xE5yKf+1yG6Ftd3IoHtq60M
         ur+w==
X-Gm-Message-State: AC+VfDzqDK0LPmj/zotCEvP+20+Sb23z7pJ48IP+xVM/VdEG/yrd7WLB
        Ls9y7ytTcPAMckf370Hk4teDmw==
X-Google-Smtp-Source: ACHHUZ7W/9YsLoXfyrpzR/TWkwhUIMNI3MoJdC2qky03ik8PdsAnXNDdYPZQPGK2elAOg3IC4k1+4g==
X-Received: by 2002:a05:600c:228e:b0:3f4:2174:b28a with SMTP id 14-20020a05600c228e00b003f42174b28amr16472329wmf.15.1683897124428;
        Fri, 12 May 2023 06:12:04 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a5d610a000000b0030647449730sm23461965wrt.74.2023.05.12.06.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 06:12:04 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 12 May 2023 15:11:41 +0200
Subject: [PATCH v4 10/13] phy: amlogic: phy-meson-g12a-mipi-dphy-analog:
 fix CNTL2_DIF_TX_CTL0 value
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-10-2592c29ea263@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Nicolas Belin <nbelin@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1015;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zfbNtn4eYfFGUuzqUqrrZy+ybT8YTEYYfxc76QqCk+c=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkXjsVuLo7LVxLSfdfUja2xovTbvm0HNpj1ysIYkBZ
 K/S7KECJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZF47FQAKCRB33NvayMhJ0TVREA
 DOsrTgakHLrmGmB/wyrUhMoEXsbiUZVaeV97gzXwbUe/GUy+SedCos1HUur2UmewFphaZyJe+pL0Xv
 pYIXKuMNXIEQLQM4LH1wUbC8p/bvtECbcdUl8j3T9v50w/8okOh+JH/e8OvCagm18Ptj81p7CjtAt2
 B+podPJKhWvlV32zY9od6Y64uyflWC5bbTtP7iQHo5vTLnkwedbtSfg5aKNcaNb2Ibg8MDP1IHFJLq
 RP6wAGI//oUb3XmJ6kRtVCvV1MtcCwp7kk8F0AjnJ+hj8VpXIGQ8kSyxrlCk7JasfbudOpGlYMiX7+
 BWmvwaPjr3tOmUPAKsV5yzVeqb1ZQwvBJD8NDoemCvCW/4S4VRWvcg4caMDQCedK2/NZowXRP+LUzD
 uTq/oNzOgfgHSMlRMQhLoBhRLs3NAcukf7RbkNejIA4UnGZ967/URvq+tpFnXw4KW04PWsP6dbFIKQ
 h7iQD+FNh7PS2cAICGSV3G9duG0Is/ZsrU78dVxotPqBIQcthVuzB524J0T/fooqK0gYdG3LAloQXB
 q6pURKiBKYM0eglBEDUYiKDuqLVWo6QWuykfhtkAYYtUbJgDddhhe9Yu625L8uZlOGPnDXWRuYkXCg
 E8NbJOPkv/k7P0GWvBJo2joJmh8z4HAIzEau29jrsfXk7M11F/h14v/sDdnw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the same CNTL2_DIF_TX_CTL0 value used by the vendor, it was reported
fixing timings issues.

Fixes: 2a56dc650e54 ("phy: amlogic: Add G12A Analog MIPI D-PHY driver")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c b/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
index c14089fa7db4..cabdddbbabfd 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
@@ -70,7 +70,7 @@ static int phy_g12a_mipi_dphy_analog_power_on(struct phy *phy)
 		     HHI_MIPI_CNTL1_BANDGAP);
 
 	regmap_write(priv->regmap, HHI_MIPI_CNTL2,
-		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_TX_CTL0, 0x459) |
+		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_TX_CTL0, 0x45a) |
 		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_TX_CTL1, 0x2680));
 
 	reg = DSI_LANE_CLK;

-- 
2.34.1

