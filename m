Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84536E4AEC
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231218AbjDQOIo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:08:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbjDQOIj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:08:39 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED64259E6
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:07:46 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50672fbf83eso14668303a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681740463; x=1684332463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=moL+4Bl3gFWXEYHuDwZ5rfkHMK20tDKYmlXyWn8rpAc=;
        b=Ics5VX83V1xPVOcQxcrYIPepyAqx+6CFPB8CXy/22KS7GVWXU9WEv9v8bJl0AZuoyk
         1D7ITzSEB8eGHvKOVMNv/jraEfnidBBI9gBljPYWgrw5m6KkgxGqRJTeIw+gaZ2D5sh4
         fQ/PW8WUlfgim4jWFbNFeEAAx+iTzUIOCnehs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681740463; x=1684332463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=moL+4Bl3gFWXEYHuDwZ5rfkHMK20tDKYmlXyWn8rpAc=;
        b=a2jqbGlMChtZlQRtWAzT+KUUbt6NxWkroOfi6sfwEuMzeBJ0uKQLmNK1mDoEPbj/qa
         WTXA2ygxgYAmCTn4xMPT6UAZJMPM3BbQZHfwPUn3wmysDkFAayA8Uqzy5Po3CQOO3TsE
         knCbIdEeHYausaQ1KZDdZMJU++K4Z7z508Nv7XPfL5SBiw12kef1e8ZU36pxbXt6MDLu
         qXWF0194phstzE/kTIQ7++46AVwjSgYX5UgBIZYEnXS+45ib8Tfjy+VF2zVCvYcjjIdc
         YtaDHwbCtoRJhK5rNdi08QbnIq1qF30+m6wxCQ326t/otMST3o7YfuQPW+O1CFKtepyj
         4mWw==
X-Gm-Message-State: AAQBX9dAq1P2H5X7MNaWBX7nNizHguFTLbs/B0/5MPMN5oM67l+u4lmA
        k2x1Xwvyvz13aZsSAU3sdAEl73BjD4+dzcYJ2MOf2Q==
X-Google-Smtp-Source: AKy350bEtPg6/ISJOxKpa19qefEQLzW7jcf7y27dqI7Ggf3fFgYOmRoT9uQxblD8RdaEGKS1WXPXFQ==
X-Received: by 2002:a05:6402:1396:b0:502:2953:c0b2 with SMTP id b22-20020a056402139600b005022953c0b2mr13123653edv.12.1681740463228;
        Mon, 17 Apr 2023 07:07:43 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id a9-20020a50c309000000b00506adf55ae2sm1059499edb.6.2023.04.17.07.07.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 07:07:42 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so1265480wmr.2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:07:41 -0700 (PDT)
X-Received: by 2002:a7b:c40f:0:b0:3f1:6757:6239 with SMTP id
 k15-20020a7bc40f000000b003f167576239mr1471017wmi.6.1681740460987; Mon, 17 Apr
 2023 07:07:40 -0700 (PDT)
MIME-Version: 1.0
References: <1681481153-24036-1-git-send-email-quic_vnivarth@quicinc.com>
 <1681481153-24036-4-git-send-email-quic_vnivarth@quicinc.com>
 <CAD=FV=VKY-0vX271G+EQQ5kC3gTqpPPyTGE0xHWPBncVUhZufQ@mail.gmail.com> <30a752c9-3ea0-43d3-959a-da2e8b526cb4@sirena.org.uk>
In-Reply-To: <30a752c9-3ea0-43d3-959a-da2e8b526cb4@sirena.org.uk>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 17 Apr 2023 07:07:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VCbcUnf42tK-HV8j=71BXXytxku_0rGjKyhyR3WG4SUw@mail.gmail.com>
Message-ID: <CAD=FV=VCbcUnf42tK-HV8j=71BXXytxku_0rGjKyhyR3WG4SUw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] spi: spi-qcom-qspi: Add DMA mode support
To:     Mark Brown <broonie@kernel.org>
Cc:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 17, 2023 at 5:12=E2=80=AFAM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Fri, Apr 14, 2023 at 03:05:58PM -0700, Doug Anderson wrote:
>
> > Having alignment requirements like this doesn't seem like it should be
> > that unusual, though, and that's why it feels like the logic belongs
> > in the SPI core. In fact, it seems like this is _supposed_ to be
> > handled in the SPI core, but it isn't? In "spi.h" I see
> > "dma_alignment" that claims to be exactly what you need. As far as I
> > can tell, though, the core doesn't use this? ...so I'm kinda confused.
> > As far as I can tell this doesn't do anything and thus anyone setting
> > it today is broken?
>
> SPI consumers should only be providing dmaable buffers.

Ah, I think I see.

1. In "struct spi_transfer" the @tx_buf and @rx_buf are documented to
have "dma-safe memory".

2. On ARM64 anyway, I see "ARCH_DMA_MINALIGN" is 128.

So there is no reason to do any special rules to force alignment to
32-bytes because that's already guaranteed. Presumably that means you
can drop a whole pile of code and things will still work fine.

-Doug
