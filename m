Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 232E05F5C7C
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 00:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiJEWMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 18:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiJEWMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 18:12:51 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B8CD83069
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 15:12:50 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b7so20217576wrq.9
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 15:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=BEOpRioXienSDDf6vjruAkPlsDKDhUNbn1dmZioZ4X4=;
        b=VSxSa3rea769WcJeCZBGNkJoHT2kIKG/V+nPY89aK3CfQRIT8MMN9BaN/doC1InOFa
         6fqL0v1UA5Z1Acp4mdOx9NboMCQHfhaEm34AyEe7VMrz+jMoHYo/gRv0hV6d/1NP/Lfa
         7TZ873O/ppGZlkmfFJ0Rz37fORUXoonDeMwOPTsFEfpdmTkrm6g4UtvpVta6Kwywqaj9
         XLTZtQf04xQgzJUAyvsCDSmHWXM5oM+kKGR9CAomBI3BRyFYdmROqMgSX3DbMRDKkNQ6
         FEUEUTBE+Y+0fAeFqozz5OKBhftilOsww2VBKbiW1cpz5IQXNu3SyNqHz1qIKzZGKRuH
         wDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BEOpRioXienSDDf6vjruAkPlsDKDhUNbn1dmZioZ4X4=;
        b=b9gYSP4FTk3Kmaqd1SSmqx0wyq1cCqLcdahKGkLylto+ZFlWlk04vA6RdhPmN7UVBR
         5lv6TnqbWyBUQQXxKB0Frxa1fp+PX465stoPub7w4bzFH0NrOm8tH2DRKSTD/cDGdnne
         WlAydetaNpbDNEHzSIUZ9Y2ZNq/3qw8o1WaI1YUxEgA5R2E1J3q2fjLswPdN4Ux5in96
         YRAFHXaLt/7CZWMRv5vCdT928cm2J8MWVDFD53yOKqfazuEwqVlpT7zaft/f+WFTKb7S
         Zjq6aPvjM2H2LeJEJxv3Lw1ix1TwKWEhgE1KbI+RJLwARn/zCRiwMBVESJqMOOL3/bI1
         bSBg==
X-Gm-Message-State: ACrzQf2ZlPgwPc4D0+u8b/M8ZqTfhTCVjI5yvtaLVE3BfUTm/wGUXt08
        knUYsVfaDzvGp3X9v5giH4+fjQ==
X-Google-Smtp-Source: AMsMyM482vi2maJSOPEx3SNNXxYZFc6clxuujhf+yB8wdjpjq6Wh4uT014rkevtaTy87y9llX+CB5A==
X-Received: by 2002:a5d:428c:0:b0:22e:5d4e:c71e with SMTP id k12-20020a5d428c000000b0022e5d4ec71emr1016893wrq.19.1665007969099;
        Wed, 05 Oct 2022 15:12:49 -0700 (PDT)
Received: from rainbowdash.. (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id d2-20020adffd82000000b0022e327f849fsm12184437wrr.5.2022.10.05.15.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 15:12:48 -0700 (PDT)
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
Subject: [PATCH v5 03/10] pwm: dwc: change &pci->dev to dev in probe
Date:   Wed,  5 Oct 2022 23:12:35 +0100
Message-Id: <20221005221242.470734-4-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221005221242.470734-1-ben.dooks@sifive.com>
References: <20221005221242.470734-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The dwc_pwm_probe() assignes dev to be &pci->dev but then uses
&pci->dev throughout the function. Change these all to the be
'dev' variable to make lines shorter.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/pwm/pwm-dwc.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index 7568300bb11e..c706ef9a7ba1 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -202,14 +202,13 @@ static int dwc_pwm_probe(struct pci_dev *pci, const struct pci_device_id *id)
 	struct dwc_pwm *dwc;
 	int ret;
 
-	dwc = devm_kzalloc(&pci->dev, sizeof(*dwc), GFP_KERNEL);
+	dwc = devm_kzalloc(dev, sizeof(*dwc), GFP_KERNEL);
 	if (!dwc)
 		return -ENOMEM;
 
 	ret = pcim_enable_device(pci);
 	if (ret) {
-		dev_err(&pci->dev,
-			"Failed to enable device (%pe)\n", ERR_PTR(ret));
+		dev_err(dev, "Failed to enable device (%pe)\n", ERR_PTR(ret));
 		return ret;
 	}
 
@@ -217,14 +216,13 @@ static int dwc_pwm_probe(struct pci_dev *pci, const struct pci_device_id *id)
 
 	ret = pcim_iomap_regions(pci, BIT(0), pci_name(pci));
 	if (ret) {
-		dev_err(&pci->dev,
-			"Failed to iomap PCI BAR (%pe)\n", ERR_PTR(ret));
+		dev_err(dev, "Failed to iomap PCI BAR (%pe)\n", ERR_PTR(ret));
 		return ret;
 	}
 
 	dwc->base = pcim_iomap_table(pci)[0];
 	if (!dwc->base) {
-		dev_err(&pci->dev, "Base address missing\n");
+		dev_err(dev, "Base address missing\n");
 		return -ENOMEM;
 	}
 
-- 
2.35.1

