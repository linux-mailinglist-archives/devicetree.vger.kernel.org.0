Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4FA279091F
	for <lists+devicetree@lfdr.de>; Sat,  2 Sep 2023 20:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbjIBSXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Sep 2023 14:23:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjIBSXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Sep 2023 14:23:47 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDBEE4B
        for <devicetree@vger.kernel.org>; Sat,  2 Sep 2023 11:23:44 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1bf3a2f4528so972975ad.2
        for <devicetree@vger.kernel.org>; Sat, 02 Sep 2023 11:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693679024; x=1694283824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/h6f60a51OBLWnoS64kjCROnu9sNnSGTdI4hkrdrgU=;
        b=DJzfNxdAJfh+QHZeElt4uwcLV50p+qMkM993HDvs/xMXwTXBeXN1er6+Y0D+UTUfc8
         lpWbbDGqIadTccQibh3P8vlRNwV8Rwx9EUK8wkMvGb/IZnR6vbNs3n73cLdSekLvZ5Mg
         mlX48+DHjHXY8f54H0ZZrAt0aoNpsjDpbljQISBr2Qlwxpz/5UTwtupL2aAUPGtZismc
         tiqNGOuJ/e7Zgo7uRUcd42ytav7yeyIuCCq4Mv0zZiNBsBMT0eNA26idz8HAntycbMbp
         byEuWrpWJ3H6m1UDa4F3ZW0Q6S+UKduJWiD9Ri77/yVQAE+5HA9OWMe8zyeyle1FaUg5
         ekBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693679024; x=1694283824;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/h6f60a51OBLWnoS64kjCROnu9sNnSGTdI4hkrdrgU=;
        b=DzodfwtyMId+PUta8uXmepWxseNGjQQ99Rdtwmd3PxQaurc0E1D+DRMXk4AAJgK3Sj
         qFBnKaP2xOgmM0FHXu5WMFA4IrOukBgOtniU69X1HdXk/MOe2p03IlPA3B1z86Aqec0v
         MJFAcPONHmsxrCP9XMhnWnT1MA9FtMg+9HmH8iQ9YjNiFWy0fqzyfUo3M6HHPYQQIkYU
         8BCHahOwAG/s+5pTMDc623VZVVczZZ23oxfFSvRB1/Nc9dx2XRQF9cd3q9p/PsX+HQxr
         zXlaN7QUDfp1p5JRvwVOth2UXDzFz8EcweGdSim5wvEfTC1D8eoAEdZiZ009vOGCc+jk
         SeFA==
X-Gm-Message-State: AOJu0YxQvgSZtDO2zYCokyTWGjh1A+LRpZoFimf4Lzb2aHteJFqwbvnq
        7eFJ/MCsuHfTqLxxJGu6cUU=
X-Google-Smtp-Source: AGHT+IHFvEafo7q0avmTsrUfG8fYgqrU08jnX3qM1X8SnECauUTJFJ8cH1IXNkXvVcsJmrwcsG3Fzg==
X-Received: by 2002:a17:902:be05:b0:1bb:c06e:647a with SMTP id r5-20020a170902be0500b001bbc06e647amr6563279pls.53.1693679023694;
        Sat, 02 Sep 2023 11:23:43 -0700 (PDT)
Received: from toolbox.iitism.net ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id i4-20020a170902eb4400b001b801044466sm4899870pli.114.2023.09.02.11.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Sep 2023 11:23:43 -0700 (PDT)
From:   Ayush Singh <ayushdevel1325@gmail.com>
To:     greybus-dev@lists.linaro.org
Cc:     Ayush Singh <ayushdevel1325@gmail.com>, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org,
        Vaishnav M A <vaishnav@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Nishanth Menon <nm@ti.com>
Subject: [PATCH v4 0/3] greybus: Add BeaglePlay Greybus Driver
Date:   Sat,  2 Sep 2023 23:52:23 +0530
Message-ID: <20230902182243.1838554-1-ayushdevel1325@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BeaglePlay is a board by BeagleBoard.org. It contains a main AM62
processor with a CC1352 co-processor. They are connected over UART.

Greybus is a hardware protocol that was designed to provide Unipro with a
sane application layer. It can be used in IOT and IIOT applications
keeping the intelligence on the host.

This driver has been tested on BeaglePlay by BeagleBoard.org. It serves
as Greybus Host device and communicates with BeaglePlay CC1352
co-processor which serves as Greybus SVC. This replaces the old setup with
bcfserial, wpanusb and GBridge. This driver also contains async HDLC code
since communication with SVC take place over UART using HDLC.

This driver has been created as a part of my Google Summer of Code 2023.
For more information, take a look at my blog.

This patchset has been tested over `next-20230825`.

My GSoC23 Blog: https://programmershideaway.xyz/tags/gsoc23/
Zephyr App: https://git.beagleboard.org/gsoc/greybus/cc1352-firmware
GitHub Branch: https://github.com/Ayush1325/linux/tree/gb-beagleplay
Video Demo: https://youtu.be/GVuIB7i5pjk

This the v4 of this patch
v3 -> v4:
- Add DT Bindings
- Reorder commits
- Improve commit messages

v2 -> v3:
- Move gb-beagleplay out of staging

v1 -> v2:
- Combine the driver into a single file
- Remove redundant code
- Fix Checkpatch complaints
- Other suggested changes

Ayush Singh (3):
  dt-bindings: Add beaglecc1352
  greybus: Add BeaglePlay Linux Driver
  dts: ti: k3-am625-beagleplay: Add beaglecc1352

 .../bindings/serial/beaglecc1352.yaml         |  25 +
 MAINTAINERS                                   |   7 +
 .../arm64/boot/dts/ti/k3-am625-beagleplay.dts |   4 +
 drivers/greybus/Kconfig                       |  10 +
 drivers/greybus/Makefile                      |   3 +-
 drivers/greybus/gb-beagleplay.c               | 494 ++++++++++++++++++
 6 files changed, 542 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/serial/beaglecc1352.yaml
 create mode 100644 drivers/greybus/gb-beagleplay.c

-- 
2.41.0

