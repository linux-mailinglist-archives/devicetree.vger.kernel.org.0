Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B42C8573AAE
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 17:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237081AbiGMP6E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 11:58:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236391AbiGMP6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 11:58:02 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7E825004F
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 08:58:00 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id ss3so14599672ejc.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 08:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5/Vj1VhdY5NW6ohPgoVwI8+jslVLxU7aofSuN+zvekk=;
        b=oUXldJ8ZPFnIrUN6j4zP6t/M60/eQCX1n+2O4QAs8x351TwUOianbZzOD/qVR5Xbc1
         VgSyE5rPJF83VQ4d0XEI/Dg0M49+YbqXCJDEM1JqYcaQBRedJVat7BoSiFToqHh60rwm
         6mQxbKhfNx7JevSsNTK0eoU3OPJfhmJvL0syA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5/Vj1VhdY5NW6ohPgoVwI8+jslVLxU7aofSuN+zvekk=;
        b=rLkNURoLL5bsylZCryE3Lsn9LIzMWf6xc8NmNNAcGSTOk1oILmDbAWoFUjeO/b8145
         ZhalqndEC/h4Wh+YGLvv3iZ3Z/vw36tBPTXRwtz0T3aUn1U7ltB4xXICqfaw1AIiuixp
         wQL4ZVCzT0IB27p6JGcIrduLYCc52KEENcSyVCRBaGCB/9QKq/apByFPp7uqx2XLAvps
         j/xb+EzhqWRvn7fRZ1jM5dNX/uOJwbc7jxAtrRp+FtAdJCiPFHdjfAHQ9t2lPTrDMUFi
         RNrPmWWGMwULxl+3GrzWXizseUnEG0yMeBFhiiAKZV2mEU8OyRRwnWSD1g02YiICho16
         3pfA==
X-Gm-Message-State: AJIora9XQtMgn+CyBFOaz1CqK1hG1fUkxINjdBbBgYqgPD+gpbILCWan
        QZF6yJnLDgbACWqX5RmCBNkHoCul+OeJQCCz
X-Google-Smtp-Source: AGRyM1t1ZDFGjqdzacyGjrarIMtQ9VT+OJ50jnlqjZ7gbkSWUiMrOZzl1xivT3/idrDpxvlORRpNvQ==
X-Received: by 2002:a17:907:72cc:b0:72b:6912:5435 with SMTP id du12-20020a17090772cc00b0072b69125435mr3827767ejc.603.1657727879100;
        Wed, 13 Jul 2022 08:57:59 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id c10-20020a17090618aa00b0071c6dc728b2sm3868126ejf.86.2022.07.13.08.57.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 08:57:58 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id a5so16114283wrx.12
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 08:57:57 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr4002688wrr.617.1657727877212; Wed, 13
 Jul 2022 08:57:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220712150219.20539-1-krzysztof.kozlowski@linaro.org> <20220712150219.20539-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712150219.20539-4-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 13 Jul 2022 08:57:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VPHwkKUjanLtaM+cXdp+VGPExJ_XDe=-O8j=ayGNtnVQ@mail.gmail.com>
Message-ID: <CAD=FV=VPHwkKUjanLtaM+cXdp+VGPExJ_XDe=-O8j=ayGNtnVQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mmc: sdhci-msm: drop redundant of_device_id entries
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 12, 2022 at 8:02 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> This reverts three commits:
> 1. Revert "mmc: sdhci-msm: Add compatible string check for sdx65"
>    This reverts commit 953706844f0f2fd4dc6984cc010fe6cf51c041f2.
>
> 2. Revert "mmc: sdhci-msm: Add compatible string check for sm8150"
>    This reverts commit 5acd6adb65802cc6f9986be3750179a820580d37.
>
> 3. Revert "mmc: sdhci-msm: Add SoC specific compatibles"
>    This reverts commit 466614a9765c6fb67e1464d0a3f1261db903834b.
>
> The oldest commit 466614a9765c ("mmc: sdhci-msm: Add SoC specific
> compatibles") did not specify what benefits such multiple compatibles
> bring, therefore assume there is none.  On the other hand such approach
> brings a lot of churn to driver maintenance by expecting commit for
> every new compatible, even though it is already covered by the fallback.
>
> There is really no sense in duplicating of_device_id for each
> variant, which is already covered by generic compatible fallback
> qcom,sdhci-msm-v4 or qcom,sdhci-msm-v5.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Personally, I would have taken the extra step and added a comment in
the code to prevent someone from doing this again. Maybe like this:

/*
 * In the device tree, all boards are required to have _two_ compatible
 * strings listed: a SoC-specific one followed by a more generic one.
 * Normally we can just rely on the generic string, but we always
 * include both so that if we ever find a bug on a specific SoC that
 * we need to workaround (like in sdm845/sc7180) that we can quickly
 * work around it without any changes to the dts.
 */

In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
