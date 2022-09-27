Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3185EC232
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 14:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232130AbiI0MO3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 08:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232251AbiI0MOX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 08:14:23 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 344DCAE221
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:14:22 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id bk15so6945842wrb.13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9VY3Dc88zm1X3kFMt92f1ebyGXVZRmxVirreoMiyvQc=;
        b=NA6E2zVVA2woACEnZMqQ556hmczmfDzkGVcciItFpf+5hRvncoGO1SS/D81UrSazzA
         ZzC1f4gaght3AAk4ENdrXkaBZH1ex7mQNdrhzFAedr0FhVxI4mJ6qrT3SlcL5QOAL5w0
         EYxnjcuqZ/G7XGSMXovXeHGLhMoKg6CIy85+K8OdHCgFf1ybrzlY9ajrCnK3t2W+fP9Q
         0xp8jO3i5d4U8h0/F6PFOKSRkBRP5GREQWNthEiAvCfUzk54Q1yQMVxkIXI5H9lMdIi7
         AGuKlK1F9Z69S8NjhDkkO0RP+yraEl6WcFcyefFu37LED+Z7W0eVllz7cL7V4ByuSDfu
         E2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9VY3Dc88zm1X3kFMt92f1ebyGXVZRmxVirreoMiyvQc=;
        b=iwg4LUWCJru+In8OCqQEGYZL4ILvfaPJ/C8GaH/nn0bFD9nUMdZoGwZcS1V/KmS1/7
         opQPkUQVlA/5eI7zt39z0OU6kDXf+lgytCz9/PSkrg8gXcoUwo13bBMxmOsD8xnzFwbU
         Z+MU7nblz9xhc/aovlF0FbWZZBRJ7hs0266G3OhlG74AC7DhJ+Dp0MSSNjX/i0fZ+wEQ
         xkXIobKtbYvQ/vRPdDAR9PhA9KmDfKQkhHAjeM6OPWmeEuhlhHKgRFVDCmFqPVInor8G
         xwx43xrr7/b48O1JnN1LQpa9OKcuvPmWrg63BTAZJ04ZzHxJCDJnvzNgcQA+h9Thr3Wg
         Y7jA==
X-Gm-Message-State: ACrzQf1Q6SfuHel3PFA19O9QURC38+uek9IPD+rOAGyIVpAtsy+sq1Ij
        cfkQUtV94i3e1jez4Qrzr1BiAF3o7apjRmzyrbUEYQ==
X-Google-Smtp-Source: AMsMyM7YNXPwbAoZ4jH2Sng8pypCwwIPhkKSy4c7346odtENVp/miYxI/prOTpVT0lDA1ChPnaYLHYhqClT2sp9fawM=
X-Received: by 2002:adf:f347:0:b0:22c:be39:4e38 with SMTP id
 e7-20020adff347000000b0022cbe394e38mr1614940wrp.151.1664280860789; Tue, 27
 Sep 2022 05:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220923014322.33620-1-mailingradian@gmail.com>
In-Reply-To: <20220923014322.33620-1-mailingradian@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 27 Sep 2022 14:13:44 +0200
Message-ID: <CAPDyKFrKHza0+8F_8-8NEYh9gLcAPoeKu=qA6YZC2t3D9CJ06w@mail.gmail.com>
Subject: Re: [PATCH 0/2] SDM670 SDHCI support
To:     Richard Acayan <mailingradian@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Sept 2022 at 03:43, Richard Acayan <mailingradian@gmail.com> wrote:
>
> This adds the compatible string for SDHCI on the Qualcomm Snapdragon 670.
> As I noted before, I think it's fine to include something like this
> before the initial device tree because it is trivial.
>
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  drivers/mmc/host/sdhci-msm.c                         | 1 +
>  2 files changed, 2 insertions(+)
>
>

Applied for next, thanks!

Kind regards
Uffe
