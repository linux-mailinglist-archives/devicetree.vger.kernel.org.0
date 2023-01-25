Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF2DA67B557
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 16:02:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235562AbjAYPCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 10:02:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234966AbjAYPCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 10:02:45 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10CE1BFD
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 07:02:43 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id qx13so48312442ejb.13
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 07:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wapkp7jQNP7w6mlbVx+sKZqdo7KAYoZ0tdxTdIM62U8=;
        b=KbVn7SnwqKkdU0hL+9SxfPG2WxS+0BbpGxfl3RWlHmlfbNdf941qxSilRdh6RnKCUg
         Xs5/nLQzVApVZw6Zl/6Jk5IrpXtUXDk3BvzfGJuTMWFNFMCJFstg2aRWHINkjY5C85TG
         YYgCL4WvvksBn7jr57XAED/uOGUpUUo2Deqjz2NKnYfj8btdEl7shc0BQnJ23AP0O27Y
         6oXjZSMKLcSgPkH+vzw8h12sNj4PtVTma2MQxGf/XOS9L8RVh1QKx4IHRPsxxuuAruw2
         bCXNioSELe6CTXRFM9gNNfLJTg8k9cxIT2G74qfmnVSm2teFg+lREseplhfZMBK/Y1Hr
         Bmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wapkp7jQNP7w6mlbVx+sKZqdo7KAYoZ0tdxTdIM62U8=;
        b=Jx9FBV/VfoFd6Pf+Cs3JzjCgdGHJhyRQ5kAxQKL8Svf7DdTvrjCuJaeSqRuCxxmMpv
         owR3IL+Law8iJbM4Q+TH9r19Za3RFtjhmtk/s6W2vShNbl4nEmUzKrg1VctDnfIt11Lo
         8I/WK4HmK9ucJxki3/uDNc0P+jp8OQrMSWjuvckic8Egl/+v5nGGklj4kfbtSwRf3QSo
         Q7otGzxh3IjsDAfhETPkUuNKdIzrR4APqYDN0MLRCr62WskLDAh+rRwH4vZxuj26YIg6
         r9cAaANxRwgXyWHQiRCBQK73zdcsJ5G1A7o0O3KSgESID+hsM5qA3wjDEDNgZd7sHjsl
         qS/Q==
X-Gm-Message-State: AFqh2kojjntU+cgFgvg2+/lGQdTFsfTQL3CdaNk2bA9HU4ULSU6Axvoc
        tFU7Hu5CVBbVDKw6Fdtss6oDBWKtS9mKIKmcJZy0qg==
X-Google-Smtp-Source: AMrXdXs2eqPlIq51Dl1jYiUSg01kC0cn8kaqWKVFw9WGWQZwi/uHjvKD6XF5gIiXDW/HAlyKlCaek/h/NMBZaQfBM6s=
X-Received: by 2002:a17:906:71d0:b0:86e:40e4:9d8e with SMTP id
 i16-20020a17090671d000b0086e40e49d8emr2871902ejk.352.1674658962151; Wed, 25
 Jan 2023 07:02:42 -0800 (PST)
MIME-Version: 1.0
References: <20230124131717.128660-1-bchihi@baylibre.com> <20230124131717.128660-2-bchihi@baylibre.com>
 <976628a6-58c8-3298-3777-97aaddf53bc1@collabora.com>
In-Reply-To: <976628a6-58c8-3298-3777-97aaddf53bc1@collabora.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Wed, 25 Jan 2023 16:02:06 +0100
Message-ID: <CAGuA+orL4QPFic0vaKSqm5mQNkCT6=CuNxCfRuUutarP0sCJog@mail.gmail.com>
Subject: Re: [PATCH v11 1/6] thermal/drivers/mediatek: Relocate driver to
 mediatek folder
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 24, 2023 at 4:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 24/01/23 14:17, bchihi@baylibre.com ha scritto:
> > From: Balsam CHIHI <bchihi@baylibre.com>
> >
> > Add MediaTek proprietary folder to upstream more thermal zone and cooler
> > drivers, relocate the original thermal controller driver to it, and rename it
> > as "auxadc_thermal.c" to show its purpose more clearly.
> >
> > Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
>

Hi Angelo,

Thank you.

Best regards,
Balsam

> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>
>
