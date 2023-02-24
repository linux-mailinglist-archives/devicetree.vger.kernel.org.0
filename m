Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5B56A199E
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:10:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjBXKKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:10:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbjBXKJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:09:55 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44C113C79D
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:08:40 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id a3so7709277vsi.0
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=erxkKaNmgReQjjCE5Nun08H4QtCCa/ZqQiqJBxoU1Ok=;
        b=X8+SA9pfi1u8C/Wv6YyefYb/yeJjqHbKIaAaHzXq4HKxYUUHaNYaVsO9Vq3GWF2tMG
         30+rCnyWewJtcmlDac+TEe742tubnvXwDpwXdgRGEgAw10FYMe6HKyIg+TGOK7rLHBJf
         6x0CvO35P9Ej3Q+x2erGFEjEPgDOiIYwiFkdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=erxkKaNmgReQjjCE5Nun08H4QtCCa/ZqQiqJBxoU1Ok=;
        b=dPTaukL7fuiN9RcqnaCrgG3VQP4gH5DTlRTvu6feV1+gjkX99Bki+hV/NM1Hxub8XG
         Lbf56YqtadTPRL2P0jnKYZrCTyjXkNGYvvQ+4CL/x6Qm+f4caXcHTa9npx4XytsWJuy4
         SDEvICQAPTinEzxSO/aQFrsjyIMgS/0bQKDTxWYs1po3Rs7wfh6E7s/Fu4KhoK2Apt1/
         TxsFymQr78fhbtqJWW65Sc9Mg4MCaaWikqIN7rXnvz/gbvE5zbB455wN2IrW4ptzSvND
         lQQHSwkwhIcxrexN/Q/zCExFgLV75pYcEgbtbMrQL5K/V224QrdzCbNnhxd9H/VKhBKQ
         Nr/A==
X-Gm-Message-State: AO0yUKViaf/rXMrkmBXOSEye29EPnf9hJuOoJzRrPrnyAe2ZYw5YFaqa
        bsRUiGmpEsDO/WQxxHb4VSSYHu9PqdnGDykcKOW7lQ==
X-Google-Smtp-Source: AK7set/1xvdm5pq0EgFdZuGlRUZGFwjjdxewTbrvfcb4P2N6x5bfqAjJm08NFJELbq4Kj0E1OC3BOpwdByH/f1V0aw4=
X-Received: by 2002:a1f:4343:0:b0:400:ea69:7082 with SMTP id
 q64-20020a1f4343000000b00400ea697082mr2084061vka.0.1677233319375; Fri, 24 Feb
 2023 02:08:39 -0800 (PST)
MIME-Version: 1.0
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com> <20230223133440.80941-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223133440.80941-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:08:28 +0800
Message-ID: <CAGXv+5Gk-G=TTSu8E7v8EHMfrp4j0mwFR32hi3_urPJ3sDxpDg@mail.gmail.com>
Subject: Re: [PATCH v3 03/11] dt-bindings: gpu: mali-bifrost: Allow up to 5
 power domains for MT8192
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:34 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MediaTek MT8192 (and similar) needs five power domains for the
> Mali GPU and no sram-supply: change the binding to allow so.
>
> Fixes: 5d82e74a97c2 ("dt-bindings: Add compatible for Mali Valhall (JM)")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
