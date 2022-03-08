Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C601F4D2102
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 20:09:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349885AbiCHTKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 14:10:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349884AbiCHTKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 14:10:22 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A624A918
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 11:09:24 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id z12-20020a17090ad78c00b001bf022b69d6so210887pju.2
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 11:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
        b=ia6LpA7WceZ4f03km26fJVpfZ4ixhMsuxFoCfP9TgIF8ypocAYjFCdR+s8YnhP9Zy4
         jCokCj4KV0dQ+s1mkZorQ2Os1jPQWNUQXHIDTUeYkJ0atBuLmIRbSOWR+ArgHYQGuOun
         QFhYo1L4C86o/w+h6WiPFMaRdpqNiP0+L5PqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
        b=2R5GWzDa2Q2ZOUr0jI8CUJ5hYvaNAagllNBpVE4FNK+3UlJup/2abbEI1Jf8zlyb9X
         6rtoCHC2Y+BOMVTGBA/DV7x+kiSUTV/AuSAXgIJMShv2yDRF67xK0m87d0tm+CJPQO5a
         IVi9h+nJBP1Yw4Dn0TfEnukuEPNh5hmrCy8AEfOxNupUhIyiynpfIuzEjor5eV1TbDRw
         mjGO2TRbOJm1FMbaTpl6S4zjsXExWJbyGsAEm7YIlp1v3s5Ek7gEhXK/gj5OBhNPRnbC
         /dPMuiG//B3OvU1KATirJhnixmrv6UM1A9Ic5tGjWrGXSZoj2Ty6VKTwwHeJk0NFEtl2
         pBLw==
X-Gm-Message-State: AOAM530ETZmZfa/ezF3pGrfzFbr+cmiACb7ib29aeozZbekCQtr6VTxB
        IoBr97SsotBiGXn4qqqJGsvGLA==
X-Google-Smtp-Source: ABdhPJwHFfOX969K7axpRvKBZTipkQuA9fBVIEHWS27NildAkKpn5ETWs6/B2N5QI1yzAw3MwfofWw==
X-Received: by 2002:a17:902:7e4d:b0:14f:e295:5a41 with SMTP id a13-20020a1709027e4d00b0014fe2955a41mr18835755pln.27.1646766564094;
        Tue, 08 Mar 2022 11:09:24 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
        by smtp.gmail.com with UTF8SMTPSA id w23-20020a627b17000000b004f6cf170070sm13970753pfc.186.2022.03.08.11.09.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 11:09:23 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Derek Basehore <dbasehore@chromium.org>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org, Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 06/15] PM / devfreq: rk3399_dmc: Drop undocumented ondemand DT props
Date:   Tue,  8 Mar 2022 11:08:52 -0800
Message-Id: <20220308110825.v4.6.I4bd77eb751d5bfce8346bfed576bcacb28e4550f@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These properties are:

* undocumented
* directly representing software properties, not hardware properties
* unused (no in-tree users, yet; this IP block has so far only been used
  in downstream kernels)

Let's just stick the values that downstream users have been using
directly in the driver and call it a day.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v1)

 drivers/devfreq/rk3399_dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 293857ebfd75..e982862f6ac2 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -430,10 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		goto err_edev;
 	}
 
-	of_property_read_u32(np, "upthreshold",
-			     &data->ondemand_data.upthreshold);
-	of_property_read_u32(np, "downdifferential",
-			     &data->ondemand_data.downdifferential);
+	data->ondemand_data.upthreshold = 25;
+	data->ondemand_data.downdifferential = 15;
 
 	data->rate = clk_get_rate(data->dmc_clk);
 
-- 
2.35.1.616.g0bdcbb4464-goog

