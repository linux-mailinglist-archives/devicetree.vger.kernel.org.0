Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0C86DE388
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 07:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725802AbfJUFN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 01:13:26 -0400
Received: from mail-pg1-f170.google.com ([209.85.215.170]:33083 "EHLO
        mail-pg1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbfJUFN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 01:13:26 -0400
Received: by mail-pg1-f170.google.com with SMTP id i76so7029715pgc.0
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2019 22:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTvX2ZoO7TzY2BxJZxSJoG0yIQ3DzcVkh48Y2GNXR2M=;
        b=nlR8/GBlqaQpZhcCEG1KNYmAF8kFV86aPV3heKZ7aty+qbvXhJDQTcDo3Sgsp4NGvT
         jkWjQeaK6K/tYk8i+Mbe/pK/ib96IDUbaNdjRBTWuBmDEDDcQeO5pq3q9KRVxBKjHQfW
         VZ5VULsDVbjCgbrIISLnn+WvucIVrtmkmr4IQ/IoEVmQIdHlMt+Ey8JbBMhNLRuxHZwQ
         kUWlhjJ8nQEV6vUFLGPvGck0mIwGqw+ZZ8ChMrYMNxuH6/k+uMw8tFu5q71Ikc3Zk1fs
         5KqkfzzIAAQ3S9NXjcJl7/FLDFS7znUizsULiPbYQ8NAf8CcIZu0oPhbLUNp9cLzWvwl
         rcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTvX2ZoO7TzY2BxJZxSJoG0yIQ3DzcVkh48Y2GNXR2M=;
        b=fzJb3gjurewRaLIGmBq53NCD0VaDWDFL5Vq8pZaho2aIOxk/i+3tRDbDV1wmq+SZdn
         0slrhn4eGAl8fA9L3LVPbVDVGC7Dwn/utWXBz8v2IYkPZ9NU+6NparUyKAu0rSvMboiT
         t3AkD/BYK+fRCVvt7gIXcd6yUKUawzEGCdQAM9VFZ+ztVxreBYYQ1DaJ52kVOpjyxyk0
         O7wB1Z/1oA//ET/Y+7pF/p0vNCq/yO10jccNwja8wNR2XQz4W3fZ7FsyFmZ/qYW+1iqr
         YrMfQXz8eXiwHbJpX3KyDl1dMU0zwkSUtIMJbcuJt5fKYwXXmh7/58yG0OhNDtaUtBgK
         CCOQ==
X-Gm-Message-State: APjAAAWieVTx/qvUBFxvt39Q/Ul1ZZdxV9FozLjHjDatAVHE92shkY+p
        nDVaRRo/Uy/rBtnnFcHRxYlLcg==
X-Google-Smtp-Source: APXvYqyy5kW+io7pprvVHWwtLdIyuNVF+sU4eQmX9yUQuw6Xz3npw4kLPeNqS4AseF/48jCFDo2P9w==
X-Received: by 2002:aa7:9295:: with SMTP id j21mr20462574pfa.87.1571634805702;
        Sun, 20 Oct 2019 22:13:25 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h68sm15716862pfb.149.2019.10.20.22.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 22:13:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 00/11] arm64: dts: qcom: msm8996: Introduce IFC6640
Date:   Sun, 20 Oct 2019 22:13:11 -0700
Message-Id: <20191021051322.297560-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Refactor msm8996 and db820c in order to make it follow the structure of newer
platforms, move db820c specific things to db820c.dtsi and then introduce the
Informace 6640 Single Board Computer.

Bjorn Andersson (11):
  arm64: dts: qcom: db820c: Move non-soc entries out of /soc
  arm64: dts: qcom: msm8996: Use node references in db820c
  arm64: dts: qcom: msm8996: Move regulator consumers to db820c
  arm64: dts: qcom: msm8996: Move regulators to db820c
  arm64: dts: qcom: db820c: Group root nodes
  arm64: dts: qcom: db820c: Sort all nodes
  arm64: dts: qcom: db820c: Remove pin specific files
  arm64: dts: qcom: msm8996: Pad addresses
  arm64: dts: qcom: msm8996: Sort all nodes in msm8996.dtsi
  arm64: dts: qcom: db820c: Use regulator names from schematics
  arm64: dts: qcom: msm8996: Introduce IFC6640

 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../boot/dts/qcom/apq8096-db820c-pins.dtsi    |  109 -
 .../dts/qcom/apq8096-db820c-pmic-pins.dtsi    |   92 -
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi  | 1416 ++++---
 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts  |  412 ++
 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 3505 ++++++++---------
 6 files changed, 2982 insertions(+), 2553 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8096-db820c-pins.dtsi
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8096-db820c-pmic-pins.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts

-- 
2.23.0

