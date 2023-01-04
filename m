Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F21B65CF65
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 10:20:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234847AbjADJT5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 04:19:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239122AbjADJTd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 04:19:33 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EFC11D0D9
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 01:19:32 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id w203so5762142pfc.12
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 01:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MXTJgLuQHLsc/r6DrziVqRruhwpWIqmRRijuUHnfBJo=;
        b=a1aglTiqOJStHgb2X0/wvRHK57BRQUxFp7FFVmqtTXyPuQ9LhtrAJmDrmeqX+eBq4t
         ZcLB+fGn0F7Hj1mv2TITb2SzEz8cQHQ846yBX6d7RrY5D22j2PdkiueZE6bQ58PYBnJp
         9yZ16FmcGwP1fbnpf1HmUM3HABN7BNuHAQBTMfiWMaxv/DhlVdE4dkJPmKDO328RFRwM
         hYyZmhL0Iqws23QH1NjeZXtuyTvh8wwAdTEd0HYpxtPhiNHTIwTVTap8aO+/bnQ5m8xl
         dJwiYx0OqXvCR3KQVgr5xpyy6RtPmEpGxCaCzafVeQOKVzavE5vKYkXjtxTLktbDyJ32
         DwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MXTJgLuQHLsc/r6DrziVqRruhwpWIqmRRijuUHnfBJo=;
        b=Bx3BdPp4/vl/oxu+6KjSyyweSAEU2nByPCkWzNt0ZmjeZARzyO35BJpNos9HeXHZex
         WL1NCk0t5z3OxJU3F4lg58/mATuWxMUrV+SGrgEVdLPG3E+yZBsuibOrWVM6VC/E6/Dc
         PZRORE2yMrIejwM5RzYXvKFLK8K1/HXZ7dN1U69t+MG2YfhfLM8ITwFp37X1Czcrd3uJ
         Fkc7gO2LENXblrgFvyrVeECD94ycEs/gr47QsUNyjGovL7V1ZMUT5sNKV7ekGJVsf7Bd
         lOWBpBt8M9vTdvQ2qV0X3JmoIkNoOvhqqlGDtxa1t5ElWTWBP4RzhdkHhn+gm+4FZWow
         etdw==
X-Gm-Message-State: AFqh2ko9o/nhc2Av7aHIiizAJ0QTS4NI6JP/ABcjE4ojVppkOHA34Uvj
        d7TMU2gz4GrGonUeMF4r5Mutnw==
X-Google-Smtp-Source: AMrXdXtyeky7DMsUhAK+gve9qba6t19SjGsYhc+TS/gVSficRnlxHg2naMljpQLa8SMaZ/52/hcVgw==
X-Received: by 2002:a05:6a00:1747:b0:582:7d41:c8a4 with SMTP id j7-20020a056a00174700b005827d41c8a4mr13639805pfc.15.1672823971646;
        Wed, 04 Jan 2023 01:19:31 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c5e:e3b5:c341:16de:ce17:b857])
        by smtp.gmail.com with ESMTPSA id b189-20020a621bc6000000b00580d877a50fsm19205877pfb.55.2023.01.04.01.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 01:19:31 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     quic_schowdhu@quicinc.com, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH 0/2] Fix EUD dt-binding doc & sc7280 EUD node syntax 
Date:   Wed,  4 Jan 2023 14:49:20 +0530
Message-Id: <20230104091922.3959602-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset fixes the EUD dt-binding doc & sc7280 EUD node syntax.

Cc: Souradeep Chowdhury <quic_schowdhu@quicinc.com>

Bhupesh Sharma (2):
  arm64: dts: qcom: sc7280: Fix EUD dt node syntax
  dt-bindings: soc: qcom: eud: Fix identation issues in the example

 .../bindings/soc/qcom/qcom,eud.yaml           |  8 +++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 32 ++++++++++++-------
 2 files changed, 25 insertions(+), 15 deletions(-)

-- 
2.38.1

