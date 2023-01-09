Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E47A9662713
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:31:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233481AbjAINbb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:31:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233629AbjAINb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:31:28 -0500
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4320513E89
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:31:26 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-4c131bede4bso112645877b3.5
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QVz5jWDcU5r8Y5zSAYEpynnON9GmdwxqNKoxJSpPRgU=;
        b=JddNTzUsNLk43BliAzsUuwqayac834GiUYTfWQN9AVfnu4bh3Vx3N+O3IB7fgoDFVJ
         XNJx00X9ZHwdAMyrqtCjwMvlrY7F6c3eb+Zg6qz/xr4XSaqMpy80M14Bipu7rvqbLbxy
         5vH86/Bzkv8srzydJel8pnl77q8zqWXBlHgOyuom12HYQd1N2Llst09FvYXgwNwVOoNh
         V1FrFVHZtIjDrG40piiHaLWUc51+44AhkXZ8TOY+BQNSfcmsWKkl1byuPWyko1KS3GDS
         t7hNcm757CRdpo0qmDoQcW6wtnl+rQ+DtkEdknfcvIEjzFVK2XFGHlH+qWPtai5pwiwr
         3u6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QVz5jWDcU5r8Y5zSAYEpynnON9GmdwxqNKoxJSpPRgU=;
        b=NWGQSpsHQmktyRsUeZMuxCeuCOdgqKI2so+YrMWv9BVVzm/GjncsO9sxkfv6bIhBC+
         knFfUMXyK1d2Mmml9VkPsInGkDDzMYnGQdHxjZBFJffbNWjwQN5QwKyK6eXBO9bV7XjG
         +Bf4nfsPz2v8Upin3HsMao9nmZkCNrBH6JqKvMSvAs5FRNKo+xCaVnG+xv0g4VNDHDVh
         koao163Sj4FyAFLiwyXCrYbUSYbXZFHqzLOxrBpiSqBC/W4x2ZYsdIpKs/6Qx43izueE
         B6rhrWOi33LEjq4/tN2tNs/Fs2HVXUFEqAHoZun2FgZjgeA5cgdjPx8vXYWrDM2sJg81
         Fqmw==
X-Gm-Message-State: AFqh2kqdHqpF6OVYBioDcGN+/ucPYzeu80cMXLyhidW+Ajqk2SyrTtx3
        8VaHjHdrdRVr31tk62LIiu0bW6VvrJP9L+FYeH2ZFQ==
X-Google-Smtp-Source: AMrXdXvaNGoc1g/TdEQnqS7gmOb3ez9bRL6a4EmM5ogKSfb50z/OSGVmW0D4W52NCpPIXuq6uo/WAfBOsZwW7dQDSDY=
X-Received: by 2002:a81:7784:0:b0:461:49a3:db6a with SMTP id
 s126-20020a817784000000b0046149a3db6amr1420465ywc.185.1673271085378; Mon, 09
 Jan 2023 05:31:25 -0800 (PST)
MIME-Version: 1.0
References: <20221222161420.172824-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222161420.172824-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 9 Jan 2023 14:31:14 +0100
Message-ID: <CACRpkdbMS7MNPhzi2Ty69TZddEsai-2tASVGJLCiiVktL34V5Q@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: qcom,sm8450-lpass-lpi: add
 input-enable and bias-bus-hold
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Thu, Dec 22, 2022 at 5:14 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Allow bias-bus-hold and input-enable properties (already used in SM8450):
>
>   sm8450-qrd.dtb: pinctrl@3440000: dmic02-default-state: 'oneOf' conditional failed, one must be fixed:
>     'pins' is a required property
>     'function' is a required property
>     'clk-pins', 'data-pins' do not match any of the regexes: 'pinctrl-[0-9]+'
>     'input-enable' does not match any of the regexes: 'pinctrl-[0-9]+'
>
> Compact the properties which are just set to true for readability.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Looks good, is this something I should be applying directly or are
you collecting some big qualcomm pull requests like last time?

Yours,
Linus Walleij
