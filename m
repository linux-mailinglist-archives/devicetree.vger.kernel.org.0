Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64D546CABDD
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 19:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbjC0Rb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 13:31:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbjC0Rb1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 13:31:27 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C061A30E4
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:31:25 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id i5so39542398eda.0
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1679938284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BLeyoUE1XS+xc+w9+asjmtr0fCuN33xtodTQFW0/8sE=;
        b=SfkT+OvrKMhbZPtkb5od8SE3UdkexUf58KzkH3imby5heDbtN/pMK2xBHuae9mqEDJ
         SgnE7awV95TjIFVk3qinzSN1kMRPL7kf5xgHUZHp0ppscI8VFE3AltHWX2z6swRLWqj+
         jKXqNyoj+XN080DhKGinPGZyQvthjIQt7BSQ0paDLBHwWNB1mgQveZFZJGp9tz0AqeU6
         XCSPDPCpevliNmQd5MCv8IwSWD1Xstb+Ges6zqIqZQi6rli0fL1P4QJPXkxeKvp3SRE6
         2RDz79YA/R1yQkHPkjB4RbfsI52b6tfiyFZZ7A+zhD5xjx0BnGy27OKw32ztS0F4iUlM
         UlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679938284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BLeyoUE1XS+xc+w9+asjmtr0fCuN33xtodTQFW0/8sE=;
        b=4LQ2dgw0DBzmBs0axIHu37hDpGhTYRcBoTvFQrDGSnO9ymMHwp51DZ0ZsvANf9hMA+
         jwP5KVS2NtaMJsy26y5hSY0DzoCE36HejXW6XbnvxKBieslb2twabF7G9U5RPZJqePph
         ACyOp3mXQTaM31dcR79yc73La4/5nRciWyuYbEh5skklsleecLBk0/tKlKm6NnfqGkWV
         UaqXDFI5A8+RyaS946+VNW8EbOZo0uYXRQtGolHZrkmnCuXaKXbY+/Dsd16muMKQ28Cf
         YipOhxn3llVtzVlx/PiuHdJKpv3zQbAA+ieYs8NdBFGaZI8Vn4IMME4LvAUePAzVQgLd
         wYqA==
X-Gm-Message-State: AAQBX9fRu2nr9Hq5cXrTrQByISl2net02MKFaq5+n9CHk1Ny3o50ziO+
        c8ZWcGCVXED3YZ6W6i5Yj6zxrngKwg71vqvW5OjbSw==
X-Google-Smtp-Source: AKy350auy3pb5msPI71L1H+iHRixzM9Rw8HWMt8Kjxhog+BH+xAS604sqHx5GmiXjp20YqgBRIa+wqb0gjp4tOnyYOI=
X-Received: by 2002:a17:906:c003:b0:932:777a:d34b with SMTP id
 e3-20020a170906c00300b00932777ad34bmr5939662ejz.14.1679938284273; Mon, 27 Mar
 2023 10:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230327122948.4323-1-johan+linaro@kernel.org>
In-Reply-To: <20230327122948.4323-1-johan+linaro@kernel.org>
From:   Steev Klimaszewski <steev@kali.org>
Date:   Mon, 27 Mar 2023 12:31:13 -0500
Message-ID: <CAKXuJqj59JzodbjFQNndyHXC0H0dHbG03V2w8293yaQUpjNdHQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-pmics: fix pon compatible and registers
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 7:30=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> The pmk8280 PMIC PON peripheral is gen3 and uses two sets of registers;
> hlos and pbs.
>
> This specifically fixes the following error message during boot when the
> pbs registers are not defined:
>
>         PON_PBS address missing, can't read HW debounce time
>
> Note that this also enables the spurious interrupt workaround introduced
> by commit 0b65118e6ba3 ("Input: pm8941-pwrkey - add software key press
> debouncing support") (which may or may not be needed).
>
> Fixes: ccd3517faf18 ("arm64: dts: qcom: sc8280xp: Add reference device")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/bo=
ot/dts/qcom/sc8280xp-pmics.dtsi
> index c35e7f6bd657..a0ba535bb6c9 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
> @@ -59,8 +59,9 @@ pmk8280: pmic@0 {
>                 #size-cells =3D <0>;
>
>                 pmk8280_pon: pon@1300 {
> -                       compatible =3D "qcom,pm8998-pon";
> -                       reg =3D <0x1300>;
> +                       compatible =3D "qcom,pmk8350-pon";
> +                       reg =3D <0x1300>, <0x800>;
> +                       reg-names =3D "hlos", "pbs";
>
>                         pmk8280_pon_pwrkey: pwrkey {
>                                 compatible =3D "qcom,pmk8350-pwrkey";
> --
> 2.39.2
>
Tested on the Thinkpad X13s

Tested-by: Steev Klimaszewski <steev@kali.org> #Thinkpad X13s
