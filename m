Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5821660D54C
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 22:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiJYUNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 16:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbiJYUND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 16:13:03 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75FBD7DF4F
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 13:13:01 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id 1so12255248vsx.1
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 13:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1CDt1y7e7BIyTnclLO8/l8wF0JXVZnj5kZesVA/eyFg=;
        b=K3/2yhlJoAiQZi9EIf9ab9ebsvLBXlapY9+VwvPvvaVRJdx5Qh7HaDiz2pbdxMyjy6
         7O0o8Vn/BmDMXgzxWGyev/NBW9V/cCjmYxXMKeQtMV/TakUujFewAyvj3sGn29sXYTwy
         HJUaeg9EChZ2sMJxySltPYCDU+/TXDc57BhfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1CDt1y7e7BIyTnclLO8/l8wF0JXVZnj5kZesVA/eyFg=;
        b=6lhPdE/nHlKAo+NKbWUh5q6gn1V6wEN3HG7TcN7CJ+0XVQcQ4MTyqu5Z4r3FtH08sb
         +npBwrq6yBms9l4tzxr02iTSswvH/FwzoGcmC7KbyFHCY5GI0Z3SegNg/ypPql5pHR0b
         Dd0+R8Gqyu2E7uMyn43S311a+wJy1YHBwyi8PIhWOPWYfERPY2q1cvLG30VqEdFOIevc
         cK+sEp7V88mPcqzt/rFuhMDFHzMsfvV/IRBAsK9Nme+QAFuAbSbxIk52ueiG+dv4tY9G
         S+/C7BglkqiiaU4wPnOMdr4TzJzw69f3LVv7qdBZNxlQ4HPnuOeQZMBc0xpQDQN7bZ5q
         BHsg==
X-Gm-Message-State: ACrzQf2UIsgwPrTGr4WaOTI8zmSbcRPxn+PM3jb6/4Ypu0dFrP6wBvvo
        nqGp3n/1RewgUmGaPxzdkrIzFzZjqezd/9KwMVpzBQ==
X-Google-Smtp-Source: AMsMyM442Daimvpeuj+fzZhj86o7I+uEPF+apOJTcNTkmGt7gJrIuTpph61tawRfa3xTlXfYPexjfx9DegwQ7Ul9dgo=
X-Received: by 2002:a67:f106:0:b0:3aa:efc:8610 with SMTP id
 n6-20020a67f106000000b003aa0efc8610mr8867914vsk.65.1666728780555; Tue, 25 Oct
 2022 13:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20221024220015.1759428-1-nfraprado@collabora.com> <20221024220015.1759428-3-nfraprado@collabora.com>
In-Reply-To: <20221024220015.1759428-3-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 25 Oct 2022 13:12:49 -0700
Message-ID: <CAGXv+5HJo5x2ieOegmv5vkfh+rTevdR_fri-7PeK+Gd+GXVjNw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: dt-bindings: realtek, rt5682s: Add AVDD and
 MICVDD supplies
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, Derek Fang <derek.fang@realtek.com>,
        kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 24, 2022 at 3:01 PM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> The rt5682s codec can have two supplies: AVDD and MICVDD. They are

The actual chip also has LDO1_IN (for digital core and charge pump)
and DBVDD (for I/O). However in the Chromebook designs these two
and AVDD are all provided from the same power rail, through separate
filter banks.

Neither does the datasheet specify the ordering of AVDD, DBVDD, and
LDO1_IN for power sequencing, just that three should be toggled together.

Should we model these? Or wait until some design actually splits these?


ChenYu


> already used by sc7180-trogdor-kingoftown.dtsi, so document them in the
> binding.
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
>
> ---
>
> Changes in v2:
> - Added mention that property is already used in a DT to the commit
>   message
>
>  Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml=
 b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> index 1c0b06d82369..ac1dea5b4450 100644
> --- a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> +++ b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> @@ -90,6 +90,10 @@ properties:
>    "#sound-dai-cells":
>      const: 1
>
> +  AVDD-supply: true
> +
> +  MICVDD-supply: true
> +
>  additionalProperties: false
>
>  required:
> --
> 2.38.1
>
