Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB6326BCE91
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 12:41:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjCPLlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 07:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbjCPLlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 07:41:22 -0400
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18372BB88
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:41:16 -0700 (PDT)
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69]) by mx-outbound19-80.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 16 Mar 2023 11:41:13 +0000
Received: by mail-pj1-f69.google.com with SMTP id q8-20020a17090ad38800b0023f116f305bso1524553pju.0
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1678966872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MA9+uwBzdbKG1z6NwJHm1FDpFGQQBO7dyUaxsPMF/d0=;
        b=KXAliz6qjF/MIvSnN5/QVtg5miZFwjpFSDhtY/TqbntTAv9KQR3hQZXDeaxmiD4+E2
         K1HHHhXmsDSADU1yWGITH60gW17PX6Sz3pp4k9BnNa58ToyFBTwCSTmc14kxpsqnYEZX
         m2aRqyRkD5mqj2RBkcOymy3mfu/82kt0Naqdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678966872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MA9+uwBzdbKG1z6NwJHm1FDpFGQQBO7dyUaxsPMF/d0=;
        b=HUub7fKTq0M/S1ayv/TXbG9Glcmqio9Fe2w98OniMTkgUapivReWKQAMZPrrqWOuii
         V+bo8V6dZnciZayjuqAw26xxjDDda0plou/nXqU6NVMs2pIqI6KytpnRuY4nH6NYpu16
         YyBXaJnEZjfsiSOumqVPXqMYDwkUMm65St8cbfogTuE4++Meo94QiAE5YUYq1+qatvkL
         Wx0k8A3FdX34yG37uH05Pw/RtVHGXIaVlvT9QUAfof06BlV0b6bESxmkiC89AJsw7ACm
         pBRA0WYPAY2T0zL6MIv4raJL/fONNmRbVEkwIYVPkDyVAfNpNOZfvLZ5KQzTOCLPsjRQ
         XrSQ==
X-Gm-Message-State: AO0yUKVW/cNtmfNn7XHNiGlTH5Hi2T3lUVt5vdcb566l4icibqo36Owu
        8CHwvRygDSflcMI5rTTwI3yMjNBQ9003Fue0FyY2J9KCslkAs9h+y3PrdW8a7relSXdsA7DnL16
        mW2G2gev+hgF/k3WLtcnTc/1NGDdH3V/PVGC9/E2H8o1+1zBReWSaoqxdUA==
X-Received: by 2002:a62:640b:0:b0:5a8:beb3:d55f with SMTP id y11-20020a62640b000000b005a8beb3d55fmr2391840pfb.32.1678966872351;
        Thu, 16 Mar 2023 04:41:12 -0700 (PDT)
X-Google-Smtp-Source: AK7set8yo/e83SGioAK45ds3ZgbU5QwJnUL+E+ap1OX/rx3Wbuy3gjX9mhOLjplXyr/yus6M3upDjA==
X-Received: by 2002:a62:640b:0:b0:5a8:beb3:d55f with SMTP id y11-20020a62640b000000b005a8beb3d55fmr2391824pfb.32.1678966871854;
        Thu, 16 Mar 2023 04:41:11 -0700 (PDT)
Received: from localhost.localdomain ([49.207.217.20])
        by smtp.gmail.com with ESMTPSA id j9-20020aa78dc9000000b00571f66721aesm5284534pfr.42.2023.03.16.04.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 04:41:11 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 0/2] Fix WKUP domain IO PADCONFIG size issue and RPi header support
Date:   Thu, 16 Mar 2023 17:11:00 +0530
Message-Id: <20230316114102.3602-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1678966872-304944-5515-18085-1
X-BESS-VER: 2019.1_20230310.1716
X-BESS-Apparent-Source-IP: 209.85.216.69
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrKysDAHMjKAYmnGhkYmycZmBm
        ZpximJacZmhqbJqUlpaWaJqSZJlqbGSrWxABcykRBAAAAA
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.246833 [from 
        cloudscan17-171.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
This patch series fix the incorrect IO PADCONFIG offset size of the
wakeup domain for J721S2 SoC and add RPi expansion header support for
AM68 SK.

Changes in V3:
- Add Fixes tag.

Changes in V2:
- Update commit description.
- Update the offset value to 0x194 as 0x190 is the last register of the
  IO PADCONFIG register set.

V1: https://lore.kernel.org/all/20230123135831.4184-1-sinthu.raja@ti.com/
V2: https://lore.kernel.org/lkml/20230124120311.7323-1-sinthu.raja@ti.com/T/

Sinthu Raja (2):
  arm64: dts: ti: k3-j721s2-mcu-wakeup: Fix IO PADCONFIG size for wakeup
    domain
  arm64: dts: ti: k3-am68-sk-base-board: Add pinmux for RPi Header

 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 70 ++++++++++++++++++-
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  2 +-
 2 files changed, 70 insertions(+), 2 deletions(-)

-- 
2.36.1

