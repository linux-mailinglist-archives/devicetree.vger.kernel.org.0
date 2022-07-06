Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4D5F56937D
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 22:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234406AbiGFUnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 16:43:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234395AbiGFUnX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 16:43:23 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 370201F5
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 13:43:22 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id sb34so29000463ejc.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 13:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6IjbWUyuxXN/2Vz82xepsrw85CD/sF05r/fiHZLXM8k=;
        b=YZrPYpJhxLWB5f/Qs9r/UOJZiV8QcW8RRvijsTzoLF7IgifrWe3N2+IaT06Gahwgjt
         kVTdBtFGAEOD6g19KwTkjCXD/tb3cZRdzmMaw1ock7s6rpYZXFOCaewm6wJkIhTMKuto
         1nFXBT47x7yT1UQv86cKBBJfUvAyy9S0/cY1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6IjbWUyuxXN/2Vz82xepsrw85CD/sF05r/fiHZLXM8k=;
        b=2fTgbzypnujshay8VV17znwHnF3Wjitz/nvzGdbNqu6i5MJf5TrC2pwXzVZiZMY1f3
         Mwv70XyO5F8ykcRRz8MtiAnrH/oF5uXtMlEyXgiLSgSatbLqU264s1iW1lqNOIXOTMqE
         SNzCgVMKq/ntqEa58TAOnV0HG4W434vso1huEOZiqnVNQukHkWCCQxLlafUW0BPPsozx
         6ZvIfVejS16XHEz0bHCw7okZADfjq8RDriRrZMvtEAB6wRYRXhc7l2Ep6ezIH6xd02GS
         aJjtb1i9CqEoKJ25hjJn5PnOEPVtq2dAFRwpFIqQc9cU7DyyLxdZ6vXc0uzlYK7Tjkq8
         m7kg==
X-Gm-Message-State: AJIora/7vIwfofafl4OoB9ZdbY33itMDpC/8giggMLvURqtcIvszVpo6
        V1UtSY+8wJ4ByLp/dVLOQG5mr/HeXpap8qNF
X-Google-Smtp-Source: AGRyM1u6sNqFlsj8wMon7U7iXQj1nlv27jtczd02agAffXDrRh2pSn3LpP3S75O53DSdsqXGR4eNmA==
X-Received: by 2002:a17:906:98d4:b0:72a:f4b1:5115 with SMTP id zd20-20020a17090698d400b0072af4b15115mr6380484ejb.173.1657140200522;
        Wed, 06 Jul 2022 13:43:20 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id n22-20020a1709067b5600b00722ea7a7febsm17786940ejo.194.2022.07.06.13.43.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 13:43:18 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id f2so18250799wrr.6
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 13:43:17 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr40248383wrr.617.1657140197404; Wed, 06
 Jul 2022 13:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <1657102611-20067-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1657102611-20067-1-git-send-email-quic_srivasam@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 6 Jul 2022 13:43:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UaUnZfWsXGQx6PoVQ5qqtsq10Dnui1v0Xn0S5Y-YgwRw@mail.gmail.com>
Message-ID: <CAD=FV=UaUnZfWsXGQx6PoVQ5qqtsq10Dnui1v0Xn0S5Y-YgwRw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Move wcd specific pin conf to
 common file
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_rohkumar@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
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

On Wed, Jul 6, 2022 at 3:17 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> +/* PINCTRL - BOARD-SPECIFIC */

It's not really "board specific" since this is actually a file that's
included by multiple boards.

Maybe just use the header "PINCTRL" for now. Everything here is just
adding pull/drive strength/slew-rate info to existing pinctrl
settings. If we ever have more than that and want to separate into
different sections we can always adjust later.


> +/*
> + * Methodology for gpio-line-names:
> + * - If a pin goes to CRD board and is named it gets that name.
> + * - If a pin goes to CRD board and is not named, it gets no name.
> + * - If a pin is totally internal to Qcard then it gets Qcard name.
> + * - If a pin is not hooked up on Qcard, it gets no name.
> + */

This file doesn't include "gpio-line-names" so you don't need to
include documentation about it.

-Doug
