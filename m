Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4675251D62C
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 13:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344982AbiEFLIB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 07:08:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244809AbiEFLIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 07:08:00 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF22067D05
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 04:04:17 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-2f16645872fso77210577b3.4
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 04:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4tHVHA8aVbeVaFoDlPql88Q/9NJ6rAQwn4GhNFwxTwM=;
        b=Y9CFhcWaUhjrECjyuSeOchnKMM/ukpyTQez4VqVCH4TtE9eAnEld+/aUwLzu6PDSaT
         ITUMkpj0Pq0svMYhThzFdRj8XblDNogk1iUv15ZpiS6X4YsqXQb101vDE7JxA4TT7Rdi
         3cQH5mDUrSBM6buak1ZnZKR89mpRc9JsOJAeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4tHVHA8aVbeVaFoDlPql88Q/9NJ6rAQwn4GhNFwxTwM=;
        b=2Pkwn9HuJNQWyx3dEVowlqBbtCxmCVCzATT8x47v29jI+/b2kReWkfFr1TldiiXMhA
         qvxN/1kT6937z//I21Lf6u0iu9z5SN+BkmJlgBEnxoD8q2h7aVxkXtgP+1CeAcS3MAWf
         2fPmm4Uf0Fju500LQTvOng3Ih5+gXtnInIsGCqpfuJFRIUYzbFVqiomLc3vbRN1Ng+fp
         EXRPA7snv8kjqUN5t+P3Sv7Uh37bDXjOXl6GJpGqjAYFBA8FH1x3VuzWeVPsRT3f4U/E
         0TBYuMmv34ObbNJM5q1FEzhAEny8hWWSre09aJhtl+NdIaf4pYo7k33/bn9zne2OruUv
         NJTw==
X-Gm-Message-State: AOAM532b1NpzJy2Dsg8ns7x9MICMv6YKhJArxSCjeklBvNrAPrq8LkuV
        mH6mFRPRBRMMqah1CCg+8TMFhmjKYhxQFcN3/BezHA==
X-Google-Smtp-Source: ABdhPJzrxlYT0o+pbPyAyvmWw1o6bUmiDPRnLGsburai31NprtPoykzH2hgAePXKTKi3HgMgQsIV/TZZ2+XmP9IUnSc=
X-Received: by 2002:a81:998a:0:b0:2f9:5d24:e362 with SMTP id
 q132-20020a81998a000000b002f95d24e362mr2181373ywg.161.1651835056969; Fri, 06
 May 2022 04:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220505194550.3094656-1-nfraprado@collabora.com> <20220505194550.3094656-9-nfraprado@collabora.com>
In-Reply-To: <20220505194550.3094656-9-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 6 May 2022 19:04:06 +0800
Message-ID: <CAGXv+5H4r+OjFrtxQwoBBHttLo+YJa2+LWveVcL6YMhP0-xF2w@mail.gmail.com>
Subject: Re: [PATCH v2 08/16] arm64: dts: mediatek: asurada: Add keyboard
 mapping for the top row
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 6, 2022 at 3:46 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> Chromebooks' embedded keyboards differ from standard layouts for the
> top row in that they have shortcuts in place of the standard function
> keys. Map these keys to achieve the functionality that is pictured on
> the printouts.
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> ---
>
> (no changes since v1)
>
>  .../boot/dts/mediatek/mt8192-asurada.dtsi     | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8192-asurada.dtsi
> index 662207d0eb75..a1cbf7a375b6 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> @@ -525,3 +525,32 @@ &uart0 {
>
>  #include <arm/cros-ec-keyboard.dtsi>
>  #include <arm/cros-ec-sbs.dtsi>
> +
> +&keyboard_controller {
> +       function-row-physmap =3D <
> +               MATRIX_KEY(0x00, 0x02, 0)       /* T1 */
> +               MATRIX_KEY(0x03, 0x02, 0)       /* T2 */
> +               MATRIX_KEY(0x02, 0x02, 0)       /* T3 */
> +               MATRIX_KEY(0x01, 0x02, 0)       /* T4 */
> +               MATRIX_KEY(0x03, 0x04, 0)       /* T5 */
> +               MATRIX_KEY(0x02, 0x04, 0)       /* T6 */
> +               MATRIX_KEY(0x01, 0x04, 0)       /* T7 */
> +               MATRIX_KEY(0x02, 0x09, 0)       /* T8 */
> +               MATRIX_KEY(0x01, 0x09, 0)       /* T9 */
> +               MATRIX_KEY(0x00, 0x04, 0)       /* T10 */
> +       >;
> +       linux,keymap =3D <
> +               MATRIX_KEY(0x00, 0x02, KEY_BACK)
> +               MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
> +               MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
> +               MATRIX_KEY(0x01, 0x02, KEY_SCALE)
> +               MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
> +               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
> +               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
> +               MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> +               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> +               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)

There's a slight nuance here, the keyboards for Hayato and Spherion
are not the same one. Hayato follows the keyboard design of older
Chromebooks, such as Kevin:

    back, forward, refresh, zoom, scale, brightness up ...
    (the right side part is the same)

Spherion's keyboard layout matches what you have above.

Also, "zoom" should probably be full-screen, even though the two
map to the same keycode.


Regards
ChenYu

> +
> +               CROS_STD_MAIN_KEYMAP
> +       >;
> +};
> --
> 2.36.0
>
