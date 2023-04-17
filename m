Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04086E4129
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230443AbjDQHgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:36:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230449AbjDQHgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:36:17 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9CB84214
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:35:03 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2a8aea0c7dcso10305391fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681716899; x=1684308899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n47v9+PzhQgXr23TTNhsK7isjIIKM72ZIjxtKH7ks7Q=;
        b=q5yMGpOVyeyFCk+S0Ffj+uDLwQX1UOOr4uKsV6Wz3P69P9eIzxL57eahmDFLtoDCr1
         9spzByynB6vOIJTvgD7o6auKxzc2fYDstW89N7lKOyWaiY0NSOUN07Ex2YGqUndJFVZH
         CtdBourk1Fb4eUKGsqmtvcb+tEvXtOgqVeWpYpBuOye580U/kPK7DAwVs/vfgpGNEhRa
         KkmmtCCvYs7xHeMWe/2gEvzOSfMU/4aHSDTXUYdVCBuzie7kNpu2y3DPT8x4GkMP3Kd8
         dJRSXuYdOkz7x7DCcOyg6oMFtGMldgtB900Fv1ysiJkIYjsrJxiZA4FO1hfhotwxS93A
         o1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681716899; x=1684308899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n47v9+PzhQgXr23TTNhsK7isjIIKM72ZIjxtKH7ks7Q=;
        b=d6k1Nqf4ww4X23FDyxH3caZk9GgGMDpPoHhi6JdDNUq7SPa7+NeNUHT8/zQZnmWOT5
         Foyt7U7XVCuSf0MEbx0akJYC8Hod7AXRQMoq61EBcd1UDh2sdPTt3VpJI+fJgoBVJMON
         vq2Vsa3QVIBO5PoW28DnyZYesSQufkvVtrB2v2ysdYVBjMyKk0eY0bduX5V7HXfdnPT0
         mJA2wT5H5JowyxvPRa0XtMJTBu88wTiZ7cGM8/z6vjo4TfZQBMpuySsh3QEtEe6F3P0U
         iOwjl+0xCTqhV4CuDTGhhiW2VmwIFzNl6Gz7FbV+Ocj5m/pqglHK6oE1FvZOef66k4Xq
         dVPA==
X-Gm-Message-State: AAQBX9foxxphpoBihz3TF1vkE18JLCP3Tx3Vn4whU5en/EXlmW8Zf9iy
        EOS4br9LjcHrglldXXzufme4Cw==
X-Google-Smtp-Source: AKy350Y3aoSR3pxVPSyf35wftXXudu2hZ2TSxbE4T9ejSSxyln411KwE9XoAOTwQq4x5ybYzVjEN8A==
X-Received: by 2002:ac2:4848:0:b0:4db:28ce:e5ef with SMTP id 8-20020ac24848000000b004db28cee5efmr1635960lfy.0.1681716899646;
        Mon, 17 Apr 2023 00:34:59 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id w15-20020a056512098f00b004eb2f35045bsm1956275lft.269.2023.04.17.00.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 00:34:59 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 17 Apr 2023 09:34:57 +0200
Subject: [PATCH 2/2] misc: sram: Generate unique names for subpools
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230417-ux500-sram-v1-2-5924988bb835@linaro.org>
References: <20230417-ux500-sram-v1-0-5924988bb835@linaro.org>
In-Reply-To: <20230417-ux500-sram-v1-0-5924988bb835@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current code will, if we do not specify unique labels
for the SRAM subnodes, fail to register several nodes named
the same.

Example:

sram@40020000 {
  (...)
  sram@0 {
    (...)
  };
  sram@1000 {
    (...)
  };
};

Since the child->name in both cases will be "sram" the
gen_pool_create() will fail because the name is not unique.
So let's use of_full_node_name() instead of child->name
so the name is "sram@0" and "sram@1000" respectively.

However if there are two or more SRAMs on the system
with subnodes named the same (that exists on the U8500)
then this again will not work. So catenate the top node
name and the subnode full name to form a string that will
always be unique.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/misc/sram.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index f0e7f02605eb..84d4e090678b 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -240,10 +240,12 @@ static int sram_reserve_regions(struct sram_dev *sram, struct resource *res)
 				goto err_chunks;
 			}
 			if (!label)
-				label = child->name;
-
-			block->label = devm_kstrdup(sram->dev,
-						    label, GFP_KERNEL);
+				block->label = devm_kasprintf(sram->dev, GFP_KERNEL,
+							"%s-%s", dev_name(sram->dev),
+							of_node_full_name(child));
+			else
+				block->label = devm_kstrdup(sram->dev,
+							    label, GFP_KERNEL);
 			if (!block->label) {
 				ret = -ENOMEM;
 				goto err_chunks;

-- 
2.39.2

