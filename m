Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14B8E1FD006
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2020 16:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726511AbgFQOwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jun 2020 10:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726858AbgFQOvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jun 2020 10:51:52 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE36C0613ED
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2020 07:51:51 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id v14so1407962pgl.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2020 07:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=66urSHPu2efS+32Pqzoys5Raxw2fRk+bGC6RlneeuRo=;
        b=h97C+k8ylseDAfHw4T4eqkY9Jza6VQnKM4iJxgFLCrg7jw2QLqDoh1WLySycMWJkDq
         JJjOVXRuBfdHtar8huMK1CiRfo4YVONH/6jpkUzHBJgkYd+HQSYaoLYwk4s7QL+xLy2u
         evYpk3fE9aQm7AEu0Gm38X9jQSW5Ohilo/dAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=66urSHPu2efS+32Pqzoys5Raxw2fRk+bGC6RlneeuRo=;
        b=F5o+DpgyQfjBvAUqZNY0mx9YofcRyOcHA7lJ29y8B7zV/2tBLk7RtdqJMTdER62E+3
         quTUzljfiqFwiePKU740TjuFhNDvXDBnSGJXXRNlSsWVDUcM1dVOZGXSVGJ4SodGazHG
         /xB52VP9ZToCfi/35Gel7q2QRoeXxjPAFdQVkUkK1A9NrgQhvSFWTaQnrnEtbjKSi2jh
         ObguvEK/y+F+37fJMtJv9v+Goknhm97PM9pigRJlsY+Nx2D3aN/R1BhIb3cGE3MXYYHR
         s57avRVEr7fJgq65U+EzQhCJIPsBMJJ5tLYzWSGxx+y5pvdEQfheM7SIBntOS/PPp0lb
         18iQ==
X-Gm-Message-State: AOAM531gwSH2EkIXs5VWZ4Bgkmyzg+csVSyAqbcwKUv1LMiw++y7LnRe
        /HXMtgm5IzWm9EWE14qJf8sgmg==
X-Google-Smtp-Source: ABdhPJyKlaYdlG28apy/dV4lrjPIdZ9x/wH0LnJd7AhxvioZHBIrcl/BvGYMi2kMv19lahz9TgaNKQ==
X-Received: by 2002:a63:3e09:: with SMTP id l9mr6931881pga.235.1592405510849;
        Wed, 17 Jun 2020 07:51:50 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id k18sm147040pfp.208.2020.06.17.07.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 07:51:50 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     dhavalp@codeaurora.org, mturney@codeaurora.org,
        rnayak@codeaurora.org, Ravi Kumar Bokka <rbokka@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, saiprakash.ranjan@codeaurora.org,
        sparate@codeaurora.org, mkurumel@codeaurora.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] nvmem: qfprom: Patches for fuse blowing on Qualcomm SoCs
Date:   Wed, 17 Jun 2020 07:51:12 -0700
Message-Id: <20200617145116.247432-1-dianders@chromium.org>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This series enables blowing of fuses on Qualcomm SoCs by extending the
existing qfprom driver with write support.

A few notes:
- Though I don't have any firsthand knowledge of it, it's my
  understanding that these changes could be used on any Qualcomm SoC.
  However, it's likely not very useful on most boards because the
  bootloader protects against this.  Thus the write support here is
  likely only useful with a cooperating bootloader.
- Blowing fuses is truly a one-way process.  If you mess around with
  this and do something wrong you could irreparably brick your chip.
  You have been warned.

Versions 1 and 2 of this series were posted by Ravi Kumar Bokka.  I am
posting version 3 containing my changes / fixups with his consent.  I
have left authorship as Ravi but added my own Signed-off-by.

Changes in v3:
- Split conversion to yaml into separate patch new in v3.
- Use 'const' for compatible instead of a 1-entry enum.
- Changed filename to match compatible string.
- Add #address-cells and #size-cells to list of properties.
- Fixed up example.
- Add an extra reg range (at 0x6000 offset for SoCs checked)
- Define two options for reg: 1 item or 4 items.
- No reg-names.
- Add "clocks" and "clock-names" to list of properties.
- Clock is now "sec", not "secclk".
- Add "vcc-supply" to list of properties.
- Fixed up example.
- Don't provide "reset" value for things; just save/restore.
- Use the major/minor version read from 0x6000.
- Reading should still read "corrected", not "raw".
- Added a sysfs knob to allow you to read "raw" instead of "corrected"
- Simplified the SoC data structure.
- No need for quite so many levels of abstraction for clocks/regulator.
- Don't set regulator voltage.  Rely on device tree to make sure it's right.
- Properly undo things in the case of failure.
- Don't just keep enabling the regulator over and over again.
- Enable / disable the clock each time
- Polling every 100 us but timing out in 10 us didn't make sense; swap.
- No reason for 100 us to be SoC specific.
- No need for reg-names.
- We shouldn't be creating two separate nvmem devices.
- Name is now 'efuse' to match what schema checker wants.
- Reorganized ranges to match driver/bindings changes.
- Added 4th range as per driver/binding changes.
- No more reg-names as per driver/binding changes.
- Clock name is now just "sec" as per driver/binding changes.

Ravi Kumar Bokka (4):
  dt-bindings: nvmem: qfprom: Convert to yaml
  dt-bindings: nvmem: Add properties needed for blowing fuses
  nvmem: qfprom: Add fuse blowing support
  arm64: dts: qcom: sc7180: Add properties to qfprom for fuse blowing

 .../bindings/nvmem/qcom,qfprom.yaml           |  86 +++++
 .../devicetree/bindings/nvmem/qfprom.txt      |  35 --
 arch/arm64/boot/dts/qcom/sc7180-idp.dts       |   4 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  10 +-
 drivers/nvmem/qfprom.c                        | 314 +++++++++++++++++-
 5 files changed, 401 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/qfprom.txt

-- 
2.27.0.290.gba653c62da-goog

