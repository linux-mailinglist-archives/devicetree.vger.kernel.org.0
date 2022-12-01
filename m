Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C8A663F7DF
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 20:04:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231288AbiLATEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 14:04:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231206AbiLATEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 14:04:33 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21023C5E24
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 11:04:32 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id w15so4316841wrl.9
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 11:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7p4ZRoKY8KyAbeLZ3D9FFno3zQClogoAoc0aT3MOswk=;
        b=SH2MVV3BnFZoWATkbczoZvZG/HGAyVAamyZP7S7zZvbT4k/39Bs9cHY023b3UX8VRe
         Bxsnh5DGvAll1GvjWvMRULbj9BOin2dbmJfdUFoXz5+wjtqKAVdInn2faoOlqzBtY/Eh
         Hw1E9X0lEjAiyZIkqB4zsUuT4tUcx2vv/7DhzJrdyH73lJdFJa/WGSbbrkvb2ZsZjo1I
         ADFh2K4rkfPwEkbZ4aruEo4y8q4kgpeWv06BrgWQih3SH3hETYeiH8RnnuFe6qxtOlE5
         mQZSSJ/JgPw71vj+9t2hVwmLoOH/GWhMs9tPQ3+DQeYBk5j4sQCXiW2/Y7FXPa12tD75
         UOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7p4ZRoKY8KyAbeLZ3D9FFno3zQClogoAoc0aT3MOswk=;
        b=7qV6nSbKcY0PSeuIXk9nZDfElbCI8qhuHnHsaniKNeaOHPzFasBLs83+7I41YBuDe2
         Cy6Oc4wvl7i0CGlPJogK6cdulgRrDE3QPPYXKhM+o+TuvKDyosoXfoktGjDhvpN9zMpf
         8Bmfyja/+FtKEaeWXU+qe2/1IdNXNOby9yG1VjcZNQfcJoSrTqOQR4Vq/TTpyDG2Npm8
         n5CGbLJLHKagFTx/2rQSMK7CSme5adCX8LId9JbCcp1ci4+Sq2sGWG/Ah5Hl9/WRckoS
         wDq1OQgrhKI5GVUCUWaBVKpkjrVF2xHTLqK+kSoJAnrHfGOkjCCdH7/87Tu0prJuuirU
         6i4A==
X-Gm-Message-State: ANoB5pk0l3LnZCXZ7RWe5rlSa0elZjGXy4q+2oSnE9s+bnfObZRIj5Ye
        KFSuAoqJOEs6OmOmm5iT2lC3Uv4DSKhbsIxs
X-Google-Smtp-Source: AA0mqf4xHLqPxdLdu/xsizAphXKq/j4vIgsGGw8kI+lToc0HFLr8OK8KceGdOynFB2/FIQsRcT1eCQ==
X-Received: by 2002:adf:f605:0:b0:241:ea0f:f0eb with SMTP id t5-20020adff605000000b00241ea0ff0ebmr29182298wrp.358.1669921470559;
        Thu, 01 Dec 2022 11:04:30 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003c6cd82596esm11848474wmq.43.2022.12.01.11.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 11:04:30 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v4 5/5] hwmon: (pmbus/core): Notify regulator events
Date:   Thu,  1 Dec 2022 20:03:54 +0100
Message-Id: <20221201190354.1512790-5-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221201190354.1512790-1-Naresh.Solanki@9elements.com>
References: <20221201190354.1512790-1-Naresh.Solanki@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Notify regulator events in PMBus irq handler.

Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 drivers/hwmon/pmbus/pmbus_core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
index daf700210c68..dbdf8c8187db 100644
--- a/drivers/hwmon/pmbus/pmbus_core.c
+++ b/drivers/hwmon/pmbus/pmbus_core.c
@@ -3159,6 +3159,11 @@ static irqreturn_t pmbus_fault_handler(int irq, void *pdata)
 		if (ret)
 			return ret;
 
+		if (event) {
+			regulator_notifier_call_chain(data->rdevs[i], event, NULL);
+			ret = IRQ_HANDLED;
+		}
+
 		page = rdev_get_id(data->rdevs[i]);
 		mutex_lock(&data->update_lock);
 		status = pmbus_read_status_word(client, page);
-- 
2.37.3

