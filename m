Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A445262FF2D
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 22:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbiKRVLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 16:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbiKRVLE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 16:11:04 -0500
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 390146BDC4
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 13:11:03 -0800 (PST)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1322d768ba7so7392615fac.5
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 13:11:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pTSfBoYqlZy8UzseJyxona1/vxw6WXJ/7Y2pdy6m35g=;
        b=zSR5XPd1YmbJnvd5BiqwaDm1c46ynW7oS3e3H6nbmMxfrIYSwYvZ+pZPcmShk5flX6
         2FLHTZ1A1pxTHAz3KrpuTHzZa+4Tm+MFEE0rd/6KAnEPUPPbv+J7lmMNdHzI78T06Y2W
         dU65VGyOymAT052KqsFv0qu6L1eAMmHsYsUUbhQpqOCTlr2tPybkxeH0b+kcPZDldP4D
         5ao2UUrJut6suTaIPyfWZZiekNw3FI8g56uF34uDA627+qZCESijwxLsr6T6FxZ4gimJ
         kg3TW70p2j86NU/6EpamoXwfUO9nWiiJO24M93jlX1ksE1RKi+wnqK4msP0SY0wP1hcz
         UAUw==
X-Gm-Message-State: ANoB5pm2JFv4LqBpbrpcHgOr3/VTzGi/zWtwmw8CYjQgGkiM3YbybmzL
        Hmx9dDLnad1VxPxc3Kqbqw==
X-Google-Smtp-Source: AA0mqf68SULkJkvPwdY31SVk4/OZ4isXEHSxTZZ2Q18Zv4Z7kl4qjnt1WNW+Q8GAKb+mHa+a208hLA==
X-Received: by 2002:a05:6870:ac07:b0:13e:bdf2:3e6c with SMTP id kw7-20020a056870ac0700b0013ebdf23e6cmr8033477oab.45.1668805862102;
        Fri, 18 Nov 2022 13:11:02 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p128-20020aca5b86000000b0035a5b95bd38sm1814944oib.54.2022.11.18.13.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 13:11:01 -0800 (PST)
Received: (nullmailer pid 1359966 invoked by uid 1000);
        Fri, 18 Nov 2022 21:11:03 -0000
Date:   Fri, 18 Nov 2022 15:11:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     soc@kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Andrew Davis <afd@ti.com>, Michal Simek <michal.simek@amd.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        Frank Wunderlich <linux@fw-web.de>
Subject: [GIT PULL] Stable branch for .dts to .dtso rename
Message-ID: <20221118211103.GA1334449-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

.dts files for overlays are getting renamed to .dtso. The kbuild support 
for that in in this stable branch. The .dts patches that depend on this 
are here[1]. There's also some new .dts overlay files posted[2].

I'll leave it to the SoC and sub-arch maintainers to decide how you all 
want to handle it from here. Either SoC maintainers can take this branch 
and dependent rename patches or each sub-arch can. In any case, I would 
like it converted over in 6.2 so we can remove .dts -> .dtbo build 
support ASAP and not be carrying both.

Rob

[1] https://lore.kernel.org/all/20221024173434.32518-1-afd@ti.com/
[2] https://lore.kernel.org/all/20221118190126.100895-12-linux@fw-web.de/

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dt/dtbo-rename

for you to fetch changes up to dcad240c15c10bebdccd1f29f1a44787528f2d76:

  kbuild: Cleanup DT Overlay intermediate files as appropriate (2022-11-18 14:45:30 -0600)

----------------------------------------------------------------
Andrew Davis (4):
      kbuild: Allow DTB overlays to built from .dtso named source files
      kbuild: Allow DTB overlays to built into .dtbo.S files
      staging: pi433: overlay: Rename overlay source file from .dts to .dtso
      kbuild: Cleanup DT Overlay intermediate files as appropriate

