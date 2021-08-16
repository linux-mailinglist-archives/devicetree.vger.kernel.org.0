Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 167CA3ED183
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 12:00:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235677AbhHPKAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 06:00:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235702AbhHPKAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 06:00:49 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CE49C06179A
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 03:00:18 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id u16so5595909wrn.5
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 03:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WXtfrlhTvK5I4Q1AcToRyUZbAQ+Zw4tC00SfbVVvbW0=;
        b=s3ToyYAoY23WCoCF6c7fFnVwgRmAsa5SAo30JW235Lg6QeLK2Z63c1kjPVsIGjCZiU
         gJ+keeK0niCAkyDDssO7o9zgEj+CeU9011sowPpALmwzMfjylFCiQvwubhDOX/noeweA
         OZitkIVb8Pr8U50KzUrfqAjcUCaeylgShbm+ySjWFsDKqyZatCtpYqrwm52rWm4yqaT7
         sS326TZlVB+RIJNXACPI1h1Vhkay8IvlwI9YXh7WfxcZN707rHnmoMu8UzcTc6XjL3PV
         6c+rk8HFqer/jR0gAv82tCNBoOxBU9G5WRqBCzkBcOxSjk2hQiJVOZsNjxBW2+9zUt3a
         dFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WXtfrlhTvK5I4Q1AcToRyUZbAQ+Zw4tC00SfbVVvbW0=;
        b=DVmv28g9hMbnIS5BvcLxwYm/uRnIu5zy/ln+ptClRM+I/6mQw4bpnul8LkstIFgMvE
         w+tJFcy2I/CxSDo0n4XTKf6/nVxsvJvKZgPqxJZ/43EisOFt7xjUO+SrkZ+6AqGgguf/
         3fzBTvmp3C8IE+pwAODP7oPY/ru8QvrFxSlslr7kGwVwwM9uqQcxUmKTbnEMMkmfZqNG
         eFvtCeEnFMBQk9fnuDZBWRbDFxQRjqWs7x91j6tectdJGOI4X6j2nrjXLFHXxzAJrAF5
         82W0D8xg+NaIUYvwxL9ryNXMyVM1yI/Z8YuUZ9qupYLNYZYDNgAXlSd1O65NF/pzMvaq
         d3GA==
X-Gm-Message-State: AOAM530smmEdBblc0qzvDodEMA4ZF79VJjzZuyPP816vB5TeuB97J+58
        CUQUcCnlqulaGH2+iWr4Oy5GiA==
X-Google-Smtp-Source: ABdhPJwDGgULKk6muzbBo58qOdzC2JgP8l7B8Uqpu2dQfFY7AAre2f5xvKhTZVqiO41kMGHvn1DEJg==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr17685059wrq.148.1629108016922;
        Mon, 16 Aug 2021 03:00:16 -0700 (PDT)
Received: from groot.home ([2a01:cb19:826e:8e00:92b1:d3c2:1204:85e2])
        by smtp.gmail.com with ESMTPSA id u10sm1916645wrt.14.2021.08.16.03.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 03:00:16 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>
Subject: [PATCH RESEND v3 0/4] input: MT6358 PMIC button support
Date:   Mon, 16 Aug 2021 12:00:09 +0200
Message-Id: <20210816100013.100412-1-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MediaTek MT6358 PMIC has support for two buttons: PWR and HOME.

The interrupt logic is a little different than other PMICs from the
same family:
for MT6323 and MT6397, we have one interrupt source per button
* for MT6358, we have two interrupts lines per button: the press and
* release interrupts are distinct sources.

Changes since original v2 at [1]:
* added 4th patch with device tree enable
* cover letter title prefixed with 'input'

This has been tested with evtest on mt8183-pumpkin on 5.14-rc6

Mattijs Korpershoek (4):
  Input: mtk-pmic-keys - use get_irq_byname() instead of index
  dt-bindings: input: mtk-pmic-keys: add MT6358 binding definition
  Input: mtk-pmic-keys - add support for MT6358
  arm64: dts: mt6358: add mt6358-keys node

 .../bindings/input/mtk-pmic-keys.txt          |  5 +-
 arch/arm64/boot/dts/mediatek/mt6358.dtsi      | 12 ++++
 drivers/input/keyboard/mtk-pmic-keys.c        | 56 +++++++++++++++++--
 3 files changed, 68 insertions(+), 5 deletions(-)

-- 
2.30.2

