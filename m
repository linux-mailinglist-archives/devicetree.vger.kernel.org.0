Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30B782B92F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:00:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727305AbgKSM4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 07:56:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726787AbgKSM4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 07:56:12 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E20FC0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 04:56:10 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id l11so8126112lfg.0
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 04:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7EVAjNyP+QfIL0q5QTYicBLneMptTG/oXBWW6o0cclM=;
        b=hfmj49HNrOs1hdjReALAbJvDMxqwIUHlWbCbE8T43XfpQy5S5Ii7aKSNLqZQhfx/07
         jyOt64LVmNYDwx9EYjdF7LGgBjD7r1ybbB+BEq5hdpbc6Yk97JVLiylsYhJqyXVW1/VY
         SVQpXIe3oSlHLpIsN64JzddXBEe7MbE8xBCdWIGPdIE2bScgGQgsG6cfNn9Lv35m4U/p
         BZOZ50yEXrxegcbFflL2TiRL2gwrvS9yM3aAXsmO96ICHnaAzjMYujMoor6zOl9gAZTK
         IOwWYUmp3MAt6J3wpYYXCLj6B8dVmF2mof1K/9Dsm3+DC/fEo6KZ0mPR1YFfZWrzMGJD
         MH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7EVAjNyP+QfIL0q5QTYicBLneMptTG/oXBWW6o0cclM=;
        b=NDNX667cHEG5IhyvM8/D1uSSFwRLKIz60ViAbzlosatH20NgUirnqHAXfSMk4muPx9
         qmHjcNDIR5/CdN4pWoMsq4l0Hya67iH24rbA0VvdlK0kTP56Cb4IcN4uxr97+rfVb9wp
         g2lq3gBJ1EtqS37JxIISXprgvVOydSZjh9AAhr2HapkO123iyh/YZ9RDMi8C8SKlDHO5
         Q5/GNCha+47NLsyW+9sOd02NHU3nJpgsY7YHuVkPup44W1ZrbdfQ7Mo0t+Ap8B/EDuSH
         gG+nl2uqF6cmQmZdxf80kmBnMgXfQADqNIBKdwNYoLBJEV6nfrJcr3AcFzGzprok0rdP
         qeRg==
X-Gm-Message-State: AOAM531ucD2Ne6AIQlJV4YpJrcJyd43hM/khSw6NauWQ4xNrTnKLBofm
        8IVTtpxAvoL9Xbjl94giFjY=
X-Google-Smtp-Source: ABdhPJxVvnx610hMUmtJbEixgFuCg6II3fEy6jXWWh36bOsM+HM8wWnFAMmQwpMgIFviTnYq2vHMLA==
X-Received: by 2002:a19:e04c:: with SMTP id g12mr5983219lfj.261.1605790568900;
        Thu, 19 Nov 2020 04:56:08 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id h11sm1687564lfc.194.2020.11.19.04.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 04:56:08 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 0/2] reset: support Broadcom's PMB
Date:   Thu, 19 Nov 2020 13:55:58 +0100
Message-Id: <20201119125600.8559-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

PMB is Broadcom's old reset controller. Later it was replaced by PMC
which is a wrapper around PMB.

It's still important to support older PMB as:
1. It's the only reset option on older devices
2. Sometimes PMC may be unable to handle device reset and PMB should
   be used as fallback
3. Some devices may be configured not to use PMC at all

I'll get back to working on PMC later.

Rafał Miłecki (2):
  dt-bindings: reset: document Broadcom's PMB binding
  reset: brcm-pmb: add driver for Broadcom's PMB

 .../devicetree/bindings/reset/brcm,pmb.yaml   |  54 +++
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-brcm-pmb.c                | 307 ++++++++++++++++++
 include/dt-bindings/reset/brcm,pmb.h          |   9 +
 5 files changed, 378 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
 create mode 100644 drivers/reset/reset-brcm-pmb.c
 create mode 100644 include/dt-bindings/reset/brcm,pmb.h

-- 
2.26.2

