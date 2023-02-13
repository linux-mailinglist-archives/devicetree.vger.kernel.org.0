Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93FA2693F37
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 08:57:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjBMH52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 02:57:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229762AbjBMH51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 02:57:27 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDB7BCC10
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 23:57:26 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id 7so7585230pga.1
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 23:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ufispace-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHJhiuRiqcFrsMSI4ugI2BOz+NSM+ro+gE1w6zVpdyI=;
        b=LwZ/sKRzDFxjgmVtGLG6VES6M86sDeHn1sB1X609wpG94R/o0z9PEfDEvOkk+WSM9U
         R6B08yRzbGXdnhC/dNtXoug6mH0k4y4QI4FkMIqE5ytFvA0Cwhx7/2CIhYXPaje/d1Tq
         6U+jWY258loP6HwtfH9SmYIMY+v63CQHHzz3xVb2/MhGWYRXUx8ZQWS2tP3T/TndSuAT
         sv5hycb+JIt/Ygnk6IuEj3BH/We8dhnSbtLdT2XcCnfzl/dYuDSmS6Lxs7OAwjO3dhC0
         jaWQyBTo3qMDR/940X93jTILihyUfybzXE3TUkwViPGPC4O1dWPb/nj+JHn0GF47E510
         cYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tHJhiuRiqcFrsMSI4ugI2BOz+NSM+ro+gE1w6zVpdyI=;
        b=NvRt52QVMou0T+CUgqd1FOAMuED10ZxD5p5N/tsx/6x6vqKIGamOyCo+HUlKETnfte
         j4wU4q37kf/1Qn3QbVQ5iesXJbr1IT9Ztxih741oSJZdZBCNdmZyPEnNIbr7WA5EIfG9
         36CxsXBT+JUx4cnDMaYouOz4/tsBN+Vv5xcN9lapbsEtaIg13y469bKx0U5KaKl94t1l
         IRcT0CnJyFoLMrk8JnuBsuuZqNBRMHojQlMSixzQFPS0FT3uXSiBimQ6IxVIQzeV1VLH
         i6Q+Odcet3OYj7z6hR3opbrYdE/Mga+ym2FjjSL0GPsh97Bxz0PfUnlzP3eoQLblZzVS
         pliw==
X-Gm-Message-State: AO0yUKW8YqUH6kMDW7amqjNzCcN/aGMuG8+U/csxXyCuJyfm4FmfZCbi
        4O9mRsJ8fxifPeny0GGHVnjaAT4eaDaSbRVBZ6j7Ig==
X-Google-Smtp-Source: AK7set9LE8GPOhtY+B1RcIiH1yuIiy0jL2qeqKDiUlM0tAifpAsNTHw/az3I4uhlO37/K0cCECo23w==
X-Received: by 2002:aa7:9ad6:0:b0:5a8:ab62:28fc with SMTP id x22-20020aa79ad6000000b005a8ab6228fcmr3620669pfp.9.1676275046246;
        Sun, 12 Feb 2023 23:57:26 -0800 (PST)
Received: from openbmc500G.LAB.ufispace (CH210-63-217-225.static.apol.com.tw. [210.63.217.225])
        by smtp.gmail.com with ESMTPSA id e9-20020aa78249000000b00588e0d5124asm7255959pfn.160.2023.02.12.23.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Feb 2023 23:57:25 -0800 (PST)
From:   Jordan Chang <jordan.chang@ufispace.com>
To:     linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        joel@jms.id.au, andrew@aj.id.au, robh+dt@kernel.org
Cc:     jay.tc.lin@ufispace.com, eason.ys.huang@ufispace.com
Subject: [PATCH v5 0/1] Add Ufispace NCPLite platform device tree
Date:   Mon, 13 Feb 2023 15:57:18 +0800
Message-Id: <20230213075719.37276-1-jordan.chang@ufispace.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Ufispace NCPLite platform device tree, and add the compatible
string in dt-bindings files.

Changes for v5:
- add "Reviewed-by: Andrew Jeffery"

Changes for v4:
- revise the tags

Changes for v3:
- add "Acked-by: Krzysztof Kozlowski"

Changes for v2:
- modify node name to generic one and check with dtbs_check
- send-email without confidential mode

Jordan Chang (1):
  ARM: dts: aspeed: Add device tree for Ufispace NCPLite BMC

 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/aspeed-bmc-ufispace-ncplite.dts  | 359 ++++++++++++++++++
 2 files changed, 360 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-ufispace-ncplite.dts

-- 
2.39.0

