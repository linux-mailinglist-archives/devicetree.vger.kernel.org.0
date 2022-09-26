Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75BDA5EB10B
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 21:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiIZTOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 15:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbiIZTOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 15:14:36 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C37631D31D
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:34 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id u3-20020a4ab5c3000000b0044b125e5d9eso1263223ooo.12
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=7KxY3avbixQcgHiEb3Qe54qq280GeoSmhKwdxxL4B6s=;
        b=PsgO+GNg5FTlP6tjZwP6ewG65Py1dYEPJ14LoSCQZF5gU43GHiuYFmX9oOXH2QDk7t
         k48nOMQ5nrMpwlRW7nG7HEJM2OlJg09CPM82i2o73yPpBKo0lxtcBUhSVddDCXCRCYMJ
         iV363w26eg055w+aGbkrUxbMYTp8SLFhtMoojMOsyRGqXGY670OHlfwK188rsfMkKlDB
         lp++cqCRXhRecRZsKf/oMXW/tcX0DrZLK+cPoHaL2ZaWcpA3QsMKZOph6PenDlC8hUQW
         /5JoybgjPl+sroZuw2HJz0a1i2o3A7A8khzhOMf1duIXKc37bqsQvhL7D3WsuoBbaelX
         6w7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=7KxY3avbixQcgHiEb3Qe54qq280GeoSmhKwdxxL4B6s=;
        b=6hIgFboY9mAskElN34dYL/YDeHbOIORF/Tyyp/0wmZV/d2WeFXSNLAKbrgAR1INoIU
         rsYshDKsfl3GwKCiOACPxZAljvoyuonx2YQsY8hr7GjMDm4v0qflPJzcyfsUTSKiFMGi
         6HEnPLfJI/yUU9DXExDI8mKTPkKxlHXsGhBKrEkgJzntQ4PmZT8zOvnkibqjUPTc/EfB
         2ChOL5jXWMqS0nICSnBvkDWkGSWhR0beI+dRVUAq+8qN86DbtqHaN1TJMsFqhwl10uqy
         bxq6mdq9HKWeZAtZCqIf61O7L0r9RK3ynktwam2QTaY26e5elfI9nbiOnF3qM32m8P92
         vxGw==
X-Gm-Message-State: ACrzQf0RFT3nYsIN7rH6TMKoGONAyfk8rCwsA1lSk+zz+uBJr2TDSqS4
        x9MMCbhOYAFl5BXVhs29Mgw=
X-Google-Smtp-Source: AMsMyM6m5+WKtXRp43xGjWEfTh3vEyjeTFRvwCSenHU/DNf2L11GoufgGCp6PXkTIFYTF/y20m/2NA==
X-Received: by 2002:a4a:80cd:0:b0:44a:dce5:bbc3 with SMTP id a13-20020a4a80cd000000b0044adce5bbc3mr9377089oog.26.1664219673956;
        Mon, 26 Sep 2022 12:14:33 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id p130-20020aca4288000000b00350c5d946casm7278131oia.4.2022.09.26.12.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 12:14:33 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] drm/panel: Add NewVision NV3051D Panels
Date:   Mon, 26 Sep 2022 14:14:25 -0500
Message-Id: <20220926191428.4801-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the NewVision NV3051D panel as found on the Anbernic RG353P and
RG353V. The underlying LCD panel itself is unknown (the NV3051D is
the controller), so the device name is used for the panel with a
fallback to the driver IC.

Changes from V2:
 - Ensured dt_binding_check and dtbs_check successfully passed.
 - Corrected some minor formatting issues in documentation.
 - Added another mode per userspace request for 100hz. I was unable
   to find a supported 50hz mode that would also work, so for now
   only 60hz, 100hz, and 120hz are supported.

Changes from V1:
 - Changed compatible string to the driver IC.
 - Updated documentation to use new compatible string with board
   name.
 - Refactored somewhat to make it easier to support other LCD panels
   with this kernel module.
 - Added support for 60hz mode. Adjusted pixel clock to ensure proper
   60hz and 120hz (previously was running at 124hz).
 - Added vendor prefix for NewVision. Anbernic vendor prefix added in
   https://lore.kernel.org/linux-devicetree/20220906210324.28986-2-macroalpha82@gmail.com

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add NewVision vendor prefix
  dt-bindings: display: panel: Add NewVision NV3051D bindings
  drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel

 .../display/panel/newvision,nv3051d.yaml      |  63 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 525 ++++++++++++++++++
 5 files changed, 600 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-newvision-nv3051d.c

-- 
2.25.1

