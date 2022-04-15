Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5B050294D
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 14:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344943AbiDOMDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 08:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353068AbiDOMDN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 08:03:13 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8B55BE5E
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 05:00:01 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso4907550wml.5
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 05:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0qzwRG5yOP0zfZHRBmajTxytV7avLAvdnBn43hNrQG8=;
        b=bmT5CUWzbuCvNyaDXWWpRe8mRTnF0rCEC9NCcl19TWWu/9zu60I6VLNBeuNiD6GZGk
         qp/v6Cj5l9K8JBM1fmJ9Yn5R/nza2h2W7XujLh367lsvQNBHgSZzxvwXNna8TXVtwq4v
         0gpMRHlo/sT+uktp5qjV7JWlWbhIc2NdO3ZRtRyddogOJWgF39/lbu7RbeeKT+DyLaVD
         JwwI6/YkWmv8jmQzQZG0qaAu8Rs2kPRVReHnqU4t0WraM/vot3Dx5ZKIz+VFXD05a6Qx
         4nG41aMVxeN3Btr44n3j9+5Okt3vZi7qJbqYRy5RxMyVErB1WCloeLtJPmpKUrZgKsOB
         Bfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0qzwRG5yOP0zfZHRBmajTxytV7avLAvdnBn43hNrQG8=;
        b=0lqTmQ4Z9qevFfKSEgPn4eqywa1lCEb5FCaqfonVtwM/mo7JxtKTPVqz4+50SEKqOg
         TenTQiwyHXm/ch63upteErPoEQIOtxju9zZRBrWccG5KqPq8zEwpWXImPQdE6a4iqLry
         5LdNakxBPpB5QRYj92D4n+8ZfNvi7OFzjz8hxTu3O7ohOsR4NYMecnsv01eRLI0zpQpX
         ExZ0F0KScmuLsYHdTR6Fs+B7NPynXqNBO/UOtiKIXRlZPzUf0G2793djUENoEsMOxP8f
         y4nUZns/nY9k4dGweLpm2wTvRXKuj6QeNMgReD3un2alRlfu9gvABgmcOvAmXWoI+7Lw
         /kkQ==
X-Gm-Message-State: AOAM530jfQo+JciCCye3ash0/cJ36UT7g7ssQ81bVq+BWOyKCv/e+I7H
        ISHb4t7p0OxxibRQmKTKHiHzbg==
X-Google-Smtp-Source: ABdhPJwfyRlomaFcVJEIpG3tdSZCmtGrVkln0decCB5296QertvgjohHN7nbwkWSBmkQE9bZMDvvWQ==
X-Received: by 2002:a1c:4e03:0:b0:38e:d730:11eb with SMTP id g3-20020a1c4e03000000b0038ed73011ebmr3143904wmh.191.1650023999647;
        Fri, 15 Apr 2022 04:59:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b0038e4c5967besm5328568wmb.3.2022.04.15.04.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 04:59:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org, stable@vger.kernel.org
Subject: [PATCH v5 2/4] media: i2c: imx412: Fix power_off ordering
Date:   Fri, 15 Apr 2022 12:59:52 +0100
Message-Id: <20220415115954.1649217-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415115954.1649217-1-bryan.odonoghue@linaro.org>
References: <20220415115954.1649217-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The enable path does
- gpio
- clock

The disable path does
- gpio
- clock

Fix the order on the power-off path so that power-off and power-on have the
same ordering for clock and gpio.

Fixes: 9214e86c0cc1 ("media: i2c: Add imx412 camera sensor driver")
Cc: stable@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/imx412.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
index e6be6b4250f5..84279a680873 100644
--- a/drivers/media/i2c/imx412.c
+++ b/drivers/media/i2c/imx412.c
@@ -1040,10 +1040,10 @@ static int imx412_power_off(struct device *dev)
 	struct v4l2_subdev *sd = dev_get_drvdata(dev);
 	struct imx412 *imx412 = to_imx412(sd);
 
-	gpiod_set_value_cansleep(imx412->reset_gpio, 1);
-
 	clk_disable_unprepare(imx412->inclk);
 
+	gpiod_set_value_cansleep(imx412->reset_gpio, 1);
+
 	return 0;
 }
 
-- 
2.35.1

