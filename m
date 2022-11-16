Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAF9D62BF62
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbiKPN1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:27:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231479AbiKPN1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:27:17 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B9A6557
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:27:15 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h9so29937525wrt.0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79X4mvUkSDO2GIWyfQ/uVOL0ox4FD7HfQwYq5sKfqpw=;
        b=HqZs9cR09FUQo2fjDNltumJBgGtIzdcx9KC3Ausf/rXusZPUbo/tcsmj3dF0YgncUQ
         hLag64l87Wi1TOJlHCa0qcc2j8P699zDULuIO1O7sd5qJ65l3KYs0KuvyG7Eva6sac8X
         qSxoxcQdZvg+YUAFGR1uSUGAF1bFEyaQ+Hm9ee0oBh8NvZ7eWVteApVgKhlf/IqlVehT
         loG22iVA57CwXoj4JXAs7klVM/aoj2BjSMIlLbWuwglTPi0L7qchWied1jAcIqgIlsxt
         vjky5enc9pygHK3qhY0dNeVxo7Ogl4F5icqc5FCQ1FaC1TsSthqSEVBKJr/5RxMAwNQh
         sLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79X4mvUkSDO2GIWyfQ/uVOL0ox4FD7HfQwYq5sKfqpw=;
        b=NUBHLrOFgkdbzuOvr3VtLCMNEtyENFO6N1lmxqhM3WLxRYk0MAxkYetUaIaAcfyhJX
         aPRegVaVVuUXCtH5w1+4HwNtoSbPgk6iPkiH0ZYtGci+vMWMJ/Mb+wYO+ffqnKrfQ7Jy
         T2kj5w+Z7ckm8RFRnEsz91zR2+Nk2fNbVGP4DH8c1SLvioWbntg7eBpVZgiDAS7LLyen
         3I7vOPDSyrPOWH82ppDTif2uEhDuK9ou7TZm6EykasJrAZT/4PWyBxuDXaTdWnXQF6XA
         c8/0wqSepjuxo4qHPEf6pM0j9oy2nSWYZHl+hELyiUBGkEXYqnNblQBi5NrZphcWk8Ns
         ZY0g==
X-Gm-Message-State: ANoB5pkqTnkd45O7v6G/mm/kvceyjQOhOeUOT/VKbm99y2aXFfovfuhX
        tY0OxxVwhTK2qhzkvrT8syTM/Z+kGWKgXw==
X-Google-Smtp-Source: AA0mqf6EJ88AVHmgVrucPAHzCduRu/Jk8rVuOe2mSMLkBqqhdPWzD1uNA1xLwSwpYNs3DyxScE35tQ==
X-Received: by 2002:adf:e9cc:0:b0:236:75a8:58d with SMTP id l12-20020adfe9cc000000b0023675a8058dmr14286551wrn.295.1668605234208;
        Wed, 16 Nov 2022 05:27:14 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k25-20020a05600c1c9900b003cf4d99fd2asm2425710wms.6.2022.11.16.05.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 05:27:13 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [RFC PATCH 0/2] arm64: dts: qcom: sm8550: Add eUSB2 repeater
Date:   Wed, 16 Nov 2022 15:27:04 +0200
Message-Id: <20221116132706.2852434-1-abel.vesa@linaro.org>
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

This patchset adds the PMIC eUSB2 repeater and references it via
usb-repeater property in the MTP's eUSB2 PHY.

This patchset depends following patchsets:
[1] https://lore.kernel.org/all/20221116103146.2556846-1-abel.vesa@linaro.org/
[2] https://lore.kernel.org/all/20221116114526.2679041-1-abel.vesa@linaro.org/
[3] https://lore.kernel.org/all/20221116123019.2753230-1-abel.vesa@linaro.org/
[4] https://lore.kernel.org/all/20221116132212.2842655-1-abel.vesa@linaro.org/

Abel Vesa (1):
  arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node

Neil Armstrong (1):
  arm64: dts: qcom: pm8550b: Add eUSB2 repeater node

 arch/arm64/boot/dts/qcom/pm8550b.dtsi   | 5 +++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 7 +++++++
 2 files changed, 12 insertions(+)

-- 
2.34.1

