Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D92641B1B3
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 16:09:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240888AbhI1OLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 10:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240488AbhI1OLX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 10:11:23 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173D7C061745
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:09:44 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id n18so21283650pgm.12
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QdobZRR9LM4JvQt4h1L3fA1KeD3BEmaOGRH5grGNDTA=;
        b=ZYi2VdjiapeQm0kwRhWUhOjFjX/+KetbMx22CstT413xRI8FkGRc0/bNSqU3aEIoGQ
         MWB+9XVHjFAmt3IELAfr3HKfzpKGnaJSauKk/tvSA2Dq8Npcvn8SKCGFKCojymaVjbfp
         bbuvhIQyVeJSLeE9mEPenknd465INmBlzYKnhJWu/zQD4KRRc9Dw0MIgdZ5TcAqHG1cQ
         d5CBTIbN25fmV/27bXFYV2g00HLl578yXLP+Fv910NkKNEu8piS4kG0VhCoTVKPHC+qj
         bUmnPpIgOsxXhXtw09clkM1NI/7/76d9XqL9FpzrS160tfs/auWVffJC62KcuinvUq7r
         Jdmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QdobZRR9LM4JvQt4h1L3fA1KeD3BEmaOGRH5grGNDTA=;
        b=XqyrJ8y1da5hot7T/Dk6aA0yimSD92YgheO3bJxiecLO2yPUmq12i7My+bncICIRr0
         ElEViVyQXWr/75UovksU7gdHu7s5n49mMs7VuRl2xVz15SdIhdK29TjpMYnUCI5tOgGW
         3Fh3PLxWRARf+1TEWW1mH+7UDOn0KT4uRb6PQGoSajq6mC+9IZktrzrVdyb9Ger5yeUU
         Iflt1OlsG3DLdli8seyjtEeTv8ghfOBh3rcjSkgDJ2gMRl9cM1u59YNuva5MSayk+7lX
         tMXmD5ZyLYBLjdzwV0mniuta01Oyj3HX3POAP77ckyUd8nk/FrDvtle4dUuG+fSeezae
         HdbQ==
X-Gm-Message-State: AOAM532BDtZwNWY8S48GVXlk1kSLtqMRiiovDXhtOSNrPJW7am8WusM9
        6S3+q1c2x/zSHHeX1wnoVHhm2Q==
X-Google-Smtp-Source: ABdhPJwyPxFvS2OADp043eeVxAhkNdzr8Fx6G5dn/m65ZINPUpD5tzs21DLdAz1n9SxdS3Fa5ZYymA==
X-Received: by 2002:aa7:991b:0:b0:447:bf92:b94d with SMTP id z27-20020aa7991b000000b00447bf92b94dmr5811872pff.76.1632838183430;
        Tue, 28 Sep 2021 07:09:43 -0700 (PDT)
Received: from localhost.localdomain.name ([122.161.49.251])
        by smtp.gmail.com with ESMTPSA id ch7sm2704578pjb.44.2021.09.28.07.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 07:09:43 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 0/2] arm64: dts: sa8155p-adp / sm8150: Enable remoteproc and fastproc capabilities
Date:   Tue, 28 Sep 2021 19:39:27 +0530
Message-Id: <20210928140929.2549459-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset enables:
- fastrpc nodes for sDSP, cDSP, and aDSP (sm8150). 
- Enable two remoteprocs found on SA8155p ADP
  platform - 'audio and compute'. 

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>

Bhupesh Sharma (2):
  arm64: dts: qcom: sm8150: Add fastproc nodes
  arm64: dts: qcom: sa8155p-adp: Enable remoteproc capabilities

 arch/arm64/boot/dts/qcom/sa8155p-adp.dts |  10 ++
 arch/arm64/boot/dts/qcom/sm8150.dtsi     | 119 +++++++++++++++++++++++
 2 files changed, 129 insertions(+)

-- 
2.31.1

