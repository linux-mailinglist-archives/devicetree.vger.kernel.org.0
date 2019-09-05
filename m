Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76A0FAA3A1
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 15:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389599AbfIENAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 09:00:05 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:53266 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388100AbfIENAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 09:00:05 -0400
Received: by mail-wm1-f66.google.com with SMTP id q19so2689376wmc.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 06:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d5v0Dy23bszDikjahnfR50/JyqF0JMw3pYibReU0maQ=;
        b=ssbfMIbUr7q1MBCXJtcNYU5Zqq2x2YbEn6f2TIT7lyHcFFxlKU+8ADEwzx8bzJEb7D
         PmwjjhQRmOC6USAlOkBj0jll64frnU14pbOsMRquXNYt7uTQjSZs3g7cejUtFI1CUXS+
         7LkylxpucT/6N12qSu1uwK9QvFgG+Hi1mwRzaQlPQf764Q8fvn6ymvrIuhOMEiUrQiPR
         lt1pOl/xLCiVPZApcw0iFrEE+EDMWHfe/YDUTBtIeFtYhl7aK7vOmaylNiZURMOa1kHh
         uZITr3iTK532vd+ITf2HJwsULPvriuet+8+c3DhjhfFa8Wi0zH3RKtsJXrxIBCDmHSfq
         Pbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d5v0Dy23bszDikjahnfR50/JyqF0JMw3pYibReU0maQ=;
        b=XAHNzyTO0eHtlQvsA846D8oGvJ2fx0OBUxE9u8Uwp9fZUqlbI6NHpPh0PqS1S1U/06
         Fu8PMSjWfKfAj5pnzMIIU5cAnolyoBYZUSg2Xtp5QGaCl1SM+i//FQrysjfR/fQCyxVV
         Sz4cKCmUzLNYX6MHjH+2Z2hMHrDKPSrFymJOrmWcdHxtla2pcsv3z4r0VNGJSx43EgNd
         kcCk8jvLvlh3WqhwH57jGgtR9dh8MioXWOZkRA+lhxyoEAYnJPugInaikGxn2bzOtxmD
         PUm2754POz2fpWyfEEl747Mev+h40dn497RlNWTXO/Qp5yELOPFYd0FRzxrwIhfZGKZX
         l33A==
X-Gm-Message-State: APjAAAVcgYrFUhJtuWmq2uml/J80qptonP93uWSSs2ZH5cWG5kiU2Sst
        0/FtAQwOxZVUpYxjlID1o4chvw==
X-Google-Smtp-Source: APXvYqyJ5a4GKbnNy6ifNCJ/h3sAEQrmaDMw8nRKCghJv8Y44i3udTkVE2loifhIC9yyK/Y6ScVf5A==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr2872266wmc.152.1567688403371;
        Thu, 05 Sep 2019 06:00:03 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z189sm3727903wmc.25.2019.09.05.06.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 06:00:02 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] arm64: dts: meson: audio updates
Date:   Thu,  5 Sep 2019 14:59:51 +0200
Message-Id: <20190905125956.4384-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patchset features a few updates to prepare the addition of the audio
on sm1. It fixes the register range of audio fifo which was incorrect.

It also create another layer of dtsi, common to g12a and g12b but not sm1.
The audio related device are moved to this file.

This was done because the audio bus, which was at 0xff642000 on g12, has
moved 0xff660000 on sm1. Overwriting the reg property was option but it
would have left confusing node names on the sm1.

Jerome Brunet (5):
  arm64: dts: meson: axg: fix audio fifo reg size
  arm64: dts: meson: g12: fix audio fifo reg size
  arm64: dts: meson: g12: add a g12 layer
  arm64: dts: meson: g12: factor the power domain.
  arm64: dts: meson: g12: move audio bus out of g12-common

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  12 +-
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 320 ----------------
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi    | 344 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  15 +-
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  14 +-
 5 files changed, 352 insertions(+), 353 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12.dtsi

-- 
2.21.0

