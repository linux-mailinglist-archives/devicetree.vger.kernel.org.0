Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A93B53D5772
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 12:27:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231959AbhGZJrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 05:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231639AbhGZJrY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 05:47:24 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33722C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:27:53 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id y9so11144757iox.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=VeuFNMGt7cc+sZnYCAlbQ9kgqLoyYbbqOv5SFUOzDKo=;
        b=G21T1rtYhky71jyUfOulUpdgSuti6vwyrimYkS6dw1KD08oPgwiQts13EPEVF2+cC6
         eaJIUg1zzDe2KJ1HoO8WUrvZ93ylRuoqAZ/G2PEXJhbIv5KaTj8u7PpmkMi7eeuTS2cp
         8L9hIzcKOS8hxm1+SCwNcPtWzY0dg9Z3dYPPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VeuFNMGt7cc+sZnYCAlbQ9kgqLoyYbbqOv5SFUOzDKo=;
        b=oCuC57C0xJdJ/OZNGzkqTdcxz2sjRyS9EJBGFjbWS5tMbIiNaB0qHxdfcGxhZH7ua2
         f9ybgfTy6FG5MFqHO4010exegdNf+qBnYtuP3lIMnmaJI8MXQ2parAibtop3v8Cp+n2W
         RDIitqktyOp22I9oSFXhk26kDNJMpx86NXOG5Vxe3yIPrqGUQTDhTFU3WS+SievSLKk1
         eC4oBXDfYouqwes6ulXy+TpnVdZQRuPHeyY/6rrkr1E43n2X/od1iGmgBKEPrTJg+Yps
         W/uz1DeeyaxSJfcN3wIpxDYvPsxz8zZBegn9FyXmdx5YVKXdGSto+TYJRKGXNuzLn4wh
         qfcw==
X-Gm-Message-State: AOAM531TnWw2+fgoBmuktetCv5snz/98ubwBbg9FLRQNED6nlDGit9pG
        scEHKtuSvro8bkH/0+VS8LMYPCIcBxqoGu1j6VxZPg==
X-Google-Smtp-Source: ABdhPJw0FFNi2dYJU/QGrd2nQkNz4DDpGuCZzOaQzymzxGB/MC3mqsj+3ZXduw3IG4+Mj9fckr7GEr/dpzA7gMfHPHk=
X-Received: by 2002:a05:6602:2d10:: with SMTP id c16mr14344754iow.40.1627295272543;
 Mon, 26 Jul 2021 03:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210622030741.2120393-1-hsinyi@chromium.org>
In-Reply-To: <20210622030741.2120393-1-hsinyi@chromium.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 26 Jul 2021 18:27:26 +0800
Message-ID: <CAJMQK-hiDDH1ypoDcQYEQZ0Vq3X-mTfZbF7qfRbGtD2zBH=oxw@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 1/2] arm64: dts: mt8183: add mediatek,gce-events
 in mutex
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 22, 2021 at 11:07 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> mediatek,gce-events is read by mutex node.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Gentle ping on this series. thanks

> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index c5e822b6b77a3..cf22d71161e58 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -1250,6 +1250,8 @@ mutex: mutex@14016000 {
>                         reg = <0 0x14016000 0 0x1000>;
>                         interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
>                         power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
> +                       mediatek,gce-events = <CMDQ_EVENT_MUTEX_STREAM_DONE0>,
> +                                             <CMDQ_EVENT_MUTEX_STREAM_DONE1>;
>                 };
>
>                 larb0: larb@14017000 {
> --
> 2.32.0.288.g62a8d224e6-goog
>
