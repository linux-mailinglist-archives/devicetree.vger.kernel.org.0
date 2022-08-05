Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F401358AC8D
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 16:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240968AbiHEO4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 10:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232185AbiHEO4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 10:56:00 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBAA221E1C
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 07:55:57 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id y127so4152535yby.8
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 07:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e2ieeXn1XYzQEoAXERAtoiuhedMKxc84xGYpfjmziLo=;
        b=qTsw1eyE64qeAATFcbipfMIn7kY5QX2XulxCrOIU/qTOWxD47vwam7q1mTXJVm86d5
         2TbTud/YX7DLm+9sZMbUnnnGcJXFV1E/yHKCqvL2duhDqnWv4ADVuGpcrPgy2o09/be3
         nwfhocNqiF1S8Pqak4maOt59343+m3BLj4nByhmLZ33FvMPjYHv5lUCkOklPPsJRN0d4
         eDOCxOqn6ZtHmXYMEZjv6R8ogrujeNhT0UleJWvwfeynm1fivenwwyTWDOlp2MLMWn7t
         A+WLggNonuMAaPmKKC71zXnpvLC2NnExygeK04xWS/XKXNMxaEnUPsII7Aj/VfykIS0t
         e8CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e2ieeXn1XYzQEoAXERAtoiuhedMKxc84xGYpfjmziLo=;
        b=YLjBiW8UqLxFOfLfeRBfkIY3poTUAWr6wpxFiaU2WMx+NZXF8phpm0aLeF4YQI0uew
         TYDFiMOMfPwRM9hpdRZg5RHD0gzJRoagxJKar6U0k07gfoWfqTMczpPZfTlyj3eR9/PN
         JlG7kFKBFnkatO8ApMbQO8c/vo+RwCZsZBYJq+gMJE9lqGLvnsk5lu+//zIssPoW8fdu
         0Z8ZOnoGFZnjGfex6RtPz+AnYs5ViZ/TsW9uQpGYlIrBfI9ZmXMl5EwWZZ5o+GeZ2J1L
         Jhkfqr5d8qwPDdYgs9cjUZpA/4bZzbqLIa72eo9hF7yRdU7lKI/bfgAzJy8/llsuKyvb
         QJJA==
X-Gm-Message-State: ACgBeo1JPplUCvfwiZuJNJyV3eTd1eMeX8BfGfhpvsIUJZIQvAVXZz/N
        oDulL91PBD3wFQ9AGLFI0FjQ8aH00LqX7iurOV/PIw==
X-Google-Smtp-Source: AA6agR5xvmSSt0uCcPBxYAIibyKWHGuE9VCu0a2Vm34w2xdcAJLM0zp+g7TXIUlYeFQU4IhbgvyvdVh6xhV4KCbq4nI=
X-Received: by 2002:a25:268d:0:b0:671:7030:f9d7 with SMTP id
 m135-20020a25268d000000b006717030f9d7mr5627753ybm.513.1659711357090; Fri, 05
 Aug 2022 07:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220804130912.676043-1-bchihi@baylibre.com> <20220804130912.676043-6-bchihi@baylibre.com>
 <0991e867-10bd-56e8-c8c1-b5d0cdefbb52@linaro.org>
In-Reply-To: <0991e867-10bd-56e8-c8c1-b5d0cdefbb52@linaro.org>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Fri, 5 Aug 2022 16:55:20 +0200
Message-ID: <CAGuA+or9uZjN3wiRtO_3TsOh+U=ekiZWOo1se0VsKTZXgd3kHA@mail.gmail.com>
Subject: Re: [PATCH v8.1, 5/7] arm64: dts: mt8195: Add efuse node to mt8195
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     rafael@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
        amitk@kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, khilman@baylibre.com,
        mka@chromium.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, p.zabel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, james.lo@mediatek.com,
        fan.chen@mediatek.com, louis.yu@mediatek.com,
        rex-bc.chen@mediatek.com, abailon@baylibre.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 4, 2022 at 5:22 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 04/08/2022 15:09, bchihi@baylibre.com wrote:
> > From: Alexandre Bailon <abailon@baylibre.com>
> >
> > This adds the efuse node. This will be required by the thermal driver
> > to get the calibration data.
> >
> > Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> > Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> > index 73a0e2103b83..cbd0401968a2 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> > @@ -1,6 +1,6 @@
> >  // SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >  /*
> > - * Copyright (c) 2021 MediaTek Inc.
> > + * Copyright (c) 2022 MediaTek Inc.
>
> Why changing first copyright release date? This was not explained in
> commit msg.
>
>
>
> Best regards,
> Krzysztof
Hello Krzysztof,

I will drop this change from this commit. There is no reason for that.
Thank you for the review.

Best regards,
Balsam
