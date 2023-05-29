Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 998FB714E9B
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 18:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjE2QqT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 12:46:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjE2QqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 12:46:16 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD9C1B7
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 09:46:12 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51493ec65d8so3773986a12.2
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 09:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685378771; x=1687970771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxiLnH0M50rO/qW7JX7iQtyXgKtx4AkJoJmCH1LebW4=;
        b=PibI7ffA9bBX6+x+JjrVc/w2AtIj2KQz9bHSi7VttnfkI2ZPnN5if7C07dvBLWSW2d
         weRes3Hd1QPpQcvo3POp/tvrkp2oIEdReemvYsYG9FbVbg3mldjfY3IMDDhToLEWzyAL
         yTxOybUXSpRIbqPJ5nuXrpHQHzXv/z1yDltXM9OHI/BxWELLgVTcXvUvGSSB8WnO44dB
         AOl62/fqCQkXB57zIEgAMOlXnNN4CC2SjZIKaLuiCleZqTQESdLi1DSWxGpfz8uW7qkY
         2pcQIk2OIeXZS6kstrpadwun7XKLtMaAXFewu8LlghyYhPzzI3TPkUjZVsRSuu5EB1pT
         xqvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685378771; x=1687970771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxiLnH0M50rO/qW7JX7iQtyXgKtx4AkJoJmCH1LebW4=;
        b=fXMxb3Y5RuD8RQMj3qxOrUqsgwdji/l5qM/LV5BBmzV19WGXiA2SrvQIDVAcQm4C7y
         AfrY+DFrf4YChpFw4eX/53U3CJxAnq1/ec7YV0X2D4pLUXBBFsEJlUrJC07lO2QxzVLU
         KMYiLdLpfuvkR/U5+v6c2TMF76LkTMeIGq3FknOhesIeOXDeeANdJpD2ZL9qW9kuY3oz
         GtApOGjp+B/4KIqjyBOZJ9un0w3Rvih8aMEi9eOqaqBuacNOWG5NrBU09CPsbWsNky7L
         1MTwTmKdtPybftg+q+QdBBl2npC3gC8HliYBC2Px0Ej6jCwvwHdhq+yorFu99XvMk6zj
         Zpcw==
X-Gm-Message-State: AC+VfDw+Rz8w0HhEPwTf+G5doEzmDngnTVoQGShDTTZsSFkBsXzUuGov
        vkDYR4VPRi0H1IR01H78ZOF+AQ==
X-Google-Smtp-Source: ACHHUZ5gNCbXtMLfCqjRJ0nH0WPEiGrvsb5IpPrrSsXe98TatjsMehNONAcxpuek1O7918b3E4G+Kg==
X-Received: by 2002:aa7:c317:0:b0:514:a0a7:7e7f with SMTP id l23-20020aa7c317000000b00514a0a77e7fmr223165edq.2.1685378771160;
        Mon, 29 May 2023 09:46:11 -0700 (PDT)
Received: from ph18.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id f4-20020aa7d844000000b0050d89daaa70sm3248578eds.2.2023.05.29.09.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 09:46:10 -0700 (PDT)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        wenst@chromium.org, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com, nfraprado@collabora.com,
        abailon@baylibre.com, amergnat@baylibre.com, khilman@baylibre.com
Subject: [PATCH v3 1/5] dt-bindings: thermal: mediatek: Add LVTS thermal controller definition for mt8192
Date:   Mon, 29 May 2023 18:46:01 +0200
Message-ID: <20230529164605.3552619-2-bero@baylibre.com>
X-Mailer: git-send-email 2.41.0.rc2
In-Reply-To: <20230529164605.3552619-1-bero@baylibre.com>
References: <20230529164605.3552619-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Balsam CHIHI <bchihi@baylibre.com>

Add LVTS thermal controller definition for MT8192.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../thermal/mediatek,lvts-thermal.h           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/dt-bindings/thermal/mediatek,lvts-thermal.h b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
index 8fa5a46675c46..5e9eb62174268 100644
--- a/include/dt-bindings/thermal/mediatek,lvts-thermal.h
+++ b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
@@ -26,4 +26,23 @@
 #define MT8195_AP_CAM0  15
 #define MT8195_AP_CAM1  16
 
+#define MT8192_MCU_BIG_CPU0     0
+#define MT8192_MCU_BIG_CPU1     1
+#define MT8192_MCU_BIG_CPU2     2
+#define MT8192_MCU_BIG_CPU3     3
+#define MT8192_MCU_LITTLE_CPU0  4
+#define MT8192_MCU_LITTLE_CPU1  5
+#define MT8192_MCU_LITTLE_CPU2  6
+#define MT8192_MCU_LITTLE_CPU3  7
+
+#define MT8192_AP_VPU0  8
+#define MT8192_AP_VPU1  9
+#define MT8192_AP_GPU0  10
+#define MT8192_AP_GPU1  11
+#define MT8192_AP_INFRA 12
+#define MT8192_AP_CAM   13
+#define MT8192_AP_MD0   14
+#define MT8192_AP_MD1   15
+#define MT8192_AP_MD2   16
+
 #endif /* __MEDIATEK_LVTS_DT_H */
-- 
2.41.0.rc2

