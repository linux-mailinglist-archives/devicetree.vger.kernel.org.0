Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 892E36879CE
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 11:10:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232425AbjBBKKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 05:10:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232063AbjBBKKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 05:10:50 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D160887147
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 02:10:45 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id d26so1079101eds.12
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 02:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+hlNY5B/klsyya+nH+r5oeG/sby85/Iq+6HEL0mAONI=;
        b=CQq4zMFEwVHMP/JBxiPgS4Cpr/3BnidqfbYtvFHizhiFosbIn7PUBjIGPuJLmYByit
         eNvJ9zpEA5Rxidc2r8bczi/GF2kLIlx+c1r90VC13EJCksnmHqGe9wfE1Y+T4WLYTShU
         CNf2dV25KdJliCH9u4f4zivAb2H58Cj08OLdDhxqaMt2omy7BM9cAg7IGds1xHjQyD3y
         zdRaGC/p2Q/3wqV3ADaHL8TciQjCiGafyEZ+Q4a/3Z6aIrJ8js09cth8BFjjRfU/K6+z
         saCRQZX54/IzD00Eida9MpqntffrPOUKLeXwv/lvKZtptT8fEN7JRahp+aXX5t7KsIl0
         iMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hlNY5B/klsyya+nH+r5oeG/sby85/Iq+6HEL0mAONI=;
        b=fAPl6a6INAMFWbqnE8Bs0cE+zgkRf2AO990zIGWB6WPuYKDGrrHK3uOtcdyt76toIz
         oxTqlFy5gK4lKytMS18NnIX4tisCmGv3ZOsV/SR0kNFP2gxHlvm38uC3hPAp3UAy9atq
         /67Wleqd/dC1AJIGAmolNzCAkF16XHcevWyFsZWIbvLYsXBiDhGtYzCo5aE5IKkUNapW
         J/ZK0dQMymdQBLn2aXCAgntOkU21dgSZvo8diRUC7gaAdJAotLJlFfR7TYUSiasjvAgT
         bbn6uqyW28BNpuZurwl47BqYnQqOuRsxPBKqc3WNAWQMxqZ24dnEqszbzMOOrQS+IzMJ
         2CiA==
X-Gm-Message-State: AO0yUKWu+GzPbNEpdqdfzxkx1tMjFksOw2/8+FolCmnFfSWwVJvBJ/1o
        wayS1p/Kprqvs8wGIVkyf0Qtiw==
X-Google-Smtp-Source: AK7set86a/oyNTamZxxPN+DnRbu1WLx8yvhx7Ixw80NGnZCjxR05YMVeq7BUof9xLM1YngCYUYIdDA==
X-Received: by 2002:a05:6402:913:b0:498:e0be:318b with SMTP id g19-20020a056402091300b00498e0be318bmr6139259edz.38.1675332644409;
        Thu, 02 Feb 2023 02:10:44 -0800 (PST)
Received: from dtpc.zanders.be (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id t13-20020a50d70d000000b00458b41d9460sm11155816edi.92.2023.02.02.02.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 02:10:44 -0800 (PST)
From:   Maarten Zanders <maarten.zanders@mind.be>
To:     Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     Maarten Zanders <maarten.zanders@mind.be>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] leds: lp55xx: configure internal charge pump
Date:   Thu,  2 Feb 2023 11:10:30 +0100
Message-Id: <20230202101032.26737-1-maarten.zanders@mind.be>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
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

