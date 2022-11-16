Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 863B862C313
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 16:54:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233430AbiKPPyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 10:54:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232377AbiKPPyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 10:54:22 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F93D43AF5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 07:54:20 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id be13so30223553lfb.4
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 07:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x61XENO10P73sJaqpMir6Zd1RPLJtcnUpkPInROKPhs=;
        b=J+WyS+18pYK5gb5pSIbpZhQddz2jw48TXdkqfC4atduq9Gxrl+Ap8HpdT76hIZ0BvO
         JFyMyOjnLLtufdmANsMfPQ8ZrrkYf0+DDL3vjvecLFpcVUmZLbjENKb8ZMpYyA0SRneN
         oc7ixZBwarobSdjo4upPkKTwWeaBguKvRY3SBLOW4Gp8RiC6NmJvFxF0j+4/Qfohk4ob
         J66ateLT1og/Ef49xPalLbP0D8nH85R0tz/7yIgeFY0YHFmTMSxVbcucfDYzdd55KSeC
         DWjd45KToS23UiNyu7Y3wp/X7ZnTIMkPeW6PsYZuaGVZZcnwDOeQwVD91+epvB32zckP
         x8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x61XENO10P73sJaqpMir6Zd1RPLJtcnUpkPInROKPhs=;
        b=loZgjiCJUeY6ru5WriP49jyaw8pIOHQoBZ1bvnwO/pCuDi4mu/OPJ6+VSTd3CwieEw
         GWr7j7wZt3EHYRvAJxitrwq1KOCACLx7B/nPu2vtMVYLkM7worpnN5Tuoy/oRiqxGRwn
         bFVEk6Dz+4ic19ovniyganPU9o0gEK5BPIlC7myDq+9G4u/SBoDu2F5wUpyWd4dvgXYF
         FMon+qeebsmyFkt33+uesvuiyEspNW/9ZAqv6ed/caicQC+9vcK/D5b1313pr2e+8VcD
         1z4EBug+r3Gne/Iq3ymFZsMnD6JplavhWSEljk2X4VBm8aXUubsXcDdgP7N/kwIY7JYM
         Pa8w==
X-Gm-Message-State: ANoB5pn+nwhzrycLZ5t2kMlXGZUecL0Ym2jjPIE7hYTKtASQAAxbLn97
        5lhcLg+edJzTetpDGD9vzQXCbA==
X-Google-Smtp-Source: AA0mqf7Kx9Dbj5ynt4BC2nqBQdQuqsrtEUKsXay1mniKRqjawlRTFdGjV93sNPtcg61LNDtSsZr0tw==
X-Received: by 2002:a05:6512:224d:b0:4a2:be5c:688f with SMTP id i13-20020a056512224d00b004a2be5c688fmr6876505lfu.121.1668614058965;
        Wed, 16 Nov 2022 07:54:18 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u19-20020a05651220d300b0049462af8614sm2655128lfr.145.2022.11.16.07.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 07:54:18 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/5] dt-bindings: remoteproc: qcom: split and reorganize PAS/PIL
Date:   Wed, 16 Nov 2022 16:54:11 +0100
Message-Id: <20221116155416.164239-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The Qualcomm PAS/PIL (qcom,adsp.yaml) bindings grew considerably with huge
amount of if:then:else blocks and 40 compatibles (still growing).   These
if:then:else blocks constrain clocks, power-domains and interrupt per variants.
Adding new variants is now tricky - it's easy to forget to add variant to one
if:then: clause.

Split the bindings into reusable schema and per-soc bindings, groupping them
when applicable.

This part is finished, but more and more compatibles should be moved out of
qcom,adsp.yaml, eventually dropping the file.

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  dt-bindings: remoteproc: qcom,adsp: split common part
  dt-bindings: remoteproc: qcom,sm8350-pas: split into separate file
  dt-bindings: remoteproc: qcom,sm8150-pas: split into separate file
  dt-bindings: remoteproc: qcom,sm6350-pas: split into separate file
  dt-bindings: remoteproc: qcom,sc8280xp-pas: split into separate file

 .../bindings/remoteproc/qcom,adsp.yaml        | 234 +-----------------
 .../bindings/remoteproc/qcom,pas-common.yaml  | 121 +++++++++
 .../remoteproc/qcom,sc8280xp-pas.yaml         | 154 ++++++++++++
 .../bindings/remoteproc/qcom,sm6350-pas.yaml  | 169 +++++++++++++
 .../bindings/remoteproc/qcom,sm8150-pas.yaml  | 178 +++++++++++++
 .../bindings/remoteproc/qcom,sm8350-pas.yaml  | 188 ++++++++++++++
 6 files changed, 812 insertions(+), 232 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml

-- 
2.34.1

