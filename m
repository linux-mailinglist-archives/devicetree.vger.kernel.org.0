Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 107266A3E14
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 10:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbjB0JR3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 04:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbjB0JRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 04:17:12 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AF3D1E1F0
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 01:11:52 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id p20so4787576plw.13
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 01:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WAPbpGQmkYePcLGSveUOcE3E3YzvmMSxBjOApNMSSAI=;
        b=aMKRdQuk5Hc0KFTyTW/VUmwz17bhX/wl1Gt4ZBYvtOFKrh1ZBMtgomOwb7xAonImK4
         50JibakLFucZ6bYK/COJ8qcsS9/fd1ZjDq0pBOVG6IWjxFF5q0CDsc8nmz5itBcY2nBp
         nTtnDT396lqVTPgr8akqb56F6yHGo1vOhJB1ozZ1oHsT9fLfWjmOyjR1IQuRJveZa5Fx
         5iFt3A0HJe4l4jj/5+Na0+Mf4OD6NQ8QalNUol+L831SosGPtH2fbULRv1Dq8HpoWuHT
         99nuLA60TEDUgDYcVmDyRBpU9oMDb0K701Ms0dYCZ9qdrq+3t7R8x4NenmzPiBNvmJnj
         kTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WAPbpGQmkYePcLGSveUOcE3E3YzvmMSxBjOApNMSSAI=;
        b=QJgdxlqFdrM2XA5vrMteQx3H0Rkc/iA2xf8TbC0UIv8/fRA6wxZMoc2ybg7Vp8t9MN
         ueKpQx5535TV4clKkKRHt4hQwSYhONApMPdTtHaVvUAErssAxFISfOsI9BLvg8rUy7Cf
         bi7fiYikzKXKy/cnhhe7pNBi7DA+3f5INX8ipNIqIyo49/1uZh70MlnnsuF1GZT9cIb5
         i5p+NAG0wiDU3V3iZ5nzaKhcVIxsp8/AapaAiP6zEKWpRskpPkgqVTWZLGuPUjdcHgZn
         f6zUeQS9Gve2cNk3YrDWKeVgWaT6CcubwnPbmkmXktDxbnCaulxpNK/uDtQ59axix0Lo
         qExQ==
X-Gm-Message-State: AO0yUKVkqEWrgK7ZixY03Iv0eQgTZ7Au4C7zPRT2s/Ju7OnSCrVfLiET
        6QPrW1ZREF2jdV3S4O/HYIRDl3hVjzxMXZSuUegpZQ==
X-Google-Smtp-Source: AK7set9ZHtR3O7FIl0OXufx3VOUJRsLg+eycr1BJ3ljSwdZpvC7vJcxPi4oQRsjtShW/BkBuG7V3lYRmrSWHthvDU4c=
X-Received: by 2002:a17:90a:c7d6:b0:233:d64d:4c29 with SMTP id
 gf22-20020a17090ac7d600b00233d64d4c29mr4481202pjb.4.1677489111634; Mon, 27
 Feb 2023 01:11:51 -0800 (PST)
MIME-Version: 1.0
References: <20230106164618.1845281-1-vincent.guittot@linaro.org>
 <20230106182849.kr47mdgokd4qa6zw@builder.lan> <CAKfTPtBJHWfhXCGojZSvS_DM4+bJnQ9j1GwtE5_YYJFHq9cpRA@mail.gmail.com>
 <20230118232640.qfyuy5n4x33yttup@builder.lan>
In-Reply-To: <20230118232640.qfyuy5n4x33yttup@builder.lan>
From:   Vincent Guittot <vincent.guittot@linaro.org>
Date:   Mon, 27 Feb 2023 10:11:40 +0100
Message-ID: <CAKfTPtDsbtrY1HAmBk+Od4-CbckkmxPgjsEQ_e95+CDh3XmCuw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: correct dynamic power coefficients
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     dmitry.baryshkov@linaro.org, agross@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, danny@kdrag0n.dev
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

Hi Bjorn,

On Thu, 19 Jan 2023 at 00:26, Bjorn Andersson <andersson@kernel.org> wrote:
>
[...]

> > > > According to [1], LITTLE consumes 10% less than big core for Coremark
> > > > benchmark at those OPPs. If we consider that everything else stays
> > > > unchanged, the dynamic-power-coefficient of LITTLE core should be
> > > > only 53% of the current value: 290 * 53% = 154
> > > >
> > > > Set the dynamic-power-coefficient of CPU0-3 to 154 to fix the energy model.
> > > >
> > >
> > > This is sounds reasonable.
> > >
>
> Dmitry, what do you think about this?

What is the status for this patch ?
The problem is still present AFAICT

Regards,
Vincent
>

[...]

> > > >
>
>
