Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD04C73757D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 22:00:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbjFTUAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 16:00:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjFTUAw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 16:00:52 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B9161991
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-570808d8ddeso49407617b3.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687291238; x=1689883238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Hil+T6tTjsHDCUN56vDP/xOS2TfaWaaGGVktAjl5+M=;
        b=HkQOXQb5m8FKt7OrHyYeKKjOUv0EblsMgC52kHAov5ARFpIVWn0gVtcnwUssstrbkb
         qdqD4FVhUSKz7hyNDbCTt3QogkSAeLavCLrK2xEFULhr+3055R6WOQhCnjhfELxB7yGa
         uKmkfP3Zh83fPD0tngJs2L/5dvOHUHsKYKFT5B3gqjUmm+yaarv91n6cDER1Nex2bmkb
         NvytWmRv5QWvF+5oNuh0hvH2w27pahU3ZwkAaMk+vAjQL2hYaRt4mBuHifdpEMD2RzBE
         oPW0sxt1EL97XnlVeNl4nrEcUNasxtb87ax91owbqY1PxGUhWME/4fVoU2GElIVFRyoJ
         x5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687291238; x=1689883238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Hil+T6tTjsHDCUN56vDP/xOS2TfaWaaGGVktAjl5+M=;
        b=Pt9Lli07QONiQCs6nss0DhLx1Xxyx8skZtKGmhJhU6ryuztJ2WhdjwCEA2pkWCDkKY
         ++rfHCtr6kp1KO4Syqx+LGhRM5LQr/gzEdYEmQ94r8GAdi51YDnljHKSBh//FN/z7SOC
         NeSIwNbx9ekKsS44rnBhK5uR6HXil7ftom4GbMCq7ZA6n2l9GKbUVlBoRp6QeSWek9Ie
         NgwHbXeOzQ8+vudEXKQo5Y/zWzOsPEMRtjug92ootmmWWuV8teRei9zaE1NaUrHDEqXm
         iNGkYNaoyt3jNLPyNP/PSRp1VMoHc9Qur2Co0DvWZVq2+ZPANSddvVOSvsn6sf5Peujy
         01iQ==
X-Gm-Message-State: AC+VfDyVg+6N7vAEg+Q4gYtvWVRwdfXwlvn6mMlqFekpQzJQSDcEdHds
        KcA+RBqZod2d/vFhcRG9VV4=
X-Google-Smtp-Source: ACHHUZ6QDYPE6fxFhGbj+tiznTUs6dZX8ZfyYWvoC6HeXXYTSz9NY+ANaHHB+58+B+NcjpeR5y8V4A==
X-Received: by 2002:a0d:e982:0:b0:561:d1b0:3f7e with SMTP id s124-20020a0de982000000b00561d1b03f7emr13601499ywe.44.1687291238169;
        Tue, 20 Jun 2023 13:00:38 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y201-20020a81a1d2000000b00569eb609458sm664197ywg.81.2023.06.20.13.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 13:00:37 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
        andre.przywara@arm.com, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Anbernic RG-Nano
Date:   Tue, 20 Jun 2023 15:00:19 -0500
Message-Id: <20230620200022.295674-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-Nano handheld gaming device

Chris Morgan (3):
  arm: dts: sun8i: V3s: Add pinctrl for pwm
  dt-binding: arm: sunxi: add Anbernic RG-Nano
  ARM: dts: sunxi: add support for Anbernic RG-Nano

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/sun8i-v3s-anbernic-rg-nano.dts   | 209 ++++++++++++++++++
 arch/arm/boot/dts/sun8i-v3s.dtsi              |   7 +
 4 files changed, 222 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-v3s-anbernic-rg-nano.dts

-- 
2.34.1