Frank Rowand (1):
      of: overlay: rename overlay source files from .dts to .dtso

 .gitignore                                         |  1 +
 Makefile                                           |  4 +-
 drivers/of/unittest-data/Makefile                  | 66 +++++++++++-----------
 .../of/unittest-data/{overlay.dts => overlay.dtso} |  0
 .../{overlay_0.dts => overlay_0.dtso}              |  0
 .../{overlay_1.dts => overlay_1.dtso}              |  0
 .../{overlay_10.dts => overlay_10.dtso}            |  0
 .../{overlay_11.dts => overlay_11.dtso}            |  0
 .../{overlay_12.dts => overlay_12.dtso}            |  0
 .../{overlay_13.dts => overlay_13.dtso}            |  0
 .../{overlay_15.dts => overlay_15.dtso}            |  0
 .../{overlay_16.dts => overlay_16.dtso}            |  0
 .../{overlay_17.dts => overlay_17.dtso}            |  0
 .../{overlay_18.dts => overlay_18.dtso}            |  0
 .../{overlay_19.dts => overlay_19.dtso}            |  0
 .../{overlay_2.dts => overlay_2.dtso}              |  0
 .../{overlay_20.dts => overlay_20.dtso}            |  0
 .../{overlay_3.dts => overlay_3.dtso}              |  0
 .../{overlay_4.dts => overlay_4.dtso}              |  0
 .../{overlay_5.dts => overlay_5.dtso}              |  0
 .../{overlay_6.dts => overlay_6.dtso}              |  0
 .../{overlay_7.dts => overlay_7.dtso}              |  0
 .../{overlay_8.dts => overlay_8.dtso}              |  0
 .../{overlay_9.dts => overlay_9.dtso}              |  0
 ..._dup_node.dts => overlay_bad_add_dup_node.dtso} |  0
 ..._dup_prop.dts => overlay_bad_add_dup_prop.dtso} |  0
 ...ay_bad_phandle.dts => overlay_bad_phandle.dtso} |  0
 ...rlay_bad_symbol.dts => overlay_bad_symbol.dtso} |  0
 .../{overlay_base.dts => overlay_base.dtso}        |  0
 .../{overlay_gpio_01.dts => overlay_gpio_01.dtso}  |  0
 ...{overlay_gpio_02a.dts => overlay_gpio_02a.dtso} |  0
 ...{overlay_gpio_02b.dts => overlay_gpio_02b.dtso} |  0
 .../{overlay_gpio_03.dts => overlay_gpio_03.dtso}  |  0
 ...{overlay_gpio_04a.dts => overlay_gpio_04a.dtso} |  0
 ...{overlay_gpio_04b.dts => overlay_gpio_04b.dtso} |  0
 .../{testcases.dts => testcases.dtso}              |  0
 drivers/of/unittest.c                              | 48 ++++++++--------
 .../{pi433-overlay.dts => pi433-overlay.dtso}      |  0
 .../pi433/Documentation/devicetree/pi433.txt       |  6 +-
 scripts/Makefile.build                             |  2 +
 scripts/Makefile.lib                               | 23 +++++++-
 41 files changed, 88 insertions(+), 62 deletions(-)
 rename drivers/of/unittest-data/{overlay.dts => overlay.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_0.dts => overlay_0.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_1.dts => overlay_1.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_10.dts => overlay_10.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_11.dts => overlay_11.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_12.dts => overlay_12.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_13.dts => overlay_13.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_15.dts => overlay_15.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_16.dts => overlay_16.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_17.dts => overlay_17.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_18.dts => overlay_18.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_19.dts => overlay_19.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_2.dts => overlay_2.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_20.dts => overlay_20.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_3.dts => overlay_3.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_4.dts => overlay_4.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_5.dts => overlay_5.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_6.dts => overlay_6.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_7.dts => overlay_7.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_8.dts => overlay_8.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_9.dts => overlay_9.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_bad_add_dup_node.dts => overlay_bad_add_dup_node.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_bad_add_dup_prop.dts => overlay_bad_add_dup_prop.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_bad_phandle.dts => overlay_bad_phandle.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_bad_symbol.dts => overlay_bad_symbol.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_base.dts => overlay_base.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_01.dts => overlay_gpio_01.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_02a.dts => overlay_gpio_02a.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_02b.dts => overlay_gpio_02b.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_03.dts => overlay_gpio_03.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_04a.dts => overlay_gpio_04a.dtso} (100%)
 rename drivers/of/unittest-data/{overlay_gpio_04b.dts => overlay_gpio_04b.dtso} (100%)
 rename drivers/of/unittest-data/{testcases.dts => testcases.dtso} (100%)
 rename drivers/staging/pi433/Documentation/devicetree/{pi433-overlay.dts => pi433-overlay.dtso} (100%)
