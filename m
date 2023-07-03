Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DABD07461CA
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 20:09:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbjGCSJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 14:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230359AbjGCSJK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 14:09:10 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06BA6E72
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 11:09:07 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b5e7dba43cso76032921fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 11:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688407745; x=1690999745;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gzjrenuXzBsQKVm7pmHTaQnnjAIN44phu2x4qqhAHXE=;
        b=LcIifkttY/kAoN/3CMU2nP5VJkaNw49UdbFg1ZVr3PmHRYyP7DyTWVyspjoHeU90Hj
         EguUH+KzUJpHlUn1u+CWFeRqH2tCIMooKb8uFm0wS3CYnnAwwimfZSqAPI7UdMqhBbIj
         KHmr/DoKrmkI4hkSepL/yltQ8YvpqCCD4YCzaReZv12j++9d17pfNFa3Zh7q+oND3uNs
         tzKeQdc9dIpLbEp3CV1BMqJmHlVGPfgifT0tctExgyOCkSh18HQPvrdWSGE72lPjBlCJ
         sZ6ZBidYv5flIwvG0vkwWJ0O9M7G8L8qUuZtXmPdCPFOi/zV4Z65NbHR9t81oC3bEwsY
         hILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688407745; x=1690999745;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gzjrenuXzBsQKVm7pmHTaQnnjAIN44phu2x4qqhAHXE=;
        b=QRwFgjZbUgx4QsjtaPPpo3kVq8ANnJo0a9OHVwq/QAsaYEvtdXTlEKdNEk/wGIHfyS
         oOWXTy3TVdmlhF9Wf3auCU3+E+U1N3pmxYeegmR+RS2UrEc7/u+vhE0Wm9A16uSMe+/8
         31FMLb9DqkmBROk5Ojid49uf2tUwKfZnzEPlGN0m+EPEQqVni397EoR0xTAd4IrkQokL
         4OFWtISQ5SJETWZmkR2S1Z8zScxuxzUlcfIDJ7lrHiBPqncfSuXHTxD5iHKejH9mb0Ll
         yJ4G4q+HOm74OJ8kHr+i4ZZDL2Z2PkJqRGhJHHC/NH2WhRaZvB7ht997Vxc3b54c4+Bt
         1nLA==
X-Gm-Message-State: ABy/qLYbWWDcAO0oc7SVefA5mXaESna2hGM/MrJ45e/cQIYAmBb5QkCG
        vLMuOW9PH/gFbmvvLO3d7IMz2A==
X-Google-Smtp-Source: APBJJlG9oz6EEPHBQpwd0UBHwO3BRDXrMN4fdhuE3fY+tclk9LaAl1Zh6hyEh6zuOmznSvcJ5yGrwg==
X-Received: by 2002:a2e:7318:0:b0:2b6:ec2a:a67e with SMTP id o24-20020a2e7318000000b002b6ec2aa67emr2189667ljc.53.1688407745099;
        Mon, 03 Jul 2023 11:09:05 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id l17-20020a2ea311000000b002b690038aecsm5241157lje.112.2023.07.03.11.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 11:09:04 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] Add SC8280XP videocc
Date:   Mon, 03 Jul 2023 20:09:00 +0200
Message-Id: <20230703-topic-8280_videocc-v1-0-8959d4d0a93e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALwOo2QC/x2NUQqDMBAFryL73YU1gWp7lVIkxte6IIkkrQji3
 bv0cwaGOaiiKCrdm4MKNq2ak0F7aSjOIb3BOhmTE+elE8+fvGrk3vUybDohx8itlyvgQ+duIAv
 HUMFjCSnOlqbvsphcC166/0+P53n+AB5OJ9h5AAAA
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688407743; l=707;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=18egrDJo8g/gHVplIYuruwtWDyCTuJ8b8bX/VNXqRT0=;
 b=EKhu9/h7Zv2JOZPy+BnXy6NpSA+wFsYv6NBfBgH5vvas5YifTcyvLAQaKeuAckOql1qrPkn14
 VTqzR6i6pW2C9N2EWP/dVy2tZISp5y9u4HBDOHTIfkH8AGviOKfnJem
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SC8280XP largely reuses the SM8350 VIDEO_CC block. Add the missing pieces
to make it work in preparation for adding venus support.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: clock: qcom,sm8350-videocc: Add SC8280XP
      clk: qcom: videocc-sm8350: Add SC8280XP support

 .../bindings/clock/qcom,sm8350-videocc.yaml        |  4 ++-
 drivers/clk/qcom/videocc-sm8350.c                  | 42 +++++++++++++++++++++-
 2 files changed, 44 insertions(+), 2 deletions(-)
---
base-commit: 296d53d8f84ce50ffaee7d575487058c8d437335
change-id: 20230703-topic-8280_videocc-1306ee3a729e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

