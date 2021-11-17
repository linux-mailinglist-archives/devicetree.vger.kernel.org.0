Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC1FF453F27
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 04:51:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbhKQDyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 22:54:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhKQDyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 22:54:16 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8652CC061570
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:18 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id b68so1326135pfg.11
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WzSybXdz+/I3dC14BuZfdqJl7s7vkON3etX+R3DPSxE=;
        b=luZo4VyYBC8CUPGVXuDJwQLvUmdAw+H6yKtUqcYKi7RS3n0ZJ+9TMEQOzOA5PX/i8G
         mJLyBF2lRYQN+728tV83cY2xpoBPtMh4ybFYoMjkKz9uuxOsggXyiBKkiTj4plIZysxb
         kh/B7LZ/W5+EL6OtOnGw3/p7JK2tp3Qu50uolUj4uDlhthAOy3PXaf/yse5Hruwi824n
         61C6ZhNpPMMgj9d1YpdJMO+R5jso3dbfZ0ie4Nj2qBH5BH5uQSks30Uh1obfzXIYezYn
         RojJMieYIjOYLRbGTcwwcXPfYpPVohH6ZZ85FUrwoX+YtQ5EdMzQHMGiJvd74SetJDVb
         Y7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=WzSybXdz+/I3dC14BuZfdqJl7s7vkON3etX+R3DPSxE=;
        b=ourvAewClS8Jz5i4pjLFr+z+o6kEKUXgsai+BiDIdpHwgPeNyogMTeZtv0jSSo3vsA
         l3lqGcA/hccSveLwpzchOMKhwRzWkyLD95LfLtWtCPQLUy2ZdSPYEBBI/MAO9sBJT+Si
         CfHlWZMy7K4QbKlWVrP3noIDc5cKQPAIFCGfLtqocxfAxJFjBpdltfrcUUkiGPd4mBCI
         Ink3mIQUjWNdBTSeKQ1710K6tDGe06luhlUmauneHu22QJ37heexaJ7M9DNITgbU/c4d
         4paUvgrw3vMtKP17CSqMr6eec4lDk7S4TDJ0ffGHhTsL6O0JBqXAtfbHK26eD+FBwNOR
         gLXg==
X-Gm-Message-State: AOAM530fbaQmLPvYShYzlJJ3LNWxIFwsrZfhBvWLiJLCTFQoDGZEO54H
        /YYJlBoGlbjKlN/qCRuaQVU=
X-Google-Smtp-Source: ABdhPJz0m1icuDtyVh7PGhkuRAeOD7/GMjM1g5aNuCIcyN01SKDRPmI2TqBUQsimakr1Jz9TJvmaIA==
X-Received: by 2002:a65:6854:: with SMTP id q20mr3097449pgt.38.1637121077964;
        Tue, 16 Nov 2021 19:51:17 -0800 (PST)
Received: from voyager.guest.fluxperth.local (210-10-213-150.per.static-ipl.aapt.com.au. [210.10.213.150])
        by smtp.gmail.com with ESMTPSA id c15sm3671339pjg.53.2021.11.16.19.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 19:51:17 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.u>, Rob Herring <robh+dt@kernel.org>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: [PATCH 0/3] ARM: aspeed: Secure Boot Controller support
Date:   Wed, 17 Nov 2021 11:51:03 +0800
Message-Id: <20211117035106.321454-1-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the reporting of the secure boot state to the ASPEED socinfo
driver.

Joel Stanley (3):
  dt-bindings: aspeed: Add Secure Boot Controller bindings
  ARM: dts: aspeed: Add secure boot controller node
  ARM: aspeed: Add secure boot controller support

 .../bindings/arm/aspeed/aspeed,sbc.yaml       | 37 ++++++++++
 arch/arm/boot/dts/aspeed-g6.dtsi              |  5 ++
 drivers/soc/aspeed/aspeed-socinfo.c           | 73 +++++++++++++++++++
 3 files changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml

-- 
2.33.0

