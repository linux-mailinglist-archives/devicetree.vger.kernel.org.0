Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1FDC4D9048
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 00:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343683AbiCNXX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 19:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343612AbiCNXX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 19:23:28 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E2AA3EBAA
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 16:22:17 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id a5so16657634pfv.2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 16:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nnagq02TDH07LMwIwnmfnjbMb7WjbkUbTmWU8Nwzo14=;
        b=l+YAE//Kw1bIeA4YvnSwBhZqW+VDyUoxGaDwrZMVPn4/P9omEF0pLhmLrKTy2N0aRf
         3j2TLPsot7tqVMa7TZeD1p3jv4z/qzyC8g/ofra4vunWB/X9CcWXpyQbpoE25NAc9gwh
         uKc6hsK6hybJfBAbDG/nS6jtG1ZX4fV4PPFb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nnagq02TDH07LMwIwnmfnjbMb7WjbkUbTmWU8Nwzo14=;
        b=khtk0Gh6PeeXmro0yPZhQO2RmzFRwBwv+5E6RBBAGGcYXl3czCTzwBqDFO/EpxpEkO
         5LL4qBf54Mh5LU6T8sGWzFhPYG8iI31Ze+ItZmnVS49o1SyqFw8qNgQpVP32XU1kYMu8
         mIp0kilP9HAeutyxq3h8D/YTvHC7qDDZ+G6zG9kxN+WNiFCSLIUkOpVicbsLJJ40TpgU
         9cTCFHk2304AjuRZXgtJZ57DnqovdDfel/G9vi8wIpVCTbBalPogb3Ez7p+Xymjd2wDe
         8gsxic3iAS0SxsfPka8Zny5YtmkudWyz512LiDD43PC48itbr7GF0IHoV3aA6lOeCPqw
         YJaQ==
X-Gm-Message-State: AOAM5315uhKC7abFUyKku3XqUN57CYriOdbAmLapf2X6f3rM2emCqP2g
        Fh1cyEV+7+/LF6f/NhzNbzOOjA==
X-Google-Smtp-Source: ABdhPJypjVTbYZH96cSiRh7FkClbwFyUagFZh27ZIbQdZzMtyFwjbIjfICX/6iZWQey/PI6RbdBqEQ==
X-Received: by 2002:a05:6a00:230d:b0:4f6:ec4f:35ff with SMTP id h13-20020a056a00230d00b004f6ec4f35ffmr25766391pfh.53.1647300136596;
        Mon, 14 Mar 2022 16:22:16 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:c7b4:6b67:b9a2:ab68])
        by smtp.gmail.com with ESMTPSA id y20-20020aa78054000000b004f6f267dcc9sm20759886pfm.187.2022.03.14.16.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 16:22:16 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Benson Leung <bleung@chromium.org>
Cc:     linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>
Subject: [PATCH 0/2] Update cros-ec-spi for fingerprint devices
Date:   Mon, 14 Mar 2022 16:22:12 -0700
Message-Id: <20220314232214.4183078-1-swboyd@chromium.org>
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

This patch series introduces a DT binding for chromeos fingerprint
devices and then implements support to boot those processors during
driver probe if the BIOS hasn't done it already.

Stephen Boyd (2):
  dt-bindings: mfd: Add ChromeOS fingerprint binding
  platform/chrome: cros_ec_spi: Boot fingerprint processor during probe

 .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
 drivers/platform/chrome/cros_ec_spi.c         | 38 +++++++-
 2 files changed, 124 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml

Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Craig Hesling <hesling@chromium.org>
Cc: Tom Hughes <tomhughes@chromium.org>
Cc: Alexandru M Stan <amstan@chromium.org>

base-commit: ffb217a13a2eaf6d5bd974fc83036a53ca69f1e2
-- 
https://chromeos.dev

