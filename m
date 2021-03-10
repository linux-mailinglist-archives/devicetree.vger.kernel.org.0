Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98EC5333B04
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 12:06:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232318AbhCJLF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 06:05:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232570AbhCJLFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 06:05:13 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5147C061761
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 03:05:12 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id r15-20020a05600c35cfb029010e639ca09eso10753406wmq.1
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 03:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=atOYJKiQtVIBmsUBmGwjDSf2ypG69MQgMpofGinBoI0=;
        b=Mlh0zyh1Ino2/V00s3+M49s+nPBHlpbeYQQX6xgnfD9WRcoEVEUpxqyN7ZKOXj7jNJ
         taseauMDQ5v2plY79dBSWk9X1VWM/daC/1yL/nZtkKJ8vKKVhYDHPO8hn41aD3c4zn2P
         qh7R6smDbymWjqQhmjAD6ssxaMXHyuSWApIfcxBDr3GU8Pv0KShHQzUZZrpJ3BZildzd
         eyvGiBpnFwgtmGcsHqoMxpGnzcpaRT7CaASrWmh1/hXvqBGZZNiYgD6/GNkAtGoHIjH3
         O+Pb0oOaUWMT71DpJiXOneOFcchp4gm9djkIHBmkU+4WM8GUhA4sQdzyV5xxk3xctfx+
         tWSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=atOYJKiQtVIBmsUBmGwjDSf2ypG69MQgMpofGinBoI0=;
        b=DTgECzUWeZDQ4eciS+S7mm3rZMdm6ADydA8MuMio40ykwY86XlmlidklHPITM6YPnC
         phT+v8SXYAfLdmewIkq1ZqKY1wamkIX+8dzUz1B1NFvuizoN4ftpLsmWt+RsHncj15bO
         QGHMfI8W0YdAWaj/PsQ1uok468GHhrk1NxnqgrMuTVEVi/6g0Cstmb6icdRMV43Xlj/j
         zd+04KwpMfT6wmBroXULAj2pvj4bPOT9rzGk4301goIJxOCvtUzd2llZ433g7uoUOSAb
         c+EGX0FPj+E861Rq4koQ1cpIW2MtPOyqUZv0vZ568wLOBn7m2fCgrmGi8jdz2NHcGvFI
         aAZg==
X-Gm-Message-State: AOAM532//F/tf8MobqhCSlN3pHIps5fALwK9DAJMquMwrsnmRP+MUGRs
        562FV+2GK9mXNQ8RgnMlOnj15Q==
X-Google-Smtp-Source: ABdhPJwIN42kKI2urjm5A/VYZZSRhiAcsg0CX8N7w77B4ABoEAk97Hu3APSNPnqi+kElMOv7xpMTqg==
X-Received: by 2002:a1c:bc56:: with SMTP id m83mr2825755wmf.174.1615374311485;
        Wed, 10 Mar 2021 03:05:11 -0800 (PST)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id n6sm29772526wrt.1.2021.03.10.03.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 03:05:11 -0800 (PST)
Date:   Wed, 10 Mar 2021 11:05:09 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-power@fi.rohmeurope.com,
        linux-watchdog@vger.kernel.org
Subject: [GIT PULL] Immutable branch between MFD and Watchdog due for the
 v5.13 merge window
Message-ID: <20210310110509.GK701493@dell>
References: <cover.1615219345.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1615219345.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enjoy!

The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:

  Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-watchdog-v5.13

for you to fetch changes up to 42fc191d60e6d5fd8c52e7afa8bccdc912947ce4:

  mfd: bd9576: Add safety limit/monitoring registers (2021-03-10 10:59:03 +0000)

----------------------------------------------------------------
Immutable branch between MFD and Watchdog due for the v5.13 merge window

----------------------------------------------------------------
Matti Vaittinen (6):
      dt_bindings: mfd: Add ROHM BD9576MUF and BD9573MUF PMICs
      mfd: Support ROHM BD9576MUF and BD9573MUF
      mfd: bd9576: Add IRQ support
      wdt: Support wdt on ROHM BD9576MUF and BD9573MUF
      MAINTAINERS: Add ROHM BD9576MUF and BD9573MUF drivers
      mfd: bd9576: Add safety limit/monitoring registers

 .../devicetree/bindings/mfd/rohm,bd9576-pmic.yaml  | 123 +++++++++
 MAINTAINERS                                        |   4 +
 drivers/mfd/Kconfig                                |  11 +
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/rohm-bd9576.c                          | 189 +++++++++++++
 drivers/watchdog/Kconfig                           |  13 +
 drivers/watchdog/Makefile                          |   1 +
 drivers/watchdog/bd9576_wdt.c                      | 291 +++++++++++++++++++++
 include/linux/mfd/rohm-bd957x.h                    | 140 ++++++++++
 include/linux/mfd/rohm-generic.h                   |   2 +
 10 files changed, 775 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml
 create mode 100644 drivers/mfd/rohm-bd9576.c
 create mode 100644 drivers/watchdog/bd9576_wdt.c
 create mode 100644 include/linux/mfd/rohm-bd957x.h

--
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
