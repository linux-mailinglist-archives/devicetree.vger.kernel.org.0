Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7B20593998
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 21:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239994AbiHOSwC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 14:52:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244389AbiHOSvE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 14:51:04 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C417B43E42
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:29:04 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id bk13-20020a056830368d00b0063723999f31so5973919otb.8
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=+2lJJE7hfrkayt0qzi/fmG2izz2GLSD8nOH7tC1AeLo=;
        b=Lc4mNTi56/32O+lgEowursl3S1QdLAWj1FpOC5XA+F8Rx3hlrgkYOxG1d54XP1PQRd
         mRXvLbXoAcxba3284ULxJIFBNCvTT393HISNfqbcZuOLFtg+LqNpWh6FTFFT1Kn55/rk
         zAZXdzx4ceCx8rckPOQCS1eQ62LLF9XQdJtL4mfhlygbh3m8UIe1cBmEMwyCyVggoqQ5
         0AQrM/A7lyijOyzdtN6eZC5x/J5rIMS+uFtUFMAl/SWgdp5wlh8OC3/0n6nNp5sceRpk
         UgecbFyp9AiB0Vs0GSuanHfZWxpaVLDqfOE02iJGWyO2aUyx6mnP3+zKwWw4DwnIGAqg
         KVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=+2lJJE7hfrkayt0qzi/fmG2izz2GLSD8nOH7tC1AeLo=;
        b=0BgdeZ/WHrDH6+0jIjkwUfq3i9+QkaquIwO/BXDmTPJgn3x95WgyD3i/WD0+RG82uo
         l5OB9T0flrXh+1vHQPrtB3Dzy5AHhpD+/qvmtmt/gUAke7jWK7G8yV/lUp8ROcCAWfoK
         bI49hHRjMvf+4vmyncJTTyy+Qo0peYawm8dsCbMO8eFZ3L8VOagQVR3uACbIUlJ5i0Zx
         +3o46BFr4Ku/WOAXNIwZgKYxLiTJMavWryxMxrMeK5wm/AI++/mcNkXpUZw3xBu4OwYy
         ZzbchHYUA7ZZ4CDRY5zttxXf3gR53P120H0dZVxNwMvblMOGchavTRejtCV4LbmXcvVp
         8hcg==
X-Gm-Message-State: ACgBeo3wTHnkfg5D5V3o8OmHGxe2Gp5Z6VsFuv8d1ev3uekNnthy17o2
        g2nvyAteAlsRXZ6vm6rHM6aC/DLJzgNNAcRfi53ZYA==
X-Google-Smtp-Source: AA6agR76AJA44USeULweUjdFYUfN/+GbzCosXIK/UxZ4AEkVDK/VEN27cHeW+w+gAM3CyEeE2422VPU3VsRAqluGTjk=
X-Received: by 2002:a9d:490:0:b0:636:825e:3b6 with SMTP id 16-20020a9d0490000000b00636825e03b6mr6661546otm.91.1660588143705;
 Mon, 15 Aug 2022 11:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220729104441.39177-1-angelogioacchino.delregno@collabora.com> <20220729104441.39177-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220729104441.39177-3-angelogioacchino.delregno@collabora.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 15 Aug 2022 20:28:07 +0200
Message-ID: <CAPDyKFqqb=FC85PAMPtrfp=vn5HWB2tXqUCY4Yjd_twxL8sY=w@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: mmc: Add compatible for MT6795 Helio X10 SoC
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vkoul@kernel.org, chaotian.jing@mediatek.com,
        matthias.bgg@gmail.com, hsinyi@chromium.org,
        nfraprado@collabora.com, allen-kh.cheng@mediatek.com,
        fparent@baylibre.com, sam.shih@mediatek.com,
        sean.wang@mediatek.com, long.cheng@mediatek.com,
        wenbin.mei@mediatek.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Jul 2022 at 12:44, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a compatible string for the MT6795 SoC's mtk-sd mmc controllers.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index be366cefffc2..e1ceefe0ae48 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -20,6 +20,7 @@ properties:
>            - mediatek,mt2701-mmc
>            - mediatek,mt2712-mmc
>            - mediatek,mt6779-mmc
> +          - mediatek,mt6795-mmc
>            - mediatek,mt7620-mmc
>            - mediatek,mt7622-mmc
>            - mediatek,mt8135-mmc
> --
> 2.35.1
>
