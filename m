Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB1565EAE29
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 19:27:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiIZR1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 13:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbiIZR0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 13:26:54 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 471D7188BD4
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:44:10 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-13122bfaea6so4915231fac.11
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=RNp07vbgm/KhF2r1MqQ+J+nkeazq470GtvzwhTtFxMw=;
        b=CZQGzJQhjAIr7wI0UZanSwKJsg0qt8tvwn+2+u3FqQg1XAiacPdUoVUGBu1x0KFD53
         AQqUi153AWQQ7TXOlTwubMzNrx1BUVr6Ps0oaGeLUw1lw9Zo0WFDBOTGa3v4KBWbe5a0
         hmxF3i9pHAh27C6GbUJbLr7J+CzM0JbLFbP+NalhNob6/gmN4DEeRXTNP4aFfuokr5BH
         VkrECWQmIcbKAlp/SbtRfCmpXFQV/t9iUwQt3BOb7uugBbNe10w9dtTTyzXD2V13qLFI
         ZQcEbV5L6/HcqCNz5qPxNnw9n37KyzTd3zu7FoaXUM9tfYTuf19lzSIpZ8/MYmQBTt/9
         uk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=RNp07vbgm/KhF2r1MqQ+J+nkeazq470GtvzwhTtFxMw=;
        b=KxnBb8SlFh8DZPg0MHx9X1YAspzN/f+IM6EZ2E5xpehZdypIVW9Ew/RtoiflM49Jac
         utzDPs+a3jseNDjn+CZfCHbAV76aJa8CQIa4SJAMt0hkBIHrfZ8AbuAcQjpedct686HU
         Z0qDvc2NHIwazRPI04sEQ3ui7WLp7FAZbqTZqd6UKCFspTKvsOugvmELFuvk0pa2WNXt
         CCX3XocVJTwCYmTG4ZiVYiaRdeZ5aoPKbvuozWPL/YYcE7viwTZsnqfW1A8taA8sn9RN
         QoOkPGaO4Hmun37JfuYbLgChq0YoycCasA27wENykZV0PBlblDqtI6s6iGrKPeBoPDSl
         3A0A==
X-Gm-Message-State: ACrzQf24xJFJ20bzRyiClYTaKAVrViEJIpkM+qVd+INszckMpCbNPqfb
        mv0gQKmaUWFuOwP5ZMIh3zwZ5MnLz6M=
X-Google-Smtp-Source: AMsMyM4r8aI1Y+fS3enQwrEcXCvDH2gGCebpzgp7aJVUlEucF6Z8DJ6PPqtJW7uBR8iAmIAsqo0qiw==
X-Received: by 2002:a05:6870:1702:b0:127:cf3f:37b4 with SMTP id h2-20020a056870170200b00127cf3f37b4mr18964927oae.254.1664210617645;
        Mon, 26 Sep 2022 09:43:37 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id o83-20020acaf056000000b0034f684ca159sm7318798oih.29.2022.09.26.09.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 09:43:37 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/2] drm/panel: Add Samsung AMS495QA01 Panel
Date:   Mon, 26 Sep 2022 11:43:31 -0500
Message-Id: <20220926164333.7485-1-macroalpha82@gmail.com>
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

Add the Samsung AMS495QA01 panel as found on the Anbernic RG503. This
panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals.

Changes since V2:
 - Added 50hz mode at request of userspace devs.
 - Renamed "dupa" to panel name. Good catch Maya.
 - Added Maya's Signed-off-by.
 - Removed check for max backlight, since it is already done by
   backlight_device_set_brightness.
 - Fixed minor formatting issues on devicetree binding documentation
   and added port to provided example.

Changes since V1:
 - Removed errant reference to backlight in documentation. This is an
   OLED panel.
 - Made elvss regulator optional. In my case its hard wired and not
   controllable.
 - Added "prepared" enum to track panel status to prevent unbalanced
   regulator enable/disable.

Chris Morgan (2):
  dt-bindings: display: panel: Add Samsung AMS495QA01  bindings
  drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel

 .../display/panel/samsung,ams495qa01.yaml     |  56 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-samsung-ams495qa01.c  | 547 ++++++++++++++++++
 4 files changed, 614 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams495qa01.c

-- 
2.25.1

