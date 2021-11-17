Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E66074545C2
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 12:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234960AbhKQLlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 06:41:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235120AbhKQLlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 06:41:05 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EF50C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 03:38:06 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t30so4015955wra.10
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 03:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7PPCU7hY5WIQpQEUBCTOBPlcTnTVqbXfggMSZDrcXGo=;
        b=wAHi71g4DWv/y4nDbYi9yPhR6KhEWjDt7Q7MxvJWrggp6qwev3aMkLhWMn6Y7fCGfX
         LeQyhwa3nERI1Nf10F5pocT3g92TskczoPsqkkopD1HIRhdxtf59scoxwsi39ICcQIMC
         SWc9vX1P+9Eu61vW2+p8K/o+XqTdaNeKkAluTuo7aJ4rtCSvHM9HDgiYKptkS02wLY0m
         nW8vEaRDaoqloH39vRt8vcuME7+EAlKMZcRBH8mtHs2qy63r2baJEX+pV05d1YSac/HV
         sQBz8KIv0hotj3YR/gzL6o9qplH8QGUR4YKCiFBxdDFSqFmlJ7dZ4W1daBXrPEWnTFjZ
         WmsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7PPCU7hY5WIQpQEUBCTOBPlcTnTVqbXfggMSZDrcXGo=;
        b=7LyzLtWqMKI88iVsgAhNywnnYn7iLYdOTNgWN0pjV9IcSsrh3lNFuv6/BVC8kRSiVO
         1HNLvs1mzbzuFygkeIdLNRvdVSCbgFZWQrOh+QoDa1UXs9qTVkryATiGM1MUyOa3MlnO
         RsmvOlwlwvFBxjDGBWAo0Vowpc2KQ+1L+ya1BNtXohDKNMrTjJEef4F2lQWaw/bh5iyE
         allbaRu/c4aimZPzfUFNgdHDL1GcQh2WAk1Jj/tBXW8LHfOcrKKXo+OfFQK1fuuY8K3z
         l+VP6+8/S2SAPE8SEovufnVbpNrIFNfZYr1AaKIkZgUDr7BF804cY9bw51ELKlbXyNbI
         Bh+g==
X-Gm-Message-State: AOAM5305JFN6LtpIegGWZHLsy/wThQJUUF6MzXIjfG3vA9chAIDuUewp
        CQpZeDQJfjXyM5NlhsmSCWQ5tw==
X-Google-Smtp-Source: ABdhPJwKutddFipsem3C62zoVs/+c0JqVpN/0ghC52n5be0TtqM/R4/Y/s4lPWATlUwwtgECOCwzsA==
X-Received: by 2002:a5d:598c:: with SMTP id n12mr18836154wri.250.1637149084841;
        Wed, 17 Nov 2021 03:38:04 -0800 (PST)
Received: from xps7590.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id t8sm6560453wmq.32.2021.11.17.03.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 03:38:04 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH v2 0/4] Remove clock-lanes DT property from CAMSS
Date:   Wed, 17 Nov 2021 12:37:56 +0100
Message-Id: <20211117113800.260741-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v1:
 - Rob: Instead of documenting and fixing the use of the clock-lanes
   property, remove it, since it is is not programmable and
   therefore shouldn't be exposed in the DT.

Robert Foss (4):
  media: camss: csiphy: Move to hardcode CSI Clock Lane number
  media: dt-bindings: media: camss: Remove clock-lane property
  arm64: dts: qcom: msm8916: Remove clock-lanes property from &camss
    node
  arm64: dts: qcom: sdm845-db845c: Remove clock-lanes property from
    &camss node

 .../bindings/media/qcom,msm8916-camss.yaml    | 10 ---------
 .../bindings/media/qcom,msm8996-camss.yaml    | 20 ------------------
 .../bindings/media/qcom,sdm660-camss.yaml     | 20 ------------------
 .../bindings/media/qcom,sdm845-camss.yaml     | 17 ---------------
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi     |  2 --
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |  3 ---
 .../qcom/camss/camss-csiphy-2ph-1-0.c         | 19 +++++++++++++++--
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 17 ++++++++++++++-
 .../media/platform/qcom/camss/camss-csiphy.c  | 21 +------------------
 .../media/platform/qcom/camss/camss-csiphy.h  |  7 +++++++
 10 files changed, 41 insertions(+), 95 deletions(-)

-- 
2.32.0

