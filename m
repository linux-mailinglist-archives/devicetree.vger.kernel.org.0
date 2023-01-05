Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADFEC65F068
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 16:48:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232614AbjAEPsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 10:48:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234735AbjAEPrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 10:47:45 -0500
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF03559F0
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 07:47:43 -0800 (PST)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71]) by mx-outbound47-78.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 05 Jan 2023 15:47:39 +0000
Received: by mail-qv1-f71.google.com with SMTP id nl19-20020a056214369300b00532164b6c30so285176qvb.15
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 07:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6X+691siEqN4skGdU5S4Z9b5pWmhX1OKjnMk5C8EJM0=;
        b=hDTfuN6qZ65+fLCZ4eWB0SHzzBwNhzMAl3t+2xzMtndMWahkcduaJi5FbhttVAPWSh
         ReUiYAFzsaKcQqFGS/VZ5X1dcsTugC2hQJqh10hh4ewr5xexCouMTOJYmnMtr3LS+kqo
         DTpFa2pIs9xqTeDZHroyMy5tI+sD7VbwMX1s8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6X+691siEqN4skGdU5S4Z9b5pWmhX1OKjnMk5C8EJM0=;
        b=ICrRp6rZWw1UtcDiKSB5NipIklJy9v1NBUx0isEp7XGfJ4KvRu7QfgC3760BXeudk2
         XNRKn9XXt1NvjWnPFXDVn55iyCjKJHaS2tjYTghGB7EilGnxUXJKn4dntRnU3dWouh69
         U9cukHmeyYQMdmSi/bhhuCuCzJ3yEekXjw53G/dEZRUuqbI/QBvgyqYFnG/ryj7b4Vvl
         tC/f6Y8tpBuXbNAQ/uNCVaEWQS77XJAZOktPzzH26aiULqn43Lcl6CnAke30vIsSJUfk
         Xi4bMN9xCsu/SMD3Y6Z+5sfz7ODwtmqfZbICkfcOaUZYOpZ8rSLBezu2iayadlfyRsUd
         b50g==
X-Gm-Message-State: AFqh2koBq7hAA8W4V8yv/LosW2hwmcFZrCAlU8hjelblBPvzRhv4wsBq
        il/pmfcC2lM2zWNsiLzTvGwBsKpoSjnefujgT/Yyxq3EOOqHfFJfWuXFntFAkLq7gZ6qe8c1nOJ
        opWivf6mfNfjIdzcV1CFO3GecXa7T/VgR6plfanLXlTH/gWUXGQtOWRETRw==
X-Received: by 2002:a62:6442:0:b0:581:eca5:12a3 with SMTP id y63-20020a626442000000b00581eca512a3mr24782832pfb.10.1672931896883;
        Thu, 05 Jan 2023 07:18:16 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtQuO9oOSOQYeYDtuRA0FU9Q1Z3/PbElbvvXJgID4I8mFO/sXH2ApWEGstNoVoJMOJkotQL1Q==
X-Received: by 2002:a62:6442:0:b0:581:eca5:12a3 with SMTP id y63-20020a626442000000b00581eca512a3mr24782802pfb.10.1672931896546;
        Thu, 05 Jan 2023 07:18:16 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id i6-20020aa796e6000000b0056bc30e618dsm12473040pfq.38.2023.01.05.07.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 07:18:15 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V4 0/3] AM68 SK: Add initial support
Date:   Thu,  5 Jan 2023 20:47:37 +0530
Message-Id: <20230105151740.29436-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1672933659-312110-5408-22890-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.219.71
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245267 [from 
        cloudscan12-98.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
Respinning this series after rebasing to 6.2.rc1.
This series of patches add support for AM68 Starter kit(SK). AM68 SK
is a low cost, small form factor board designed for TI’s AM68 SoC.

Refer below link to AM68 Technical Reference Manual for further details: 
http://www.ti.com/lit/pdf/spruj28

Design files can be referrred from https://www.ti.com/lit/zip/SPRR463

Changes in V4:
=============
Repost after rebasing to 6.2 rc1

Changes in  V3:
==============
Addressed all the review comments and the changes are captured in separate patches.
 - Removed the unused nodes that are disabled by default.
 - Updated the gpio regulator node: gpio-regulator-tlv to "regulator-tlv".

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-1-sinthu.raja@ti.com/t/#mbe43b02221733bb6eb06b203359e90ec08406afc
V2: https://lore.kernel.org/lkml/20221107123852.8063-1-sinthu.raja@ti.com/
V3: https://lore.kernel.org/linux-arm-kernel/20221115154832.19759-1-sinthu.raja@ti.com/

Sinthu Raja (3):
  dt-bindings: arm: ti: Add binding for AM68 SK
  arm64: dts: ti: Add initial support for AM68 SK System on Module
  arm64: dts: ti: k3-am68-sk: Add support for AM68 SK base board

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 335 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi    |  31 ++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

-- 
2.36.1

