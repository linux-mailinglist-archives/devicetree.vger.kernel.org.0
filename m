Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB486D1F5E
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 13:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231708AbjCaLq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 07:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230470AbjCaLq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 07:46:27 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A315B9E
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 04:46:23 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id v6-20020a05600c470600b003f034269c96so3427229wmo.4
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 04:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google; t=1680263182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2YgtMY8rBbFDXVJjPME76ymsc8nBCpDUqB96SgLmnX0=;
        b=MB9rgx3XhD1mfFiXKUGIW3KhFITgeb+tY0pPl5VRrhpIR0dlmMfO4uJ1PcZJUDoGKv
         93eMs1YJoDKjlFCFsXB96OmSQXUO+gHr1EgepyHZM1g/tHnNzgWn/ukOtc9/wodqN8F1
         UkiyTFi80AiS4leZuxkoIc2ygYvqSAKKNbNwZEeNt7efMxflB0k+tKPdQrcixgQz8So8
         miM4bQ55wuzxfclz2eK+b9t8WdWY+ngUERXNIeuaiOJDBbfY0eJAsCcLtdNkmmv2u3bH
         Uf5sgScMIm9alve0IT59ltkV2eVorsZZ5+IYNAYLp4t5pV7y3y2/18yRzFaWApUJIJMd
         VKfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680263182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YgtMY8rBbFDXVJjPME76ymsc8nBCpDUqB96SgLmnX0=;
        b=wMoT28fKDV3X5wPIHpMpEYDDH5+TILLthRqsHyUlXDXLT+OQXX3D37uBjTMXo7iXpo
         EF1Kh1+e41tMjxpqLTCasvIIypRquTSGom7dzFDHfy666R2v695kXxlhfFIS9KcxU0at
         L6oAxDUIJweytHlaYYbhLn/7eKUUfzQBhJ1H8S/qxUuUHnpJDGHetAbQUklzq8dMoPrT
         sQ485o57849ozWOG3OOQKJ5odP7OonSw1nsRB2Rc+1TLGxJtUDZWVrwppEzPlA1sQShA
         iWt/90M7Q5c3smUvoiQjFEDoamO5HmBbpufXh9wai+/fle5hngEyhWV7g2J2CliqI3JH
         O/5g==
X-Gm-Message-State: AO0yUKV2O5poGuKEp8owHGXaUjg6NRmrQ41WNdcYlieeQZpJwtWxZ1n1
        vrgADzGCxt75ge928cf6z9r7Zg==
X-Google-Smtp-Source: AK7set9s8XEbyQRDwJc1TmeL9lvwv79e3Eemq1LT2vC9tCHSPPFi7fX32F8utV9Q6wBwVJILik8rkg==
X-Received: by 2002:a05:600c:acb:b0:3ee:4f92:907b with SMTP id c11-20020a05600c0acb00b003ee4f92907bmr19975109wmr.14.1680263182009;
        Fri, 31 Mar 2023 04:46:22 -0700 (PDT)
Received: from dtpc.zanders.be (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id s17-20020a7bc391000000b003edef091b17sm2404017wmj.37.2023.03.31.04.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 04:46:21 -0700 (PDT)
From:   Maarten Zanders <maarten.zanders@mind.be>
To:     Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     Maarten Zanders <maarten.zanders@mind.be>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/2] leds: lp55xx: configure internal charge pump
Date:   Fri, 31 Mar 2023 13:46:08 +0200
Message-Id: <20230331114610.48111-1-maarten.zanders@mind.be>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A new option in the devicetree "ti,charge-pump-mode" allows the user to
configure the charge pump in a certain mode. The previous implementation
was "auto" mode, which remains the default.

v1 of the patch implemented a bool to disable the charge pump and had some
issues in the yaml binding.

v2 implemented all options of the charge pump as a string which was too
complex to parse & check.

v3 replaces the string by constants.

v4 resend with changelog (notes) in each patch

v5 dual license in dt header, change property type to u32

v6 change license type, simplify DT parameter check

Maarten Zanders (2):
  dt-bindings: leds-lp55xx: add ti,charge-pump-mode
  leds: lp55xx: configure internal charge pump

 .../devicetree/bindings/leds/leds-lp55xx.yaml  |  8 ++++++++
 drivers/leds/leds-lp5521.c                     | 12 ++++++------
 drivers/leds/leds-lp5523.c                     | 18 +++++++++++++-----
 drivers/leds/leds-lp55xx-common.c              | 14 ++++++++++++++
 drivers/leds/leds-lp8501.c                     |  8 ++++++--
 include/dt-bindings/leds/leds-lp55xx.h         | 10 ++++++++++
 include/linux/platform_data/leds-lp55xx.h      |  3 +++
 7 files changed, 60 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/leds/leds-lp55xx.h

-- 
2.37.3

