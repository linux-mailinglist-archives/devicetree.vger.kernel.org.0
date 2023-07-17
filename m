Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC5DA756EA0
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 22:54:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230241AbjGQUyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 16:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231338AbjGQUyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 16:54:03 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E033E10CC
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 13:54:00 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6b9d68a7abaso967286a34.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 13:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1689627240; x=1692219240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GawPkfDxLG3hfeDx0w3lYK35PM3sgJyj2R2oS+jmaF0=;
        b=li1I5yuk/FWHcygoZC5vgoBrwA8v6JlxsaCGCv55YtcbRS6bLCFTylJhXUr68Vs/q6
         KXvwTVdJpGs/J9Tk4kHohb98Ct3cPpQVWRQyNCN4fnyNYgY6BaEfA9zRYF+6wWcL7P4Z
         HZkrpDbiYPtoXE9d/fu7pvxGeLgriwn/Fmwx+nectT77VXWtF2YZsB0+xO0AX4HyX+Li
         npeXJn8Qv95Se3/xzM4zc5wysT6YMT9Qbxl4CToL7BWxP/dg5LBXT2M4/eSuCbOcV2E6
         zOVsXqZU7xeIMLbMR9HgFR2gsbDEQgSjN4miqyiG8A8HjPJuSw0ydzlNG1zCz2K45T2S
         8yiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689627240; x=1692219240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GawPkfDxLG3hfeDx0w3lYK35PM3sgJyj2R2oS+jmaF0=;
        b=kTEgRPqCFP6b2OH00+849QrjzSlsZsQ7D4MPAvR2MQgfJ2YoZOrnYD9+YoG6M2iY+M
         Nngdz8GGb9iCaVorHHv0K66zHW7UvrgdFMOltai2yuU8xYQsA5A0px38XbO3rL4uG49f
         d42qwJbqnc2iqQHeRO48Kkg2E2atmwlwAJn31wMRWrkAfG221MucKRtOW98jl/5qmEcg
         vyid2D8mbWMZilKyKcmUS/6ZQDBSCbhmF/RKdhwLCMeFs3VGgee8kDd44hNwD3ZCeT9U
         1JbE9Cknj2PLnil4D0/mSHyZpV0pd0ADw1wLR1aYR3WxzHtFPOdzW9zNZsMiN6TcvZg8
         ycQg==
X-Gm-Message-State: ABy/qLZJKr4JuNtATYyjeWuTFu16OGcZRz5X6ZuqPsgzEWoS9+XkzF/j
        VKoswF8/o04Uwr5D6I50dtH2BeYWtjLr1UgyUawrcw==
X-Google-Smtp-Source: APBJJlF8PV5aAI+WEINa1054HAKho3sN3sqLpoatkwUoBsIZL2mwIwUlOkjl5BlFo06M5rImuQrP6g==
X-Received: by 2002:a9d:748f:0:b0:6b9:bf1e:c141 with SMTP id t15-20020a9d748f000000b006b9bf1ec141mr7785270otk.23.1689627240249;
        Mon, 17 Jul 2023 13:54:00 -0700 (PDT)
Received: from sw06.internal.sifive.com ([64.62.193.194])
        by smtp.gmail.com with ESMTPSA id z8-20020a63b048000000b0053031f7a367sm206991pgo.85.2023.07.17.13.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 13:53:59 -0700 (PDT)
From:   Samuel Holland <samuel.holland@sifive.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Samuel Holland <samuel.holland@sifive.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] of/irq: Export of_irq_count()
Date:   Mon, 17 Jul 2023 13:53:56 -0700
Message-Id: <20230717205357.2779473-2-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717205357.2779473-1-samuel.holland@sifive.com>
References: <20230717205357.2779473-1-samuel.holland@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This function is used by the SiFive GPIO driver. Export it so that
driver can be built as a module.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 drivers/of/irq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 174900072c18..9cea7632dd6a 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -489,6 +489,7 @@ int of_irq_count(struct device_node *dev)
 
 	return nr;
 }
+EXPORT_SYMBOL_GPL(of_irq_count);
 
 /**
  * of_irq_to_resource_table - Fill in resource table with node's IRQ info
-- 
2.40.1

