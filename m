Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 814E66E45A2
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 12:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbjDQKua (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 06:50:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230051AbjDQKuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 06:50:25 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D618FD8
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:49:38 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id vc20so7954410ejc.10
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 03:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1681728495; x=1684320495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XVld+S5St6MGoNtw2Z0Re1+rcHuAmLcad2TIJO7KIg8=;
        b=Q61PKRtPes2SjXBFvUFdqqmyo9LI/93dt8pcQkm3ztl+2HTsQWzk1lKFpty0toUdJe
         wbuX3riv2STIwJ0PK4gaktkoD7M0xXhK0HgGmdErakyqZYug4N1l1A4/0mkxJwOwiHbv
         s7CcQ8wNv9fI12bnWCad1mSPVjCGpCEuUlZnjz8tGWmKKGegCETimwMSl84r+Q8NSRxU
         jpQ3WNo0N9cRftZ0cDqL29uQJB9qrmQVNJLIXWFTEjAlYl4uGu/AEo7XWs1bQD7BnqrA
         szXYwibrapMo94yMv5SPfQxkxrlAmhfnuL2znKJATxyC0sWA9eqgAl0S5NE6jbH41gER
         OUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681728495; x=1684320495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XVld+S5St6MGoNtw2Z0Re1+rcHuAmLcad2TIJO7KIg8=;
        b=DISGVSxLA7VoUzDr53sBFUSG/de9qXXYj+U0nMCtrE2Ny5QvV4BNUDd0+GKsJpvLWv
         d0IBYaAvJsZHeoZLEnKet3UzkZ3zklQWPweD9zr7qkHuRWQ7+D2GUqAuk8L5qjD3nNPa
         ZKrsDvvTJXbtm2fGyobbLMt9i9v2k/SDMqoZms40zQZ09E8f+46Fl1hjQOCRs70vpuYP
         2wDKKGiE1coBfeUpu4L0cPiIyynl+2TgX0tGPan26mzbjZRsp16Hhg0b1wWfMoBvJwuF
         T9kgD90O+XvHBkfTMjySaLBdHdWsLS2uoQNmc8oEUhJM6O7lCIW6zLebUnZEqLOvC+59
         qAYg==
X-Gm-Message-State: AAQBX9dyCx3adsUndS04chXl1eOC4JFqoRoUfyvvQJnd/2liIL5c8d7s
        dFmAdWW8s2lhJmmc2jvBDgNxx93H2lnHfMEoS80=
X-Google-Smtp-Source: AKy350aLdlnsMM9T2bJXBaovylQDBAXMxNjpndGEePpxQStukgMlskHsfguoBlY2uIn+xG6LINSktA==
X-Received: by 2002:a17:906:240d:b0:94e:8556:f01c with SMTP id z13-20020a170906240d00b0094e8556f01cmr6945899eja.57.1681728494971;
        Mon, 17 Apr 2023 03:48:14 -0700 (PDT)
Received: from fedora.sec.9e.network (ip-095-222-150-251.um34.pools.vodafone-ip.de. [95.222.150.251])
        by smtp.gmail.com with ESMTPSA id j25-20020a1709062a1900b0094f614e43d0sm1953842eje.8.2023.04.17.03.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 03:48:14 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-i2c@vger.kernel.org
Cc:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v12 0/4] Add support for Maxim MAX735x/MAX736x variants
Date:   Mon, 17 Apr 2023 12:47:56 +0200
Message-Id: <20230417104801.808972-1-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.39.2
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

v12:
- Add separate patch correcting interrupt support in dt-binding
- Fix typo in commit message
- Make vdd-supply non optional

v11:
- Fix dt-binding example

v10:
- Small updates to dt-bindings
- Make vdd-supply optional
- Drop MAX7357 enhanced mode configuration

v9:
- Fix 'then' not aligned with 'if' in dt-bindings
- Split enhanced mode configuration into separate patch
- Add MAX7357/MAX7358 register definitions
- Rename config register defines
- Update comments and explain non default config being applied on MAX7357
- Check for I2C_FUNC_SMBUS_WRITE_BYTE_DATA functionality

v8:
- Move allOf in dt-binding and use double negation

v7:
- Reworked the commit message, comments and renamed a struct
  field. No functional change.

v6:
- Fix typo in dt-bindings

v5:
- Remove optional and make vdd-supply mandatory

v4:
- Add missing maxitems dt-bindings property

v3:
- Merge dt-bindings into i2c-mux-pca954x.yaml

v2:
- Move dt-bindings to separate file
- Added support for MAX736x as they are very similar
- Fixed an issue found by kernel test robot
- Dropped max735x property and custom IRQ check
- Added MAX7357 config register defines instead of magic values
- Renamed vcc-supply to vdd-supply

Patrick Rudolph (4):
  dt-bindings: i2c: Correct interrupt support
  dt-bindings: i2c: Add Maxim MAX735x/MAX736x variants
  i2c: muxes: pca954x: Add MAX735x/MAX736x support
  i2c: muxes: pca954x: Add regulator support

 .../bindings/i2c/i2c-mux-pca954x.yaml         | 45 ++++++++--
 drivers/i2c/muxes/Kconfig                     |  6 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c           | 89 +++++++++++++++++--
 3 files changed, 125 insertions(+), 15 deletions(-)

-- 
2.39.2

