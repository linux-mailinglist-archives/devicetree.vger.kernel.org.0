Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34BCB5A6A62
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:28:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231681AbiH3R2a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:28:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231726AbiH3R1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:27:49 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7366FDF48
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:25:08 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id h78so9797136iof.13
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SmSdpqqfvhuzBeG/p+7mNhDOexI5aI2aAxoNsJihLIw=;
        b=MwDNBXN8YnULPfgN5yg8hA/ERoe4PKJ3NdV4H3LBuK3diQMkKr9cIVUpBkhp0GFul7
         xFM3eJ+klfy1CjKvDD1Do+ILnhEFPDprBhHlJ3Xr7sCEauXpNsnplfq6tPGAs3ejXHNH
         8lfx2cndEqpo6Na7ga1peK96Bzlgck8g6Ahbw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SmSdpqqfvhuzBeG/p+7mNhDOexI5aI2aAxoNsJihLIw=;
        b=fqJxYmMRFFaB3xSM+milM0VsuuEV1ZZsQP+dlB9dIqeF4lbatuh/cD3tF5mfcTFJ/5
         ONJzfe4DuRYpApIvnDQ5Udt4bjm9W/HBX0kBKuKWlP2EhiYmlfPQIDytVzV2N6WMFn+s
         q2TPMm1xtSs9rHVf2xmgO/DWGoYThK9T77xVbEbSRBvcv8FCZ9zuqvx7lMGs5bEJbsEP
         ZCHzYlO2r4iANJ2trmmucsdSJDDqALFfaX0+974x9EOfbu7j8X/yZcDH6kdz2QmQSvqj
         hEywImxHgKBI4KuegXmA8ghPmcD3gHJOO7YihEBpUvxEoTvaM2Gtp1w3rjb7ZBbqLHsA
         25QA==
X-Gm-Message-State: ACgBeo0DOhF4jqb0rDntsBtMC3S0zchM2X6o3qWbq1I6jC3j+FebooMw
        rNU7D3yGvrvtgLQ4P5g5ThW6vxp32/xSV+GD
X-Google-Smtp-Source: AA6agR6jC9Hz/K4KMYjJMQFl7UnZI7jcAD2xkHMiD+o2UkwTk51XCUGMAgQB1prQmgRPcSQmgAPFNQ==
X-Received: by 2002:a05:6638:ed1:b0:349:ce2b:3f4 with SMTP id q17-20020a0566380ed100b00349ce2b03f4mr12933112jas.155.1661880238954;
        Tue, 30 Aug 2022 10:23:58 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id h24-20020a0566380f1800b003434ba08e11sm5720523jas.115.2022.08.30.10.23.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:23:58 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id d68so9792261iof.11
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:23:57 -0700 (PDT)
X-Received: by 2002:a05:6638:14d0:b0:349:d176:d376 with SMTP id
 l16-20020a05663814d000b00349d176d376mr12105487jak.58.1661880236045; Tue, 30
 Aug 2022 10:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220830053307.3997495-1-sheng-liang.pan@quanta.corp-partner.google.com>
In-Reply-To: <20220830053307.3997495-1-sheng-liang.pan@quanta.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 30 Aug 2022 10:23:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XXV4x-Hpa9-GUzkwS+cxfvpL93HBCUrn_bvMK8hBAaBA@mail.gmail.com>
Message-ID: <CAD=FV=XXV4x-Hpa9-GUzkwS+cxfvpL93HBCUrn_bvMK8hBAaBA@mail.gmail.com>
Subject: Re: [PATCH 0/1] Add a new board device tree named 'evoker' for
 herobrine variant.
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 29, 2022 at 10:33 PM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> This patch add the initial dts file for new board 'evoker'.
>
>
>
> Sheng-Liang Pan (1):
>   arm64: dts: qcom: sc7280: Add device tree for herobrine evoker
>
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../dts/qcom/sc7280-herobrine-evoker-r0.dts   | 333 ++++++++++++++++++
>  2 files changed, 334 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts

Just as a heads up, usually you don't need a cover letter if you're
just sending one patch.

-Doug
