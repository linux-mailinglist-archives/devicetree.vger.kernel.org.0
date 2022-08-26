Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B25555A2D26
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 19:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344745AbiHZRPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 13:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242293AbiHZRPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 13:15:20 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6442F67C
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:15:13 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id x93so2729610ede.6
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=g1nhytGbLlPdFV0nY3tszrR1h/TIhkoKAPu2ahL0p/k=;
        b=b6SDldaWa7pnH5+2X9Grz6EJaMgJ2WMkQlr77r5OvIob6I976rGlXH0vexkLDXx7U3
         0OwV2PETanSenQ1JiMZzz9h6XEA+sgT3AFQpsSSkXNG+Cekpcplt3HHFKmFNiYEdyS19
         k/JyheHd2Fv+PSyCmDoRlTs4+oNEusAljCg9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=g1nhytGbLlPdFV0nY3tszrR1h/TIhkoKAPu2ahL0p/k=;
        b=YerP7p2S3TlhLsSJUz6nGAnnj4QTV+ngpSNkYAaBIuWBDuTJQUyY5Cgu0PAiXYz5PX
         jmqmN3ftW0FI0OyQCntjYs4r4LG1pkJ2dKEZDDPvrhFYn/mp4Y6aaVp2gLh3UQpYDnnU
         cNEDTNZWM+isqwmJXQovpOKhoaI99Ep62UcUjYRZCEHtm8XT+bwkFNyIo0DONfnfHEpK
         UQR2WzaQNPdzBKMZEusx/Ifd2PSTdsz03nCPtN020iSgbH71bloDfD45DB42qg/zS13s
         wyzZv83FBA8/Iu1wwUJQrAE3nHQSMtmy4aM7VItMFqA1Pj13ZFka97OsDi+t3NKyezRP
         PCUQ==
X-Gm-Message-State: ACgBeo069mzaZpl7CIbk58Zrq8k7m2ooDa/QnB9kgvsmJP2klCTRgKhu
        KAQtQgMd9uIvokub4QsulGifMOzzvK4rzvTP
X-Google-Smtp-Source: AA6agR4R1RIuJxzayyusuK7QYP5E6x8zO9GYiXEU+ESyEUkvKu/UUZSAL39/5YlQ/nagPNF0TQy4Mw==
X-Received: by 2002:a05:6402:2682:b0:446:a78b:b49f with SMTP id w2-20020a056402268200b00446a78bb49fmr7380255edd.390.1661534111996;
        Fri, 26 Aug 2022 10:15:11 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id ku13-20020a170907788d00b0073d53f4e053sm1117068ejc.104.2022.08.26.10.15.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 10:15:11 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id s23so1206727wmj.4
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:15:10 -0700 (PDT)
X-Received: by 2002:a05:600c:4e8b:b0:3a5:f5bf:9c5a with SMTP id
 f11-20020a05600c4e8b00b003a5f5bf9c5amr357285wmq.85.1661534110473; Fri, 26 Aug
 2022 10:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220826065621.2255795-1-judyhsiao@chromium.org>
In-Reply-To: <20220826065621.2255795-1-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 26 Aug 2022 10:14:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VrgrvJb_sJ8AO6pN8dRNXzzOJ9WvngeJrtVYw_wD1Akg@mail.gmail.com>
Message-ID: <CAD=FV=VrgrvJb_sJ8AO6pN8dRNXzzOJ9WvngeJrtVYw_wD1Akg@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7280: Fix Dmic no sound on villager-r1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Aug 25, 2022 at 11:56 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Fix the DMIC no sound issue of villager-r1 by using "PP1800_L2C" as the
> DMIC power source to match the hardware schematic.
>
> This patch:
>    1. set vdd-micb-supply to PP1800_L2C as the MIC Bias voltage regulator.
>    2. In audio-routing, set VA DMIC01~VA DMIC03 to use the vdd-micb-supply
>       setting.
>
> Co-developed-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
> Changes since V3:
>   -- Update the commit message and fix extra blank line.
> Changes since V2:
>   -- Update the commit message.
> Changes since V1:
>   -- Update the commit message.
>
> This patch depends on:
> arm64: dts: qcom: sc7280: Add herobrine-villager-r1. [1]
>
> [1] https://patchwork.kernel.org/patch/12929106

After applying your [1] then your patch applies without merge
conflicts. However, it still doesn't compile. You also depend on
whatever patch adds the nodes "lpass_va_macro" and "sound" since
you're referencing them in your patch. I haven't been keeping track of
the latest status of all the audio patches, so I myself can't point to
exactly what patches you depend on and whether those patches are ready
to land.

In any case, the contents of this patch seem OK assuming the dependent
patches cause something that looks like the current (downstream)
chromeos-5.15 tree.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
