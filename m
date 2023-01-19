Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53E4C674299
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 20:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjASTUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 14:20:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231424AbjASTTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 14:19:32 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D9DB966F7
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 11:18:36 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 20so3927265ybl.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 11:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+U4onQw8J6//2ZhGgL02cz4dornnJ3jQwTHu/4YyLg=;
        b=latVkeTlJC1MhsTEw4hyUxoaOwZlYA8HI1VkQBSq6KkesQVhFnCjpqw5kDf9mJJLZv
         pXnwqATf83GvJqs66hWsEZcS4OA5GqjN+oZlQNCkHGMFyTyVVe5FIT+sv3M7YfTGC6ZW
         ryhSBZ5aez2AHOyoS+pRZRgkBggvQCa8XLJXrbFOnOG+qBUh0PjGbN3oVzczQz0w2xnJ
         Iu3tECiPKtT9gFzobXwPFYusR66FCPjjQMbdO3f19tEAmaUI7aQ1eSsMJt5zchJMxNzj
         d49Mx2Aq4x2IvtQNFAsk6dqdgCOUHTfjuJHTzjHdt3zhmR9/e+HYjsy8P0VFM21j3eTl
         McSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J+U4onQw8J6//2ZhGgL02cz4dornnJ3jQwTHu/4YyLg=;
        b=QOEmV43kb/PvNrKjRaCxFhMpxbvNBeW2F9zQHjGAFEOftHxJuqJNFr7pGkKmB+7aaK
         UINAHRoqC9oTlIXLp2VAyeSPlWlV1aZh91r5vIUCQOFDseQ7X1MP7QPZCWncW2ZaZpWO
         F/rDB0+OMUssL5vFqVhnKEiUe7uk9SnGuaS4II+HmkrUrsWar4K2hpbni/OZQ4Mx5XUH
         F6db+2Ygs6UrL/QLF9SjVQ+leWwrvWqRAkKthrwhRssFEDa0MBcCb1zuz+k5/sz+gbd+
         dUw1K1M04HHF16WRGn/NULJGKAZw2zshDaHhXFbsX4JKG0qQ7rJcGDwQhnUZBJGWWyj2
         B8Qw==
X-Gm-Message-State: AFqh2kqaqm+nDUEbpNMvpBcHONVT2UygbUGIyZVicHuEb3i1htCu5qYa
        7BKF+WppBaphP9pZHOurFhg64tQ2PSphlAESo1FVRw==
X-Google-Smtp-Source: AMrXdXvdTXiCgoRxs/AtsimpHKT/QMbNhLg3oEemY0fsJQphWe6eLtMm87GW9EyUGmLS7gobT44hzZvCkU2w4yxVFro=
X-Received: by 2002:a25:4e54:0:b0:7fe:6d35:1a28 with SMTP id
 c81-20020a254e54000000b007fe6d351a28mr291812ybb.534.1674155915290; Thu, 19
 Jan 2023 11:18:35 -0800 (PST)
MIME-Version: 1.0
References: <20230118-mt8365-spi-support-v1-0-842a21e50494@baylibre.com>
 <20230118-mt8365-spi-support-v1-2-842a21e50494@baylibre.com> <60766c7b-abb2-3afb-aa16-0e1385b88a73@linaro.org>
In-Reply-To: <60766c7b-abb2-3afb-aa16-0e1385b88a73@linaro.org>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Thu, 19 Jan 2023 20:18:24 +0100
Message-ID: <CAFGrd9rtO0B2XWEEU6gtv39PndjdjLL6tbRWimWT3RvLu1GFrQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] spi: spidev: add new mediatek support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le jeu. 19 janv. 2023 =C3=A0 17:49, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> a =C3=A9crit :
>
> On 19/01/2023 17:28, Alexandre Mergnat wrote:
> >       { .compatible =3D "micron,spi-authenta", .data =3D &spidev_of_che=
ck },
> > +     { .compatible =3D "mediatek,genio", .data =3D &spidev_of_check },
>
> Please run scripts/checkpatch.pl and fix reported warnings.

Actually I did.
I saw: "WARNING: DT compatible string "mediatek,genio" appears
un-documented -- check ./Documentation/devicetree/bindings/"
But there are no bindings for spidev. I've made some grep on already
supported compatible devices like "micron,spi-authenta", but I didn't
find documentation to add "mediatek,genio".
Do you know where I should document it please ?

Regards,
Alex
