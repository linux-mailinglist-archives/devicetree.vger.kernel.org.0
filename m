Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC29B5AF3F1
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 20:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiIFSwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 14:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiIFSwN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 14:52:13 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9281680485
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 11:52:12 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1274ec87ad5so15549180fac.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 11:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=tWpKH+dFpia0oudOayWqVdlxFvhIRlTebrzm3G3i1Mc=;
        b=a0PODBzj/9iCiS4MIvXo6bz9qzroY3GgZE5RTI+HV5IwH1ECxNQqI1qWlInIrEFk63
         r8gEJmloNFT/wqA6C2Vl1PZ+AkBuI+aIAQFGdONgieDsE+hpbdRQ2DPql5PkMkqzDxvt
         wfVnDPWr+Nqv8VGmoVx1qIKOeMLO375lP/zQxPdY9d5Z7K+qRibM6mR5CbS8CVlP+Ptr
         2iF/TeyjWLtLQgQEoPyTvtftbZ0YgbvOl2iIO+12EL8plwGbpFhUWF50YjLlV04xgWfz
         Zf/Z6MsF0nD6sHIJuyl1mcDqfNifFKyRkkS9IbQqXzyfp8YB0WjHPUcVU5Ft4qIpYbG2
         rUnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=tWpKH+dFpia0oudOayWqVdlxFvhIRlTebrzm3G3i1Mc=;
        b=c9A20bf5zJBS6wf0AG3NrqPQ+NbFzx2zJKErFWgL1Wm71jfA/kEKajZK9BONUKnQxP
         7kkcu4kqIt1qXfANmribfD30BAwLfOxHTxGoOCKpMRXYj7t5XBLnlA/Xi1YioymRNtQM
         rvtFbOxbJEZxdTOO9X8hVqLMrRroXcEWsDa0dUrRmww/RzLCHGHIE+o18jCmdOQ7/OoD
         Fbbne6IjiHDl1j0UIPQ2HaSKuj4YDe5WPPfUe/wLe+ayCHGZiB5EbCeJupamNwNgQ0kq
         9HBUbNYlIqvEFWq6FeGJodKW7Ryfxt4jqhuLm5ENdyRlHoO8M751dx6po0suZ2pGoTgb
         dMbA==
X-Gm-Message-State: ACgBeo2bnarv+FgQSy42eZ3RQHUxH8U3mwSmhhn/Qfc9OsRyS2JO5NkQ
        KzSC+Cjv4zcs8V+ENXaHzLM=
X-Google-Smtp-Source: AA6agR7A5usOtNzmkwttlgJHZZk3U0A6XJklVhh1CCXN/3Fmb+ztyzN8iESfjXm7b+K8pSPGlb8VtQ==
X-Received: by 2002:a05:6870:340a:b0:127:74a9:c8d2 with SMTP id g10-20020a056870340a00b0012774a9c8d2mr5027469oah.235.1662490331985;
        Tue, 06 Sep 2022 11:52:11 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id f205-20020aca38d6000000b003449ff2299esm5666177oia.4.2022.09.06.11.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 11:52:11 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] drm/panel: Add NewVision NV3051D Panels
Date:   Tue,  6 Sep 2022 13:52:06 -0500
Message-Id: <20220906185208.13395-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the NewVision NV3051D panel as found on the Anbernic RG353P and
RG353V. The underlying LCD panel itself is unknown (the NV3051D is
the controller), so the device name is used for the panel.

Chris Morgan (2):
  dt-bindings: display: panel: Add NewVision NV3051D panel  bindings
  drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel

 .../display/panel/newvision,nv3051d.yaml      |  48 ++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 478 ++++++++++++++++++
 4 files changed, 536 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-newvision-nv3051d.c

-- 
2.25.1

