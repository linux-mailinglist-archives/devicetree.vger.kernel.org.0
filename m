Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32B516878B1
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 10:24:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232020AbjBBJX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 04:23:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231764AbjBBJX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 04:23:58 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B90C06EDFD
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 01:23:55 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id qw12so4199978ejc.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 01:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pylWIAOIiR5skZ+1kMPoVcH9WvFuUK+jl3IbeuDoWjc=;
        b=JB/kNWdhKyrzvI6OOcUBul4X7b7Gc8XUGhuDDBnhnXc6sj9ZwK3XOlHV504iRfRWcL
         bmDhDvWLSDGfkW4W9B3YXYrGYs5fJcKPzNH3eEbulmHOJkryhXG+g9YIenQBjmI9WdFW
         sEPPjIxxc1z370K/kWS1JcUQ++P4vftF93fLBtCYX00XEfsLJpJVHQPfeYnYmTiLdKlb
         /lLhZB9rd7touERwPcjW8TA6iiAz+Srwyj5eR76sT2ls2EyoGOk15ividhHpthXpiwn8
         5f39fJHSwwUaColQDN58sfEZHhtWIVviD7fJlce0CBTwf/7/fQQixTluQEKXec9VxF5Y
         n4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pylWIAOIiR5skZ+1kMPoVcH9WvFuUK+jl3IbeuDoWjc=;
        b=kEr1aSnHu/a6dNp5CNGwNCOy7946ueNfclbycc9gyh8ZyyRyQPJ12vlvj8q24aFh+H
         RS9w3bWYK2JFBXcHznl5blhvpNKFkfMTaWvZ2kDQWoltHLdLQh71nW0ZEXCPIOCil6rg
         muBST4lojNVL3+F8u5RXwJMTMP/pxcL45IgUreNsjr/Y6P54ELRp5pi5HgbHjfolwXo+
         IEU/sH8e8mWGCQEwSf+Wg+lZvR76nN1gkjA0PLqoYlYwKucLTKu6fBzCeb3CMMbiPUD0
         vsD1DnNIWiq92wcoX6dCF/98bVX84jLZyp7Y1DVEzm7TlEl61EESprur2KCCcgOeSlzF
         QCdA==
X-Gm-Message-State: AO0yUKVegOHvI39hX9defv7OtxBNbsKKXSLIbL0y4jLzwQdsb7OBHGKL
        q4whEbaLLsZKi7CyPF+ADS1BkA==
X-Google-Smtp-Source: AK7set/n3JVz221kaZq3wXdWomFwew7p7XaEOoJoRxKDtdYwTnH+nnAIEsHoj4PcC7Dd4wFL9H5tFw==
X-Received: by 2002:a17:907:1607:b0:7d3:c516:6ef4 with SMTP id hb7-20020a170907160700b007d3c5166ef4mr7261465ejc.20.1675329834223;
        Thu, 02 Feb 2023 01:23:54 -0800 (PST)
Received: from dtpc.zanders.be (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id j4-20020a170906474400b00856ad9108e7sm11372658ejs.70.2023.02.02.01.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 01:23:53 -0800 (PST)
From:   Maarten Zanders <maarten.zanders@mind.be>
To:     Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     Maarten Zanders <maarten.zanders@mind.be>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] leds: lp55xx: configure internal charge pump
Date:   Thu,  2 Feb 2023 10:23:23 +0100
Message-Id: <20230202092325.21241-1-maarten.zanders@mind.be>
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

v3 (this version) replaces the string by constants.

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

