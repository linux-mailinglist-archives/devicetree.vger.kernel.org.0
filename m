Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40F4552F4A5
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 22:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353574AbiETUvL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 16:51:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353554AbiETUvC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 16:51:02 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE6ADF41
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:51:01 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id jx22so4224918ejb.12
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BCvNUzoNJgliggAjbNOVF+e73ln10qSAqagPa48fyAw=;
        b=hlkKiLZ74U8oZ5crxOdHHzyWx5PrDTiFFFh7Zv05xV8i3b0J8CW8fv4Woq7QPCoOVE
         7ADjNRKYYmxsp7KiN052EgelmGfHN+etwMZakEHNvP/mGUk7IbM1uDt4foMCxao8j/TZ
         8zn/OYgfIanRUj2Y+H+t/Ww6LCVKamBwBlssM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BCvNUzoNJgliggAjbNOVF+e73ln10qSAqagPa48fyAw=;
        b=ngcnMt+7SBTTT4LIJDM65z3arqB8u2jAoy+eYsXLUOcSLBDyPsVv5hyd2T/JPpF52B
         DNxPk4j67twhBkCke3tnodQ61L+Cllfvgzsx192q/t+VnAf7Y0G+4yCTUEeaQQEgBsbS
         /kXAng9AjyHNbtUsHLZQprSAnC7vr3tgtHn3fj0Fx3cujE48w4kyvfvLXoJMqlAkgzFJ
         Y5P+PiMn8SpEEZcaus5tQDT8/csKA8Hr4jb389uEnAqDW+c1FPN5fNnOg3LHbpdrODX+
         UoQbqMsC0ej7RpgOok9hhVx8+hUSb24rycpgZ4aLEQPhL1HZ7etf09VdBQdd71t+HzZH
         YIfg==
X-Gm-Message-State: AOAM5331ludONHRE2brvs9VEAFqFHr2Hj0rWIMWRQwEzv+IDJY0pgIbd
        qnSAW5N3zDaSptVw/banRW11Xd8x1I52Gf2aTJA=
X-Google-Smtp-Source: ABdhPJyj36dCJw05LjTHbww4jD7oKwdOSDF82Bq2NCyTTiJNDwnveBkPZR4CwSWAlbQiYZinALuWsg==
X-Received: by 2002:a17:907:3f9b:b0:6f4:4407:a421 with SMTP id hr27-20020a1709073f9b00b006f44407a421mr10315881ejc.557.1653079859512;
        Fri, 20 May 2022 13:50:59 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709062f8100b006feb71acbb4sm535574eji.145.2022.05.20.13.50.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 13:50:57 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id n6so5145556wms.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:50:54 -0700 (PDT)
X-Received: by 2002:a05:600c:3d8c:b0:394:6097:9994 with SMTP id
 bi12-20020a05600c3d8c00b0039460979994mr10079039wmb.29.1653079854130; Fri, 20
 May 2022 13:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220520161004.1141554-1-judyhsiao@chromium.org> <20220520161004.1141554-4-judyhsiao@chromium.org>
In-Reply-To: <20220520161004.1141554-4-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 13:50:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vpds9p7LLfxiwhNdDTdxb=CffcMjgxRva5EHc9VJ4LDg@mail.gmail.com>
Message-ID: <CAD=FV=Vpds9p7LLfxiwhNdDTdxb=CffcMjgxRva5EHc9VJ4LDg@mail.gmail.com>
Subject: Re: [v2 3/3] arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi
 in villager and herobrine-r1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 20, 2022 at 9:10 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1 as
> these boards use rt5682 codec.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts  | 1 +
>  2 files changed, 2 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
