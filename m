Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97D1459C2A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 17:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236525AbiHVP0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 11:26:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236780AbiHVPZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 11:25:39 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE262B253
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n4so13639426wrp.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=JpfHvyqRnm+5S7PdC1PrdSXXgeMxr51T6KsWxbmEy8g=;
        b=aCUjnPAz7S3HXtZfuNLPLAcp9u4M30Io5QFDl8u/z0VZIVaWprKjFNWeBxbTgUuRyf
         bIUXCXXTN9PAZMK1jyWBg0Dterdb0xG3VB8LgcdonH/HMUjH7042A8SwCb7t5cNCZyA1
         5ZEJgQ61TA3KmPUQoFSeIsgCR8/1qkC2Y0BK+L3e7Zn2holpokpUL28LEja5fZNJNc/+
         yFAlchk1XMbteBSnFsfM4gSu09NPD97KY7cKEwQj0VHF6QqNIPxTVYcjI8Kt1KIMYDtd
         pX1JosQOvCB/KPPdcTFsJMWhW5lquNcpOXnFRg4V5l6vywGq1ptjfO4Wx4jgB/WeuIXE
         PFzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=JpfHvyqRnm+5S7PdC1PrdSXXgeMxr51T6KsWxbmEy8g=;
        b=0FbsiGLj0jwP13LoNOfW6GOkgczEOmycv98YXJfIBBaCA9umXmp/Gjt0xOLcSXSIC/
         IxtjlSu/RCm9zpy5dicvmHLRcYhCfwB8B4CsLaXLhZVtud9Sl0AXDG6n7SAoSmLz3fNd
         uEEf2h//8wwsCintt3mLZbe4blZJ04kFAI+wuCr25qWSY9xnCkP3U2Xdj3vhTcz7i0aH
         BqrgGNlm6175AxFqhuUDn/IkxB3je1MYqACFACN8o5wZeZ1M65QNhgLip5J3QaYhtoJs
         C8yMradhC0e9fN8GGAk4Oem17a0FN8JEcn3yNWVMcKfgCW6uq3QSq9hcu9elouDQq7YM
         1S2g==
X-Gm-Message-State: ACgBeo2hhLfDtxS0HD8Y+/ZK2RNt+5kkwCtj7mq8XiPKpGnk6E28jJ6C
        kkBV7jOH2SNYhC+GhO++wB5CknnTuXbUqg==
X-Google-Smtp-Source: AA6agR5niToyNBh7Gl4UPXD/qTW7XQmeSaVYlsD+bY7lnQaAlmTQkCIxfQg12gDi7Ti7yi64uejfWA==
X-Received: by 2002:adf:d1c5:0:b0:222:cbe8:f9fa with SMTP id b5-20020adfd1c5000000b00222cbe8f9famr10933342wrd.383.1661181781700;
        Mon, 22 Aug 2022 08:23:01 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id q11-20020a5d61cb000000b00223b8168b15sm11850350wrv.66.2022.08.22.08.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:23:01 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     maz@kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 0/3] dt-bindings: Some schema fixes
Date:   Mon, 22 Aug 2022 16:22:21 +0100
Message-Id: <20220822152224.507497-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first patch fixes a syntax error that shows up on every use of
dt-validate.

The other two fix warnings that show up when trying to validate the QEMU
virt device-tree (with gic-version={2,3}). There are several other
warnings that need to be fixed in QEMU, but I believe these two are
schema issues.

Jean-Philippe Brucker (3):
  dt-bindings: regulator: Fix qcom,spmi-regulator schema
  dt-bindings: interrupt-controller: arm,gic-v3: Make 'interrupts'
    optional
  dt-bindings: interrupt-controller: arm,gic: Support two address and
    size cells

 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml  | 1 -
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml     | 4 ++--
 .../devicetree/bindings/regulator/qcom,spmi-regulator.yaml    | 3 +--
 3 files changed, 3 insertions(+), 5 deletions(-)

-- 
2.37.1

