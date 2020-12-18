Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0A2E2DE810
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 18:35:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732317AbgLRRdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 12:33:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731972AbgLRRdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 12:33:11 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A96C061282
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:31 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id m6so1937255pfm.6
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0fPY+6zn3CRK+yrW/S/jc5rhwI6oFcz+6g11nN4QUqk=;
        b=X+DPUFxUuphTyYgif05i8n82F6RIxnwTf4JXGkS9hGnWQWAFLPD7Y5fsHygSK1UX6t
         cj4ZeDM6VXKPRhjJw2c44KiwUaJB/rwosxHYAahLWap0fxYqIFDpJg9xiBKbPoCO8FD2
         0iNn/LAfKrXBj5hWu6RxjZt0H7n4s06KV/hj2I+bb63HoyjfFlbD+NuUWygSlhnWqynV
         B/y2JvZClwUQyB8suxNXZAhcewXDNKUFmWnvIdEKv821HY1JVMMAVvv7x4NwurqZqLXA
         1xzc4+QxzdKRfAJA9kyf72QZvpDctJnaNEtvS4T4lARxsjS0he9WIW9kghxR3Rn1GBDN
         T+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0fPY+6zn3CRK+yrW/S/jc5rhwI6oFcz+6g11nN4QUqk=;
        b=tfEBl1410VnUtZFJI7QRDtQb2uyvsLcUYaygrS6S68ouVU2xSNAaSF4ICeioW1jqrL
         xVzikz6KD6FgFo6NiLshGPwttagNF6B/FgNq/Ac2ZWePZVsQbTybU/OfWlizMGoRvO9U
         JEltuWIaVqvY9zDX58L8HANXIFTnhGtw5edCDpPKQWW+ZuG32LjE5kIlwL5UgmbKKaxt
         WGMD9tULKFjwAklisycHMH7y/AHxwk3p+0j1Ts0ZTLaW6vrG9mYkwOG+ZQ4OH51/KG8B
         BukD8WIw0dBHxiccez3eaEFqJ9maFApApI1xOpBDnIKJAl7bSxqMB5z77yLE+OUGVC1c
         40/w==
X-Gm-Message-State: AOAM530P9LRf6+bqqbqRQzjKcEqtOU05gIt5HsspXz4j7H2hFQXKFbJw
        pkMSVfxyG81mS699UB1SRgeHpw==
X-Google-Smtp-Source: ABdhPJyEi49San20wggF2PHMhE+7t1PfPlTsjiQdxh+omJKbTyHygaUcY7nupQpPU31caUpyahH/Kg==
X-Received: by 2002:a05:6a00:2384:b029:19a:eed3:7f42 with SMTP id f4-20020a056a002384b029019aeed37f42mr4976255pfc.4.1608312750240;
        Fri, 18 Dec 2020 09:32:30 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l11sm9892957pgt.79.2020.12.18.09.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 09:32:29 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 00/17] remoteproc: Add support for detaching a rproc 
Date:   Fri, 18 Dec 2020 10:32:11 -0700
Message-Id: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Following the work done here [1], this set provides support for the
remoteproc core to release resources associated with a remote processor
without having to switch it off. That way a platform driver can be removed
or the application processor power cycled while the remote processor is
still operating.

Of special interest in this series are patches 5 and 6 where getting the
address of the resource table installed by an eternal entity if moved to
the core.  This is to support scenarios where a remote process has been
booted by the core but is being detached.  To re-attach the remote
processor, the address of the resource table needs to be known at a later
time than the platform driver's probe() function.

Applies cleanly on v5.10

Thanks,
Mathieu

[1]. https://lkml.org/lkml/2020/7/14/1600

----
New for v4:
- Made binding description OS agnostic (Rob)
- Added functionality to set the external resource table in the core
- Fixed a crash when detaching (Arnaud)
- Fixed error code propagation in rproc_cdev_relase() and rproc_del() (Arnaud)
- Added RB tags

Mathieu Poirier (17):
  dt-bindings: remoteproc: Add bindind to support autonomous processors
  remoteproc: Re-check state in rproc_shutdown()
  remoteproc: Remove useless check in rproc_del()
  remoteproc: Rename function rproc_actuate()
  remoteproc: Add new get_loaded_rsc_table() remoteproc operation
  remoteproc: stm32: Move resource table setup to rproc_ops
  remoteproc: Add new RPROC_ATTACHED state
  remoteproc: Properly represent the attached state
  remoteproc: Properly deal with a kernel panic when attached
  remoteproc: Add new detach() remoteproc operation
  remoteproc: Introduce function __rproc_detach()
  remoteproc: Introduce function rproc_detach()
  remoteproc: Add return value to function rproc_shutdown()
  remoteproc: Properly deal with a stop request when attached
  remoteproc: Properly deal with a start request when attached
  remoteproc: Properly deal with detach request
  remoteproc: Refactor rproc delete and cdev release path

 .../bindings/remoteproc/remoteproc-core.yaml  |  27 +++
 drivers/remoteproc/remoteproc_cdev.c          |  32 ++-
 drivers/remoteproc/remoteproc_core.c          | 211 +++++++++++++++---
 drivers/remoteproc/remoteproc_internal.h      |   8 +
 drivers/remoteproc/remoteproc_sysfs.c         |  20 +-
 drivers/remoteproc/stm32_rproc.c              | 147 ++++++------
 include/linux/remoteproc.h                    |  24 +-
 7 files changed, 344 insertions(+), 125 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/remoteproc-core.yaml

-- 
2.25.1

