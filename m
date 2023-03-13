Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2226B7A82
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 15:38:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbjCMOiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 10:38:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231459AbjCMOiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 10:38:10 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E8A1ACF0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:38:06 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id c18so13320601qte.5
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678718284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDaRIIqW7/+ly5ySR9hbSflFpXoocSQAnYPTqjUre/k=;
        b=MAcXl6at3/winOcS4KxrIvBiQSaZHfivydwNQ1x59zIf4Sw3uDOAJWl420fYIAB+ZH
         MqLh1S5Sjjpl7UW052yl6OHHTZ9WzU1N00DxaBoDcgfwpIEpdqL0DBWhTP3FDLEWBerq
         CfDkJ70A0LG3I5PCAys7GsLYjfw3npFmBA9mA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678718284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDaRIIqW7/+ly5ySR9hbSflFpXoocSQAnYPTqjUre/k=;
        b=lfpbhfMMrRCdFtmD3NXz+iDiBmmhvgQkZFsbMJIxhf+sxYjLCQaixGMMcXnnk7WfWt
         4bCvjDzEjZ8bGTcZSNIrclkcJ4M0+Asaa8K6nlXpOuzFiVMgqagktvwJrXODZe8grGC7
         Yydn4P9yZ9sFyiWDodqS9R3fnxV1KJNg+GeLTxn2F2tneuujNqhpfK8tSvDm1+y/+Kyj
         S74HPYXX2CEs/d/PIUB/fCH9JoJxUDsDSQK6nPKlMBwZX7LhVphnD1ocdZSMtkC8algw
         pOnzwClF/oRyWwiopsGQ/t0tWe37AJKKxqL0q7GsFWgC1yNHOdjCuK52xHk2ALv+rqTI
         niCQ==
X-Gm-Message-State: AO0yUKXgCyLV7PgeBIGMYoaRU5lQejFyw6aAuleJPU0s9MEjoDuMUVdX
        8+s76jfvrTVd8/TUZznh1iaXgDpbSrHf3nlrvh4=
X-Google-Smtp-Source: AK7set+/tVyeJUBU7Q1LoP7llgVgjTrZEeKOkBT1/ZG8wRDR6/yr6KAyveP+yLSI48ndRDeMm8/Sig==
X-Received: by 2002:a05:622a:4cb:b0:3bf:cfdd:7037 with SMTP id q11-20020a05622a04cb00b003bfcfdd7037mr58692231qtx.18.1678718284345;
        Mon, 13 Mar 2023 07:38:04 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id y11-20020a37f60b000000b0074571b64f0fsm2933620qkj.53.2023.03.13.07.38.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 07:38:03 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id c200so1995840ybf.3
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:38:03 -0700 (PDT)
X-Received: by 2002:a25:9c46:0:b0:a5d:3d45:26c with SMTP id
 x6-20020a259c46000000b00a5d3d45026cmr21326349ybo.0.1678718283055; Mon, 13 Mar
 2023 07:38:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org> <20230312183622.460488-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312183622.460488-4-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 Mar 2023 07:37:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uhpc5idOzPt5Oknzng8qaTFh4Fsibs1hXFfZRsKn+9cA@mail.gmail.com>
Message-ID: <CAD=FV=Uhpc5idOzPt5Oknzng8qaTFh4Fsibs1hXFfZRsKn+9cA@mail.gmail.com>
Subject: Re: [PATCH 4/8] arm64: dts: qcom: sc7180-trogdor-pazquel: correct
 trackpad supply
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Mar 12, 2023 at 11:36=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The hid-over-i2c takes VDD, not VCC supply.  Fix copy-pasta from other
> boards which use elan,ekth3000 with valid VCC:
>
>   sc7180-trogdor-pazquel360-lte.dtb: trackpad@15: 'vcc-supply' does not m=
atch any of the regexes: 'pinctrl-[0-9]+'
>
> Fixes: fb69f6adaf88 ("arm64: dts: qcom: sc7180: Add pazquel dts files")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi b/arch/=
arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
> index d06cc4ea3375..8823edbb4d6e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
> @@ -39,7 +39,7 @@ trackpad: trackpad@15 {
>                 interrupt-parent =3D <&tlmm>;
>                 interrupts =3D <0 IRQ_TYPE_EDGE_FALLING>;
>
> -               vcc-supply =3D <&pp3300_fp_tp>;
> +               vdd-supply =3D <&pp3300_fp_tp>;

Luckily it didn't matter since this regulator is always on, but good
to have things described properly.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
