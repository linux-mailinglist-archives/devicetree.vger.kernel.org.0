Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1196BCE9F
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 12:44:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbjCPLo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 07:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbjCPLo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 07:44:27 -0400
X-Greylist: delayed 3380 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 16 Mar 2023 04:44:21 PDT
Received: from egress-ip4a.ess.de.barracuda.com (egress-ip4a.ess.de.barracuda.com [18.184.203.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A8833B853
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:44:20 -0700 (PDT)
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199]) by mx-outbound40-126.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 16 Mar 2023 11:44:18 +0000
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-544b71b3114so1351327b3.13
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1678967057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DAO3s9WIPu6FGtr1O/SymD5IC2bA74jcQnX8JFNXRUo=;
        b=BXG9FtUqe1FxCOAIwSlAzKhdadins25jxS8TU88NlBSHvU2MfFQko5eOkR1U0uiXLs
         vcd+sBYpg18CXCAug4VjFD+PKF4+00cvXHpnAsD4c0Gs8vUQbwVEymLAxSv4isdYaH4P
         54/90BRJo4VjPFQJuY3hIBrQlTmWGDyluZ9yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678967057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DAO3s9WIPu6FGtr1O/SymD5IC2bA74jcQnX8JFNXRUo=;
        b=5cg+JtJwamP8VgaHrrUiLUI6qyvsWEePdzNw+aVIh18a61cCDtNgu6RqyNKZ8Wfz3U
         Hpa1QuIiw5uxGMbb9K4yXOPqwrvB2lhmUD9mVSsWwHOuNDhHOH90kfPiHDmoOf1qAACv
         CDFxAJlPaD43eFvN70yRFI8waqqqaasfG+O4W0ImFnK2yG5xloC01TTkyy0ApriaeuRF
         VSzRRqXxDPAF9qvUXGnfa2TDo7TeS+SnOaDWLVubp7fJ3j5M09AfAbvIEZ2FmgKL2CWG
         o4VZSpOWBpjMHxp2NGT6yHGOzxUPVnh4Mf2KMvDJ3Ih32M3w11cNmSxDo3JEFAPP5M+V
         XWzw==
X-Gm-Message-State: AO0yUKVOkNlb0axgq/9gU4JSSdXAeDM16mmRphQYS+9as7TNT6dUhXiO
        cQgPRnymuA3ZtVtsYswX6TyCWE4ue7qCmoR6aqo9vsjHWsDpEHL6+oWWlv79Tz1FyQifke+ILBC
        XZ1EkKDmWCJQ1R2or7U44BpJ4TkooXGG+j0Ol8X8BREYeRFXZ3/jAqi439unwTFZ/xg==
X-Received: by 2002:aa7:9d12:0:b0:625:a102:9a34 with SMTP id k18-20020aa79d12000000b00625a1029a34mr2467803pfp.24.1678963675646;
        Thu, 16 Mar 2023 03:47:55 -0700 (PDT)
X-Google-Smtp-Source: AK7set8ZIHqpxTj5SShM5wZfbAekKBVo4SSDbXQqCraFeWsiUcsOMKa5qAMss1F1qq9ZExPt1dhZLA==
X-Received: by 2002:aa7:9d12:0:b0:625:a102:9a34 with SMTP id k18-20020aa79d12000000b00625a1029a34mr2467791pfp.24.1678963675351;
        Thu, 16 Mar 2023 03:47:55 -0700 (PDT)
Received: from localhost.localdomain ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f26-20020aa78b1a000000b005a8c92f7c27sm5108744pfd.212.2023.03.16.03.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 03:47:55 -0700 (PDT)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sabiya.d@mistralsolutions.com,
        Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 0/2] Fix WKUP domain IO PADCONFIG size issue and RPi header support
Date:   Thu, 16 Mar 2023 16:17:41 +0530
Message-Id: <20230316104743.482972-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1678967058-310366-5552-16359-1
X-BESS-VER: 2019.1_20230310.1716
X-BESS-Apparent-Source-IP: 209.85.128.199
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNbcEMjKAYikGKYZpyYYWlo
        bGieYmiWYWlgZmFmZGaYnmxqlmKSYGSrWxAPGtUx9AAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.246833 [from 
        cloudscan15-95.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

Hi All,

This patch series include the below changes:
1. Fix the incorrect IO PADCONFIG offset size of the wakeup domain for J784S4 SoC
2. Add RPi expansion header support for AM69 SK.

Dasnavis Sabiya (2):
  arm64: dts: ti: k3-j784s4-mcu-wakeup: Fix IO PADCONFIG size for wakeup
    domain
  arm64: dts: ti: k3-am69-sk: Add pinmux for RPi Header

 arch/arm64/boot/dts/ti/k3-am69-sk.dts         | 72 +++++++++++++++++++
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     |  2 +-
 2 files changed, 73 insertions(+), 1 deletion(-)

-- 
2.25.1

