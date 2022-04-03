Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8A7F4F0A3A
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 16:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348940AbiDCOnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 10:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238341AbiDCOny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 10:43:54 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4467133890
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 07:42:00 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y10so6680740pfa.7
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 07:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tkvBSNdf7My025nMcKnN4etCU1BhOu93YJmuDsicIFM=;
        b=SyqDK4W702UJJAlEE/vx9AijKqHfxHOscsok1uY3ueHFULCQZfrmwRgxaYxyogJFlN
         OThftY4lBr/XouZG8eIPDYGYFGpfgU7KCh6bLfeFJVYHuRD2HAAPzP4f5eBqOMeTGapq
         WVJTuo06CrR4pn9pSUNAZcZLGDxum17M/GoIHofb2KX/y5jXFtYTL8EXcoDepkqtEYCK
         hEpPEtRl7Tg9V5Pu+o6vrXGZlPsHKCDcK/vgk9+U0i6lQ3h7nU6BgmQRHpY3IRYBQ9HD
         9TZW4G4j+ccyZRsqJhfIL2+o7R6jIGROaE3nyyZAlTlIlm1CjHf+lz7XpGUYPyBqU+ck
         ZbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tkvBSNdf7My025nMcKnN4etCU1BhOu93YJmuDsicIFM=;
        b=z/LrwU7vx5N+0pj8gjkD9mHBeKE2Tg3fRUbpqebELtqM7NkxDzxYiomO3m9X7RMucd
         BuzDepBB5xy67jkRQVt8JvrmHO76tFpa0h1jB5jHsc1ZpBIkoOmjZB5YPgiwT0vhRqSN
         U57NqA5iD6GGVb1sBuZqHwGlzCPtAw/1haks5Enmkbd7b6r4bMG+o38eXbGjjq9ITIm+
         urwAa3DsHDqn2xdDn5VnAMxopLFx5yAieSB3tK4xTfKBcQSeJ/sS0QvCHIvg7BGbYnC4
         XrdZd2KVmwkQ5tabt3PawGt7uzuziVI+xiLG9E069ByRtsnV8W7SYw/4lHtbro6BPbsz
         uEKQ==
X-Gm-Message-State: AOAM5330KaM5TCcLc3TlBl1VVOILHdCDwyJdEfpy9uASkTcYowIiMZip
        YFiSYa0ygU2bQHXXiEcOkKtGpQ==
X-Google-Smtp-Source: ABdhPJxNMfuupGwALAgxR2LKiPYavOcIXVFas8arm8Ne4+K8xJjFvasuFjt0i43U1J/eYE+fVU+vUQ==
X-Received: by 2002:a05:6a00:1acb:b0:4fa:de8e:da9d with SMTP id f11-20020a056a001acb00b004fade8eda9dmr19799954pfv.42.1648996919660;
        Sun, 03 Apr 2022 07:41:59 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.251])
        by smtp.gmail.com with ESMTPSA id 124-20020a621682000000b004f6a2e59a4dsm8815075pfw.121.2022.04.03.07.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 07:41:59 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] arm64: dts/qcom: Enable uSD card support for SA8155p-ADP board
Date:   Sun,  3 Apr 2022 20:11:49 +0530
Message-Id: <20220403144151.92572-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset enables the microSD card support for SA8155p-ADP board
via the SDHC2 controller found on the SoC.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>


Bhupesh Sharma (2):
  arm64: dts: qcom: sm8150: Add support for SDC2
  arm64: dts: qcom: sa8155p-adp: Add support for uSD card

 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 68 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi     | 45 ++++++++++++++++
 2 files changed, 113 insertions(+)

-- 
2.35.1

