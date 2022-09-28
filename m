Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 894115ED161
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 02:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230315AbiI1AFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 20:05:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbiI1AFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 20:05:23 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C8045A164
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 17:05:21 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z6so17326631wrq.1
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 17:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=C9Y/tMjHMpVhCXom1+2YMxBzzoCz/vTX0S8HzEvu/Jc=;
        b=AI0x4i+sXRL8shTt+2q84chmWL7kmNyALVRqbXEHsYudI1AGageDWXT2i/7HHmJ6LH
         AGbU/nITv2Iv7pOlkPw/ypanfCCa6ic4vlZzp6CnTzLvFZP2HciJaDAo5sEHLxHXNpQ/
         pe23gQvvlK9scOT/nW3QrO6IUnwqxx8372ZPOiLQ8LCpTR4BN5AKho2+4R67WfcRUhZ7
         EmAEIiexxLO36BM9uJ0Mc5FsqS2CxK9vEQZrc1GEbjem1bLwSNziKl8SSKeS4npwJ0Xm
         vfADou2Wi3fpTeoRWbF5SlWQZ3ix25ZqmuQJT8FfZkDr12zSZLnRFHPfVUPLOVxpYoPI
         moKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=C9Y/tMjHMpVhCXom1+2YMxBzzoCz/vTX0S8HzEvu/Jc=;
        b=PbpacpsyndeJXiOmVptGsF60V07+IWDJNP3Qqpkg3fi2ZAZM/U5Y6cq3DtMbf7zRG0
         Cld+CD8VpLvy2tHOQIR6g5K1WpI3AkShKSofxyj/0mBMdEQ5YrzJ+DiCHfFAa8yKWJo6
         eez1nRNVZdR98bExZ9EyB03TGiVYO26MBPtYCkzdO2Gi7cQhF83v9qh51Y9A7zMhBLsN
         yncddE7DqnzQ1ZyDYBMFPypvcw9n1wrI0ffFe2bkjKYwyAPFjnEM8N+ee/DNovg3xg27
         FM4MkNC9o0tsdO8dPwLVj+x8vx01o9RcgiTd1famwhbPT1D8yW3rxS3aH5GruNljnlo5
         vhIQ==
X-Gm-Message-State: ACrzQf0/4+QfMOaTDxaC8d8DUsOTP0uiPybWA4ToLzisDIxJa0GDrJGQ
        eAKgiUoLtBHugRV99fRCDbg/EQ==
X-Google-Smtp-Source: AMsMyM75Bb4TzM5I47eiBDxEtC7PFSuR/U/GOpi0OHHd4bAa5lniv0fUKV+FZtvpJkUf3bgHbcR0Dw==
X-Received: by 2002:a5d:4209:0:b0:22c:c778:31f2 with SMTP id n9-20020a5d4209000000b0022cc77831f2mr403212wrq.540.1664323519829;
        Tue, 27 Sep 2022 17:05:19 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f10-20020adff58a000000b002285f73f11dsm3365997wro.81.2022.09.27.17.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 17:05:19 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v6 0/1] arm64: dts: qcom: pwm: Drop PWM reg dependency + update MAINTAINERS
Date:   Wed, 28 Sep 2022 01:05:16 +0100
Message-Id: <20220928000517.228382-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
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

V6:
- Drops the change to MAINTAINERS
  Reading Documentation/process/submitting-patches.rst the declaration of
  who needs to be mailed and what "Maintained" and "Supported" mean don't
  match up at all.

  In any case that's out of scope for this simple yaml change so I'll send
  along a proposed patch separately to this.

V5:
- Resend the yaml fix
- Update MAINTAINERS to mark Lee as Maintainer not Supporter of the YAML
  files for MFD.
  I rely on scripts/get_mainter.pl to tell me who needs to be mailed and
  who doesn't, given the YAML change has to go through Lee, the MAINTAINERS
  file should make that show up in get_maintainers.pl

V4:
- Churn patch#1 prefix to "dt-bindings: mfd: qcom,spmi-pmic:" - Krzysztof
- Add's Krzysztof's RB as indicated

V3:
- Splits dtsi and yaml
- Uses Krzysztof's suggested commit log in the yaml

V2:
The accompanying patch removes reg = <> and pwm@reg from the yaml and dtsi.
This follows on from discussions between Bupesh, Dmitry, Bjorn, Krzysztof and myself.

https://lore.kernel.org/all/20220719205058.1004942-1-bhupesh.sharma@linaro.org/
https://lore.kernel.org/all/20220721195502.1525214-1-bhupesh.sharma@linaro.org/
https://lore.kernel.org/all/20220822120300.2633790-1-bryan.odonoghue@linaro.org/

The previous discussion tended towards either removing pwm@reg and reg = <> or
extending out the yaml to support multiple reg declarations for PWM compatible.

This patch does the former. I've left node: label in place, dropped both pwm@reg
and reg = <> I kept "label: nodename" though because it looked more like what we
already have for rpm regulators.

Per our previous discussion I've modified the yaml and dtsi in one go.

Bryan O'Donoghue (1):
  dt-bindings: mfd: qcom,spmi-pmic: Drop PWM reg dependency

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.37.3

