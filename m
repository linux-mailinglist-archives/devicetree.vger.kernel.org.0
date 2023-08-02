Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BEB376D8FD
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 22:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233297AbjHBUyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 16:54:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232929AbjHBUxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 16:53:39 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC3530DB
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 13:53:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9b904bb04so3664641fa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691009608; x=1691614408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZHaSNcsoDssz3tlY4G2BdaDeYnMEGzSRbtap2UcKeQ=;
        b=Go5rtsqvfsRJ+rHFVJuTx4Uq8BpCaU54ukpRJ5KlbjUtuwAbGRY7NER2EBF3aeG6in
         p7ofRXYtTmwslLqDBMgnHWzQ0ZY6b6gkBoGYTpOniKpNIVVgSmYY8C9xgi/ehFT4GE3j
         D7vM6h9YXNfqGJuYxWaknJQpz3HCJw9LzqzZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691009608; x=1691614408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZHaSNcsoDssz3tlY4G2BdaDeYnMEGzSRbtap2UcKeQ=;
        b=ICDwWwmYjHcDUT/CFFu2ZM8V35OXnzBgpe+C3lA7LAAjavcjyFLtc0oo2eyg4CO8tq
         CAqjbaLYi+X3q2P1yYzF/RKxgrcgThyhB/cnxkMgdiNPlm0aVmqX97WeU7ov5/1GEZX9
         GrDEzyfwHyOmnqGu0+Bc1EmAwTNuB0msAtFhrf3HWTbEFQq6CUOcdjDQmSIwGvteXVHR
         2QOaQx8Xd0OMbbgmLdSCJKh9EOXKi9dPtYuoxvWU765jsHv+axkayGypBNPoJqmr66jA
         qYGh1PKiHGmnoa5Ps5uqXE6TYondgd2TAaotiot5V+lhx/pcwlR4RmAEUrHB1iAHk3iU
         w0Xw==
X-Gm-Message-State: ABy/qLaXtXsNQkZ5wNkfniTJoBXjA8H31/niTNtmNqovZvYjbvkd4o4o
        r3QaqFDnWlVrsxS+7Vh+LwtjiIx9qzcaRq98KsJjXmXI
X-Google-Smtp-Source: APBJJlEokHa6Ao8PYK2oDgq+Y6c1ZfwM4/f6BdVjJlTYQ5gX0aSemQYLKm8+lnMBCXsU7dqaawT/lw==
X-Received: by 2002:a2e:380a:0:b0:2b9:601d:2ce with SMTP id f10-20020a2e380a000000b002b9601d02cemr6350290lja.35.1691009608244;
        Wed, 02 Aug 2023 13:53:28 -0700 (PDT)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id jt9-20020a170906dfc900b0098e2969ed44sm9548267ejc.45.2023.08.02.13.53.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 13:53:28 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5223910acf2so3818a12.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:27 -0700 (PDT)
X-Received: by 2002:a50:ab4a:0:b0:522:4741:d992 with SMTP id
 t10-20020a50ab4a000000b005224741d992mr546238edc.4.1691009607276; Wed, 02 Aug
 2023 13:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230802095753.13644-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230802175628.2.Ia4e268a027980f00c8fb0451a29938d76b765487@changeid>
In-Reply-To: <20230802175628.2.Ia4e268a027980f00c8fb0451a29938d76b765487@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Aug 2023 13:53:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VvzdgmMYjeg=RAu-4OEA9mkB7Xu_jjMF-LkBzCP=qQ1A@mail.gmail.com>
Message-ID: <CAD=FV=VvzdgmMYjeg=RAu-4OEA9mkB7Xu_jjMF-LkBzCP=qQ1A@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Add sku_id for lazor/limozeen
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 2, 2023 at 2:58=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> SKU ID 10: Lazor LTE+Wifi, no-esim (Strapped 0 X 0)
> SKU ID 15: Limozeen LTE+Wifi, TS, no esim (Strapped 1 X 0)
> SKU ID 18: Limozeen LTE+Wifi, no TS, no esim (Strapped X 0 0)
>
> Even though the "no esim" boards are strapped differently than
> ones that have an esim, the esim isn't represented in the
> device tree so the same device tree can be used for LTE w/ esim
> and LTE w/out esim.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.googl=
e.com>
> ---
>
>  .../boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r9.dts     | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-r9.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9-lte.dts        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Looks fine to me. One nit is that in the ${SUBJECT} you probably want
"sc7180", so:

arm64: dts: qcom: sc7180: Add sku_id for lazor/limozeen

Once that's fixed feel free to include:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
