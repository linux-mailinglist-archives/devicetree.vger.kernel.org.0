Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8805643DD
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 05:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbiGCD5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:57:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230214AbiGCD5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:00 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B515BB1E3
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:56:58 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id y10-20020a9d634a000000b006167f7ce0c5so5137511otk.0
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dc9vz6N7DKkZ82VTpYZZOu4EwmmX1IVNuq7aVvtCYLg=;
        b=zeYDcxMXG3Bfc271hs/yW15xnm8oYQfvzRsUdXI5TYj4vcCfgVJ1Vd1MJ1KKEcv9/8
         DfWE8j1e94BUq7mhLocGdLOjq+XO6qVMBgYN7NqzY9EPCJ2spjyhRsj4YCrJ85PxLv0G
         hte7WfuK8DEsWkmw386OrAYRS8P9HDS08aOCJO26GoNBU1BDqxK9VIX8ALHUcDwSJtiS
         YKkq+gLip8YUg3M4Tbv8lpoV5wSwXBGULIAfwdiv/1391ikt9LUOi2LnOGlCAAh8/SwX
         7TGRqvPIP9Ny3ExzilHv6/zY94xH9QcJ4UXTkM7/T3pfo4HzrbPjUG5ARZoXSH3TZvMZ
         +EJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dc9vz6N7DKkZ82VTpYZZOu4EwmmX1IVNuq7aVvtCYLg=;
        b=ca4LCVM8nHko3WFaAsy9J6sCmVkaAul6/fLC8QgYSMH8t/soPq4DpPU6655QoQzoHG
         kyFLxuYC+lNobFsMbOg/kZ9OyDzWkdyOQGxd4gWK9yrK5RQhO6Ic3WZfj8rcI5qpEd1D
         bTZJdjrPenn9+1QkJ6RujXxEV44BR1mPfdZ86ARY/NcjJ23nxe7o+jz2yAa+o2RVCnnS
         E8gl33qrmayOHzRqnWz1WX4v803LfN6n4QGWu0HGjY6Q5CdBNL/38hwXaSOTlYWOBNx0
         vpKi93qSD0YqzvBkFM7StXGbtvo4MOc18HX4FsZpMSsI8FS6oJFKfrsOLj9NX/dD+d6c
         9FFw==
X-Gm-Message-State: AJIora9aYNW27R6fGDpy0cGBKpGpfircKakBuNsw71NhnRD6Fqg2wm4Q
        zifilGemc5u/T6jnx3AGH7bVsQ==
X-Google-Smtp-Source: AGRyM1sjOW8+NcP1/yVgLxMiRkSjc3NeZ5dMm0JT1zZBUJC7qJ3DQ4yXTHeopv4w72le8rSgf0vFYA==
X-Received: by 2002:a05:6830:3142:b0:617:131c:d671 with SMTP id c2-20020a056830314200b00617131cd671mr8612962ots.368.1656820617958;
        Sat, 02 Jul 2022 20:56:57 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:56:57 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        robh+dt@kernel.org, Alec Su <ae40515@yahoo.com.tw>,
        sboyd@codeaurora.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        y.oudjana@protonmail.com, phone-devel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v4 0/2] Add support for Xiaomi Mi 5s Plus
Date:   Sat,  2 Jul 2022 22:55:54 -0500
Message-Id: <165682055970.445910.14607173848356967245.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220606024706.22861-1-ae40515@yahoo.com.tw>
References: <20220606024706.22861-1-ae40515.ref@yahoo.com.tw> <20220606024706.22861-1-ae40515@yahoo.com.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Mon, 6 Jun 2022 02:47:04 +0000, Alec Su wrote:
> This series adds the device tree for Xiaomi Mi 5s Plus (xiaomi-natrium)
> smartphone which is based on Snapdragon 821 SoC.
> 
> Changes since v3:
> - Remove the unnecessary properties in the device tree.
> - Correct the supplies in "dsi0" node
> - Add delay properties in "touchscreen" node
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: qcom: Document xiaomi,natrium board
      commit: bb856fdf07f666686439b2c186fbb80a41e93277
[2/2] arm64: dts: qcom: msm8996-xiaomi-natrium: Add support for Xiaomi Mi 5s Plus
      commit: 13e75fe786a16c35bccc5e9d8890224fd38ad733

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
