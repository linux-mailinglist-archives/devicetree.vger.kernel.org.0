Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 854AD64D17D
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 21:51:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiLNUvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 15:51:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiLNUvC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 15:51:02 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E0913CF2
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:51:01 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id bj12so47443350ejb.13
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ffmonq0jONZ5zQpJsMWvuzEqJVc48PVYRBBpDxiBFE8=;
        b=J21O/4LrOSaQND9lM5pYxQbxMkBGx3wIYOJIVakgCN5iuimwusKpAJN/yjlAbwqUEj
         fmSGijwMCZ3ljnt8COaOXgfF/rh+yUFaroA6YrJVCh52+CML2gdfyZBYYWUeE7xV7pCm
         m9+pDchgrLfn+A++E9tMcJG4SzRMLQA7lNQG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ffmonq0jONZ5zQpJsMWvuzEqJVc48PVYRBBpDxiBFE8=;
        b=SDIvyU4ZeAZYIquhZO9fQ0Yhya/lMUVQUVYEdHnHH8EUI9Z2r8fdi4osWkM6LB9Udy
         WeFwAg1nIo+7NN+rXOxJyRZJv0c8n4zaEhz+hQcoAitu7onpRdQacND35TgV/nwZJX+i
         JedzrKDfC2ufIKvOWyiRn+cYBJEALlmAiAYD3+3SoGQJOggJYxKw8b0bOsaDAZtRtDJN
         XmLPAaBmW37oLMiFJ9Hh0dfzqcymHtLZZvquTfOqwFojPApRj6tcChDxXP6lLsvyD6+k
         0mQHZPguI8tDiw37YtC7YSCDXX5ag6BCdyg3w2nyx/zLQYbxMtSy8qIe6FQrp3so1mlc
         b+Hw==
X-Gm-Message-State: ANoB5pkbAHvwWtk2AnTJGIT1Nl5tEx0rONL58crOVojcJMQfLPHOnXKE
        eR9PqMv2dQSISFCjthhplKWBwgdkO45L9Kc3Vmk=
X-Google-Smtp-Source: AA0mqf7+KWC8BWHKS0ZWSlKd1Dull+cB1YJ/S5KEwq47SDgRWASum68gLTWArdIArUZKpZd3pw+ySQ==
X-Received: by 2002:a17:906:46c3:b0:78d:f455:30f8 with SMTP id k3-20020a17090646c300b0078df45530f8mr21474994ejs.32.1671051059842;
        Wed, 14 Dec 2022 12:50:59 -0800 (PST)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id p4-20020aa7d304000000b00461cdda400esm6776128edq.4.2022.12.14.12.50.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 12:50:59 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id u12so1032844wrr.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:50:59 -0800 (PST)
X-Received: by 2002:a5d:4943:0:b0:242:3ca3:b7bd with SMTP id
 r3-20020a5d4943000000b002423ca3b7bdmr18737336wrs.583.1671050745735; Wed, 14
 Dec 2022 12:45:45 -0800 (PST)
MIME-Version: 1.0
References: <20221214114706.1.Ie4ca64ad56748de5aacd36237d42c80dd003c1a9@changeid>
 <20221214114706.2.I1a0c709f8ec86cc5b38f0fe9f9b26694b1eb69d6@changeid>
In-Reply-To: <20221214114706.2.I1a0c709f8ec86cc5b38f0fe9f9b26694b1eb69d6@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 14 Dec 2022 12:45:34 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X1XMi6rMN7FVf7iWkYbs8rvYF09ebbaA9gb+SkMWHPRg@mail.gmail.com>
Message-ID: <CAD=FV=X1XMi6rMN7FVf7iWkYbs8rvYF09ebbaA9gb+SkMWHPRg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add DT for
 sc7280-herobrine-zombie with NVMe
To:     Owen Yang <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Abner Yen <abner.yen@ecs.com.tw>,
        Bob Moragues <moragues@google.com>,
        Gavin Lee <gavin.lee@ecs.com.tw>, Harvey <hunge@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Dec 13, 2022 at 7:48 PM Owen Yang <ecs.taipeikernel@gmail.com> wrote:
>
> Add DT for sc7280-herobrine-zombie with NVMe
>
> Signed-off-by: Owen Yang <ecs.taipeikernel@gmail.com>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile               |  2 ++
>  .../dts/qcom/sc7280-herobrine-nvme-sku.dtsi     | 14 ++++++++++++++
>  .../qcom/sc7280-herobrine-zombie-nvme-lte.dts   | 17 +++++++++++++++++
>  .../dts/qcom/sc7280-herobrine-zombie-nvme.dts   | 17 +++++++++++++++++
>  .../boot/dts/qcom/sc7280-herobrine-zombie.dtsi  | 10 ----------
>  5 files changed, 50 insertions(+), 10 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-nvme-sku.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme.dts

It's like sunshine on a cloudy day!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
