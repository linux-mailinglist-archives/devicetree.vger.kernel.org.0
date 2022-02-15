Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46F354B64D0
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 08:53:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233859AbiBOHx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 02:53:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:40924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233947AbiBOHx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 02:53:57 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67936BF525
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 23:53:48 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4FB923F1AE
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644911627;
        bh=vCuOKT3hKq+IjaxM7rehvAm5ceLZmK8BoYMkMG61/oU=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=jf2A/YYd0nezH2xm+g4niLo8SRNyEU+ZMZvdeiFnjubTQIB9yrghYBdj95/eqrNBA
         iMvoighHqk0qmLPJjEeMSuWdG4Dw8x6QPPYY8HCIcXBiub6yPN27/62uzGfRpDTjdW
         KQ/GVJv2KYB8Hv7uWYYt82WAjA14Nfw29/n6mt7ZK2CTXl99cNJ6waaN7Iku45mBU1
         GQWlTVQMxw7uhzjaR0rOCbLFzJgGpgTjMPnZDrPypmxFsarJtiIE1SjbnnOkzQogYL
         OkX/YRugA+ytjrlzNM1/eEAVOQ3XgL24eNZsy7th/UEI9jxHzvYDBQe0GrG9BsCcuW
         5QcJnvvBuZMcw==
Received: by mail-ed1-f69.google.com with SMTP id z21-20020a05640235d500b0041092b29ad6so5613427edc.19
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 23:53:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vCuOKT3hKq+IjaxM7rehvAm5ceLZmK8BoYMkMG61/oU=;
        b=wZ0GjCPmfLh07yIlt/kZ84LxTbXaV3Z+knceZuOPbT/am3Y+HYBQDqgvhv7C/F8CXb
         WxnqJVWGvCC1QfueoKF+1U28hmnYs2Isu4LcHeV8J6jdN+y/VVSV8u1ZK/BurmzPmMoy
         vGePVVhmIfdnHHwRSsV0IZbFRMgG3ipnO5IirJjHrUko4yaIPNRkYeIpWdB4jr+1R7H5
         cWWH3momnDbbBv7u394qVORM4j03osfo1cfj6CwSqvpm5NLgRPmeRHerE06Nw7OdS21L
         oWbhKorxN+JDQRQUWbAHM7p5kxfMtdkAdbe2SLkYpc6C7R6zaBs/38udW+/xBPVuk+C8
         YjSg==
X-Gm-Message-State: AOAM530fQdVQ7HO+vyvgH35Ivqk3pRvmfvt1znBAAvBiLzAAvkmw6nS0
        q/poW154qJ7ysAtxi7PzvOaz+YpO4JDI2Ag1rlkRF81UGHm9XQwyCJNNrUZt5Wc4NUjo1Mo+d5g
        xKYV/7xOzHuhsDxf1U4/ZJ/H4bGRxdQ6ZnFab3oU=
X-Received: by 2002:a05:6402:219:: with SMTP id t25mr2684631edv.62.1644911627054;
        Mon, 14 Feb 2022 23:53:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2JhPO02SHEX+eUDb7C/O7z52Cs1JN2EebnK3rICt8fJ58sqKy1PNStxSN7s4LqJO1EZq4kQ==
X-Received: by 2002:a05:6402:219:: with SMTP id t25mr2684621edv.62.1644911626931;
        Mon, 14 Feb 2022 23:53:46 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h11sm4663713edb.68.2022.02.14.23.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 23:53:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] regulator/mfd: dt-bindings: maxim,max77802: convert to dtschema
Date:   Tue, 15 Feb 2022 08:53:42 +0100
Message-Id: <20220215075344.31421-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v2
================
1. DTS patch: drop, applied.
2. Regulator: do not require regulator-names.
3. Add tags.

Changes since v1
================
1. MFD: Use absolute path to schemas.
2. Regulator: skip properties.

Dependencies
============
1. DTS patch: nothing depends on it, sending here so Rob's automatic
   checker won't complain about DTS.
   I will take it via Samsung SoC tree.

2. Final MFD patch depends on regulator, so the two last patches could
   go via Rob's, Mark's or Lee's trees.

Best regards,
Krzysztof

Krzysztof Kozlowski (2):
  regulator: dt-bindings: maxim,max77802: convert to dtschema
  dt-bindings: mfd: maxim,max77802: convert to dtschema

 .../devicetree/bindings/mfd/max77802.txt      |  25 ---
 .../bindings/mfd/maxim,max77802.yaml          | 194 ++++++++++++++++++
 .../bindings/regulator/max77802.txt           | 111 ----------
 .../bindings/regulator/maxim,max77802.yaml    |  85 ++++++++
 MAINTAINERS                                   |   2 +-
 5 files changed, 280 insertions(+), 137 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77802.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77802.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/max77802.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77802.yaml

-- 
2.32.0

