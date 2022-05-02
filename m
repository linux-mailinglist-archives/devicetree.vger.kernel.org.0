Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0CE751796F
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 23:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237686AbiEBVzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 17:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232319AbiEBVzu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 17:55:50 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A6D025D9
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 14:52:20 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id r8so16536238oib.5
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 14:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ArPYyyRi4X1PVF7Op/jphcaVscyLH09KdLAbVintNg=;
        b=exoav0CMwObCGm6s5ouXRWqHwd0Nkj76FobHVMGu3sYtsR9daZgQpaZu/RyoRxv/mP
         X9vFo3LDK8irUGUbIohgox0/+i0zWUfWl2cI2CoKgdydinjIgEOtUob5EpiX09EIE+BB
         p3bGX/Q2yQaJ7iu/hmpZtLBVQUOFwgvkI4UWBRf0PAP+CMJ+t5D7ZoOygtTdx6eTuUuq
         itBVVDHpjOzafIas1K04AsQKgkzDBMWtW9I1AkJig09QNGJ7Rsy7I0X870bKuRxK+msw
         5lplc+QWp+six+Zkjkk1/WdNaCEeMqzlnBQHfOmdX3nzO5Ie0WYSbiUh3lWGf9Skby39
         mltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ArPYyyRi4X1PVF7Op/jphcaVscyLH09KdLAbVintNg=;
        b=UsDPKFiH+TzgSoPFLt+DmrwZ6/c9TfVo9oEOo/SPMxWSrlQ3rxW5MXWauIr8eetP3Q
         An6Td/eG/1mMry68nND4TaN7sYZJdguJb67tAxg7Nalc1xSxlu+aYpIP58dkCpLdVIsp
         hBM5p2ujdaBaB9xUlp9nBFJzmxfxCRNCTeJb9ktMICAP/nHJmzQMlP+KYOkKADUDRnmF
         rLTl/2xiMQkeKeisDyPfORFkCeBusmOBoCreRn/BVBFv7hWnIhcoDFm3hkOFh55mdkVE
         76hBIRqzNXqXWS0NdSghsIp3pQ7rCwMPiGSCirtIfym6D+AYyAIhEmLHKxbzpXiMXW9v
         Egaw==
X-Gm-Message-State: AOAM531lj4QPvyL4dlYAzEK2VKnEZCKda6UWgjO1ns2FV75bnkzkyJIe
        CcD/th07IQ3SJFNdqi5LMRFHbQ==
X-Google-Smtp-Source: ABdhPJzNxQPOx1qc/jec0j56zzKBLf2XrK43BUDcwUDagR5CpUlZXH4tu86spDSpch44107GoXNU6A==
X-Received: by 2002:a05:6808:2003:b0:326:24f0:89ee with SMTP id q3-20020a056808200300b0032624f089eemr565221oiw.24.1651528339977;
        Mon, 02 May 2022 14:52:19 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k16-20020a544710000000b00325cda1ff8asm2720406oik.9.2022.05.02.14.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 14:52:19 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/2] soc: qcom: llcc: Add sc8180x and sc8280xp support
Date:   Mon,  2 May 2022 14:54:04 -0700
Message-Id: <20220502215406.612967-1-bjorn.andersson@linaro.org>
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

These patches adds support for the LLCC instance found in the sc8180x and sc8280xp.

Bjorn Andersson (2):
  dt-bindings: arm: msm: Add sc8180x and sc8280xp LLCC compatibles
  soc: qcom: llcc: Add sc8180x and sc8280xp configurations

 .../bindings/arm/msm/qcom,llcc.yaml           |  2 +
 drivers/soc/qcom/llcc-qcom.c                  | 60 +++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h            |  2 +
 3 files changed, 64 insertions(+)

-- 
2.35.1

