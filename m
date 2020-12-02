Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812222CC2D3
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 17:58:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728666AbgLBQ4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 11:56:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727826AbgLBQ4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 11:56:54 -0500
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F9CC0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 08:56:14 -0800 (PST)
Received: by mail-qv1-xf49.google.com with SMTP id i2so1668633qvb.2
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 08:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=H0Lx50SxnIIzq7vdxrU5tdSCLsBn1UooFpJpI+vmNx0=;
        b=LGWULYKLmYseaGlBpFr0VLKT3quD+zRnAUWVKgLWK0z4+g7iRjme5rOGmC3FLCL9sf
         1gh5HghvmJy2Dj0dPz08xJBiWDYUsJkyfhexNtU8yEFFpuVOfMkpiFP9OCxUtMbSBctH
         RLmES9P3LBxpnKkJfo5rxSjb/pc1vfwyjn5+EdeX8sWzvACAkpi7RRgXjd/bh2nZBtLG
         BljQEy2G8HsVGEtOAbtUNdK/2w214g3N3nzYthEZ94M3IfxLYyI0cSJmxcZERKLCwN1F
         3bLP6W39o0Z84bj0AZYLr7Y5qDBthOOaTO4BkbApdoPK83XAFG0brnppFu3NspPRFrDK
         moDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=H0Lx50SxnIIzq7vdxrU5tdSCLsBn1UooFpJpI+vmNx0=;
        b=eI7iEjlHu81+qvL9/M1T6jGT7FZJVHXJNFdun4I15IdNbqpgdBxqeUI45oZDm0DBDU
         82EX9qUeA/1beYfebyngCzNePjn3zNCGSOeI7+/jLrzSznh7+fZMC0jZS3S1ISDFnjtY
         Q60jwwzyA7ByBOV0zl6WRyebIbsvSFiKI2UTgjpDlz9x4xzRplHxkkZDmQlGD+eeAW9v
         V4g2rLODh5Y3CjPNlccxCBbPCQlAufcx/J0zlojjuJMUNix8L/yCyH3phtldIAF8mNBs
         uySRiPDc1So/BZ4Ps0SJYvUlp0UQ0GwI4MKfsBFV3FsFRbIyspZ2ngPsWlrvObN1++mO
         yCSQ==
X-Gm-Message-State: AOAM532UIriE4OYKwN8wTyXZ1M3YLPBcDvmO5a1C6Ip0tOKe8ctEtsA3
        8kMa/438J1R7DIGmN10K3rS22+d6Iw==
X-Google-Smtp-Source: ABdhPJwSn/rOgK8TFtSRu2/m7GlbGrv95pPDs73+aOV6pufVL7iwq4wJYVgLy7E57bcSmSMQIqMtQMSTkQ==
Sender: "kunyi via sendgmr" <kunyi@kunyi0.svl.corp.google.com>
X-Received: from kunyi0.svl.corp.google.com ([2620:15c:2c5:3:9657:a5ff:fef2:53bd])
 (user=kunyi job=sendgmr) by 2002:a05:6214:a8a:: with SMTP id
 ev10mr3649574qvb.41.1606928173217; Wed, 02 Dec 2020 08:56:13 -0800 (PST)
Date:   Wed,  2 Dec 2020 08:55:58 -0800
Message-Id: <20201202165601.1532213-1-kunyi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH linux hwmon-next v4 0/3] SB-TSI hwmon driver v4
From:   Kun Yi <kunyi@google.com>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        mark.rutland@arm.com, supreeth.venkatesh@amd.com
Cc:     Kun Yi <kunyi@google.com>, openbmc@lists.ozlabs.org,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v4: addressed comments in v3; converted DT binding to required schema
v3: addressed comment in v2 and improved documentation
v2: rewrote using devm_hwmon_device_register_with_info() API and addressed
    comments received in v1
v1: first version

Kun Yi (3):
  hwmon: (sbtsi) Add basic support for SB-TSI sensors
  hwmon: (sbtsi) Add documentation
  dt-bindings: (hwmon/sbtsi_tmep) Add SB-TSI hwmon driver bindings

 .../devicetree/bindings/hwmon/amd,sbtsi.yaml  |  54 ++++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/sbtsi_temp.rst            |  40 +++
 drivers/hwmon/Kconfig                         |  10 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/sbtsi_temp.c                    | 265 ++++++++++++++++++
 6 files changed, 371 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/amd,sbtsi.yaml
 create mode 100644 Documentation/hwmon/sbtsi_temp.rst
 create mode 100644 drivers/hwmon/sbtsi_temp.c

-- 
2.29.2.454.gaff20da3a2-goog

