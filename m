Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE846EA570
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:59:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231381AbjDUH7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbjDUH7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:59:34 -0400
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D6FB8A54
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:59:33 -0700 (PDT)
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-4403744aa44so485258e0c.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682063972; x=1684655972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TsFQTffpj1Xt6EEubhQjH3aWod2zGCnn4KBG/LKkMVc=;
        b=Tmi1HPl8De+dM8cYuH01zP1eu7WpzTHXIIRqdP2r7MJimFSp9mhE22JjnelGT42cbi
         4MuEOlCB4DO4bsrcvDXMkOL1dOq7Hl6OF4sgZ1947z7xRCsKGAjTYq4aY1ujkzSfq48s
         HgOa/j95PnjLn4uUVg7sFgeOVGZnivQsUeqCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063972; x=1684655972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TsFQTffpj1Xt6EEubhQjH3aWod2zGCnn4KBG/LKkMVc=;
        b=My5OfPL54ZicwpvAuAbH/bRJmBT+zSMwsxT9R67exdi8jtWYCFHj+2wjVdsJEtBM1W
         jGy8zbP2BVOzxM6bjWR9oJz4BLGLLtDqfcCz0/z6UWLbJTfInyYviWoMl6G0asvWLuai
         TJ9Pd+nZ0x5k+hiDQ+X0CEfis0Ygz6wYhp5wDAykaAQPjMZXo8as3xxnXTnHBP6Nb7lQ
         6v9tIobi8QbI4IwccSUkmMj/38xNvLbaWQk7KP8+2LeuSOxFZYUuCUL/jehhJ1r46mA/
         mCpNKpcPRyeMjb58Wfw+izaVvHs6RIYQMCH5jEWwOH+YqB6Udas6iifLW2HvH1qtSxUz
         CByQ==
X-Gm-Message-State: AAQBX9cftduSyhxsN37WrlOdVR/qLJUpPWecymDHJ84QF4fnl9Rb/Voi
        GVG5P+MjfLsoM0lLN3QOST+IbE96EhqFFGr2KxGdUg==
X-Google-Smtp-Source: AKy350abxmzPvOdsOw+/nW5Sft49OJtVLhvaAiOW8MiTGTePQk9FTNcoDjKCrAk7Yi89F46K7XNWaTPhPpGDXRijY9o=
X-Received: by 2002:a1f:cb02:0:b0:43f:a097:5e8c with SMTP id
 b2-20020a1fcb02000000b0043fa0975e8cmr337979vkg.16.1682063972345; Fri, 21 Apr
 2023 00:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230420094433.42794-1-angelogioacchino.delregno@collabora.com> <20230420094433.42794-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230420094433.42794-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 21 Apr 2023 15:59:21 +0800
Message-ID: <CAGXv+5GJroyKkj8oZw+BQxiUkiGCb-RBOxnKRkURQz5T6=EvNQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: mediatek: cherry-tomato-r1: Enable NVMe
 PCI-Express port
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com
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

On Thu, Apr 20, 2023 at 5:45=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On Tomato rev1 the PCIe0 controller is used for NVMe storage.

This was slightly confusing for me. AFAIK rev1 is not an actual Tomato
device. It should be the prototype board, which is the original Cherry
reference design by Google [1].

There is an actual Cherry derived device that has NVMe, though it's under
another brand and another name.

ChenYu

[1] Much like Kukui & Jacuzzi (MT8183), and Asurada (MT8192) are the
    reference designs.  I don't think we ever upstream the reference
    boards because they don't really end up in the hands of people
    outside of the project, and the ones we do have tend to be quite
    beaten up or no longer working due to extensive testing.

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/a=
rch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> index 2d5e8f371b6d..11fc83ddf236 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> @@ -20,6 +20,13 @@ &sound {
>         model =3D "mt8195_r1019_5682";
>  };
>
> +&pcie0 {
> +       status =3D "okay";
> +
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pcie0_pins_default>;
> +};
> +
>  &ts_10 {
>         status =3D "okay";
>  };
> --
> 2.40.0
>
>
