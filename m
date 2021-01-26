Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7071F303353
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:52:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728369AbhAZEty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:49:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732111AbhAZCFv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 21:05:51 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2F21C061351
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 18:01:21 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id q131so9502964pfq.10
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 18:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CwR87wWKGN87Uj91sl/0p7HuMQTyHPtAIc5V3JQ83s8=;
        b=YPwrzYVJrYdPYwHIGB3C19HPxzuv9YzJ+nIRNaIvV20lQdHz1/6vQval/My80vZAif
         2Mf1JnEJF2+hwnySNCeCyJusxqB9BF8/Ye0F8fUjcJRJsTizbPiBuPkams8MZtxfDHW/
         LBFW8/7helwz0fgR8tRechOnzmtGxFv6Ta6s8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CwR87wWKGN87Uj91sl/0p7HuMQTyHPtAIc5V3JQ83s8=;
        b=o1319JQBmVYp5poow2T9PawwMaSI7GmEWyM7d24quyEweyOOK807zvLyhyG1XGMWGW
         jL3Swe832D5LABkZwnxw6TeKfL/L2HmlW3FPsJd7rSaWXF4jc1itX14nlRA1OWCTe1is
         6gyA/FIdLQk/PUfhYRI3Cb4eDZK3UyOmsHcRl2RISnfsZnn+jR/1FdEOLq4XuJn/UT+V
         JY9CLBc9gfX1CWWbIvyGq7J6SgH0KDUisNN5Xi4DMM2lxEKWK28rNT1VtfpmHFpiG6ky
         Wg0Ceywol/fjaPUFJfQhaDxjYcI7X/iXne7ljfhyoGL0Ay5sA/xoVT0Orw42NVSH+yJE
         LI5Q==
X-Gm-Message-State: AOAM531lGOJC+nc6mxC3Qos7FHeMdeBTdGGKb6JCdEyLEysJslJAkdtx
        OGEtIKVkRdQ1Cyax7Bt/9UbLEw==
X-Google-Smtp-Source: ABdhPJz3odRAgcQ1j787bJW2s+4egACLkFMmu73JkQmpyg2vFSv2uojWpbBv8exlxsmEi/FMdjnpBw==
X-Received: by 2002:a62:7694:0:b029:1b9:8d43:95af with SMTP id r142-20020a6276940000b02901b98d4395afmr3154420pfc.2.1611626481406;
        Mon, 25 Jan 2021 18:01:21 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:201:1066:b437:97cd:2278])
        by smtp.gmail.com with ESMTPSA id n2sm16975028pfu.42.2021.01.25.18.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 18:01:20 -0800 (PST)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCHv2 0/3] iio: Add a ChromeOS EC MKBP proximity driver
Date:   Mon, 25 Jan 2021 18:01:14 -0800
Message-Id: <20210126020117.2753615-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210126020117.2753615-1-swboyd@chromium.org>
References: <20210126020117.2753615-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a different approach to [1] where I tried to add this proximity
sensor logic to the input subsystem. Instead, we'll take the approach of
making a small IIO proximity driver that parses the EC switch bitmap to
find out if the front proximity sensor is detecting something or not.
This allows us to treat proximity sensors as IIO devices all the time in
userspace instead of handling this switch on the EC via the input
subsystem and then other proximity sensors via IIO.

I propose this is all merged through IIO subsystem. Please ack
the first patch so it can be merged that way.

Changes from v1:
 * Driver moved location
 * Put mkbp everywhere
 * Fixed up DT binding to not fail and make sure is a child of cros-ec
 * Simplified logic for sending a message
 * Dropped CONFIG_OF usage
 * Sorted includes

[1] https://lore.kernel.org/r/20201205004709.3126266-1-swboyd@chromium.org

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: <devicetree@vger.kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>

Stephen Boyd (3):
  platform/chrome: cros_ec: Add SW_FRONT_PROXIMITY MKBP define
  dt-bindings: iio: Add cros ec proximity yaml doc
  iio: proximity: Add a ChromeOS EC MKBP proximity driver

 .../google,cros-ec-mkbp-proximity.yaml        |  38 +++
 .../bindings/mfd/google,cros-ec.yaml          |   3 +
 drivers/iio/proximity/Kconfig                 |  11 +
 drivers/iio/proximity/Makefile                |   1 +
 .../iio/proximity/cros_ec_mkbp_proximity.c    | 243 ++++++++++++++++++
 .../linux/platform_data/cros_ec_commands.h    |   1 +
 6 files changed, 297 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml
 create mode 100644 drivers/iio/proximity/cros_ec_mkbp_proximity.c


base-commit: 19c329f6808995b142b3966301f217c831e7cf31
-- 
https://chromeos.dev

