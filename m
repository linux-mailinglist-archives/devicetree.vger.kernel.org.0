Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AEDB6DB120
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 19:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjDGRGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 13:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229825AbjDGRGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 13:06:53 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07AD0AD1A
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 10:06:49 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id h198so5832309ybg.12
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 10:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680887208; x=1683479208;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PknBLQO8vOON8ZMbgv3ZPHDYv/9jVJsUcCHNnbarICw=;
        b=akwpY+y6NjqGESRoxUBVCpE+APOQkXLNH1oGb6TvdKtko9zw9WGRq3o9MXcVZH1FlZ
         gGLhPqwbullrwQyWUojfpwH7NX5ccMvTJ+rfJbuHE9yrSX5e62lHomhcAtGLq3J5SlO2
         Brrsnc92doNczCqb0oGWfKp1Idf8iRJQ0PsZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680887208; x=1683479208;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PknBLQO8vOON8ZMbgv3ZPHDYv/9jVJsUcCHNnbarICw=;
        b=lmERCDeJZk55HmBWwMHmxAjuaaozWecsYEZHlY0L7kymaP+X1a1ALXK4/I9hxDeoDs
         qqoWSkZWtnorVmWq35bv4ndSSX2wJKJNsInCqefIu6LB2JRUoxuQyv0NXGs5QAq4rW5K
         O5TkQFC2R0idyfoyf18+QglePo0BrGk+4Q9B2WxM4U/b+VNefgSPPmAJatlyEelp9K2w
         w7b3jk0h2L6/dgIba/85RQsZm1V5EBZ76OGgrp6OWnXVT6+hiyQEYge7aDNkn5+wdO53
         fdDdKQuav9WVfCj9444cVS5tQ29bXZY/4tBs8UXvagzUeLZDkcZywFZOIgIE1ChypBGW
         hgLA==
X-Gm-Message-State: AAQBX9dTr2seOqMGAm/2GiVi/3wuk0xU/CKSnjOco+4iXKgZEZFo0aQH
        xHx/ude1jqFUcPfEC99fv86U8BTVcemtXOD6LlE=
X-Google-Smtp-Source: AKy350bJxlqpGEqB+MeIIWohvjz6OPTE57LgAEmr9Bq1MklPa/Qw52Op1k05Th/MeciGcpXAKknLaQ==
X-Received: by 2002:a05:6902:18cf:b0:b87:d47e:9bcb with SMTP id ck15-20020a05690218cf00b00b87d47e9bcbmr4227929ybb.42.1680887208023;
        Fri, 07 Apr 2023 10:06:48 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id p187-20020a2574c4000000b00b8c01fec4a4sm920025ybc.49.2023.04.07.10.06.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 10:06:45 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id p203so49547214ybb.13
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 10:06:45 -0700 (PDT)
X-Received: by 2002:a25:7416:0:b0:a67:c976:c910 with SMTP id
 p22-20020a257416000000b00a67c976c910mr1789187ybc.7.1680887204825; Fri, 07 Apr
 2023 10:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230407151423.59993-1-nikita@trvn.ru> <20230407151423.59993-5-nikita@trvn.ru>
 <CAD=FV=UCJoz1E4wErJawQjpBRiXw0C0-J4TTWO1+uRiDsdzSUg@mail.gmail.com> <499bbd8cb7783b86108f3e6d9cc07a8a@trvn.ru>
In-Reply-To: <499bbd8cb7783b86108f3e6d9cc07a8a@trvn.ru>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 7 Apr 2023 10:06:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VR7sKsquE25eF7joc7gPApu-vqwduZzjE=wFCoXjMYnQ@mail.gmail.com>
Message-ID: <CAD=FV=VR7sKsquE25eF7joc7gPApu-vqwduZzjE=wFCoXjMYnQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add Acer Aspire 1
To:     Nikita Travkin <nikita@trvn.ru>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        quic_srivasam@quicinc.com, judyhsiao@chromium.org,
        mka@chromium.org, cros-qcom-dts-watchers@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 7, 2023 at 9:46=E2=80=AFAM Nikita Travkin <nikita@trvn.ru> wrot=
e:
>
> > HPD might very well be hooked up on your board, but the current Linux
> > ti-sn65dsi86 driver does not look at its own HPD line because it's
> > actually slower than just pretending that HPD isn't there. On trogdor
> > boards we ended up routing HPD to a GPIO.
> >
>
> Oh, this makes so much sense then! The line is hooked up on
> the board indeed and I remember being confused why trogdor boards
> don't use it.
>
> I will try to add the suggestions (annotating the reason)
> and verify that it works, would prefer the panel power to be
> gated when possible. I hope this would also fix the initial
> EDID reading issues I occasionally have and carry a hack for
> as of now...
>
> Thank you a lot for this insight!
>
> Nikita
>
> > I guess your other option would be to implement HPD support in
> > ti-sn65dsi86. That would probably be an overall slower boot for you,
> > but is technically more correct. In the past people have posted up
> > patches to get ti-sn65dsi86 working as a full DP port and they added
> > HPD support for that, but none of those patch series ever go to the
> > point of landing...

Yeah, see the big comment in ti_sn65dsi86_enable_comms().

Actually, looking at how the code has evolved in the meantime, you
could probably get away with:

1. Making sure you have an "hpd-absent-delay-ms" in the device tree
for the panel.

2. Implement "wait_hpd_asserted" in ti-sn65dsi86 to simply be a msleep
with the passed in delay.

Then I think you don't need "no-hpd" anywhere which keeps the device
tree pretty.


-Doug
