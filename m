Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C190D4B807E
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 07:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240576AbiBPF7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 00:59:31 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:58388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231495AbiBPF7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 00:59:30 -0500
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7057B1017DD
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 21:59:19 -0800 (PST)
Received: by mail-qv1-xf2f.google.com with SMTP id a19so1246436qvm.4
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 21:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CDBQKjrOHx1jFqanGpjTZz0mkLi+B8rGvMm6ZK2mah0=;
        b=ANYaNLWFCQkj69oiskZkSh6DjZmPGeiq9PrEgU2cP3v3dn1nkwLwYm7cx+4vS6oOKw
         RwNzEIyq3NLxuuxq6/pXX241+VkGVJtb86AlOXZXiNaOF+o9MwFTZ3Ial6STIS1UiAA5
         dhBgfFPAMgGgTKfxv7tknbGcdLXT5auCslnVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CDBQKjrOHx1jFqanGpjTZz0mkLi+B8rGvMm6ZK2mah0=;
        b=ALG7UNxYrM1Ok+sZnai16A3Th7GxrAzj7FAX950s9Ydj5pKlicylZGYXYV4KedhOuT
         zWCaGuxPWXTa/uhoLBtCSjhcdt3Hu6Pmh9xUnBhze7MnGvgP3uoXgqPxD4J+CoeCnDao
         Ix8LlKgwm6OGHJZop/erNi9naEZ/pizMt+UMlMt5pDv+608VHGqbpggmX9b40kZr/RkX
         TCBhPW6ANCPEwef+7hWyypLklGYRAJB3RrhCpO+bCOmcF+qi0B25dHnjjSl9IMZUkCQ/
         9EybKXXN9oV7G0TheA75IQyyz3yOa8Pgps1yNKw/5p0ghOZ6xVjKYZVTfc+OTBF0jFiq
         VSSQ==
X-Gm-Message-State: AOAM532vVqFAlwZE4VpUuggdndmMa05KDwAVFP8jXysmqSLvhhATKBFV
        EAWIcrC7c+L2IJJvHq62kWSDfU28DOlmTg==
X-Google-Smtp-Source: ABdhPJz8OqHFh0VtcNfCjeEr08NuQrBcheg66IHZ0sUpEqmPLDIEnrzVh87CkA04hcWhaGdyoKCzPw==
X-Received: by 2002:ad4:5d6d:0:b0:42c:b0ff:cfc4 with SMTP id fn13-20020ad45d6d000000b0042cb0ffcfc4mr887388qvb.0.1644991158407;
        Tue, 15 Feb 2022 21:59:18 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id de15sm17412168qkb.107.2022.02.15.21.59.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 21:59:17 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id j12so2848162ybh.8
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 21:59:16 -0800 (PST)
X-Received: by 2002:a0d:c383:0:b0:2d0:f04e:7ada with SMTP id
 f125-20020a0dc383000000b002d0f04e7adamr1070020ywd.229.1644991156422; Tue, 15
 Feb 2022 21:59:16 -0800 (PST)
MIME-Version: 1.0
References: <20220125085634.17972-1-yong.wu@mediatek.com> <20220125085634.17972-9-yong.wu@mediatek.com>
 <ca47becf-adc9-f11e-5e59-03f203920344@collabora.com> <d9637b40196873f392ac9cebfe369106a6f0eee7.camel@mediatek.com>
In-Reply-To: <d9637b40196873f392ac9cebfe369106a6f0eee7.camel@mediatek.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 16 Feb 2022 14:59:05 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Cqg2xPwtzcom_EZ1tw1tOBsND_i1YAQCO4kF=+eWePBQ@mail.gmail.com>
Message-ID: <CAAFQd5Cqg2xPwtzcom_EZ1tw1tOBsND_i1YAQCO4kF=+eWePBQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/35] iommu/mediatek: Use kmalloc for protect buffer
To:     Yong Wu <Yong.Wu@mediatek.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        Hsin-Yi Wang <hsinyi@chromium.org>, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, xueqi.zhang@mediatek.com,
        yen-chang.chen@mediatek.com, mingyuan.ma@mediatek.com,
        yf.wang@mediatek.com, libo.kang@mediatek.com,
        chengci.xu@mediatek.com, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 2:55 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> On Thu, 2022-01-27 at 12:08 +0100, AngeloGioacchino Del Regno wrote:
> > Il 25/01/22 09:56, Yong Wu ha scritto:
> > > No need zero for the protect buffer that is only accessed by the
> > > IOMMU HW
> > > translation fault happened.
> > >
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> >
> > I would rather keep this a devm_kzalloc instead... the cost is very
> > minimal and
> > this will be handy when new hardware will be introduced, as it may
> > require a bigger
> > buffer: in that case, "older" platforms will use only part of it and
> > we may get
> > garbage data at the end.
>
> Currently this is to avoid zero 512 bytes for all the platforms.
>
> Sorry, I don't understand why it is unnecessary when the new hardware
> requires a bigger buffer. If the buffer becomes bigger, then clearing
> it to 0 need more cost. then this patch is more helpful?
>
> The content in this buffer is garbage, we won't care about or analyse
> it.

I think we should zero it for security reasons regardless of any other
aspects. With this patch it's leaking kernel data to the hardware.

At the same time, we're talking here about something executed just 1
time when the driver probes. I don't think the cost would really
matter.

Best regards,
Tomasz
