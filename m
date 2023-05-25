Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABA32710E48
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 16:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241505AbjEYO0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 10:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241078AbjEYO0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 10:26:00 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74A5F189
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 07:25:59 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-77487fc1f16so188195639f.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 07:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685024758; x=1687616758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EIaS1CiG05qxEN3YCh4DxBPvMLd9g2DK0yZG+wFH+TY=;
        b=a4NokHhg9Bu44lIpBjF2CGfyCa3pgvGppbekAn0VvUBlzF3HVxulNaACPjqy2LmjKZ
         o7d7Rpqvj5KtbkO/Kb4k6EBUVJNjh4r5EInJASluv2YG8Y47cd5BBL7UXlYQNeGmntxJ
         Wj1iRKlRblCDY0RdMlwq1cWrb67i/DPS1i5hE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685024758; x=1687616758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIaS1CiG05qxEN3YCh4DxBPvMLd9g2DK0yZG+wFH+TY=;
        b=a4oTqRv76W14R/4fQuSV3ja8Aj681r27duh3Vd+CxuIuvMXKK0ATkjLryKvyvAYf2q
         67PjNhpnoQEqd7mzwotcx2bo6nV8rO5uZSzrfBDbez0havyGSDHdK8zjCE7SWKryaICW
         MDJ5Re9gj2lL3RL05ct4/Dx3ntCjuFV69ERzNd7hP96ngO08UJaO5Uo5EaHcwpbvDUw+
         zI4VMuFIFG4hd82BtYkPFJk/llJEEUIPMwfz5uNyZ9T4BjtG/hHiGL1zQfE5umKKHSr1
         TuunrxI+FbIbBCM24Z6yV70rqAzBih+/HiWOc5wtnkKwngCKLnNxLu3DEMnW8hQkHQbK
         dSGQ==
X-Gm-Message-State: AC+VfDx8CkgotlL/tofBK0ymsJKjHqmdOqq5N75O+GdVZLbe+idqzInM
        KSgs12dSU2CaVuY6+GKmU1wYoMocPuqG96jALDQ=
X-Google-Smtp-Source: ACHHUZ7zgS9ogFBi5QGoRn2zW/lu7zn4TzxK9j/uA61GJsmKqC9+hslTgv06oq1zHuWXubk2Ajz3sg==
X-Received: by 2002:a92:d301:0:b0:331:3df1:6cc3 with SMTP id x1-20020a92d301000000b003313df16cc3mr14344481ila.0.1685024758329;
        Thu, 25 May 2023 07:25:58 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id h1-20020a92c081000000b0033842c3f6b4sm340615ile.83.2023.05.25.07.25.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 07:25:57 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-338458a9304so144645ab.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 07:25:57 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d12:b0:331:aabc:c8b7 with SMTP id
 i18-20020a056e021d1200b00331aabcc8b7mr224459ila.10.1685024756622; Thu, 25 May
 2023 07:25:56 -0700 (PDT)
MIME-Version: 1.0
References: <1682328761-17517-1-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1682328761-17517-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 May 2023 07:25:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WdTS6UA9oSahdn8k2hKRLZo974A4b8nrDYSiTggKAv+g@mail.gmail.com>
Message-ID: <CAD=FV=WdTS6UA9oSahdn8k2hKRLZo974A4b8nrDYSiTggKAv+g@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] spi: Add DMA mode support to spi-qcom-qspi
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
        andersson@kernel.org
Cc:     agross@kernel.org, konrad.dybcio@linaro.org, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Mon, Apr 24, 2023 at 2:32=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> There are large number of QSPI irqs that fire during boot/init and later
> on every suspend/resume.
> This could be made faster by doing DMA instead of PIO.
> Below is comparison for number of interrupts raised in 2 scenarios...
> Boot up and stabilise
> Suspend/Resume
>
> Sequence   PIO    DMA
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Boot-up    69088  19284
> S/R        5066   3430
>
> Speed test results...
> spi-nor read times in sec after 2 min uptime
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> PIO - Iterations-1000, min=3D3.18, max=3D3.74, avg=3D3.53
> DMA - Iterations-1000, min=3D1.21, max=3D2.28, avg=3D1.79
>
> spi-nor write times in sec after 2 min uptime
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> PIO - Iterations-1000, min=3D3.20, max=3D8.24, avg=3D3.58
> DMA - Iterations-1000, min=3D1.25, max=3D5.13, avg=3D1.82
>
> Further testing performed...
> a) multiple entries in sgt (simulated by max_dma_len =3D 1024)
> b) fallback to pio (simulated by dma setup failure)
>
> Vijaya Krishna Nivarthi (5):
>   spi: dt-bindings: qcom,spi-qcom-qspi: Add iommus
>   arm64: dts: qcom: sc7180: Add stream-id of qspi to iommus
>   arm64: dts: qcom: sc7280: Add stream-id of qspi to iommus
>   arm64: dts: qcom: sdm845: Add stream-id of qspi to iommus
>   spi: spi-qcom-qspi: Add DMA mode support

Mark has landed the bindings / code changes:

b5762d95607e spi: spi-qcom-qspi: Add DMA mode support
64c05eb3a0f4 spi: dt-bindings: qcom,spi-qcom-qspi: Add iommus

...so I think the dts changes here are ready for you to land. There
are no hard dependencies here so you can land the dts without needing
the code changes.

Thanks!

-Doug
