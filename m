Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A629B5316DB
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 22:52:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbiEWUMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 16:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232626AbiEWUMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 16:12:49 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BDA9D060
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:47 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id eg11so20503511edb.11
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EuG3WOfwg7N2zjjXVVXzvW7nWRrDlxN2WcRKWNRMyhE=;
        b=mrGGDzsrU2CViHCIngHNzFab2RkysD3zDLUmKSfKQIzBeth56u1JarRpzXUsIZ1DOz
         Coj5tjyBwiv2O6tafwNcLVfuOGqDQIckY2GMGrPm14EiCEUafsgJSMmUl0k7svyTjzJY
         EIIpExGLw6hyzIL+hIhVjAFHh0egExaERVA08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EuG3WOfwg7N2zjjXVVXzvW7nWRrDlxN2WcRKWNRMyhE=;
        b=UPoKM3GuF0y/RTwR3cnANSIp6McQcq+GV99K6EAipvdIxlEcdp06S0UfXJ5vTXPZ7P
         +XZuu8cYrp2bosxDXDvsM+MVPaJoTg7/cm/uW+YygEj1iHCc93DZ3QtECmW4Idb9j/aw
         NxUjuQMSpYp/c8tGX/FSyovNiKLtnR2KR1xr5yn2D7FMd44Uu46UTb9t9RJ1wnkLx+Ig
         sICWoFwXksgPWEamlvIZZvSGwVOZzkRsjzjFr+OFRMq6hVBsyZLA49PRIv4rk6haIYeJ
         FeTDxQXOWzMMtlSliK83iV0znifxMqMfb3o5IArufUsZOA3krdgPHHLk+D752vaeEE2Z
         h8BQ==
X-Gm-Message-State: AOAM530eaXnKMTG/IDvhbEZkNyZjzQa3OeRWSlc5qKuW12pH4CTKuF0W
        M+Ri07Rm1ezPxKMbT7vvb2BqG7eA8HkHkEy39eg=
X-Google-Smtp-Source: ABdhPJyrMbJ8x2cbNRpG3AUg/YTT/McOl2Z8AzpKtfBiDnpqEnmvCQcH31NaYG/3dU7EvYUHZe1/bA==
X-Received: by 2002:aa7:c14a:0:b0:42a:9ddd:2019 with SMTP id r10-20020aa7c14a000000b0042a9ddd2019mr25429319edp.43.1653336766286;
        Mon, 23 May 2022 13:12:46 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id h22-20020aa7cdd6000000b0042abb914d6asm8413400edw.69.2022.05.23.13.12.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 13:12:44 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id p10so4266584wrg.12
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:43 -0700 (PDT)
X-Received: by 2002:a05:6000:1548:b0:20f:c4e3:637a with SMTP id
 8-20020a056000154800b0020fc4e3637amr11198208wry.513.1653336763435; Mon, 23
 May 2022 13:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220523123157.v2.1.I47ec78581907f7ef024f10bc085f970abf01ec11@changeid>
 <20220523123157.v2.2.I3d1b5a109675a0cc90e66a4e0b45cb823edbdee7@changeid>
In-Reply-To: <20220523123157.v2.2.I3d1b5a109675a0cc90e66a4e0b45cb823edbdee7@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 23 May 2022 13:12:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U7qRbLc915tzhcYVmBd=r=YdwX6VQZebW9Ujy=FX24NA@mail.gmail.com>
Message-ID: <CAD=FV=U7qRbLc915tzhcYVmBd=r=YdwX6VQZebW9Ujy=FX24NA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Enable keyboard
 backlight for villager
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 23, 2022 at 12:34 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Villager has a backlit keyboard, enable support for the backlight.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
