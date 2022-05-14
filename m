Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81C83526E6F
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 09:14:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbiENBAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 21:00:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiENBAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 21:00:00 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3D1B4B5AB9
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 17:36:13 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v12so13277197wrv.10
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 17:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fnGbOIacDOeHPxANJTdIGA5GlW84Mld6AYAHqpRdXFs=;
        b=ztS3VeGz/DerKNxUY0CMqZAIjz9zWkiKbItNkc30BB3yPlcWmpuxXzTgFGutaQkaCf
         Y4v4z63MrtO5cAyk5t5anchnLpEDEDiS0rA6BGalQ8rYpUi9pN2Z0L4LkAAGTDqeVxoF
         7M730uspM3An5CoeTZVaAPCEbUVpMxE2nqzgWf+cl9e5n0kxAb22KUeYeGQDW53dQmXh
         npd0/1nVmKczwCjqLXOEZkFldJUrMzje6Z55zfRqRdEgGaUSjQJ9ysADAyJGm49XTGAk
         l1e/kwbBEOvoO5EAybrzMfkrOcKiHDrqR2rsQBsYuNyawZ/FZBEzJHAFN7AStvsSoOtk
         VhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fnGbOIacDOeHPxANJTdIGA5GlW84Mld6AYAHqpRdXFs=;
        b=joBhYzKYA473Wwoz5F6ffVJGZzp3qFoM4MggWWsrMb/DnsNxTKmAWbgwRFQ+MDVwFO
         i7VMKSbwbjcTGkQeE7ZFeTCaVW4pJUyIu+1O0joBLc1+2VCzuUQYHBuFJUAEyIE7+Nv0
         dyeIBEW4WmkOQtQzhgT8uAy15B0Y+gLm5zgj5LFBi5V2ypOlSdhIDUqh65ZOUYb+6Iry
         RgGMoKdad9BKmLzpB2DDza03yhD+fy3O3OPiFnRbpa/F5PksmVQj0QoYgFIrZd+KouAF
         O3W01OBjR4Xf10XWNgRev5usCoPll3NTBgClzF7QpZXeAa73/17l1L7Dhr2UtV9HnJ3b
         YmMg==
X-Gm-Message-State: AOAM531gvBeI1Yn3b30uQw/F4pqktG52G4nnka1yJLoI2osY6aknZRkv
        U2AWrU2npOJr75Z2hQCkijFyvaS1++F1fA==
X-Google-Smtp-Source: ABdhPJzJf8XF0A85TKIbvDUGHVOiqsbVeAXLrLgcPG2Fx5svKzNlKypsnq41FfSxrFWiaeTSybdk6A==
X-Received: by 2002:a05:6512:1095:b0:473:bf36:b6b with SMTP id j21-20020a056512109500b00473bf360b6bmr5142217lfg.479.1652486591410;
        Fri, 13 May 2022 17:03:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r10-20020a19ac4a000000b0047255d211c3sm529231lfc.242.2022.05.13.17.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 17:03:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: qcom: enable CDSP and MSS on ifc6560 board
Date:   Sat, 14 May 2022 03:03:07 +0300
Message-Id: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the CDSP (existing only on SDM660) and MSS remote
processors. Enable them on the IFC6560 board.

Dmitry Baryshkov (3):
  arm64: dts: qcom: sdm630: add device node for the modem PAS
  arm64: dts: qcom: sdm660: add device node for the compute PAS
  arm64: dts: qcom: sda660-inforce-ifc6560: enable cdsp and modem

 .../boot/dts/qcom/sda660-inforce-ifc6560.dts  | 10 +++
 arch/arm64/boot/dts/qcom/sdm630.dtsi          | 59 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm660.dtsi          | 68 +++++++++++++++++++
 3 files changed, 137 insertions(+)

-- 
2.35.1

