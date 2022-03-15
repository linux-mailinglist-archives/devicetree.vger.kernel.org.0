Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C06044DA137
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350603AbiCORcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350596AbiCORcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:06 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3CB8583BA
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:53 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id q11so16777434pln.11
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e41VkECulosXHxpBrBKKLRxi/TtDKsUMJRhikN2D88Q=;
        b=gygMhPJD5ZO91/klazHb/8EEeJviSJaW6BS5aXYb6SkcG+Jns2X/Qzfyj+sMfaG5nN
         4hoIuWb0EFO5UFO1lMgsxsQqnitheJTxpI+GNeWaxJyqFpZxac5UCEUg/RfhH4i9e06W
         3I3Ntl047LMu9W7r3LWx8PRM1pywKVPpD1IuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e41VkECulosXHxpBrBKKLRxi/TtDKsUMJRhikN2D88Q=;
        b=wKDrQAtTnDI0dq7u4rVkELRbxbO8Hbae1c+xmPiPFzCUCWE96hN8NS5CSFmOsDw/+Z
         Q5sbkFXpv9dG0uPBm6/gOOwsH/LutW32WfJOlVCtxcEN3d8K4kb66RVZ9rTpWGUE5VZ3
         dho7jhkd+Ynhzo5uthwzAN3vdKffLHzI+vYtXA5ebifl5wAZFnjsewzmm0hzxzPM46ak
         ACDKXyJuKbbGwG1w8fzajX2cetXyN5TlUTJ0RLMqc9JSRl+nQXbgvijnXIMJILI6j0fB
         uYD9U94ZGSimq+wchlxG5nBcW74Sk+qHkTaX24tnjuWtNy4T/eowgwTVUSLQ72/kQCbC
         h/bw==
X-Gm-Message-State: AOAM532Dq73tvICtDfR2umwi4Sh4iRB50BkIWOXQabkQTIw2y+uWRcHO
        nUdc9k6sGv+FEyTdY6PVc/iv+w==
X-Google-Smtp-Source: ABdhPJxSg8n8BI+iYFpFwXS9103V+QGFdMFntfi9kC7LTpt5YGXiM5zPdmVNw5zD8FjpT8Rks5zVXQ==
X-Received: by 2002:a17:902:6a86:b0:151:f1c5:2fa3 with SMTP id n6-20020a1709026a8600b00151f1c52fa3mr28830883plk.77.1647365453118;
        Tue, 15 Mar 2022 10:30:53 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id g18-20020a62e312000000b004f6fe0f4cf2sm24029263pfh.102.2022.03.15.10.30.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:30:52 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 0/7] Add settings for precharge and internal resistor
Date:   Tue, 15 Mar 2022 10:30:35 -0700
Message-Id: <20220315173042.1325858-1-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For Semtech sensors SX9324 and SX9360, allow confugration of the
pre-charge resistor (9324/9360) and internal resistor (9324).

Fix a register name spelling mistake first.
The 9360 changes are independant from the 9324 changes, but they are
very similar.

Gwendal Grignou (7):
  iio: sx9324: Fix register field spelling
  dt-bindings: iio: sx9324: Add precharge resistor setting
  iio: sx9324: Add precharge internal resistance setting
  dt-bindings: iio: sx9324: Add internal compensation resistor setting
  iio: sx9324: Add Setting for internal compensation resistor
  dt-bindings: iio: sx9360: Add precharge resistor setting
  iio: sx9360: Add pre-charge resistor setting

 .../iio/proximity/semtech,sx9324.yaml         | 20 +++++++++
 .../iio/proximity/semtech,sx9360.yaml         |  9 ++++
 drivers/iio/proximity/sx9324.c                | 42 ++++++++++++++++---
 drivers/iio/proximity/sx9360.c                | 12 +++++-
 4 files changed, 77 insertions(+), 6 deletions(-)

-- 
2.35.1.723.g4982287a31-goog

