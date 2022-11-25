Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B148638897
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 12:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbiKYLVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 06:21:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbiKYLV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 06:21:29 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52D5723EBE
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 03:21:29 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id 130so3711880pgc.5
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 03:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vYP+2oM34cmJFG3V0Ltp7GNtutJIbBXEhCpqNRxYA1c=;
        b=Pj9Bv7nv0hGxcqolfF4+yd/oe3Ub2fzfkcuWjrMi0VinpJH7fvdtr/YljSrODKWK0f
         FM+Mz95Ur9WpLh6f0vCmbssVFWKWW2ofL/8GDnurs+S0sQiggICep5VwM2LXFol6x39I
         VidgCoZBzSc/iITMBjwMr6oD8SDGBCXmlYseTtMP6EAqIiGyrcbLVj/aWlZlvIJVrE8X
         XCIDAbGNlmDkUOdyCXP80IqSGHQa/rtF0lFEalT59kd7Z3ns30vsO3buNBshk1Ou/CtZ
         RkgoP5HGq+zNCis3/uBJRtzaqXjfKRsy/UrYeKJDNpEsFezHd+IU/xnMvU+wH5KoJRrr
         ReeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vYP+2oM34cmJFG3V0Ltp7GNtutJIbBXEhCpqNRxYA1c=;
        b=rlRWfUVGbd7VZWRuhz1H8LfgQo5opPPeStBFesRRhH0nR2XSiVgoj5wo8qx4FKCQxc
         BUQRJ43QmqRL+bt27PV+GoBo1xYxmDQ3LFJaeb79UIVDIWeMgmcA7C3iVRChVbX3xXbq
         EISxHiP1yqG+5JhT0m0hzVGNUliv9NECAuVdgFl1LEaVqbJUtBPi7nodhM+X4KUANfF5
         DLmVqx6ci4z1Vrmdv/rFfA7meBPo4+1CSJfVGqfymK9QbFIuXXjlpUYxkm1pSzKEMtdI
         qfttedpIZW7Pkm+1jt5Ylv3opvS7dATRwSxpzxjCe4UHs5L3sborsFh2kpXTfFIO8b7p
         X7AA==
X-Gm-Message-State: ANoB5pklkSnSQ/t/gQ68pZ4KB/29VnaQw1L5rq2jF03b1md95GAZlUcv
        EiNe5XFdjRNv3jFv5E1objyszQ==
X-Google-Smtp-Source: AA0mqf60LcLJuXxWEdKaVgoRREe0TX/v6dAlHlqUjeI4LuwEdKNOY1o0jWc8FMMP6h8gnDcCdeadMA==
X-Received: by 2002:a63:131a:0:b0:476:f92f:885a with SMTP id i26-20020a63131a000000b00476f92f885amr16224287pgl.478.1669375288411;
        Fri, 25 Nov 2022 03:21:28 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id e66-20020a621e45000000b0057488230704sm2834335pfe.219.2022.11.25.03.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 03:21:27 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v3 0/3] Improve CLOCK_EVT_FEAT_C3STOP feature setting
Date:   Fri, 25 Nov 2022 16:51:02 +0530
Message-Id: <20221125112105.427045-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series improves the RISC-V timer driver to set CLOCK_EVT_FEAT_C3STOP
feature based on RISC-V platform capabilities.

These patches can also be found in riscv_timer_dt_imp_v3 branch at:
https://github.com/avpatel/linux.git

Changes since v2:
 - Include Conor's revert patch as the first patch and rebased other patches
 - Update PATCH2 to document bindings for separate RISC-V timer DT node
 - Update PATCH3 based on RISC-V timer DT node bindings

Changes since v1:
 - Rebased on Linux-5.19-rc8
 - Renamed "riscv,always-on" DT property to "riscv,timer-can-wake-cpu"

Anup Patel (2):
  dt-bindings: timer: Add bindings for the RISC-V timer device
  clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP based on DT

Conor Dooley (1):
  Revert "clocksource/drivers/riscv: Events are stopped during CPU
    suspend"

 .../bindings/timer/riscv,timer.yaml           | 52 +++++++++++++++++++
 drivers/clocksource/timer-riscv.c             | 12 ++++-
 2 files changed, 63 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/timer/riscv,timer.yaml

-- 
2.34.1

