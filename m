Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C5216F7FD9
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 11:25:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbjEEJZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 05:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230398AbjEEJZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 05:25:08 -0400
Received: from egress-ip4a.ess.de.barracuda.com (egress-ip4a.ess.de.barracuda.com [18.184.203.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9061216365
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 02:25:06 -0700 (PDT)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198]) by mx-outbound14-74.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 05 May 2023 09:25:03 +0000
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-2ac752eeaecso7969551fa.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 02:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1683278703; x=1685870703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9X5vwuB7Rz+WScekRXcJ2h3AfjHA68fWv3z2a9auIs0=;
        b=Fin8KvgOMgkpsUH/CBePa3vZC5cDmh76W8BM/LYVTq+F7/p9ujVYRJKn5o3Ecrd5TQ
         F1bMVkOmRAYZuNogveJJsLn2MK0tXrgXgpdwbe9v7gHPGjNU3U+36GLR6y9KZVLMvBzi
         1ZgeDvDdbA51sXMQJMu06EbNkJ4/bdV2hp35U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683278703; x=1685870703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9X5vwuB7Rz+WScekRXcJ2h3AfjHA68fWv3z2a9auIs0=;
        b=edctri/dpv1+h7qd9zkosPGAxnlklsle4Ife+yFCqSMM4hSGVwjXkJcQnY/df+DeBi
         RXelOycuRmywHyxzbrdD/0dkhcutNX/DrNHNhC5UOzFo4WEkG3MuwyuRXc0pO1Cj9AMt
         Mu9Nudy2ZDS3E5Od6ueb8JYalRl/mxx1qisI5OuNL+TK4nyRUQmfdmgalNBoqM5XeyE6
         lfRa69n20iLVkySNn+QyjaHda/Kibc2Ga7IK8wxTOuXsB/tgRivq4dExFCKSdMefvic+
         L20R/Y7wW+5KvjXMGb1zwRSxDyZ4CRioXBjkX8sgiDQPXVumNd7Vl4zeWteoLBrR5RoN
         YF0w==
X-Gm-Message-State: AC+VfDyWhkhSg6aGNicw6W+XziQVP1fZLnhwZNQRwNs+DsJFWkpgEgK6
        EEilwPbB3FOY8mbwdYpTMgmV1KXIelB1s6YIYDOtu0Tc/+VyDHF/JutzoCzYNlyHGdb5iPkVIGa
        qxecKvrsrkDl+jnzBrZeqXVhjYvSVYJFp5UHN9qSYEQ74ax+bXO4BhyY5xPB3RFHCSnE7OW+4Cg
        ==
X-Received: by 2002:a05:651c:1044:b0:2a8:c858:fb9 with SMTP id x4-20020a05651c104400b002a8c8580fb9mr225345ljm.29.1683278703162;
        Fri, 05 May 2023 02:25:03 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Kzwg1sPm0YVlHjquY08B1yqBpyxtz7J93IhknGYTkOZFXJZI2sEH/KCa4V2yrMAfasRqLXPDSQlXrO/cD83k=
X-Received: by 2002:a05:651c:1044:b0:2a8:c858:fb9 with SMTP id
 x4-20020a05651c104400b002a8c8580fb9mr225335ljm.29.1683278702781; Fri, 05 May
 2023 02:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230504073432.6438-1-sinthu.raja@ti.com> <20230504073432.6438-2-sinthu.raja@ti.com>
 <20230504115537.aqdlcz3233eyu56q@pounce>
In-Reply-To: <20230504115537.aqdlcz3233eyu56q@pounce>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Fri, 5 May 2023 14:54:50 +0530
Message-ID: <CAEd-yTTbCLaqNAM3Bw8pc_t1RxVQhPJj2Eb0Fi+qFHU6meWKQg@mail.gmail.com>
Subject: Re: [PATCH V5 1/2] arm64: dts: ti: k3-j721s2: fix wkup pinmux range
To:     Nishanth Menon <nm@ti.com>
Cc:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>,
        Thejasvi Konduru <t-konduru@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BESS-ID: 1683278703-303658-5455-5641-1
X-BESS-VER: 2019.1_20230502.2000
X-BESS-Apparent-Source-IP: 209.85.208.198
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUioBkjpK+cVKVoamhpZAVgZQ0DzV1NjYwiTN3N
        DQyNw0McnYwMLS1MDSyCLN3Njc0CBZqTYWAI+9ffJBAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.247949 [from 
        cloudscan23-145.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 4, 2023 at 5:25=E2=80=AFPM Nishanth Menon <nm@ti.com> wrote:
>
> minor comment: $subject: s/fix/Fix - Vignesh might fix it up prior to
> picking up the series.. but anyways.. just making a side note.
>
> On 13:04-20230504, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > The WKUP_PADCONFIG register region in J721S2 has multiple non-addressab=
le
> > regions, accordingly split the existing wkup_pmx region as follows to a=
void
> > the non-addressable regions and include the rest of valid WKUP_PADCONFI=
G
> > registers. Also update references to old nodes with new ones.
> >
> > wkup_pmx0 -> 13 pins (WKUP_PADCONFIG 0 - 12)
> > wkup_pmx1 -> 11 pins (WKUP_PADCONFIG 14 - 24)
> > wkup_pmx2 -> 72 pins (WKUP_PADCONFIG 26 - 97)
> > wkup_pmx3 -> 1 pin (WKUP_PADCONFIG 100)
> >
> > Fixes: b8545f9d3a54 ("arm64: dts: ti: Add initial support for J721S2 So=
C")
> > Signed-off-by: Thejasvi Konduru <t-konduru@ti.com>
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
>
> is this mcu only ?
Yes, the change is required only for MCU.
>
> Could you provide a link to the output of:
> $ cat /sys/kernel/debug/pinctrl/*/pins
>
> Before and after the fixup? gist.github.com or some similar pastebin
> link to the log will suffice.

Link to logs:
Before Fix: https://pastebin.com/ufseNg8U
After Fix: https://pastebin.com/ABWZ5F4G

>
> [..]
>
>
> --
> Regards,
> Nishanth Menon
> Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DD=
B5 849D 1736 249D



--=20
With Regards
Sinthu Raja
