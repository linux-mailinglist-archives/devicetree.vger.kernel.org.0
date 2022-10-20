Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C693D606405
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 17:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbiJTPQU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 11:16:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiJTPQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 11:16:19 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C51147054
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:16:18 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id bu30so35080103wrb.8
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOKidRu+yxajr1o110Z9rt8XpJh4zLytmd2a75/kdaY=;
        b=kJeYraV+chjx4w/MZhjgD8d2xGVua4ZGuZHWlb758KSGO9ChppIikvGNbRU5JuDcMT
         5q4sTiPl4qmad1XKgrkucu5HEcOejc4GFcu5wgdG9SqJ+q8uPkF7hPhQAOrjX7S6SMQq
         tMzzBzDxpSbVvqT3yGk4CY5K6Q4lfhQx/5JB6gQsuCpzeiXERrCjLmyreJDqzO599NZw
         9DzW4wTv5O3ttQZunV8Dh3TUQta4hnsv+4LwJj96Hy9dULjjR+puxvkxBClUPcltAQhV
         m0sjJHT4Vqaf0GUfjhy8hFaxm4Qh3/YDjo1HIlFdeEq1YLeGuCi2ZiwFsnaGDyPsHham
         pjYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOKidRu+yxajr1o110Z9rt8XpJh4zLytmd2a75/kdaY=;
        b=FvlhUZpHsiKwIQzsibvfvYz/i+Tvwh1rDhAV6xnsQIlhy9/7uhi2xwpj0BUXrVUNI5
         Zwdn3E4RQ9mOkXvdo6Yl0Xtgas+ZbPxr3sIQlZruTVbMJGXq9RrskXHgS0VYh+amqehq
         IBWmRmhIC72Vytji9N0e7aEoqXE+hom4DD1vXBkJgTwanfLboGl24tNEGAsdoGXCyjEu
         OuZrfhR0yTVdZyJoXIKab5S8cYkFtnVSxnQwAiqLFydNTLn+dW5Doat2e+uamu2OmUcC
         uIlNUfvTnBQprotHGwyiLZ0u7V3bgsVd/PkyNzpvwELugxn0xy8vyb8/Uu4ihjGh01zz
         4Trg==
X-Gm-Message-State: ACrzQf3yk74DDacSCRyz9Si2wjlw3gzSMhWyqhQyTy8PLzY5pyVpaWsL
        3gCFKSypXgylnofImeii4m/CDg==
X-Google-Smtp-Source: AMsMyM5qyB4bwOpUIYl9vi1zgJNgu2I+7YGLZ5w0AMEMM42WxAUOza4QELi8lmWd2SJCPtFdIwIfmg==
X-Received: by 2002:a5d:494a:0:b0:235:4b14:4c7e with SMTP id r10-20020a5d494a000000b002354b144c7emr3453423wrs.174.1666278976603;
        Thu, 20 Oct 2022 08:16:16 -0700 (PDT)
Received: from rainbowdash.guest.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id bg6-20020a05600c3c8600b003c6f3e5ba42sm41362wmb.46.2022.10.20.08.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 08:16:15 -0700 (PDT)
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
Subject: [PATCH v6 02/10] pwm: dwc: allow driver to be built with COMPILE_TEST
Date:   Thu, 20 Oct 2022 16:16:02 +0100
Message-Id: <20221020151610.59443-3-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020151610.59443-1-ben.dooks@sifive.com>
References: <20221020151610.59443-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
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
v4:
 - moved to earlier in the series
v3:
 - add HAS_IOMEM depdency for compile testing
---
 drivers/pwm/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 60d13a949bc5..3f3c53af4a56 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -176,7 +176,8 @@ config PWM_CROS_EC
 
 config PWM_DWC
 	tristate "DesignWare PWM Controller"
-	depends on PCI
+	depends on PCI || COMPILE_TEST
+	depends on HAS_IOMEM
 	help
 	  PWM driver for Synopsys DWC PWM Controller attached to a PCI bus.
 
-- 
2.35.1

