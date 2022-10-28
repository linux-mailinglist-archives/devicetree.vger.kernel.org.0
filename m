Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CF5A611BD0
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 22:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiJ1UuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 16:50:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiJ1UuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 16:50:19 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A3BA4BA47
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:15 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-13b103a3e5dso7617098fac.2
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FcP0tGCK9d7r2ZJkyYaZJhFzBpIGugbHphWbIKx20Xg=;
        b=ZoMWjfVQvaU9c5oUUdOo8SQUqm+QXHBAcJEfMVRu5kWBv4B2iAovEvZkanNtmKNIX2
         43ejNwF7lhM+gZ/zF9rcTNf3hv22Y3+iEWAH6crzWy5vN3pc+N8/IxLteAEj4wc5ryWe
         pr+WpFnJjIil/RHD5fMJ/whzAZkYDKhTvK2imRGdZs8V9OEkPJYLg5LCVyvwAtvcRMyz
         Esu7T7CROvkoDolv/kuS+MtnMETpJza4oKmF4m/yIH0k1ocFmIjQiUwEQqGYvkL044ax
         T+sBI6zxUToSFngKsirDQyagc/KOtKPosm5oTR/uEzXbrWfYORG4yuxe6VFD8n1tqatL
         ePMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FcP0tGCK9d7r2ZJkyYaZJhFzBpIGugbHphWbIKx20Xg=;
        b=v5WqzI/Xee+uSggwIVPtnYlMcJfZrDH02IemPh+/BYd7toU87ySbBoY/o426vWruIA
         ACaXniaiHEq2tvJ8FtHqPb3TSDX7+iIbpwc6o3U9CsOR6GjSVQoMIyvCxCR61J4QgcS5
         dXLEZ8EsTenuq0mXxMJUuIOynHfX4BOomw+yQaDklwanVXf0dtPRlR4/OwX5M4YJJsyO
         5X28KoHhSEmOXEWTIVha4B+HHvViwwDrqVgpNR4XCQafpDK2me5M/ZkkJc3nRsdXii5w
         kmVXm6DTYWd7DqwSGcFLxU9sHuyza2LjPKD3bD1AFiDPiB1veMGGeltUaglBc+2+mB+E
         cvag==
X-Gm-Message-State: ACrzQf1HRK0ji4XTDvEL2muASfXBdo49x2iz1jwioEaA1e7S2EkFAivd
        4AfxnX+vAaKTUshVxe9n0pk=
X-Google-Smtp-Source: AMsMyM4ZC9mnckst7ftVv7KOT5VCbwZRWKQaH+RkMLpJeqYaCFtr1uVFaEXNVxF2AH4A7oA6UpyaJA==
X-Received: by 2002:a05:6870:c092:b0:132:a01f:7c31 with SMTP id c18-20020a056870c09200b00132a01f7c31mr649053oad.56.1666990214675;
        Fri, 28 Oct 2022 13:50:14 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i2-20020a056830010200b0066756fdd916sm2090778otp.68.2022.10.28.13.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 13:50:14 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/3] drm/panel: Add NewVision NV3051D Panels
Date:   Fri, 28 Oct 2022 15:50:06 -0500
Message-Id: <20221028205009.15105-1-macroalpha82@gmail.com>
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
  dt-bindings: display: panel: Add NewVision NV3051D bindings
  drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel

 .../display/panel/newvision,nv3051d.yaml      |  63 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 523 ++++++++++++++++++
 5 files changed, 598 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-newvision-nv3051d.c

-- 
2.25.1

