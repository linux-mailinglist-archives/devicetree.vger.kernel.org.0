Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 252606D9B1B
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 16:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239444AbjDFOup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 10:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239476AbjDFOuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 10:50:25 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3CE6B455
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 07:49:24 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id s20so20644646ljp.7
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 07:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680792563;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BykCbxMnV8xY/L0TeIGnWsTlJZykkp54pxXItibgVMI=;
        b=bzcxnNOrZ/v8KjAn5QTkCjkv2xsBrprdN0ZPQnvTmXvx3saTlY5fRUGTfcXsjwC4VZ
         zfiy289Lc0i4JKh1ryTOVYB6nzy3HWcVYVT1qaKDJ7N8wdTJJGCmZTdSMOEataSfjmyc
         dwiH6DubwESI9Wgkr1KfBJQy1fHaNpkEa112/ejG5MTAnh6gkP8ofSGvRP+rU0051NgD
         74Kg9jzm417DZplf5dUT/iVxOVnHECTfjJrfv+hp1GOwxU+dv/HqSsIRs/pIhHPhN2dG
         1h0WRdJdoULFGjbIBT4FZGoeMe51Z0ZuuxQf9wAfYaD8EfEluf4oOUqGDVqWtvVAeOaC
         JpjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680792563;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BykCbxMnV8xY/L0TeIGnWsTlJZykkp54pxXItibgVMI=;
        b=2wjzpcoZfx50AfArIDzT7HfedPtcYSYTSj8DhfT8M5+hShn1Vju9P4bniZLc6ULWgw
         /3Pw1ojCy0xG2Hq1aXBLNxzQh56X567psIjp9u6jBXGEJJSqjeR/msuR+39dc9lxMPdO
         TvxvmnCv3g+4dL+GN3N2xEEdWgvWl/0g0FR3q00yfQvRHCaMG7xsL4usq2TheqR+Se++
         8TiHR38MbsAtGCYRp7s4tHbmYSCsZWBkAsamK0lffZYggnIsJ7VOoY+Jb7q6D6Mgcww5
         AG+hLligBdlaWTldkCBm5Hf2/cDSjvCS3Vh/pJeOvCXKrxai3O4mcbMqP/gvCGyG62yb
         mg0A==
X-Gm-Message-State: AAQBX9fAr2sEYnlE/Br0t3sdKT6SE6oJY2hYQDW03eR0DRYtoG+UCtyK
        8VCkIXJSIgTKtVLz+SBGugUP/Q==
X-Google-Smtp-Source: AKy350b5h5kUeGuocJdzthBYcl+xKoO0yWIimhKZwRNRmXiqk8Pv/UqGiCjoKYVn4i+LWKCs/efSbQ==
X-Received: by 2002:a2e:980b:0:b0:2a0:202c:93b3 with SMTP id a11-20020a2e980b000000b002a0202c93b3mr2961979ljj.49.1680792562985;
        Thu, 06 Apr 2023 07:49:22 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id w24-20020a2e9598000000b002945b851ea5sm313864ljh.21.2023.04.06.07.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 07:49:22 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/2] Introduce RPM Master stats
Date:   Thu, 06 Apr 2023 16:49:16 +0200
Message-Id: <20230405-topic-master_stats-v2-0-51c304ecb610@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOzbLmQC/32NWwqDMBAAryL5bkoelZJ+9R4iZaNRF2wiu6m0i
 Hdv6gH6OQPDbIIDYWBxqzZBYUXGFAuYUyW6CeIYJPaFhVHGqouqZU4LdvIJnAM9OENm6cEoDQ4
 GZ3tRQg8cpCeI3VTS+JrnIhcKA76PU9MWnpBzos8xXvXP/n2sWiqpvR7AXK1ztb3PGIHSOdEo2
 n3fv4ZxWfbKAAAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680792561; l=1442;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=vE0OGMBNrSqfCScZ+a+rfWEWnobdzfFLE66cO2LhQH4=;
 b=gH3/TVC1wazdVX4ZO9yqscgw8jfn3H6yoiXQQOc5AqJTI0OM7RYxMpJsF4VE59xIz7Qj7HWbIhWb
 xGWFAHEjASBdtaH1YYFSFzoq/e3X9jrk1E5i5V2Mtkiin3SjwGLU
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v1 -> v2:
- Drop the `-` in /properties/compatible to make our entry be of the
  correct type [1/2]
- Change %s to %d for printing out the iterator [2/2]

v1: https://lore.kernel.org/r/20230405-topic-master_stats-v1-0-1b1fa2739953@linaro.org

The RPM MSG ram includes per-subsystem low-power mode entry/exit/
residence/etc. statistics which are very useful for trying to debug
what I'd call "SoC insomnia", or IOW the plaftorm refusing to drop
the voltage rails to a minimum and gate the non-critical clocks.

This series adds a very short and simple driver to query that data
and expose it through debugfs.

The base used for writing this driver is:
https://github.com/sonyxperiadev/kernel/blob/aosp/LA.UM.9.14.r1/drivers/soc/qcom/rpm_master_stat.c

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: soc: qcom: Add RPM Master stats
      soc: qcom: Introduce RPM master stats driver

 .../bindings/soc/qcom/rpm-master-stats.yaml        |  53 +++++++
 drivers/soc/qcom/Kconfig                           |  11 ++
 drivers/soc/qcom/Makefile                          |   1 +
 drivers/soc/qcom/rpm_master_stats.c                | 160 +++++++++++++++++++++
 4 files changed, 225 insertions(+)
---
base-commit: e134c93f788fb93fd6a3ec3af9af850a2048c7e6
change-id: 20230405-topic-master_stats-ba201a9af93d

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

