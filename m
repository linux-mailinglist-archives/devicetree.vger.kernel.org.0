Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B464F517C93
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 06:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231154AbiECE0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 00:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbiECE0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 00:26:16 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 127F33D4AC
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 21:22:45 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id n8so14058446plh.1
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 21:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b4lUh0yMD8sZjGjtl6Yt4cfDa+0R6nAeSt8H2W7xp7w=;
        b=Py1VeLdd73EaC/N3n2EUF5DQyzaEeRU4qjm+oSAX5LrWLpK5G0FoxrUniGC3udZw+N
         fiTYOoF0VoAZ13/dtzJ5ilWNXkPgwpOUkOYf8VHFH6Aw4m7b2nSBk/c0k/HuvIr5PkuW
         0KscM5R8Eq6nmzyv37b6TOVti2VbxK3HZ4wN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b4lUh0yMD8sZjGjtl6Yt4cfDa+0R6nAeSt8H2W7xp7w=;
        b=eTm1mntOB616MLJAhxOe4vqhoqkCQ1KLkpj/Vf7Yc93x6Tres1QpNoj0ArLz2VFP/T
         ayiRuSTfdfp9ZX16uOJsz2Z5UiQpShli2i039Mc5yC5s/V080/pWulJ9dAt0LJhXl4QI
         J34a9Z9mtEAJhm7H0Bg9Ecx21B1cKhRETC+0CmbXFCmEvDoCBQJTeEImx+nJoa1H9wDV
         l2ZlMMEksW9UGJSEqJpW0OTeYr1eyO7G3HjczbpSKxe5vAPw/A7m28OwxJ3ypLXDHXXj
         e6aYx+z413C6S1MAhT4rIx8TeMjP5sIkfJR/HkaxgsYIBbJkA9wY6KoLUALlaAxj3v7V
         7Ehg==
X-Gm-Message-State: AOAM533C5f+KgG2N8UBLMZU2jDDp2WVEMgqJXV2YbTyjI8WqzT1Ddm49
        rZNPlof54MPlud0W/UeUmWeqMg==
X-Google-Smtp-Source: ABdhPJxFcEjU1mcmL/2/u9IOmP+AtNAGjAGJjyWxSLlHdtDYjvQy/6Xq+2fsmLuTJIZ9EIwif3WXDQ==
X-Received: by 2002:a17:902:edc5:b0:158:4065:a5ce with SMTP id q5-20020a170902edc500b001584065a5cemr15343814plk.55.1651551764571;
        Mon, 02 May 2022 21:22:44 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:15e:c760:9a04:7fbe])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902e34b00b0015e8d4eb24asm5390223plc.148.2022.05.02.21.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 21:22:43 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Subject: [PATCH v3 0/2] Input: cros-ec-keyb: Better matrixless support
Date:   Mon,  2 May 2022 21:22:39 -0700
Message-Id: <20220503042242.3597561-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a followup to my previous patch[1] that skips keyboard registration
when the matrix properties aren't present. This adds a compatible string
for this scenario so we can ease existing DTBs over to the new design.

Changes from v2 (https://lore.kernel.org/r/20220429233112.2851665-1-swboyd@chromium.org):
 * Drop rows/cols check now that compatible schema handles it
 * Make binding require rows,cols,keymap for cros-ec-keyb compatible

Changes from v1 (https://lore.kernel.org/r/20220427203026.828183-1-swboyd@chromium.org):
 * Better enforcement of properties in DT binding
 * Skip registration by means of adding compatible to device id list

Stephen Boyd (2):
  dt-bindings: google,cros-ec-keyb: Introduce switches only compatible
  Input: cros-ec-keyb - skip keyboard registration w/o cros-ec-keyb
    compatible

 .../bindings/input/google,cros-ec-keyb.yaml   | 87 +++++++++++++++++--
 drivers/input/keyboard/cros_ec_keyb.c         | 20 +++--
 2 files changed, 92 insertions(+), 15 deletions(-)

Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: "Joseph S. Barrera III" <joebar@chromium.org>

[1] https://lore.kernel.org/all/20220425210726.3813477-1-swboyd@chromium.org/

base-commit: 4352e23a7ff2f8a4ff229dd1283ed2f2b708ec51
-- 
https://chromeos.dev

