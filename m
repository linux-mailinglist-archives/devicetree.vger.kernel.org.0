Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9A94FAEF6
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 18:36:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbiDJQiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 12:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbiDJQiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 12:38:09 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB6C3A5E2
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 09:35:57 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id m30so19731311wrb.1
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 09:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1/Utui5eCGbt/cTGPsyHeox51v+ypYBCzwgfJpm/a/0=;
        b=Tu9EfS/FLoaXHYekRIu5ejY09iVKbWmv/OdGWl37doJqnCj7wfIr6Wjaph8dGe4McT
         38/tqpKQUUYVFBi3TUXsVQ1O/FF6VsdGShhGVdCx13qABPjf4wjgzcDrqygESrVPRTXk
         bCSr3kXWXsAc4qb1ya58pKgucSW2zMl68/p6cpOE8l+KBvJeOYYJsNLIABcLsJSuvp/3
         e0UzKzcdB+b51L2vBzZzcm1ChS+ZlB8bSyAI8IBYyY8NwditsoVY6Y/6pFoP6IStKo8a
         iN4xRYPzIJCgimWuCyl51Yl+lk7XyhjKAI7HI6qgUmCSndhOl4nL9ceZXOhb6Vj0bWaO
         3JOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1/Utui5eCGbt/cTGPsyHeox51v+ypYBCzwgfJpm/a/0=;
        b=JKdZw8sMEfdZhhvqfbx1DlMZYMx3mbZGI3/VfkiAk2jtcRcHtxN1blODoB5cprhL9X
         OnyvjtKQ3+CubWpjI9Nxv4CFOfxKFw2hbYFgvAFFDlCZGa6blcXxtP9Q0v0F+ksfWYcj
         MkC4Jw5B6kexEU2+eS1tdhWfOFVzOQJDILHBN5LcNDIDcuGe5sziXYHQ3/ub1MwnFCxb
         t3gM+45hEVy6mHMMRe49u9hpEV1rnwhWn5vC53us/gbgLXfuPGFNcQH2uIJF+l+Z8lDX
         HNjLtGLJ9/B25Y/ZmE7QJKjCSUpTBoOauD/5mYsf5wh4NeODG2L0xVToTlBXBl7oiOD1
         bpaA==
X-Gm-Message-State: AOAM531QegZtogm09f+Ojs1YaJA7+66d0682A/kX1axUAgW03TMlkNBQ
        AtI7Ls7gCFIC5o24sKBNK2Gi9w==
X-Google-Smtp-Source: ABdhPJxKi/kWR8tbpojQUeV47W9wPXDebZ1a1ZDHjBW+9N4Wmff0KKuTzpe+YMyaG27OwDlzDMeHkA==
X-Received: by 2002:adf:da49:0:b0:204:1548:2a58 with SMTP id r9-20020adfda49000000b0020415482a58mr21865396wrl.664.1649608556098;
        Sun, 10 Apr 2022 09:35:56 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id a7-20020adffb87000000b00207982c7f4dsm6500126wrr.67.2022.04.10.09.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 09:35:55 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org
Subject: [RESEND PATCH 0/2] media: i2c: imx412: Add regulator control to imx412
Date:   Sun, 10 Apr 2022 17:35:51 +0100
Message-Id: <20220410163553.3501938-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The imx412 has three regulators which depending on platform may need to be
individually enabled.

- dovdd
- avdd
- dvdd

Existing code for an Intel platform doesn't appear to need to enable these
rails directly. On my reference hardware, a Qualcomm Thundercomm RB5 some
of these rails do need to be enabled individually.

Add in the above named rails as optional in the YAML in the first patch
along with code to switch them on in the second patch.

Existing imx412 users should get dummy regulators populated which the
regulator_bulk_enable()/regulator_bulk_disable() code can safely ignore.

Resend + devicetree@vger.kernel.org 

Bryan O'Donoghue (2):
  media: dt-bindings: imx412: Add regulator descriptions
  media: i2c: imx412: Add bulk regulator support

 .../bindings/media/i2c/sony,imx412.yaml       | 12 ++++++
 drivers/media/i2c/imx412.c                    | 38 +++++++++++++++++++
 2 files changed, 50 insertions(+)

-- 
2.35.1

