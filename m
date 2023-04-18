Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDB116E66F5
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 16:19:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232364AbjDROTC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 10:19:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232161AbjDROTB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 10:19:01 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C857146C9
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 07:18:49 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id sz19so16572050ejc.2
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 07:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681827527; x=1684419527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zST2ogY5xFX7piRNXStlaVQvyezkCUdzLc+A/+WCH/0=;
        b=BygM/wM5k1MV5OG0uIeGXhl1I4Y8uM9RBcI23wGX2dXSi9Gd0VZELJJkozAjvziOIe
         iXFp32fIzPuKr9Yb8XA7sAaYznKrdWVvCNnPGBIfnuCnwx2I3UPM1SrpEiH8MwDcKsqv
         csUptvD/Ce7lo1Z8QTcggfoEcm8xeOXs9acrQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681827527; x=1684419527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zST2ogY5xFX7piRNXStlaVQvyezkCUdzLc+A/+WCH/0=;
        b=F2kppoLki5XBvg4JkO1OuGyrz9ife3grYUp8TkyK+/EpfZPlTIQSB09tJ5iv06hNvO
         T1a5TV9MgryuNB20VtTtRo2EwGADTlsStvtJwiV7Jo83kiqqubwCxZPo/EPtN33LGKq7
         XzboQFGCJd08FefIL9eGSQIC+vPmLKofI+u0npkeYvO26LgPYEklfa8Vl3+U1UCTMr+J
         B57/rLJ1xMxkYS1yL+eB/b766KgQaKFZIQEGvBUlqY10HeA9r8BN7D+7slgPAuYIqdu7
         7bHiA5icuIdkLV3xR7RiMm54PVsx6tzO3w7RLwDz8D6FXsS9rF1pLlagzkolqRyIygVE
         +wQw==
X-Gm-Message-State: AAQBX9cU7IymVp9NWmKBWY3Vw/V/6DTyqW2Ox/bK6CZCTrg2j0hEpPH9
        DDEQeEbZk/eF3bNnrNGmRljBrjZIQKxzjKsqB2YpYA==
X-Google-Smtp-Source: AKy350YwEGdq//vQ3i+u+fbxJMr5XUf94CkXW57d+BcSREEStc+DFwWtPxviJI0I1psnJabRZ8fOqQ==
X-Received: by 2002:a17:906:b202:b0:94e:d688:c36d with SMTP id p2-20020a170906b20200b0094ed688c36dmr10097538ejz.38.1681827527203;
        Tue, 18 Apr 2023 07:18:47 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id d9-20020a17090648c900b0094f4f2db7e0sm4022476ejt.143.2023.04.18.07.18.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 07:18:45 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3f0a80b694fso24244775e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 07:18:44 -0700 (PDT)
X-Received: by 2002:adf:e803:0:b0:2fa:d7ac:6462 with SMTP id
 o3-20020adfe803000000b002fad7ac6462mr485497wrm.11.1681827524446; Tue, 18 Apr
 2023 07:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230418124953.3170028-1-fshao@chromium.org> <20230418124953.3170028-2-fshao@chromium.org>
In-Reply-To: <20230418124953.3170028-2-fshao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 18 Apr 2023 07:18:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V8ZN3969RrPu2-zZYoEE=LDxpi8K_E8EziiDpGOSsq1w@mail.gmail.com>
Message-ID: <CAD=FV=V8ZN3969RrPu2-zZYoEE=LDxpi8K_E8EziiDpGOSsq1w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: input: goodix: Add powered-in-suspend property
To:     Fei Shao <fshao@chromium.org>
Cc:     Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

Hi,

On Tue, Apr 18, 2023 at 5:50=E2=80=AFAM Fei Shao <fshao@chromium.org> wrote=
:
>
> We observed that on Chromebook device Steelix, if Goodix GT7375P
> touchscreen is powered in suspend (because, for example, it connects to
> an always-on regulator) and with the reset GPIO asserted, it will
> introduce about 14mW power leakage.
>
> This property is used to indicate that the touchscreen is powered in
> suspend. If it's set, the driver will stop asserting the reset GPIO in
> power-down, and it will do it in power-up instead to ensure that the
> state is always reset after resuming.
>
> Signed-off-by: Fei Shao <fshao@chromium.org>
> ---
>
>  Documentation/devicetree/bindings/input/goodix,gt7375p.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml =
b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
> index ce18d7dadae2..942acb286d77 100644
> --- a/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
> +++ b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
> @@ -43,6 +43,12 @@ properties:
>        itself as long as it allows the main board to make signals compati=
ble
>        with what the touchscreen is expecting for its IO rails.
>
> +  powered-in-suspend:
> +    description:
> +      This indicates that the touchscreen is powered in suspend, so the =
driver
> +      will not assert the reset GPIO in power-down to prevent power leak=
age.
> +    type: boolean

This seems OK to me. The overall idea is that if we ever turn off the
power to the touchscreen we have to assert reset (active low) before
doing so, but we don't want to hold reset if we're not actually going
to turn the power off because it causes the touchscreen to go into a
high power state. This gets complicated if the power rail is always-on
or shared with another device.

Alternatives I could think of:

1. In the OS, monitor the regulator and see when it's about to go off
and then assert reset. This is what I tried to do in previous patches
but it got too messy in Linux. It also wasn't perfect since it's
(theoretically) possible for a regulator to turn off outside of the
scope of the OS (some PMICs will auto turn off rails when the main
processor says it's off).

2. In the OS, peek to see if our regulator is marked "always on". This
doesn't handle the shared rail case, of course. Also, regulators that
are "always on" from the OS perspective could still (theoretically)
get turned off at suspend time by the PMIC.

3. Don't even hook up the reset line and just leave the touchscreen
out of reset all the time. This has the disadvantage that we can't
reset the touchscreen if it gets into a bad state, which could be even
more important if the touchscreen is on an always-on or shared rail.


Given the above, the solution in ${SUBJECT} patch seems reasonable.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
