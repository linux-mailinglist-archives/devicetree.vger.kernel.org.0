Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC625F3818
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 23:49:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiJCVtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 17:49:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbiJCVse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 17:48:34 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DB862AE14
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 14:47:16 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id sd10so25027465ejc.2
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 14:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=zAYgLaSnCGfa8SU+NH6gwotTtGoSsucybfqj2dUgdAM=;
        b=YlWmmsM7lTJJGalVIwZ9dwi8cj/06pB914EX3vdbkQ3SAmGQFMmvAyIvLc21049fjQ
         Fq4dKUjUbDjZniZlY+L9WcljP/jjGnSu+cSYmxose2/WpSOLsoawP4Xcl7VZ6ORwWEoF
         C3Bm+q2lDDpi+O+luWwuJNztaWEEKEUIqvOTlR2FGWc+GjaEqy8Tf+PD1fH2Bksm1u1N
         kNOMMRVretuRpg00tiGhLEiW9PJpMer6GqP1jMFj7UytD2kTeRekHkkcIZziOMcQqgpK
         /cL+BT1r1aDm9dKSjGNFD7mE3FO/0nSJLXHCOmup6GEsWJoWrrZ6zmx0lM1ACD0HX4uP
         iPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=zAYgLaSnCGfa8SU+NH6gwotTtGoSsucybfqj2dUgdAM=;
        b=BB0M5meYw2yy0OgVZ6XG9k7xZ57jfwlfj358BqABKEu3r8ZjBxZIjxSGw5q4PzJTO7
         qJ6LwhiGC0UGnGSRRySJlraVaz1obNrUpDNOKAcIVddR6PD47ewG4WArkh431wBrB/3p
         mAIiBybvk54EkLDV4Z6AJo49B5c42dKyKsG+mfY4ygdte3HevRptUi24EgqwNSWCAXfm
         1Wx7D7zqK1+/YBpNjLwH7m7M4wmF0w+kWUkLY14/k0Tb1tEWhaEmj4Eyj4bBUtNA3yoW
         4e1tIIZ3e7mCShj1cRhJOMFoVU2lGLg1gFxSZR3TbxG36mKDkMYlAcmkZAvVVlNMDRYE
         ZUeg==
X-Gm-Message-State: ACrzQf3oL2uzvjQlEwhcHqzVY9uKgpcuC9MJD8W7928dVePmz7v79z2E
        4BvAiOSn1DsQ4YsMHwH2u046pPCvqLKTSCUDPSuKFw==
X-Google-Smtp-Source: AMsMyM6hJR0vYBEC7jTZoz6vd6S+i+o5RvWHLL1I4lSo6pa/Vl3uXej9EsG3CXyFZAW/4PjitKY0liOJGmvl0h0VKM0=
X-Received: by 2002:a17:906:8a46:b0:781:71fc:d23f with SMTP id
 gx6-20020a1709068a4600b0078171fcd23fmr16909585ejc.500.1664833634721; Mon, 03
 Oct 2022 14:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220927191736.299702-1-marex@denx.de> <20220927191736.299702-3-marex@denx.de>
In-Reply-To: <20220927191736.299702-3-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 3 Oct 2022 23:47:03 +0200
Message-ID: <CACRpkdZwaHJUd4DEOiKXQ96x3UJfQSCz0oxr5d0QpBCnvEydYA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: stm32: Drop MMCI interrupt-names
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Yann Gautier <yann.gautier@foss.st.com>,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
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

On Tue, Sep 27, 2022 at 9:17 PM Marek Vasut <marex@denx.de> wrote:

> The pl18x MMCI driver does not use the interrupt-names property,
> the binding document has been updated to recommend this property
> be unused, remove it.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
