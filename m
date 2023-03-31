Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 380976D14C1
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 03:15:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbjCaBPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 21:15:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjCaBPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 21:15:01 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37DADCDC1
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 18:15:00 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id q14so21475511ljm.11
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 18:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680225298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6mdNQhMjpxcMUaJ/7JOM8PZFmH0MT/DI0sUdW8J0P0=;
        b=FmDWo+WsUIEzWEh69oAza5U9SDuhi3vg0vzqbUw0sWTdtjcYoB77tqOV1xw/aRJp2h
         nIA+QrGZrOvn48wti32AyLqxLRSpTNvo9mk+apQCn2aQ5/9H+qVDf1JkML7Zbfv/sHb7
         iOGNvJXH1iV3g4CNdnjGiegN3Fmc3fnWp9IiTfqZBZI4sSI2UPRpu7XxHQQ3Z+FVWvOP
         MNBpfofj7fBU1nX7YjFPl9+PavvifqTcm2A3qAJ+mPt4bI96y+2aa1MvAh1od1in5MXQ
         nD5g1NlUavkUmwLwKzHUbqg7uzesaUSgdV5QqHw7PN/5T8XRiEagR/3Re5v+8BDRqrS0
         u3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680225298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G6mdNQhMjpxcMUaJ/7JOM8PZFmH0MT/DI0sUdW8J0P0=;
        b=6Nbcv+2gY9j3R9FBFg/URgst0/6e4d21/gXnbojKpuj0Bb0KN4Mcv+0zFthjT0jY9N
         FsAl9qFZmIL1pt2eL9s7rl/wOrrxJ129zL9QQEzQrEt4fg24Olbh1/ggY550tNzI3RQo
         o5YvQx7RookHJ/akmuigP7LHJuWkH/fWg+uGn+lFKI3kUWWTDKsPVXlgpJx7oDlqkqoL
         lIjUQQnP2gTV+6JnClL7VwKcnqkQWrAj8Hhok++rbVq3f+JI9gTGDqpNGjy2HCnfx33E
         Vf93MHZmVA3yLE6afF7sMNiZMjfuaN3dUvEKrt8XaUVJIOHxJpNF3rTk+kJ6Q7uHIGZ0
         E4oQ==
X-Gm-Message-State: AAQBX9eKvHwwmh8kwMh0gVNdwU/dZN26xN2rhzXame4+AYZMbAgk2rAV
        drN/87WIwlyYrgopKC4ooYAJ4Q==
X-Google-Smtp-Source: AKy350Zb9up3yCkQCc7qcN3sJjC3uSGuYzAqAKbJxUDI1C3urvSdsIL2EvRVpITAQvJpt+zhH8FBcA==
X-Received: by 2002:a2e:7c10:0:b0:298:b333:4267 with SMTP id x16-20020a2e7c10000000b00298b3334267mr8693032ljc.18.1680225298531;
        Thu, 30 Mar 2023 18:14:58 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id n7-20020a2e7207000000b002986854f27dsm134573ljc.23.2023.03.30.18.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 18:14:58 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 31 Mar 2023 03:14:50 +0200
Subject: [PATCH v3 2/5] drm/msm/a6xx: Add support for A650 speed binning
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230331-topic-konahana_speedbin-v3-2-2dede22dd7f7@linaro.org>
References: <20230331-topic-konahana_speedbin-v3-0-2dede22dd7f7@linaro.org>
In-Reply-To: <20230331-topic-konahana_speedbin-v3-0-2dede22dd7f7@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680225294; l=1412;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=42U2yCRDQAALlywjy8FiLoqbAeo9f7qbW4rrzl+BgmY=;
 b=dwyPUzW5kyB7cpYIsra0jqgoc9iICEbp333fN21/hW1uI9eAgh9lyZx3qLIhTqeBJe7Uf2/WSJLw
 8UXuc7NcD4q+iFYH51Ld8y73WVcYc3NMkKeHz0Kfjv8gbc3apCoK
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for matching QFPROM fuse values to get the correct speed bin
on A650 (SM8250) GPUs.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 663090973c1b..2afc160cf06a 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1900,6 +1900,21 @@ static u32 a640_get_speed_bin(u32 fuse)
 	return UINT_MAX;
 }
 
+static u32 a650_get_speed_bin(u32 fuse)
+{
+	if (fuse == 0)
+		return 0;
+	else if (fuse == 1)
+		return 1;
+	/* Yep, 2 and 3 are swapped! :/ */
+	else if (fuse == 2)
+		return 3;
+	else if (fuse == 3)
+		return 2;
+
+	return UINT_MAX;
+}
+
 static u32 adreno_7c3_get_speed_bin(u32 fuse)
 {
 	if (fuse == 0)
@@ -1928,6 +1943,9 @@ static u32 fuse_to_supp_hw(struct device *dev, struct adreno_rev rev, u32 fuse)
 	if (adreno_cmp_rev(ADRENO_REV(6, 4, 0, ANY_ID), rev))
 		val = a640_get_speed_bin(fuse);
 
+	if (adreno_cmp_rev(ADRENO_REV(6, 5, 0, ANY_ID), rev))
+		val = a650_get_speed_bin(fuse);
+
 	if (val == UINT_MAX) {
 		DRM_DEV_ERROR(dev,
 			"missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",

-- 
2.40.0

