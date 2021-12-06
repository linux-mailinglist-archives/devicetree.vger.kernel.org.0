Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C90DD46A02A
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 16:56:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1387255AbhLFP7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 10:59:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1387811AbhLFPyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 10:54:37 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56A5FC07E5E0
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 07:40:07 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a9so23246535wrr.8
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 07:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i6fTCBNWukPOt3wBrx1/7JFE0qpnlKKJtTP5y1N5eWU=;
        b=RxHby9kH1VoJb9Mavi3ad3+GXfps5X3G1LKPuMIjtf+Zb1aHClTqcYNyg5Krknww6t
         1H2nKGDO32TrXPHeygOJGP5wn8+GfTCati2UufXo8BI5N0SKKlom9T43GPB8UI00TG9C
         OBKEJG6xLd9L5MCVCerxOPhb1k18si62jWzAQslmpLNE+n36xdgqnUQXs9o7MGbrG2lf
         5xjSoJsesw5TzMyxyKcaQ3Q2/nhcvAwCMXEOENoYI8XiCgS+/jkmYIX9j+jpXp5zu7NM
         PTpxBIhHvube4cF9QLG5T4fKKv649m+rnD3Nrs1UR9dA5rReoc91nnJoce8b4laJN2xd
         PhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i6fTCBNWukPOt3wBrx1/7JFE0qpnlKKJtTP5y1N5eWU=;
        b=MM8NP9lByRROgB7RvViSgiMhCVoG1uXnnJ9YNDuV4/+U0TIhxozqeihQoH5FYdkeFq
         Hcju09Qx2cmB0PSPJNAyVqgvWKZH0cdPhbTnSR8YvoLNAZmEMxwEnqC1RTc0xUj3C4hf
         UkhmUX3IWeBaMQ5d48j0KlSGlrjIu5qbnVcSuT/7be6O4aE/SxnxRoa3G4wrgiEJoGb1
         g0QKB/2SJPBtxl/q9K9jT834Sqir3YCBSQhn11g5MIrNRGpuUl91Bh1gZuffLuwNq1OA
         rV7z1n/kB1MPmDaYzLUPPnfj40Q/rXhwzKQ7hWBYAHhLBblV0ttCczZNj2kup/hCt2bN
         rEkQ==
X-Gm-Message-State: AOAM531WqO2/PM75oVMHRp3DLsxYvTKrGwSlElKi/QrtVd/sLLeVRQm/
        tREJArF6cHtpIzQQXqnBurbLEQ==
X-Google-Smtp-Source: ABdhPJy5DHLjTylMVXKYVxebk0J1FBmtxrTd2RWEg+LpY8jnOdFNCNZyU2lE4C8qXRuNHLfcSo3Sdw==
X-Received: by 2002:adf:db47:: with SMTP id f7mr44845000wrj.113.1638805205923;
        Mon, 06 Dec 2021 07:40:05 -0800 (PST)
Received: from xps7590.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id g13sm15818962wrd.57.2021.12.06.07.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 07:40:05 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Mauro Carvalho <mchehab@kernel.org>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v4 0/2] Remove clock-lanes DT property from device trees
Date:   Mon,  6 Dec 2021 16:40:01 +0100
Message-Id: <20211206154003.39892-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series depends on the below series being merged.
https://lore.kernel.org/all/20211206151811.39271-1-robert.foss@linaro.org/

Changes since v3:
 - Bjorn: Added RBs for both patches
 - Split series into two series for the ARM64 & Media trees

Changes since v2:
 - Stephan: Rebased on v5.16-rc1
 - Stephan: Fixed 3/4 commit message title

Changes since v1:
 - Rob: Instead of documenting and fixing the use of the clock-lanes
   property, remove it, since it is is not programmable and
   therefore shouldn't be exposed in the DT.


Robert Foss (2):
  arm64: dts: qcom: apq8016-sbc: Remove clock-lanes property from &camss
    node
  arm64: dts: qcom: sdm845-db845c: Remove clock-lanes property from
    &camss node

 arch/arm64/boot/dts/qcom/apq8016-sbc.dts   | 2 --
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 3 ---
 2 files changed, 5 deletions(-)

-- 
2.32.0

