Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB2BB3F0170
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 12:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232954AbhHRKTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 06:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbhHRKTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 06:19:41 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E068C0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:07 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id y34so3520052lfa.8
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHBrWaWim5usRXgaQc82lkSp0WhXjJF3AlpJqDKSRoY=;
        b=GDnV57ya+XOUfwuB+AthU31Le+ZY/IfqyOmuCLkVjM+9R78nZb3Dv5kpSDiS8I1hH2
         RJo0LBY3PBhCQCIa3qIWl+7jmpfnOSibSiuqdm4zGZ4xk1MIbrFSlVPGgCUEPHfs8td4
         ee7EJaW3QVSbHcdIqbVvyYgh1PAE7ZaqGp4ZyT39TgtJGeYw4nWZMNutwtgnW3H6/AFL
         dtLsgiqCBxPMjrSNBkgDfuTI+eHKybfm0t2kUgO/amW98oODQA/1HRHuNn2N1kkltk+O
         qaTkaBchJy/GvFaeuPn2OVDdupw95u7YdGLAs5BHOiI4+DRpFGUcjcdOWVvazt4857wR
         pDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHBrWaWim5usRXgaQc82lkSp0WhXjJF3AlpJqDKSRoY=;
        b=ohPw4+OR2V/0EDu+d0xGHpXCK9Y+ybpwM9TWI56oKQvxZbVXyBrkyGrMlZN0xrNpQf
         93OuUTe0kTP/X9YEgaqZJzwbRxTridYscmmjZYTMHLcfKUCuYkEc/fPtA0vvfmyDeEpI
         Y1D39XlSc/RvUNVDMA62M2xdbnnAgXSHnFUzAdlmj8hw+bcOMSzVz+eVW47iwpvn/uzE
         5QYct4CqHZpjYknVDHUzUSDAO4x1EZJaXWByGMRTjLflv/CySSsyKEUItIcF7by9rncD
         qoQWHC4eTWPYzUpN/MmV4s1Li8/omwWgSZKNltliA0rmrUOf/U48WnlFm9js2jHfUkWa
         kKDg==
X-Gm-Message-State: AOAM532mckhvWSScHrqApwuyQgduu4BsGtmlgyVROSA0D0fCBk0R2qqR
        HEiIqoJ2i+n8KBHjUtwypLC1ug==
X-Google-Smtp-Source: ABdhPJwSv3BebV09GBYhVLGn/Bal3GHoGVdLYigqOg+XWj0wJyAnN5sif8OZ80tEZJcbyYZ5WRg9aA==
X-Received: by 2002:a19:c517:: with SMTP id w23mr5963508lfe.219.1629281945441;
        Wed, 18 Aug 2021 03:19:05 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id l27sm451160lfp.245.2021.08.18.03.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 03:19:05 -0700 (PDT)
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     Jerome Forissier <jerome@forissier.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Jens Wiklander <jens.wiklander@linaro.org>
Subject: [PATCH v4 0/6] Asynchronous notifications from secure world
Date:   Wed, 18 Aug 2021 12:18:43 +0200
Message-Id: <20210818101849.602257-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

This adds support for asynchronous notifications from OP-TEE in secure
world to the OP-TEE driver. This allows a design with a top half and bottom
half type of driver where the top half runs in secure interrupt context and
a notifications tells normal world to schedule a yielding call to do the
bottom half processing.

An edge-triggered interrupt is used to notify the driver that there are
asynchronous notifications pending.

v3->v4:
* Clarfied the expected type of interrypt is edge-triggered, both in
  the normal documentation and in the DT bindings as requested.

v2->v3:
* Rebased on v5.14-rc2 which made the patch "dt-bindings: arm: Convert
  optee binding to json-schema" from the V2 patch set obsolete.
* Applied Ard's Acked-by on "optee: add asynchronous notifications"

v1->v2:
* Added documentation
* Converted optee bindings to json-schema and added interrupt property
* Configure notification interrupt from DT instead of getting it
  from secure world, suggested by Ard Biesheuvel <ardb@kernel.org>.

Thanks,
Jens

Jens Wiklander (6):
  docs: staging/tee.rst: add a section on OP-TEE notifications
  dt-bindings: arm: optee: add interrupt property
  tee: fix put order in teedev_close_context()
  tee: add tee_dev_open_helper() primitive
  optee: separate notification functions
  optee: add asynchronous notifications

 .../arm/firmware/linaro,optee-tz.yaml         |   7 +
 Documentation/staging/tee.rst                 |  29 +++
 drivers/tee/optee/Makefile                    |   1 +
 drivers/tee/optee/call.c                      |  27 +++
 drivers/tee/optee/core.c                      |  87 +++++--
 drivers/tee/optee/notif.c                     | 226 ++++++++++++++++++
 drivers/tee/optee/optee_msg.h                 |   9 +
 drivers/tee/optee/optee_private.h             |  23 +-
 drivers/tee/optee/optee_rpc_cmd.h             |  31 +--
 drivers/tee/optee/optee_smc.h                 |  75 +++++-
 drivers/tee/optee/rpc.c                       |  73 +-----
 drivers/tee/tee_core.c                        |  37 ++-
 include/linux/tee_drv.h                       |  27 +++
 13 files changed, 528 insertions(+), 124 deletions(-)
 create mode 100644 drivers/tee/optee/notif.c

-- 
2.31.1

