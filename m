Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 430B9571669
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 12:01:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232641AbiGLKB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 06:01:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232605AbiGLKBX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 06:01:23 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA949AA807
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:01:21 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id v14so10429940wra.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WaBngfIDgp+LuYX1yI+DuPwYnhSYuzqWt4Zv2kZu9UE=;
        b=l7eZFJcJjy02hiCtLaYjG3pmxwIqQOvU0o8LtV/2I8qD0vTExnm3F/J3gL4tWXU3EV
         Jv+jDFJk++BushXe0sd2dYRSC6JvuguHOqdRO5gZPH5yWOtVMw0SsbyIHkBrfSqxHX0K
         sGsPWeI5UbaHE5gt2SiwaAvApfrhAvCwSoqjEM5kv2huuQfTdFOleCwOYhap1jA/MXV6
         1pzVxstOovQGA4dRB6744NoadZdGuJvBZO1hq7obwxEATP6MkweR7MhbQfDYFqxtEiXp
         iQi34kMLIXJrBTlWj97Z6V/u9xLB/R7jUm/PUujEbNQe0ABhXLl4dngW55zClPjr+o7B
         nN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WaBngfIDgp+LuYX1yI+DuPwYnhSYuzqWt4Zv2kZu9UE=;
        b=c7VK/asC3SQrRK9yBNmNBewHENYuDfaFSfSxLAAVjfcN96z7zl3dRDuJ91mbYLsSVQ
         fcAfb6pPnvkM3aQlSBLsoq3LAJN9YatM3xdfZ94PRw4TR3jIvbYH/GZUOiXyuxpm+HGB
         DzbFnN3ADXO42kIiJ3kfi/bPqp6iC37+SprWX+w0bNs9EO84qy0RdfPhgsjWo+eVSbdM
         WInzbqrpOqnJqWDu+0ZzuBTvZblF8vDfs7eLloDfV5yCzEUAXJZn1KxqjndhtTYygO5t
         ERkBt9F4jF6ft/uW9DUDvJiDy0Fh4xaL+dXkZ9ekB4uiR+IEVEQIG7Us6PfXyQ9OKyvK
         UrVA==
X-Gm-Message-State: AJIora9kpVrLM81jVjixeSpNEgeKv17DQrCIfF94zRUcCadDpbOn1+nh
        s3fWXys4uivDwpaXXlQXyie17wSOXbR1TDrh
X-Google-Smtp-Source: AGRyM1tjuhj3fWcPk98gcG1UWjgb3bac6LkRqQ0xSaH8sflc+6uHypIdsHB5bZgp7LLLI51pyzIxVw==
X-Received: by 2002:adf:fb0e:0:b0:21a:34a2:5ca9 with SMTP id c14-20020adffb0e000000b0021a34a25ca9mr20980349wrr.472.1657620079470;
        Tue, 12 Jul 2022 03:01:19 -0700 (PDT)
Received: from rainbowdash.office.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id u9-20020a7bc049000000b0039747cf8354sm8895314wmc.39.2022.07.12.03.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 03:01:19 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [PATCH 4/7] pwm: dwc: allow driver to be built with COMPILE_TEST
Date:   Tue, 12 Jul 2022 11:01:10 +0100
Message-Id: <20220712100113.569042-5-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220712100113.569042-1-ben.dooks@sifive.com>
References: <20220712100113.569042-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow dwc driver to be built with COMPILE_TEST should allow
better coverage when build testing.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 drivers/pwm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index e1aa645c1084..e654655c4b3f 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -166,7 +166,7 @@ config PWM_CROS_EC
 
 config PWM_DWC
 	tristate "DesignWare PWM Controller"
-	depends on PCI || OF
+	depends on PCI || OF || COMPILE_TEST
 	help
 	  PWM driver for Synopsys DWC PWM Controller attached to either a
 	  PCI or platform bus.
-- 
2.35.1

