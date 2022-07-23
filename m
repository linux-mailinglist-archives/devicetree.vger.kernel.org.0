Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ACCF57ECE7
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 11:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235896AbiGWJJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 05:09:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236129AbiGWJJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 05:09:46 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65FDF5E336
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 02:09:45 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z22so11060492lfu.7
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 02:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YBw+3Bz7rj9+anAYrnfPYOQY/KFGqLUHh3P+TF/Od+Y=;
        b=FxJyJAOxAQoOVOpOCjPukGUTIEwbgN2wBFPrem0jgPm/aYZa6xTfvjnr4O9faQ/1te
         NMMKZUky9nYJDvVtbYn3gBmF6nyZP/ikAcTdIZgnDyAvK+lUVCBK1uD7D5ITjBIX+ePS
         BpjDHH7CtGGP+nI89+IMOZoeCtMgi0FlxbFNw5bHhw+6chV2LcHbWKPAVLVz1kegsqQF
         s3pNj9GRREgLW9H2wcDdVPOTxGlIi3Ub3p9YUAyZV/O4iKIWUHtqSSf38vfOJetUxB0i
         OcT8T6O2LF7Ys26MqvRpSQu8aCP/yFHVOhWn1GeVm9UK694KPKUkbdkL1Fy5ytLm6t74
         /7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YBw+3Bz7rj9+anAYrnfPYOQY/KFGqLUHh3P+TF/Od+Y=;
        b=6bltHh9ISmfb4zs5hUl5x0g3ZXP7tF+vMV5GDh/cB+Wj5zRXsbjIdlZGvvYTBK32qg
         MI1/rN1I9lQQl+/jVBX8lDjYgkFAYkm1Kb1OlEfip5qU5slrVfSVm50mXNI138B7CmrR
         1z7U/h/Zt87v23okYwwE0LvLeQu/YK1fIDFNrxxGfjkNajD5cYPtlTgQG2RNkZkZMfoC
         OLFu4aq5cIsWMLH4qNqHYF24krErhSsTl7eQbCenqCz1i4ySRTLj+2AIh2+vep4mogMC
         +zWNOaehr5Bnb8vdwYOelZoFClfdPXXaFyqzW/ybwQ6u08GLvGiUMYeb8ZwGcg8n6ugn
         4YGA==
X-Gm-Message-State: AJIora9wHsiiKVoydTx9UVwXEqvoSTCTRF07sDxnVhREa6PVTQMILEz3
        IKj/RC+Fe42YMXbMMSlgBGXCDHnIfxZ/ow==
X-Google-Smtp-Source: AGRyM1sU01wZzoVu9CaSl+6Vpx8va7Qx4yG6WEG0n4K9oR9Han8F0S6Ug+gH9UdmEVUHoyEAMgehfg==
X-Received: by 2002:a05:6512:1112:b0:488:e0ac:fb41 with SMTP id l18-20020a056512111200b00488e0acfb41mr1627802lfg.456.1658567383652;
        Sat, 23 Jul 2022 02:09:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s29-20020a05651c049d00b0025d6a975c47sm1537636ljc.94.2022.07.23.02.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 02:09:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Anderson <dianders@chromium.org>
Subject: [PATCH 0/3] dt-bindings: arm: qcom: define schema, not devices
Date:   Sat, 23 Jul 2022 12:09:39 +0300
Message-Id: <20220723090942.1637676-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Describing each compatible board in DT schema seems wrong to me. It
means that each new board is incompatible by default, until added to the DT
schema. Adding support for more and more devices would grow this file
indefinitely. Drop most of individual device-specific compatibility
strings leaving just list of platforms in place. All entries which
differ from two-item string array are left inplace.

To ease review first patch provides just a scripted conversion, with all
platform entries being unmodified, while second patch actually merges
them into a single enum.

Dmitry Baryshkov (3):
  dt-bindings: arm: qcom: stop describing individual boards
  dt-bindings: arm: qcom: merge simple platform definitions
  dt-bindings: arm: qcom: drop individual descriptions of Google devices

 .../devicetree/bindings/arm/qcom.yaml         | 515 ++----------------
 1 file changed, 43 insertions(+), 472 deletions(-)

-- 
2.35.1

