Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD1955AF3C7
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 20:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiIFShH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 14:37:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbiIFShA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 14:37:00 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A39549C1CA
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 11:36:48 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-12243fcaa67so30322757fac.8
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 11:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Z1SqG+a+8DfOkCdpVOkTG6jpiKiwPKwZbGJ/NvH9zs4=;
        b=JdJ2NT0uiXpqf5EZKNm0bxqTxxxbTDsTsOEjLl/ERVAJl4LSOew/53VIJ7UiP/0y87
         vpKci++JK4MDH63C3m2R6IC5pyfaiL0oQzoiA9Vsv7eXDw62Yg40i90rijP1OwRguLYJ
         dyfGoX+Ffz3Byz7Uchl27QA1qeLT2jIpBbr0Xer5uU6qhsewZrMK8hJoOmBFGvUyfA6+
         /RPqnx/bwcDwmHrZemB2wk3tAmN1cMmOIpDnsG7qAhin/OZGsA4nzWfaz0+7q/yKs8q9
         6MgupjGYm4swyXKtshksjnWy34To1chWJU2WgxLiDhDFp9YBPagaxq+JrtvkBbGuK2Tc
         4EGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Z1SqG+a+8DfOkCdpVOkTG6jpiKiwPKwZbGJ/NvH9zs4=;
        b=vc90ILb8q2x1MKWa8DlEiIDi6a8gc20NO+YcYjAcyiyTrrHuWuq7+Jy6k9N8d8uBj6
         HfthJbV9/C6z9Hb3RyYgi0TpgGjEJohbQalhln5QoR72nCbgcNqndDBZ/Bly06O+ixeV
         rYNTmuau/1KZqoWDwOFcsYUJCqKjbIrMdek+LBNrTTeU+/ML6eHR5EnU1u/f7dFNcMWV
         A4ybvuXIQSIfEPC3dcEJB7aij2rKfp7p+JAO5xO3XWEf75JuL8GWWGAlhCvXJsGyZ/ox
         Aw81qXRYNJ5CyXC27IvmvJntPSBmA0ditvSXtOGin+bdpljShaVoOqx2EcZcTQ3als0i
         jj2w==
X-Gm-Message-State: ACgBeo20BUbPi7CDQiPeGqGEY13mJpIEEvtTfMtcgTgWMfOZivuMrTc4
        pNKSGm3JbVmXwbbEp1YnqR4=
X-Google-Smtp-Source: AA6agR4eG2gUySXWRhQRTLVJSOimLirf7HoJpzO9x71BGGlX/jujnp0ZC7E32yGKHh8Frkdp+l7z7A==
X-Received: by 2002:a05:6808:1246:b0:345:b825:fea4 with SMTP id o6-20020a056808124600b00345b825fea4mr10045198oiv.261.1662489406042;
        Tue, 06 Sep 2022 11:36:46 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id j22-20020a9d7f16000000b00638ef9bb847sm6158887otq.79.2022.09.06.11.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 11:36:45 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] drm/panel: Add Samsung AMS495QA01 Panel
Date:   Tue,  6 Sep 2022 13:36:40 -0500
Message-Id: <20220906183642.12505-1-macroalpha82@gmail.com>
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

Add the Samsung AMS495QA01 panel as found on the Anbernic RG503. This
panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals.

Chris Morgan (2):
  dt-bindings: display: panel: Add Samsung AMS495QA01 panel bindings
  drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel

 .../display/panel/samsung,ams495qa01.yaml     |  49 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-samsung-ams495qa01.c  | 468 ++++++++++++++++++
 4 files changed, 528 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams495qa01.c

-- 
2.25.1

