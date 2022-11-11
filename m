Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6B156262F2
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 21:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbiKKUbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 15:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232574AbiKKUbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 15:31:43 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C31D14083
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:43 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id t62so5895859oib.12
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v7JwfC7BEwyt54CAoazqwqKahwlz5HCeFfo9y8OXV5k=;
        b=k3oySDP5db+EE32UB1u/TB7IpnJn27W/D9qVljMLqGFJrIH8lPrAxiNL2jsOZRs0y4
         YsfNzg/AlYfvnfZnFjnbxEMzx4iFHx3b9WVME1gCmXZeAzNgSltGxgKu8ouPOv6VUrh8
         59JcCc4t6GlVa3nN44Oc3JHHDdyu0kspaigCHISBlamDABUl5XyPe887RomfP23SJ7Zs
         NOR9PyVDSy5M0AsMt+48LJROH2r2PUTePj8rEy84S8WZPm3kKAWI9aDnWboeFUeB30ru
         VL3GxRZrQy5Do2ge0zpWSYT5SU2rx3ORojUwK4n58WWq92b8jWwi7lVHh7pHykpAZcKA
         SYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v7JwfC7BEwyt54CAoazqwqKahwlz5HCeFfo9y8OXV5k=;
        b=2//+/+EHN0ltMu90/7vJtKbqZ371DlesGyHFyOvH7+mF1Mz6iuekW95GS92x9SJUpm
         2w0UXaqiqwOjavEjy/do83osp0Iu9SlH8b66UWlQXulagyCN3Af8WM/zhflDOxbzOYO+
         KyHDx4lNAIuXoQgrpRZrO1hwFu/nC9CaVBR4f8mJa7r8hB9pnNhBoOkaplr+vq3L/kUO
         iwHUqukMK6X5kIRCtH1/DnvjMELNZ1OEi/BYX0L4V0YsDaJFzJ5izrQb3wdpsMXKv6Y0
         Bauh3sFWNgcTsXaN27GtjeYsOMc04z0sSyVBu4cXu0xafG6IbJsz08r6kXNx1lUOD9U9
         929A==
X-Gm-Message-State: ANoB5plwQmahag4zbeWFuc+GNBPmkS4BV5RyM5QECdAwhrnre6Mr8ZJ3
        CtQUo3GtvJudA7vykJvhj4E=
X-Google-Smtp-Source: AA0mqf5Vq1+0doXCD67im0+BQVjVWFV6lIbFaFqNY/dqYYYZJ/Yip6++mjRgm4RxCsPSnF4EPVcOiA==
X-Received: by 2002:a05:6808:22a5:b0:354:8922:4a1a with SMTP id bo37-20020a05680822a500b0035489224a1amr1583008oib.181.1668198702340;
        Fri, 11 Nov 2022 12:31:42 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id n10-20020a056870558a00b00132f141ef2dsm1734054oao.56.2022.11.11.12.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 12:31:41 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 0/3] drm/panel: Add NewVision NV3051D Panels
Date:   Fri, 11 Nov 2022 14:31:27 -0600
Message-Id: <20221111203130.9615-1-macroalpha82@gmail.com>
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

Changes from V4:
 - Removed "prepared" as its tracked by the framework.
 - Use mipi_dsi_dcs_write_seq instead of custom implementation.
 - Changed devm_gpiod_get_optional to assert GPIO as high at probe so
   it is held in reset on suggestion from maintainer.
 - Removed requirement for vdd-supply in documentation.
 - Added description in documentation for reset gpio to note it should
   be active low.

Changes from V3:
 - Changed driver remove function from int to void to match change
   made to mipi_dsi_driver struct.

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
  dt-bindings: display: panel: Add NewVision NV3051D  bindings
  drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel

 .../display/panel/newvision,nv3051d.yaml      |  63 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 504 ++++++++++++++++++
 5 files changed, 579 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-newvision-nv3051d.c

-- 
2.25.1

