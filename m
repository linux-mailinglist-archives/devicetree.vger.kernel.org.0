Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3A9A57513C
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 16:58:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239655AbiGNO60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 10:58:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239647AbiGNO6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 10:58:19 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5B75E33B
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:58:17 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id z23so3890499eju.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TzlS1o4zpkdBg0kf1F9ofQFGm4csN2E2tHeWJuRCCH8=;
        b=DwZj/wwwa4swLjncjyiludhr6VwWG07cQwlmVvVgZCztjCpADIEAb30MvOITr/KA36
         36st2x6Xlu317xrll5fyaZ44ASnf88gJc1Sn2QG4Aif97xXOG4OHA95J6CngG4I0Sfl+
         BQQhsgJT2ucPbs6xXw+rDUZqOHVzrD0iuSCMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TzlS1o4zpkdBg0kf1F9ofQFGm4csN2E2tHeWJuRCCH8=;
        b=yAcOexdw5/L7R0B59Wz5eNP8dr1KR51YMncy/OkrvWbFO1rvYF9lLDGLdyA64zXHFY
         Vf/J1FQQ6b0SauxaNWl/UFEh87r7AMJuliiqw4llYWvrryvU0Ofmk/r1N4wQKxc5C1KH
         xtge5EPSr0JDQLjNnj3pc9YTSC7vSJ2nZ6mWKdE+pG/w0kJiQUKz0UL5iSP14sBjlcjk
         BFGIDIAufurVlr2CN+yO+nAO508ue4Pm/AlXHyCQaT1oq1NJmR9UJxuXFJgrc4yuS65y
         HQK1uvRyX6O9pLt85oUFeWrv9dulX42TonQvr5vvL7XpDKCntdRNFK54ILClJmXHNqWm
         iYfg==
X-Gm-Message-State: AJIora89l72a9JTBl8y1W+MxGR4lO70CCqaPeM/THR51h/yP6UqDyFJE
        xZCs4k58JePDTgfjdxcBguqzmHF8DfS+QXQg
X-Google-Smtp-Source: AGRyM1uqJESNXeYmjQvSk1FSo60h0Iq+6fivTbwIp90rI9xtgOZ5wgyk7JhIhyaUf1XN3XLFdlVpiA==
X-Received: by 2002:a17:907:2ceb:b0:72e:dd6c:1b96 with SMTP id hz11-20020a1709072ceb00b0072edd6c1b96mr3607170ejc.503.1657810696068;
        Thu, 14 Jul 2022 07:58:16 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id ne23-20020a1709077b9700b007263481a43fsm770195ejc.81.2022.07.14.07.58.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 07:58:15 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id r14so2945350wrg.1
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:58:15 -0700 (PDT)
X-Received: by 2002:a05:6000:2c9:b0:21d:bd7d:3af6 with SMTP id
 o9-20020a05600002c900b0021dbd7d3af6mr7863205wry.405.1657810694850; Thu, 14
 Jul 2022 07:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220714074958.86721-1-jinghung.chen3@hotmail.com> <SG2PR03MB50066EA3AE8F8E98B67C920BCC889@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB50066EA3AE8F8E98B67C920BCC889@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Jul 2022 07:58:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WjaHsFS4WRcJA_6w9mnDMrUq4rZAzzQ3Qs6Z8TTE8Oag@mail.gmail.com>
Message-ID: <CAD=FV=WjaHsFS4WRcJA_6w9mnDMrUq4rZAzzQ3Qs6Z8TTE8Oag@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: Add sc7280-herobrine-villager-r1.dts
 file for LTE sku in sc7280-villager family
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 14, 2022 at 12:50 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds sc7280-herobrine-villager-r1.dts for villager device tree files.

You could mention why -r1 is different. It would be enough to say
something like:

Herobrine-r1 is exactly the same as -r0 except that it uses a
different audio solution (it uses the same one as the CRD).


> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
>
> ---
>
> Changes in v4:
> -Add this patch
>
>  .../boot/dts/qcom/sc7280-herobrine-villager-r1.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dts

The ${SUBJECT} of this patch is a bit long and seems like it could be
shortened. Unless it's unavoidable I try to keep mine under 80
characters. How about just:

arm64: dts: qcom: sc7280: Add herobrine-villager-r1


> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dts
> new file mode 100644
> index 0000000000000..c03b3ae4de506
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Villager board device tree source
> + *
> + * Copyright 2022 Google LLC.
> + */
> +
> +#include "sc7280-herobrine-villager-r0.dts"
> +#include "sc7280-herobrine-audio-wcd9385.dtsi"
> +
> +/ {
> +       model = "Google Villager (rev1+)";
> +       compatible = "google,villager", "qcom,sc7280";
> +};

You should also add the -r1 dts to the Makefile in this patch.

Also as part of this patch you should change the
"sc7280-herobrine-villager-r0.dts" so that it isn't "rev0+" but is
just "rev0", AKA:

-       model = "Google Villager (rev0+)";
-       compatible = "google,villager", "qcom,sc7280";
+       model = "Google Villager (rev0)";
+       compatible = "google,villager-rev0", "qcom,sc7280";
