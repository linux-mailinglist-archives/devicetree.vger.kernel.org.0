Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DDAA62BA42
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:54:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238991AbiKPKyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:54:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237493AbiKPKyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:54:22 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1242540450
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:43:14 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h9so29243194wrt.0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=okM9Wiovfxx2M89jLoRegEEMGS+MvapreaG9LEAz58o=;
        b=d2piSQ/40HvtMwtfAwnyDyxe3TYG3DctQms+bf0T4E0Ix9PSsX1/ounfD6Gx6WGw2p
         nhgY3OGm8JCHgqCsCAwi5cAR7ygYpgrfQp+50+vzxEq52Lc8z5KpCp/jdRL87pLPb5/w
         76Fji47KDrSApPjR0dHJOsxVQieT9V/1+l/D6k8NAptQ4IACVCQ0SI0VK0xVlDN1gnqc
         0O801DnzltiZSj/yjOfeR5R4fslNZg7ZtdLOOBQR/+D2xOnJKOIgjVXpXi2BG8XBeMKs
         ssQLOf5+ecGAaF3PWEQKKAon4PvLBuLLmKdmXA4WkBb8kzXWqJ6fZmC8TUZRDpPskQwI
         x0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=okM9Wiovfxx2M89jLoRegEEMGS+MvapreaG9LEAz58o=;
        b=Og4LI2ayta4ncJZT8+AzHOWX8dELWiqdO45lpXfpyJ9ov9srcCQbG3vaUMBUJwDaED
         GJE0OC2DoadhVVNielB+OSYJHudWXTjbdzv7xrnZIB2c0at1KkbHAKetPXI/XMvnzDjy
         y4JQqCDwZfRaL6VnAWU6bb3zR9GAeFsjfjhZyNWPH+i6qqLu/cBvoOcbNulGp2n/hhPB
         +XRPkski69tKNS9ZtsdX/tQQqpxHGgg9QpySH0zwl+WQiNroMUDc3WvmTzjqw+Nc1rXT
         amgpCMe29dFJr2YYt0bJvCb4ddiYC7Xb39hr+VtmtTg3ojGeHPKmoM7dmujc/MfLTzSR
         tSPA==
X-Gm-Message-State: ANoB5pnSvYaPxnre5FlJn5xy6gB4KCEgeFjAMDlgi0sk3kyIRG1wVW4j
        UgBu1sT+Jt9I3anXteVMvT6K6A==
X-Google-Smtp-Source: AA0mqf5cBNvOEYTLCSWxA180ibJxOfn0Al19NUVt6kYS0j9LSgcAoNL0kd0Ax8bi3ymr4mhhPjMYag==
X-Received: by 2002:a5d:4a4d:0:b0:241:784b:1e2e with SMTP id v13-20020a5d4a4d000000b00241784b1e2emr11615361wrs.434.1668595392560;
        Wed, 16 Nov 2022 02:43:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t8-20020adff048000000b002238ea5750csm18010846wro.72.2022.11.16.02.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:43:12 -0800 (PST)
Subject: [PATCH 0/3] arm64: dts: qcom: Add ADSP, CDSP & MDSS support to SM8550 and MTP board
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-b4-tracking: H4sIAL2+dGMC/w3MOw7DIAwA0KtEnmsJqKzQ3oaAlSCFj2zSJcrdy/iWd4OyZFb4LjcI/7LmVifsa4
 F4hLoz5jQNzjhnrSUcreeIWjyRwavrEA4F01AULm1wlxaRnKe0Guv5/YFZbUEZNwk1HjOr13k+zx/Z cYVCewAAAA==
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 16 Nov 2022 11:43:09 +0100
Message-Id: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-0-379eec11d841@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for the aDSP, cDSP and MPSS Subsystems found in
the SM8550 SoC.

The aDSP, cDSP and MPSS needs:
- smp2p support nodes to get event back from the subsystems
- remoteproc nodes with glink-edge subnodes providing all needed
resources to start and run the subsystems

In addition, the MPSS Subsystem needs a rmtfs_mem dedicated
memory zone.

Finally the firmwares file paths are added in the MTP board DT.

For the MPSS to successfully start the MPSS DSM driver [3]
will be needed.

This patchset depends on:
- bindings changes at [1]
- base SM8550 DT at [2]

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

[1] https://lore.kernel.org/all/20221114-narmstrong-sm8550-upstream-remoteproc-v1-0-104c34cb3b91@linaro.org/
[2] https://lore.kernel.org/all/20221116103146.2556846-1-abel.vesa@linaro.org/
[3] https://lore.kernel.org/all/20221114-narmstrong-sm8550-upstream-mpss_dsm-v1-0-158dc2bb6e96@linaro.org/

---
Abel Vesa (1):
      arm64: dts: qcom: sm8550: Add interconnect path to SCM node

Neil Armstrong (2):
      arm64: dts: qcom: sm8550: add adsp, cdsp & mdss support nodes
      arm64: dts: qcom: sm8550-mtp: enable adsp, cdsp & mdss

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  18 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 338 ++++++++++++++++++++++++++++++++
 2 files changed, 356 insertions(+)
---
base-commit: a237afe452d9079aa024e465642b4cde0a04c7ff
change-id: 20221115-topic-sm8550-upstream-dts-remoteproc-5285d7018e39

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>
