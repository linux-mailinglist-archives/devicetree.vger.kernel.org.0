Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C4B63E9B72
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 13:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbfJ3MYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 08:24:33 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:46434 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726119AbfJ3MYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 08:24:33 -0400
Received: by mail-wr1-f41.google.com with SMTP id n15so2038058wrw.13
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 05:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=qYwE7FsGe97l1beAf1eyAxkAOWYmrfKu34GFoISuGQA=;
        b=BTCMz/6s5xDHOivs9iJ4DNl/xUrEMHCNhOL3f1n0P51lSMrBPZCaI/+YvfZ+2CUxcw
         LSiZ6Nc0FXwSQDUoekRgda2s+aK0mPM6rVh8cAGMqwh466MvqxFxccZeiw5T5bLDF00Q
         nSln6DvvbHcFuQC4AdGiKb8ociL08ydqplhTRCIuqf9M6c7MeBGX+bBbJiMKas9C92Vf
         aqqFJDWeFeexC8hsGESo6ZPn7OjE21PswP39OzzOf6T/AzPsMXVASIeWf+tadBwvaF7j
         GqccjulcTFXkoZnpVgxUDv8B8gPy77VLeQ6jjYoG46XydlUaxy+kiSXzDZtPAXO8kqWW
         9LkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qYwE7FsGe97l1beAf1eyAxkAOWYmrfKu34GFoISuGQA=;
        b=kPgMg479rCwjtEIc+YVtz2StewShgKJ1NYYUdAVINv5+PaXxLsqKK3mecQlKk91xsu
         4EB+RntDtGADHpp/UvqtgHkcIW3BYoJRyrnj9ZC6kfRUzHpAkqn8CwPyD31e5YoJjIf3
         pkwg0lO1exAOBizvXfWwVTQdFEmEuRl2MJi5CSGUCRFwMdDY4nWrC3GzmdySpsKIVJh9
         5pJQeAe5/QjFLUt+CvaoKXX9nJxNlA0mj6fcVUfNe+1GcP+acWIDYTtx7X88YsR4bjVm
         dBg4FrPEfQu1+pp3/D99fsP97L7bdRKJ5z/CeeaFJVnWpYHpu4UHn6gEPYViAqErEyNy
         ol+Q==
X-Gm-Message-State: APjAAAVI1c/4l5rd7bLvsiBj27viSSZqbxwLlns+TemPh2HN93k3cE9A
        UqPMWVmyCToIcqjF20I0WVYIFA==
X-Google-Smtp-Source: APXvYqyS0VRZ7PaBJVGP6LtoqcC9odvbFoHcm6yY+Sg5t8wpq5OFK/pV3duLATtCShyzYGK3CAYrNA==
X-Received: by 2002:adf:d183:: with SMTP id v3mr19659006wrc.316.1572438270889;
        Wed, 30 Oct 2019 05:24:30 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id p13sm2075919wma.41.2019.10.30.05.24.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Oct 2019 05:24:30 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
        wens@csie.org, jernej.skrabec@siol.net
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: 
Date:   Wed, 30 Oct 2019 12:24:12 +0000
Message-Id: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Corentin Labbe <clabbe@baylibre.com>
Date: Wed, 30 Oct 2019 11:54:51 +0100
Subject: [PATCH v3 0/3] ARM64: dts: allwinner: Add devicetree for pine H64 modelA

Hello

Pineh64 have two existing model (A and B) with some hardware difference and
so need two different DT file.
But the current situation has only one file for both.
This serie fix this situation by being more clear on which DT file is
needed for both model.

Regards

Change since v2:
- Added the HDMI connector node to model A

Changes since v1:
- Added the first patch for stating which model support the
  sun50i-h6-pine-h64.dts

Corentin Labbe (3):
  ARM64: dts: sun50i-h6-pine-h64: state that the DT supports the modelB
  ARM64: dts: sun50i-h6-pine-h64: add the hdmi_connector label
  ARM64: dts: allwinner: add pineh64 model A

 .../devicetree/bindings/arm/sunxi.yaml        |  9 ++++--
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 30 +++++++++++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  6 ++--
 4 files changed, 41 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts

-- 
2.23.0

