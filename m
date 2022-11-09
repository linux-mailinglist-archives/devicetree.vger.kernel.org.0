Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B0B6226F9
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 10:30:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbiKIJac (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 04:30:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiKIJab (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 04:30:31 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D726F1A062
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 01:30:29 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y16so24759385wrt.12
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 01:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=arSu8EjGp6kA++ItJ0wO/WnkofR8z/rNEykvkpXBJ50=;
        b=yZBDzbz0h9un5E3vrjqfV4P2GNvhI0JdpLkEhHJhKIZmoPBRPNWV2ReJt+Hyaru4Yy
         f4aq3664dXl46TdVfLHj+Wi2AQEg3/MG96nWhY+JvG+KD8pzyYtDxs3IYAYcD9ZwAUvK
         ZwQX/l6pNtevIi08pwIsZSblcpxED76k2uGRUHL2rt7XWrlJTLE6cEWSrzY0/10q4A4f
         7k0SLtkw9sgizvUdPm/J84Tw1eWi1ybjMF3y7br33j3v4o0oMe7VmCs065YzUE02K3ze
         sRVT8CN/FmRNcMpdDpfJFD9jGLtafMchVVZ6lJfYU3BphvfmXC31uKEcHKApQzluxOAt
         LpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=arSu8EjGp6kA++ItJ0wO/WnkofR8z/rNEykvkpXBJ50=;
        b=O8CwUN0UdxV5Gch5l9eFPo5dBwwVHtQ5xpvOZ53DQLe0F3o7W7nzHdmq4GBeuxXCIJ
         HaZgLCn9ECgyu33WAZCR4lzs9zwowequLiZflPIByM8Unylg+H3F8S91/63DSRSM9QUf
         gH7P7br+ERqxwqtdBavSbbdvvuCKb6yEkWu5Bixn26ftc1QgPtUEPB7D0he/1zzXxKQ8
         qR0rv+OIvX5lXrZzkQSX800XTq+zHlv+W8pyPQp8VpOYbVJ/g2MXgmRnraCNaZ2lVONW
         9FdL66hLodlLzh7CEV1mwTdXMKGnGCF/UiorJSeUF0OrH11jyhLp4ViR+tD8EdljDJIW
         bzJg==
X-Gm-Message-State: ACrzQf3OS8PnH4pjOHLoTmtNOgyQi1WXb1ONqxn0Dtx3CpSLW5aHfp9P
        MpjLuSmvZFJXEfwwHjqw2FD9Ug==
X-Google-Smtp-Source: AMsMyM5x9AbzcfJTv8gnCL3hUGI7jzocRPxbpCXZ0IGEvTtcdR2N0DLZC1KF/sJIdpuGnW4ev2W9gA==
X-Received: by 2002:a5d:47aa:0:b0:236:79cc:6d5f with SMTP id 10-20020a5d47aa000000b0023679cc6d5fmr38397312wrb.391.1667986228452;
        Wed, 09 Nov 2022 01:30:28 -0800 (PST)
Received: from baylibre-ThinkPad-T14s-Gen-2i.. (254.31.102.84.rev.sfr.net. [84.102.31.254])
        by smtp.gmail.com with ESMTPSA id g12-20020adffc8c000000b0022cd96b3ba6sm14547919wrr.90.2022.11.09.01.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 01:30:27 -0800 (PST)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, afd@ti.com, kristo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] AM62x watchdog support
Date:   Wed,  9 Nov 2022 10:30:24 +0100
Message-Id: <20221109093026.103790-1-jpanis@baylibre.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for AM62x watchdog.

Changes since v0:
	- Mark MCU & WKUP watchdogs as reserved
Link: https://lore.kernel.org/all/20220630070826.11074-1-jpanis@baylibre.com/

Changes since v1:
	- Rebase patch to v6.1-rc3
Link: https://lore.kernel.org/all/20220718122328.251602-1-jpanis@baylibre.com/

Changes since v2:
	- Rebase patch to v6.1-rc4
	- Moved wkup_rti0 status ('reserved') into 'k3-am62-wakeup.dtsi'
Link: https://lore.kernel.org/all/20221103181440.232727-1-jpanis@baylibre.com/

Julien Panis (2):
  arm64: dts: ti: k3-am62: add watchdog nodes
  arm64: dts: ti: k3-am625-sk: mark MCU watchdog as reserved

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi   | 45 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi    |  9 +++++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 11 ++++++
 arch/arm64/boot/dts/ti/k3-am625-sk.dts     |  5 +++
 4 files changed, 70 insertions(+)


base-commit: f0c4d9fc9cc9462659728d168387191387e903cc
-- 
2.37.3

