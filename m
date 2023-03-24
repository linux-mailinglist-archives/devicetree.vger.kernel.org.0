Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 523136C8698
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 21:16:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230357AbjCXUQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 16:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjCXUQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 16:16:20 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DAD1A486
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 13:16:19 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id f14so1251337iow.5
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 13:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679688978;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FhG5hmbsQCxfij9PTmIxoJDULuk5TqU9FpKRgA6qb/s=;
        b=p9TqYaVC+WnmOlAZ137r6ix90B/hbaxPGqgZtlYCn2aq7I9isG13SxEL/1SGbVzHkd
         jdCQY2WjFSQ2KZjFeJqc8sD1gXFX1uOCpghHlLlXMRVa7rUOBWjfsSzU2aPENTStZWUu
         1CDCz9qedaiZnhX1rxlRKdBzwDWN2u+ofbcOvMxXPNwBcZSYmrfO7mGRjtcZJvygzutE
         y3UNnGvgW0w1Xxg5FBZpRxLjntLW00HTWFjuAxweknmNGoCpBAbcRbxpnzsZ5SS6X+R+
         IovVHDmaDAdtgqysO18F0sh9yeAFqPc5vokmEur9FVv9D+iUELYn1t1EpK/eMUyU6+0W
         mTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679688978;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhG5hmbsQCxfij9PTmIxoJDULuk5TqU9FpKRgA6qb/s=;
        b=GstdTpe58B+zDTqDsdvSFFzzXmYuJdGedcH5t+tz6GZBvmj2bVacpvY3Jw1CVwDokB
         h3Bx9cl15ZH7nR8gQpqgjaKOH0AKBRdPrYNY4u2PX9qEaDpJmmQx1tRPxGjLb1KckQ5Y
         NQgSvj+0mif/bkKBH19fLJ+H1lZXT34FMBxpwEGR80qBCJbzk5lIouHq0RqcCVAiKiQW
         7Rk1m0ET15OI799K+z612pR5biD2KHgJzH8yEdOJYt92vMV7TJOg0Ub27AuwJeMxUJ8A
         RXkDL46lbOna+JjVvVrRPP7O2gIzT2hPmGs254B69HUUoKgYiZENns9pAzPdgut7VPdM
         21cA==
X-Gm-Message-State: AO0yUKUL+4RBRyT8DYCuNhxxoERgGLlVHsUDX8kmsIDbkJEHS24OORG7
        NozHdf+y3YZ/NYQwLXwXvbX0gw==
X-Google-Smtp-Source: AK7set/NcsvsgDS9YLJ9i8Anr2KSynB1EM8QlTXAhoJz7Z5vLYiyFYZJYj7qoM6P9RKW2mY0kih9Mw==
X-Received: by 2002:a5e:c810:0:b0:753:121f:72a8 with SMTP id y16-20020a5ec810000000b00753121f72a8mr3145282iol.8.1679688978592;
        Fri, 24 Mar 2023 13:16:18 -0700 (PDT)
Received: from localhost.localdomain ([98.61.227.136])
        by smtp.gmail.com with ESMTPSA id q12-20020a05663810cc00b003e8a17d7b1fsm7173445jad.27.2023.03.24.13.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 13:15:32 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org
Cc:     quic_rohiagar@quicinc.com, caleb.connolly@linaro.org,
        mka@chromium.org, evgreen@chromium.org, quic_cpratapa@quicinc.com,
        quic_avuyyuru@quicinc.com, quic_jponduru@quicinc.com,
        quic_subashab@quicinc.com, elder@kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] ARM: dts: qcom: sdx65: support IPA
Date:   Fri, 24 Mar 2023 15:15:26 -0500
Message-Id: <20230324201528.2540564-1-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The upstream IPA driver now supports IPA v5.0 for SDX65.  Add
IPA-related nodes and definitions to "sdx65.dtsi", and enable IPA
in "sdx65-mtp.dts".

Having touched these files, Konrad advised I should update them to
move the "status" property to the end of nodes where it is used.

					-Alex

Alex Elder (2):
  ARM: dts: qcom: sdx65: add IPA information
  ARM: dts: qcom-sdx65: move status properties to end of nodes

 arch/arm/boot/dts/qcom-sdx65-mtp.dts | 11 +++++--
 arch/arm/boot/dts/qcom-sdx65.dtsi    | 46 ++++++++++++++++++++++++++--
 2 files changed, 51 insertions(+), 6 deletions(-)

-- 
2.34.1

