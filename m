Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52F03720400
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 16:10:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235461AbjFBOKq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 10:10:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235145AbjFBOKp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 10:10:45 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E48198
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 07:10:40 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-53404873a19so1172666a12.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 07:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1685715039; x=1688307039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KVK6hsAkr2t2TtBLH/UasFkOv83y2FFgyEi4rUpiTPY=;
        b=5hRIGvKGBI4Q/6isoE6tLWyNH6CT5/+uchB5fWu0dzJu7sanhCiuiixE7XQgIDvNOU
         RJwlYQKaWkRlFJ6orp1IUrWEpb7ormdJWXnMl2FR37z0PK6MTrcyhr/JGgmn69YAW/66
         OLZzMhgaAAzP+VC0xrm6DxxZdJkXiedQIgTQBIqG88FyfssIHQIAbsHyly9TnTfbXF/K
         5n97YjbLgRadx7mWXIupLOLjg3ppLhwUr0raM2BBz94USYeRnU01cKRW17PB+bfzYCLO
         r0BDobNUJYoYAsw1xvCNSXocybJjYCbF4vsqSheiCIUorrxFIeaZCtXp0Yb1l4IzUoQt
         Q3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685715039; x=1688307039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KVK6hsAkr2t2TtBLH/UasFkOv83y2FFgyEi4rUpiTPY=;
        b=cAgJgBI6XOzU/0mzIbLDOIK8mBq2dmmNykDH/aHFxvltuA89sCofLal5G9jVl35M7l
         DxUXOgp0082pRRMZu2f5YTEBmmExxi22w4aVqN2jTNeg+cPZW9jwtACbsiBY4Nf/qziL
         IGnKsaEJdVuIGLJV4q4PGw9ylmEmkCpygHRgDachitO9iwRObj9prZNVFA9JLCDn/jyv
         eg4Ty/tOFLbOLQuxltjjbs44uDbVyx5TV0IZNk6CkjRNf05uZye8olSqpGkCBELV1ctZ
         hvw5H6WJ6GsjO6/s0cwGoDExBNEB89mmDtTiC4r8oUzx9ePHRrTNfwXK44lKpH1Um7tB
         IMxA==
X-Gm-Message-State: AC+VfDzJ9bBPujFQmCc+6qQnHACXZM6lkgkSt6v95GZrn0W20yEh174M
        +Dyl2/P1Jb4XqN6Uo3DWN/KC7A==
X-Google-Smtp-Source: ACHHUZ47rMkWSf8RU6yNVYqIGemVMae35FKf2485NhgAFsmoMvUsgA1ZCYUJcV1PB2Z2JJAc/et04w==
X-Received: by 2002:a17:902:d489:b0:1b0:46af:7f15 with SMTP id c9-20020a170902d48900b001b046af7f15mr23079plg.64.1685715039585;
        Fri, 02 Jun 2023 07:10:39 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id c11-20020a170902d48b00b0019e60c645b1sm1370878plg.305.2023.06.02.07.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 07:10:38 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, dianders@chromium.org,
        hsinyi@google.com
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH 0/2] Add ili9882t timing
Date:   Fri,  2 Jun 2023 22:09:46 +0800
Message-Id: <20230602140948.2138668-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ili9882t dt-bindings and timing

Cong Yang (2):
  dt-bindings: input: touchscreen: Add ilitek 9882T touchscreen chip
  HID: i2c-hid: elan: Add ili9882t timing

 .../bindings/input/elan,ekth6915.yaml         | 36 ++++++++++++++-----
 drivers/hid/i2c-hid/i2c-hid-of-elan.c         | 20 ++++++++---
 2 files changed, 43 insertions(+), 13 deletions(-)

-- 
2.25.1

