Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10E1E55EF39
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbiF1UVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:21:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231765AbiF1UVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:30 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A3C5B23
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:22 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id f10-20020a4aa68a000000b0042579cb6238so2699661oom.7
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tAHGQbVmQ1A6SvCQdDH+tny2AATVkTbYV8z5fCu3dcc=;
        b=yK7wf/0o1/gDJuXeCr5ad8Qnd2IwdDj+J02qzaI05ZQCG2mTobkaI4zCByLrIQfgQQ
         pdJfXi14NGf8Ou+J2D/6c5Um6MpApUlSjJmUeH5+YvhP/+gJvH4OQhytp72bzS8AwxXx
         M05OsNu+mV+PygR8Ve7RAfTsVO4R/3ZAp9opTD4/RfONgYfsFwh/JJAT+r1/dK0Os13x
         8nVM1fTI2k1Kj/BuzHH2wHcgSn9B1NSmbtVV9rkh330dcI/8O6j7/MknQcxY1o1ZZ5EF
         HWxg60+QXcoHD7pEM5McGSJv1cqsWvY2mHnE9TXSnkrJqiHeAyqtCHck3ZKO3dV9VnDt
         SpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tAHGQbVmQ1A6SvCQdDH+tny2AATVkTbYV8z5fCu3dcc=;
        b=HMBzkhziGG0KlJ4AGxbuLzRmBixJanlSOSetX2LscoYv7NrflsExZqR4QiHuog7f2Z
         R+FEcB2fMcGaqZi+M2SPbPWcpRJWGKud1/Iem0fNlUfd9PPRT+SuoeeyDOR9AgBPY5eM
         L6TrfIpyRVkjkneiosV0G5Rg41kr0ujaFZ80XbUO6Yl/Crm7dCYCL7RepO8Oyv1KHUGg
         aDzGFIxC2MnlsMXRf8XYJ+W9kYxc43hj/Ejy72fP9p/s90zTM9Is5c1E0zHjhjByG8Bp
         0i7uFS80wa2b0z2/hjxWfxoqXoap8TBOCk99mP7cdpTYE70cxuszqYT8lAD0uq/C/Pvj
         2qZg==
X-Gm-Message-State: AJIora+j+qPM1XjqN+gCnAX95yxwBsiyGEgv2tGd1yo3mxiJlGtRIEvr
        Q0ZRRpGg2LOwZ/IhQa/NzDA+2A==
X-Google-Smtp-Source: AGRyM1sjtPSohyWRR3lV5ZVEdjTcmWB759mhaFLW/2HtSLrS7VnBp/EvoQgz/2Mld84Kb+2JwxjGVw==
X-Received: by 2002:a4a:a846:0:b0:425:bfa1:9795 with SMTP id p6-20020a4aa846000000b00425bfa19795mr1697567oom.67.1656447561668;
        Tue, 28 Jun 2022 13:19:21 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:20 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     martin.botka@somainline.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        angelogioacchino.delregno@somainline.org
Subject: Re: [PATCH 01/14] arm64: dts: qcom: msm8998*: Fix TLMM and pin nodes
Date:   Tue, 28 Jun 2022 15:18:55 -0500
Message-Id: <165644753307.10525.8428887869239635965.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430162353.607709-1-konrad.dybcio@somainline.org>
References: <20220430162353.607709-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 30 Apr 2022 18:23:39 +0200, Konrad Dybcio wrote:
> Remove the unnecessary level of indentation, commonize SDC2 pins and notice
> that SDCC2_CD_ON and _OFF is identical, deduplicate it!
> 
> Also, remove some unnecessary overrides and use decimal values in #-cells
> 
> 

Applied, thanks!

[01/14] arm64: dts: qcom: msm8998*: Fix TLMM and pin nodes
        commit: 12541f687e4994774cbb4158e5fe3ecd6c639bdf
[02/14] arm64: dts: qcom: msm8998-clamshell: Clean up the DT
        commit: ce383e80782e9b416d5022dc692fc80306358372
[03/14] arm64: dts: qcom: msm8998-laptops: Clean up DTs
        commit: 16901ba567d789557b90871e23504a2118c35216
[04/14] arm64: dts: qcom: msm8998-yoshino-lilac: Disable LVS1
        commit: 4efbec42c050e9e59171822a3829c9a364e88611
[05/14] arm64: dts: qcom: msm8998-yoshino: Add USB extcon
        commit: 6dad36ebe1cb219615ead56692cea816d144c645
[06/14] arm64: dts: qcom: msm8998-yoshino: Remove simple-bus compatible from clocks{}
        commit: 016928c052a75bef4ef66d844f0000058429e18c
[07/14] arm64: dts: qcom: msm8998-yoshino/oneplus: Use pm8005_regulators label
        commit: b448501c2e770aad1c09abadec2045c35eb08f36
[08/14] arm64: dts: qcom: msm8998-oneplus: Apply style fixes
        commit: bc0e82fbb25b32b5c69bef017ebd3e79b85883d4
[09/14] arm64: dts: qcom: msm8998-fxtec: Use "okay" instead of "ok"
        commit: 20bba6b73264e7a7f1743676d7942e25d3a2131d
[10/14] arm64: dts: qcom: msm8998*: Keep MMCC & MMSS_SMMU enabled by default
        commit: 392b73cb816094348abb7e3ff1288b5786b4ee16
[11/14] arm64: dts: qcom: msm8998-oneplus: Add clocks & GDSC to simplefb
        commit: d582c02012d2a07251339bf0762223dbc6bb2955
[12/14] arm64: dts: qcom: msm8998*: Clean up #includes
        commit: 5d393f14d4de41ff30ccad78129d96606eca827c
[13/14] arm64: dts: qcom: msm8998-fxtec: Decouple from 8998 MTP
        commit: d0eaf4122c9eb6a7536bf1a607c0570ca82daa99
[14/14] arm64: dts: qcom: msm8998-mtp: Merge and fix up the DT
        commit: 3ae6156e2f414f0ba2bf860e4173bbd366d5e101

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
