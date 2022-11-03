Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B340617F97
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 15:31:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiKCObc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 10:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiKCOba (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 10:31:30 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B5F7F5D
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 07:31:28 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id z24so2452907ljn.4
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 07:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ev2PM3jAC+BP5gNCSxBm8Uq68nJ8Ls+zoXz+LBeUhJg=;
        b=dSx1XmcPIrMXx4+i4J+BcqqqfwRA94LH4eb31+1dTAl2CYVZd0DaZaUn8M5/waVRwS
         VzcXVQq6TL4vxdMgVhfBx8Wx/w48jDb0ugA21RPh3kKjjLGCvuo28uu/XoHMrgIAOie9
         GXeh17LugPldClQv/XhUFvlJY0I1oF9A4dsfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ev2PM3jAC+BP5gNCSxBm8Uq68nJ8Ls+zoXz+LBeUhJg=;
        b=oN1Set5k0hv8Y+ND2W928zKISS6mXzJLazK22R2hbJShyYOAMtSidJiqO7VkLDhJ1r
         FPO2+RHKzuTmJ+HoCsV3PP5xtKG2IgniKOVe8W6lJc68jGqaJFNp+KZpAWLEstPJ1PLa
         /29Hof31JpiksgZY+TIP/OY0XyP0cslm89DUH3XM8S3eSaso3pSmsj4U2HBk2mqnmyh9
         EfYduSTAwgBxEqEDrgQy9frmijHpR9BoVH+PZAdk00ovxpOXDpqutpX8NQupwXKEneeV
         U6n5CEBwEPVkm/MjR3OFpj8cY930uzMNWYqTJqNciXWMMHPw2pe46xrd7LLEMB/KRgRM
         LSAg==
X-Gm-Message-State: ACrzQf1mH3DfaSQf48pj3eyzUM83w2d32XYG3gZs+PAZmqQ0O9CqGDmv
        3DoD0GwTwLSxbWUUTvjz8YC+tQKuec8blFXDQsk=
X-Google-Smtp-Source: AMsMyM5RhaVZ9gN5ISW/IDhmf+uuUKl5nAjk6f1y8xjCC7jeVOnJRUhV9g/ajBm3pJtEjk2uQl1waQ==
X-Received: by 2002:a2e:9d4a:0:b0:277:86b:e23d with SMTP id y10-20020a2e9d4a000000b00277086be23dmr12124829ljj.193.1667485886789;
        Thu, 03 Nov 2022 07:31:26 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id a13-20020a056512200d00b00494643db68bsm151951lfb.78.2022.11.03.07.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 07:31:26 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 0/2] net: phy: dp83867: add DT bindings and support for active low LEDs
Date:   Thu,  3 Nov 2022 15:31:16 +0100
Message-Id: <20221103143118.2199316-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We have a board with link/activity LEDs driven by the LED_0 and LED_2
pins of the dp83867, but they are currently reversed. Add DT bindings
to allow specifying they are active low, and hook up driver support.

Rasmus Villemoes (2):
  dt-bindings: dp83867: define ti,ledX-active-low properties
  net: phy: dp83867: implement support for ti,ledX-active-low bindings

 .../devicetree/bindings/net/ti,dp83867.yaml   | 15 +++++++++
 drivers/net/phy/dp83867.c                     | 32 +++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.37.2

