Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 002816E28AC
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 18:48:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbjDNQsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 12:48:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbjDNQsE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 12:48:04 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5799B9ED5
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 09:47:54 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7606d460da7so17934539f.1
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681490873; x=1684082873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klmJSKu8yF5i4DA+2b2ZNZNl1VQBRXbMDryaSg05ypA=;
        b=BwXsTOcG/38EtEOXkVI7OxFUI6+J/AVofLVz2m5KV4LCzlnao3ZIyxLnVKZ+BnwgMW
         K7WM3+5o+DEb4KDuTlVm/97l8aa0pFCT/aB04MbCZSuI7oIpGFia3tCoscvOvstF9D2z
         9uCb3aUGNW5bhYyQbI+B7sZjh2MFZNmkIlKGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681490873; x=1684082873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=klmJSKu8yF5i4DA+2b2ZNZNl1VQBRXbMDryaSg05ypA=;
        b=NAbCbz4VCLsWMV8PlLB98EXDJqE1ZwO8q9jmeUsiBLaLE0uZ2GhzdlORDvguwJQYXV
         W3btFph+q0XH2D3VZjJLiXODUaVoh61KZglEUPFRtSrkJX9/gtn94Vyeh5OHn+dD/U1R
         u/cYfS/93J/fKvDzN7dFeUsLpsdch+67RgbhYaa8EwxWAv5Hx7gFOrEZ1AThVPR1choq
         XqJQuDczf6iEP/Wuykwxk20oXHD9t5xiD2aDwFSZE5t48BHeaRo6m9jZCXgyr7QIT5cL
         TmH2wWdnbS3vHyUA9ECT8qxmnUyswYNXRFx4Fk+nef1QLR7I1EH0Fs+3a91/vjefTdQW
         uS8Q==
X-Gm-Message-State: AAQBX9ejun5hHZ2i6kIeI6lWnrYuuJ/q7VH8P37qRwfrzIakanuE9xOf
        vQeiDaKtkbB3btEHyJUYczN9HiW2z3eughBHebs=
X-Google-Smtp-Source: AKy350ax97GF/cDxMrgLOteOXO+Rp+ex/4DYRWXDdRInGPjLEZrgkYnO55ZnFwuZQ+457nm2yO0ZzQ==
X-Received: by 2002:a05:6e02:6c9:b0:323:ced:cffe with SMTP id p9-20020a056e0206c900b003230cedcffemr4174494ils.12.1681490873186;
        Fri, 14 Apr 2023 09:47:53 -0700 (PDT)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id s10-20020a92c5ca000000b003288083182csm1257728ilt.17.2023.04.14.09.47.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 09:47:52 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3293e4b2cb5so8906225ab.3
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 09:47:52 -0700 (PDT)
X-Received: by 2002:a81:b667:0:b0:54f:cc40:cf68 with SMTP id
 h39-20020a81b667000000b0054fcc40cf68mr3335826ywk.7.1681490532860; Fri, 14 Apr
 2023 09:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <1681481153-24036-1-git-send-email-quic_vnivarth@quicinc.com> <CAD=FV=XU_SWzJTmtqoZZ1eTDu3WcWQOAFbkBS=Juaz9_DivZSg@mail.gmail.com>
In-Reply-To: <CAD=FV=XU_SWzJTmtqoZZ1eTDu3WcWQOAFbkBS=Juaz9_DivZSg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 14 Apr 2023 09:42:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W8ML4A9Yp3o1PzO1xRSJ3Z+9g-SdMDwLTMqhmMw0q99g@mail.gmail.com>
Message-ID: <CAD=FV=W8ML4A9Yp3o1PzO1xRSJ3Z+9g-SdMDwLTMqhmMw0q99g@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] spi: Add DMA mode support to spi-qcom-qspi
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 14, 2023 at 8:48=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Fri, Apr 14, 2023 at 7:06=E2=80=AFAM Vijaya Krishna Nivarthi
> <quic_vnivarth@quicinc.com> wrote:
> >
> > There are large number of QSPI irqs that fire during boot/init and late=
r
> > on every suspend/resume.
> > This could be made faster by doing DMA instead of PIO.
> > Below is comparison for number of interrupts raised in 2 acenarios...
>
> s/acenarios/scenarios
>
> > Boot up and stabilise
> > Suspend/Resume
> >
> > Sequence   PIO    DMA
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Boot-up    69088  19284
> > S/R        5066   3430
> >
> > Though we have not made measurements for speed, power we expect
> > the performance to be better with DMA mode and no regressions were
> > encountered in testing.
>
> Measuring the speed isn't really very hard, so I gave it a shot.
>
> I used a truly terrible python script to do this on a Chromebook:
>
> --
>
> import os
> import time
>
> os.system("""
> stop ui
> stop powerd
>
> cd /sys/devices/system/cpu/cpufreq
> for policy in policy*; do
>   cat ${policy}/cpuinfo_max_freq > ${policy}/scaling_min_freq
> done
> """)
>
> all_times =3D []
> for i in range(1000):
>   start =3D time.time()
>   os.system("flashrom -p host -r /tmp/foo.bin")
>   end =3D time.time()
>
>   all_times.append(end - start)
>   print("Iteration %d, min=3D%.2f, max=3D%.2f, avg=3D%.2f" % (
>       i, min(all_times), max(all_times), sum(all_times) / len(all_times))=
)
>
> --
>
> The good news is that after applying your patches the loop runs _much_ fa=
ster.
>
> The bad news is that it runs much faster because it very quickly fails
> and errors out. flashrom just keeps reporting:
>
> Opened /dev/mtd0 successfully
> Found Programmer flash chip "Opaque flash chip" (8192 kB,
> Programmer-specific) on host.
> Reading flash... Cannot read 0x001000 bytes at 0x000000: Connection timed=
 out
> read_flash: failed to read (00000000..0x7fffff).
> Read operation failed!
> FAILED.
> FAILED
>
> I went back and tried v1, v2, and v3 and all three versions fail.

Ah, I see what's likely the problem. Your patch series only adds the
"iommus" for sc7280 but I'm testing on sc7180. That means:

1. You need to add the iommus to _all_ the boards that have qspi. That
means sc7280, sc7180, and sdm845.

2. Ideally the code should still be made to work (it should fall back
to PIO mode) if DMA isn't properly enabled. That would keep old device
trees working, which we're supposed to do.

-Doug
