Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 893272ECC21
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:01:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727175AbhAGJBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:01:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725974AbhAGJBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:01:09 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 624C4C0612F6
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 01:00:29 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id 11so3461295pfu.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 01:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A38XEG2bxzvR12086jQpwTTb/g0iT6/kG6TCSTQMuF8=;
        b=HJnCLAsRHKWwLhQ7mKp+58XMFdmWbGx2dCO0jxV1ALEGSO6wf10jAomB5O+3gmuBHB
         CTPoWHFdcP5Go3ofX1hhjyQDEi0/327NPX2VSj+mZcNIK2gvbIFO94nb2C70wwBJNaZ0
         GsavQVH6iJa2B0zmPjPsSTxSS4hW7wytRLe9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A38XEG2bxzvR12086jQpwTTb/g0iT6/kG6TCSTQMuF8=;
        b=tLy/b8IjTceeZB0m+tuKzjQnlW1GR2OMwElEqMasWFdGDeB73B1W6WIXYMyFtJol+k
         tkcIh9kVdmIX6tiEQ4qnFSwzYAekF0tpaYoPqWajhZbBjbGYyQEZN5HSNZPD7pbhtM50
         9QSvs6wB/FW+9RvTRUzbPudLAfXB82M0jDM+5feEUKCBL7V62BY6+DqzV79fqoc7LZGc
         H7Ye7Uvo8HWfG7gvwHqhp05W8R/myRUpbZm3vklPeSU2XiWncVwgnvMIoxF9sNaQ2+or
         sHxC5q0Tn+i2TpSDOEk7BZSHT9WG/ndWS8G0DsJ2EifKmViaa4wttpIvnonn24juxk/r
         qoTA==
X-Gm-Message-State: AOAM533Xhd0C9r+7jIY6QESwsN4X3knq0mqSkm9aL7ubX/yQQVRL5cQt
        iwXb2eMS5vM5nfqpSYTGpLTdCg==
X-Google-Smtp-Source: ABdhPJw9Ssl8Yb7I2NbXzQGWuVjK6p28ej36nNEL2Q2+nQZhP5RGtaadDnQqTtmMvEnuKGhzm6xJnA==
X-Received: by 2002:a62:e30c:0:b029:19d:932b:a1e2 with SMTP id g12-20020a62e30c0000b029019d932ba1e2mr7918416pfh.78.1610010028859;
        Thu, 07 Jan 2021 01:00:28 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:7220:84ff:fe09:41dc])
        by smtp.gmail.com with ESMTPSA id a29sm5022421pfr.73.2021.01.07.01.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 01:00:28 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     hsinyi@chromium.org, hoegsberg@chromium.org,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        boris.brezillon@collabora.com, fshao@chromium.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v8 0/4] drm/panfrost: Add support for mt8183 GPU
Date:   Thu,  7 Jan 2021 17:00:18 +0800
Message-Id: <20210107090022.3536550-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

Follow-up on the v5 [1], things have gotten significantly
better in the last 9 months, thanks to the efforts on Bifrost
support by the Collabora team (and probably others I'm not
aware of).

I've been testing this series on a MT8183/kukui device, with a
chromeos-5.10 kernel [2], and got basic Chromium OS UI up with
mesa 20.3.2 (lots of artifacts though).

devfreq is currently not supported, as we'll need:
 - Clock core support for switching the GPU core clock (see 2/4).
 - Platform-specific handling of the 2-regulator (see 3/4).

Since the latter is easy to detect, patch 3/4 just disables
devfreq if the more than one regulator is specified in the
compatible matching table.

[1] https://patchwork.kernel.org/project/linux-mediatek/cover/20200306041345.259332-1-drinkcat@chromium.org/
[2] https://crrev.com/c/2608070

Changes in v8:
 - Use DRM_DEV_INFO instead of ERROR

Changes in v7:
 - Fix GPU ID in commit message
 - Fix GPU ID in commit message

Changes in v6:
 - Rebased, actually tested with recent mesa driver.

Nicolas Boichat (4):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  drm/panfrost: devfreq: Disable devfreq when num_supplies > 1
  drm/panfrost: Add mt8183-mali compatible string

 .../bindings/gpu/arm,mali-bifrost.yaml        |  25 +++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   6 +
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |   6 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 ++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |   9 ++
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  10 ++
 6 files changed, 161 insertions(+)

-- 
2.29.2.729.g45daf8777d-goog

