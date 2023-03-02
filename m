Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ACB96A8AFB
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 22:11:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbjCBVL3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 16:11:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjCBVL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 16:11:28 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 776045652A
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 13:11:26 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id 6-20020a17090a190600b00237c5b6ecd7so4082937pjg.4
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 13:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EnwhFazkXPQvwXTNDMdOsjKx8vo+Awf6ny6pAQlMJDY=;
        b=MqdSEjH57O4po1moEnmjSKdlqQYM2mM96KvMIrdCbMZYwj0Cqb4G/NZ21sHZzyYjk7
         oxb6XESSAOpEC6ptihSwWnGVN5dVIwHuAqlmO1yT9LctObyn/EmkbXD5kVXALgrbU5Df
         zcvtYFespKYEfqUzBCksk9HPvzg8WeCio/5Q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EnwhFazkXPQvwXTNDMdOsjKx8vo+Awf6ny6pAQlMJDY=;
        b=FqfzViMLN/5jA9pKaAr6Y5btCt4jV5Y+S2BlTJOfFg7FvbcaLgkEXZ5i0PE/vzT7/s
         a3x/NISkvGrd+6eFhEqrHgrpBWSpuoQF0L3qqLY2zUW/oXYSKur0ForY3IicJUZOsPdy
         Jb1htQlsRjaU15kRum99KqsxobFRwLx918r39YnYUFaHv7nH9+x8jH0DbNCTZwpHfgu+
         q4GLL5B5CuAA8W8fiX1faXI3OZhbIPGmwZ7jusxCxPCknVXnoD+vGHbWUXiF995/VUNX
         KsZ5Tctxa/AsNbz/2Qpc7ufZ2x7A24DGXm6n2cjt5e+pf9ri9l57bxklHU9xCorTzA9v
         PGrQ==
X-Gm-Message-State: AO0yUKVOAV/TuXIdREIAJoSkSGjcWaa+Jg2G7Juz6IZdPYqKwyLq2GPt
        jxUpe2Z/zYsJBHZ9OH44WX5Qbg==
X-Google-Smtp-Source: AK7set99OMd70i98XRexjgg2GjSnH0wDtEpGvO9yAFx0ZJP9ojiiVXhA88toAdirejoWx2g8Uj6qhA==
X-Received: by 2002:a17:902:e5cd:b0:19e:6760:3a5d with SMTP id u13-20020a170902e5cd00b0019e67603a5dmr5066598plf.18.1677791485982;
        Thu, 02 Mar 2023 13:11:25 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:a558:99c0:81e9:a93c])
        by smtp.gmail.com with ESMTPSA id a16-20020a170902b59000b00195f242d0a0sm114497pls.194.2023.03.02.13.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 13:11:25 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>, mka@chromium.org,
        swboyd@chromium.org, Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] arm64: dts: qcom: sc7180: Delete a few unused trogdor dts files
Date:   Thu,  2 Mar 2023 13:11:03 -0800
Message-Id: <20230302211108.2129598-1-dianders@chromium.org>
X-Mailer: git-send-email 2.40.0.rc0.216.gc4246ad0f0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In general on ChromeOS we try hard not to throw away perfectly good
hardware, even if it has a few quirks. Many people keep early versions
of boards around indefinitely and keep using them for testing /
development if the feature they're working on doesn't need the latest
and greatest. This is the reason why there are so many sc7180-trogdor
device tree files.

That being said, _very_ early hardware tends not to be kept. -rev0
hardware tends (not always) to be prototype hardware and often comes
as a pile of parts. People are really only willing to put up with this
for so long. Even if it's not a pile of parts, -rev0 tends to be a
very small production run and isn't widely distributed. That means
that, by and large, we can eventually drop support for -rev0. Here,
we'll do that for kingoftown and wormdingler, and lazor.

While looking at the -rev0 of mrbland, I noticed that mrbland appears
to be long dead and unlikely to be revived. Let's just fully delete
it.

Changes in v2:
- Also delete "sc7180-trogdor-wormdingler-rev0.dtsi" (Konrad)
- Get rid of kingoftown.dtsi and merge into dts (Konrad)

Douglas Anderson (4):
  arm64: dts: qcom: sc7180: Delete wormdingler-rev0
  arm64: dts: qcom: sc7180: Delete kingoftown-rev0
  arm64: dts: qcom: sc7180: Delete lazor-rev0
  arm64: dts: qcom: sc7180: Delete mrbland

 arch/arm64/boot/dts/qcom/Makefile             |  10 +-
 .../dts/qcom/sc7180-trogdor-kingoftown-r0.dts |  38 ---
 .../dts/qcom/sc7180-trogdor-kingoftown-r1.dts |  17 -
 ...own.dtsi => sc7180-trogdor-kingoftown.dts} |  10 +-
 .../boot/dts/qcom/sc7180-trogdor-lazor-r0.dts |  34 --
 .../qcom/sc7180-trogdor-mrbland-rev0-auo.dts  |  22 --
 .../qcom/sc7180-trogdor-mrbland-rev0-boe.dts  |  22 --
 .../dts/qcom/sc7180-trogdor-mrbland-rev0.dtsi |  36 --
 .../qcom/sc7180-trogdor-mrbland-rev1-auo.dts  |  22 --
 .../qcom/sc7180-trogdor-mrbland-rev1-boe.dts  |  24 --
 .../boot/dts/qcom/sc7180-trogdor-mrbland.dtsi | 320 ------------------
 .../sc7180-trogdor-wormdingler-rev0-boe.dts   |  22 --
 .../sc7180-trogdor-wormdingler-rev0-inx.dts   |  22 --
 .../qcom/sc7180-trogdor-wormdingler-rev0.dtsi |  36 --
 14 files changed, 10 insertions(+), 625 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown-r0.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown-r1.dts
 rename arch/arm64/boot/dts/qcom/{sc7180-trogdor-kingoftown.dtsi => sc7180-trogdor-kingoftown.dts} (95%)
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland-rev0-auo.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland-rev0-boe.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland-rev0.dtsi
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland-rev1-auo.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland-rev1-boe.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev0-boe.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev0-inx.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler-rev0.dtsi

-- 
2.40.0.rc0.216.gc4246ad0f0-goog

