Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0884A596466
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 23:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237613AbiHPVP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 17:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237499AbiHPVPE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 17:15:04 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 533047A503
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 14:15:02 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z12so14038389wrs.9
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 14:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=JVsjMt/QqWDQIkbN9ThQA44X6Q8M6+q3vjfLdgd5aDk=;
        b=iUS24IUBcSYVk/v9LGcfBAbdE8omk79FTlXYwGOvTFsmSoJzzweOMg1AFAUYy7XVEk
         WvQZrYBXdPmwfaE9DFGiIykTwTb563DQ2b9zAJu+0py2W+TBnuNaQ1DKNhqtuGbFKYSp
         wvmSFO3mrElffgoZ7ie9N7PdS9M3ojmedAScRv8LBee526WL7tUDQa0lwJ51R1WgBP/Q
         CmYx/LzG99+FL/Jlf6muJvp9h7qEgIvsbynpavhBcrdE49QUroDg1nhUYRU1tsCeDwJS
         Uwk55jGxuvB8gDdyPaZITG9fDjAx0W4SzxlH0Oq9Y7+9vUFgr3fLBrVydj5LBxOEQ3Z4
         VtJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=JVsjMt/QqWDQIkbN9ThQA44X6Q8M6+q3vjfLdgd5aDk=;
        b=xXlwDlbsHANRuv/qjKXYhLlZUMQCuJwhQeFuM/Dg2CWP2YWGXOldNSQVdmx/FyiCgs
         IBtXsYo4+H0wlpW7UBUC6z8nLVZBupopvfd5i9wPQNtUQNAWiHhJllYckQzYr+JoJ6He
         HZpEryxTkmQw08ZXzS8PjPosUXRUeX+ENS9062Pj5FIvN0NkxXVqPJ9lsyi2VCLbv3/X
         a92uGUetVIPgILZlYDBPdGUYpVSFrXuzitn1L4OIUPkhjDZ79mnikY5eO3+CuFOB5Aci
         JvipDmeed+mMXJjhlPHjSvLqXu/zEXfq2212c8it+Q3QxGksN8ft8amljqNTfwkjoPNB
         EEUA==
X-Gm-Message-State: ACgBeo3TNBUfqjG1DEAWU5yNzHG+A5xco4m68XEK6yRnXsF+9pV7Qzf/
        oR8K0avstQGjWXoPdwezQUm0OOBRv4ii7g==
X-Google-Smtp-Source: AA6agR6rJEVM9k9/OFm1EphK5seIurmVKIY8ySy6UTIsjCCBbjyGKDkT0GFwfz2i0yAL0c8lmyMmWg==
X-Received: by 2002:a5d:47c6:0:b0:225:fd3:f0c0 with SMTP id o6-20020a5d47c6000000b002250fd3f0c0mr4282371wrc.308.1660684500588;
        Tue, 16 Aug 2022 14:15:00 -0700 (PDT)
Received: from rainbowdash.office.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id r4-20020a1c4404000000b003a3170a7af9sm23913wma.4.2022.08.16.14.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 14:15:00 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [RFC v4 05/10] pwm: dwc: use devm_pwmchip_add
Date:   Tue, 16 Aug 2022 22:14:49 +0100
Message-Id: <20220816211454.237751-6-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220816211454.237751-1-ben.dooks@sifive.com>
References: <20220816211454.237751-1-ben.dooks@sifive.com>
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

Use devm_pwmchip_add() to add the pwm chip to avoid having to manually
remove it (useful for the next patch which adds the platform-device
support).

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 drivers/pwm/pwm-dwc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index 61f11e0a9319..56cde9da2c0e 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -242,7 +242,7 @@ static int dwc_pwm_probe(struct pci_dev *pci, const struct pci_device_id *id)
 		return -ENOMEM;
 	}
 
-	ret = pwmchip_add(&dwc->chip);
+	ret = devm_pwmchip_add(dev, &dwc->chip);
 	if (ret)
 		return ret;
 
@@ -254,12 +254,8 @@ static int dwc_pwm_probe(struct pci_dev *pci, const struct pci_device_id *id)
 
 static void dwc_pwm_remove(struct pci_dev *pci)
 {
-	struct dwc_pwm *dwc = pci_get_drvdata(pci);
-
 	pm_runtime_forbid(&pci->dev);
 	pm_runtime_get_noresume(&pci->dev);
-
-	pwmchip_remove(&dwc->chip);
 }
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.35.1

