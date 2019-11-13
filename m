Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 73C73FB18E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2019 14:41:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727412AbfKMNlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Nov 2019 08:41:04 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36653 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727001AbfKMNlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Nov 2019 08:41:04 -0500
Received: by mail-wm1-f68.google.com with SMTP id c22so2058566wmd.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2019 05:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=g9xxtnX7rcqQy4gHg8hcN4Gj7X4KIMRju+j/MHBoV8A=;
        b=hadli0Xo/McEOF/RELW9EA3FZsSOhl60Te50mTlkYDOo1DL4ofrH39xvKPYpWpDTlM
         hB/ld2RA/dUwevAa2DSY1ddG32okY5PiZUZ32X9YGTKPg/OQB9SXyL64oAyk2BhQ1yBm
         kV24X6LAVZCvgRN2TPfznZ41vebvCsbC/ReMy621H2hPCkFWaq7qfFS22BxlKObg2U49
         a4qXeETGc6jHl6q5WkF4bpkSTQtV/h9U5apXI6Rxfeco+4cfOENhguBY1BJ/+XSQDlDb
         jmgzbbdotXMtIPdwwpLCoUSgzt9ZlaqXAqzxKVBkCwR6gAaNB87EATeuofH3sf+CJhI2
         yJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=g9xxtnX7rcqQy4gHg8hcN4Gj7X4KIMRju+j/MHBoV8A=;
        b=rtA8TVPr2wvsEc0Mjq6T/O5ZrGYjwTKeWHbbW0/0Be/KnEgh6Kj2MSG8ghv1qlavGB
         7xKBEhz5sYGnfc85+2D1PMGwutqJY2xQ01vpOVg9SEupD9U/fWy2yAZHCL36RKUChvd3
         TkKCEUV0JLZ5mUC1XS6jKxeGQ+BiEn/GmYHtyLBmKbbjwF4s9+t4ZjBdQHAGeeJcbWhh
         BoyA+J9fkSZRAlGn8ROXmWqWdhahHSc7OIJXNr1I/5Nb1+S5slMdwaQGRQhbCkchEa47
         gaEW+JMpLBQAmb67BTeDTI4eCohcmRwjHQU+jYwgIXsxg9U/lYmCvAmWjHdVF9ElCpvi
         CF0A==
X-Gm-Message-State: APjAAAUjWv1B3IuNPpLxxAH+wsMr5FuNguTF40V6yBvhMp+6HI5+tOBe
        QC/Kr8fwYHyhoP5K/GZafWI=
X-Google-Smtp-Source: APXvYqwHB+Hi2YgtPl6gmGovtL5SEbLpwPTj9L7TLx7IIjPGWokO8dIh6umYiPftip08O4ohNJe1WQ==
X-Received: by 2002:a1c:23c1:: with SMTP id j184mr2757804wmj.83.1573652462581;
        Wed, 13 Nov 2019 05:41:02 -0800 (PST)
Received: from mars.home (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
        by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Nov 2019 05:41:01 -0800 (PST)
From:   Christoph Fritz <chf.fritz@googlemail.com>
To:     Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Mark Brown <broonie@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Support Opensource <support.opensource@diasemi.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] regulator da9062: support setting buck modes
Date:   Wed, 13 Nov 2019 14:40:12 +0100
Message-Id: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds of_map_mode support to regulator da9062, documents
its bindings and makes use of it in dts phycore-imx6 so that buck modes
get configured explicitly for this hardware.

Changes in v2:
 - rename defines (and header filename) from 906X to 9063
 - explain usage of name da9063 in changelog
 - rename da906x_map_buck_mode() to da9062_map_buck_mode()
 - rebase patchset on top of next-20191113
 - adapt subject line of dt-bindings patch to reflect changes
   in mfd sub-system

Christoph Fritz (4):
  regulator: da9062: refactor buck modes into header
  regulator: da9062: add of_map_mode support for bucks
  dt-bindings: mfd: da9062: describe buck modes
  ARM: dts: phycore-imx6: set buck regulator modes explicitly

 Documentation/devicetree/bindings/mfd/da9062.txt   |  4 ++
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |  5 +++
 drivers/regulator/da9062-regulator.c               | 49 ++++++++++++++--------
 .../dt-bindings/regulator/dlg,da9063-regulator.h   | 16 +++++++
 4 files changed, 56 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da9063-regulator.h

-- 
2.1.4

