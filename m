Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F1C211A8D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 05:15:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726319AbgGBDPq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 23:15:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725805AbgGBDPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 23:15:45 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7B0C08C5C1
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 20:15:45 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id b14so21635885ybq.3
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 20:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=lgjLNEI2c702nruZIf8/qVC3N2Yvj7eOc3xFcCXk4qE=;
        b=V4qGOuImI1av0lSmyLMJk52j2TEqAgPFSpa2IGTBg3P335rupJ/XJFDEVy6u3Y3nsa
         RxGOc5CrUOcD0Hx1SSX6EsLwS/YkM3rm9xE7r0RMJomNXcFqqngBD9LKQ8sdqsSMBuqt
         foksl0EJRlKlIsuDBk/TgVcq3AHjtf2S0T+hEssU9vC+kvaffGNehyx0mKdLema/9UQw
         76RivxWXQWWYbxnExz2m43fP0sc2RHIrz4bpQR6k8ck94uD8U3TW8qjdcGeItG3XDGWq
         8Lujvxr2kTUxQd9xNXkHoQ6fZKN3quOY96H0T651b5HMoiiTWgJvhDIqQoH5h8TlH97H
         1F3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=lgjLNEI2c702nruZIf8/qVC3N2Yvj7eOc3xFcCXk4qE=;
        b=lLld5vwzJ88KFSxHk1fpc6RPkBcMLxuzn6GavUdix0aFyUuStwv77fH9F6AfbApAue
         ENi3ufoLSoSHNQbHg1E+TphoCy44BHtgJPYahyoro1uxvzOwDC90274qhEARa/j6I6V6
         QhHSlu7l7BQLUPoBCsbgz9zTE8mmCUJtLBqwf2ZlMnprJhq8aXgnoRIU0znWt4KUleu4
         MSxElreJTMZtlBGNgaz7QxZjPybet+3PpzVl9KLx5qGP56564huBI8WJ5vFh6p69ZJIk
         d1m8DkrbmqA1b/4+QOeGmls4wvk6XLssyqw72Di+rVZC3SsqpfACdJsrIKYNYMR9s4oV
         fmMg==
X-Gm-Message-State: AOAM530ik+4qyUn4yJSn6R5j/q307qvWdZmVKfC5InWLy5uTvQjmfBvG
        GxLz8QlNeTdMiZCMpz8lais59ckF55hG
X-Google-Smtp-Source: ABdhPJzMQo9PQ5D19hZdsGpjI7T+hKX4gBcCSrIxKzFL0IBLXNR6rgDXemM3ITzN7p5dT0NF4XRTdRDj3BcM
X-Received: by 2002:a25:84cc:: with SMTP id x12mr43165655ybm.454.1593659744675;
 Wed, 01 Jul 2020 20:15:44 -0700 (PDT)
Date:   Thu,  2 Jul 2020 13:15:21 +1000
Message-Id: <20200702031525.2662441-1-amistry@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 0/4] regulator: da9211: support changing modes
From:   Anand K Mistry <amistry@google.com>
To:     linux-mediatek@lists.infradead.org
Cc:     hsinyi@chromium.org, drinkcat@chromium.org,
        Anand K Mistry <amistry@google.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Support Opensource <support.opensource@diasemi.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for being able to change regulator modes for
the da9211 regulator. This is needed to allow the voltage scaling
support in the MT8173 SoC to be used in the elm (Acer Chromebook R13)
and hana (several Lenovo Chromebooks) devices.


Anand K Mistry (4):
  regulator: da9211: Move buck modes into header file
  dt-bindings: regulator: da9211: Document allowed modes
  regulator: da9211: Implement of_map_mode
  arm64: dts: mediatek: Update allowed regulator modes for elm boards

 .../devicetree/bindings/regulator/da9211.txt  |  4 +++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  |  4 ++-
 drivers/regulator/da9211-regulator.c          | 30 +++++++++++++++----
 .../regulator/dlg,da9211-regulator.h          | 16 ++++++++++
 4 files changed, 47 insertions(+), 7 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da9211-regulator.h

-- 
2.27.0.212.ge8ba1cc988-goog

