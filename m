Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DD63380961
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 14:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233367AbhENMWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 08:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233190AbhENMWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 08:22:53 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C2AC061756
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 05:21:42 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id j12so17917334pgh.7
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 05:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KAk0g8z1opxg9hfh3kwLSOD5nwvqQ9x4A08bZ0cKY9w=;
        b=Vv7GxJ+avWscMnlmLiMf6D2oS3wGO1ZcpThAMmHGb1DHdUM4W5Rz5+MqtZQQpZRUrS
         xrc1dl/g5MLarwNbqEr652jU1Pt96IEPpDYjqr0wJ916PYRX8DkDHb6EAbvUZ1vg2G5i
         yZi63vZzjFy+3tC6zNYdS35rQF71aPLopWObk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KAk0g8z1opxg9hfh3kwLSOD5nwvqQ9x4A08bZ0cKY9w=;
        b=X0LE0ZmFYk/utMfeTP0md82rtW05Adiutmc3DUp611wPVFWt2oPiVwdieIlaOw7QkT
         dYGupTo+sBz3CzwdDia18puYQjt4QT2m2/FJP6npfP4tElyrdrXDONKtxWO8T+RJL9ZR
         ftexVVkCmeVA7PO/GhHgmpHitEH+pB2Kw+c148zLrh/WdtiE/RVyj1gEnN7WDQFPy/PJ
         YO4hr19VzSSTFj6RXRgigzYLDV5Wj6a+PuKeHEQED+yja7fp9+pKL/TMEnogsS/OB6Y9
         YuCy8Twn6rKbfxdCCyrP62hW5jNbqFs8K7Ziyfdu4Us7hQZhURjDvIYZ5kmYPDfgTKnG
         mZXg==
X-Gm-Message-State: AOAM5334r+PGckD51W69EYQdVREKwDSPeL8yE2gVdV7rYf2tRSeZPdox
        Gbsp1n2c5ytMdTBA6abW164IAg+grFe8jbQN
X-Google-Smtp-Source: ABdhPJwt4o8oA04eyCHn4vJGf09Zt3E8GowUbhMUPyQDnK9/ps6C0oIEWEaLnH+zB0o3wMGm5mLzZQ==
X-Received: by 2002:a65:68d5:: with SMTP id k21mr40662150pgt.383.1620994901377;
        Fri, 14 May 2021 05:21:41 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:7641:4b1d:694e:6ea2])
        by smtp.gmail.com with ESMTPSA id u17sm4010117pfm.113.2021.05.14.05.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 05:21:41 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Guenter Roeck <groeck@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        linux-input@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v7 0/2] Add support cbas tablet mode switch to mt8183
Date:   Fri, 14 May 2021 20:20:48 +0800
Message-Id: <20210514122051.266169-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Adding a cbas support for kukui platforms which has a tablet mode
switch through cros-ec interface.

---
Sorry for resending v7, I found some CCs were missing
and errata in email addresses.

Changes in v7:
- remove a label in cbas node in mt8183-kukui.dtsi
- fix an erratum in commit message (table --> tablet)
- dt-binding patche merged altogether with mt8183 dts

Changes in v6:
 - Remove a label for cbas node in a example of dt-binding doc

Changes in v5:
 - Add missing blank lines and change the description property's position.
 - Add a note to description: "this device cannot be detected at runtime."

Changes in v4:
 - Define cros-cbase bindings inside google,cros-ec.yaml instead of
   a separated binding document.

Ikjoon Jang (2):
  mfd: google,cros-ec: add DT bindings for a baseboard's switch device
  arm64: dts: mt8183: add cbas node under cros_ec

 .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  4 ++++
 2 files changed, 24 insertions(+)

-- 
2.31.1.751.gd2f1c929bd-goog

