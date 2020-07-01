Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E8C6210C88
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2020 15:46:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731100AbgGANpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 09:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731033AbgGANpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 09:45:03 -0400
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com [IPv6:2607:f8b0:4864:20::842])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BFBDC08C5C1
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 06:45:03 -0700 (PDT)
Received: by mail-qt1-x842.google.com with SMTP id e12so18378489qtr.9
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 06:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CBva2wqaXiuBAspU81cFB5iwS5pTK1fm/Up07VFpyA0=;
        b=D8NDGEVJFrBF/1L5SAm6ntpFWhRP1sZReXLJFSlhkfofKTgCUPINDpqHFgxb0iqLSf
         JPsQaKEN4RxKXtFlYEsNspb7xf28aMALonIa7UiskxK42WoepoaOz/EzZBKdGyy/Wovh
         baYJ08l6pebhf2W6A9MRB4C3IVvYX4QClj6hDtBLB39gjm2QCYCAk8HbybxNCwvqkaFq
         T6+Unvvl8iMtD8Wu1TVeJ+4o+JbXOEqdp/bkz7UFHaWOOm2oS1wG1XF5vvbn69RYBgL0
         AozYsQabDIM6fTZQDMmyLVfAl/QFV1DfSJnsODkFXfn8xH1SkSTgIdlsDDZAb2KzOnN2
         wPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CBva2wqaXiuBAspU81cFB5iwS5pTK1fm/Up07VFpyA0=;
        b=fcdk+ApiyYmakE852BfHeinONDznYnesbS8Vqo4IPuMWGDYWm6ETI9TJfiFZtYoB3Z
         G/+dYl+D/NJTyUIg/tu1xHt1Yn8nmPWw4Dvty5LjnuyzReSOZJAEaqcZV+sPJhSqIDBr
         2lsaYpa7zRnh1SAMTDW2aR4BCmOq7SXND6wzHKPJ0x3VjHv/lL2GcFY92wIexVzL9mY1
         qL5jQJ936xNQn9M+4yF8Mz60YiROr3TkDqX+A5F9RgTMT5PvHPTap74neMnPK65hR6iz
         GKQlf/cQdcRypfLALj0xRIC241V2KK2bPeHclSMW59fh2urmElaj4uC8SlyEc9q00DjE
         T3qw==
X-Gm-Message-State: AOAM533gSj7K9RC8b8PRwZ6j6qXQZY6yOUnWRlCrY/mMuTn6etGHBDHO
        OLX1fXuvmeWrbfuJBmHK9sdrNA==
X-Google-Smtp-Source: ABdhPJzfHrQ0xxPZuwDY8lRZSrWPkCFEL5E3c1dwoMyW9k3YhRPk8dqcpMUxlcBsjEXZN4MmrFddHA==
X-Received: by 2002:ac8:4d5d:: with SMTP id x29mr26514755qtv.358.1593611102546;
        Wed, 01 Jul 2020 06:45:02 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id d136sm1444345qke.47.2020.07.01.06.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 06:45:01 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), Georgi Djakov <georgi.djakov@linaro.org>,
        linux-kernel@vger.kernel.org (open list),
        linux-pm@vger.kernel.org (open list:INTERCONNECT API),
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/6] Add SM8150 and SM8250 interconnect drivers
Date:   Wed,  1 Jul 2020 09:42:49 -0400
Message-Id: <20200701134259.8055-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most of this is generated from downstream dts using a script.

There are a couple things I'm not sure about:
* When to set keepalive in DEFINE_QBCM macro (set to all false)
* Address/size for the reg fields - the "display" nodes have the same
  address as the non-"display" nodes. For the size I just used 0x1000.
  reg field is unused by the upstream driver so isn't a problem functionally.

Jonathan Marek (6):
  dt-bindings: interconnect: Add Qualcomm SM8150 DT bindings
  dt-bindings: interconnect: Add Qualcomm SM8250 DT bindings
  interconnect: qcom: Add SM8150 interconnect provider driver
  interconnect: qcom: Add SM8250 interconnect provider driver
  arm64: dts: qcom: sm8150: add interconnect nodes
  arm64: dts: qcom: sm8250: add interconnect nodes

 .../bindings/interconnect/qcom,sm8150.yaml    |  86 ++
 .../bindings/interconnect/qcom,sm8250.yaml    |  86 ++
 arch/arm64/boot/dts/qcom/sm8150.dtsi          | 118 +++
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 118 +++
 drivers/interconnect/qcom/Kconfig             |  20 +
 drivers/interconnect/qcom/Makefile            |   4 +
 drivers/interconnect/qcom/sm8150.c            | 719 +++++++++++++++++
 drivers/interconnect/qcom/sm8150.h            | 163 ++++
 drivers/interconnect/qcom/sm8250.c            | 733 ++++++++++++++++++
 drivers/interconnect/qcom/sm8250.h            | 173 +++++
 .../dt-bindings/interconnect/qcom,sm8150.h    | 176 +++++
 .../dt-bindings/interconnect/qcom,sm8250.h    | 186 +++++
 12 files changed, 2582 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sm8150.yaml
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sm8250.yaml
 create mode 100644 drivers/interconnect/qcom/sm8150.c
 create mode 100644 drivers/interconnect/qcom/sm8150.h
 create mode 100644 drivers/interconnect/qcom/sm8250.c
 create mode 100644 drivers/interconnect/qcom/sm8250.h
 create mode 100644 include/dt-bindings/interconnect/qcom,sm8150.h
 create mode 100644 include/dt-bindings/interconnect/qcom,sm8250.h

-- 
2.26.1

