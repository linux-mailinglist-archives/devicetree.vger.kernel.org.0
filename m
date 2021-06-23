Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0533B133E
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 07:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbhFWFch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 01:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbhFWFcf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 01:32:35 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42BB7C061574
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 22:30:18 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id x12so1433088ill.4
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 22:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OkwJfD+9JbK1oq4b62hgbaE6jtrSjfI6D/NEnPdUhSA=;
        b=vBFzqdReY0r/43igR8DEqJFlggZn1MvcSot69Vc50whSaj2Dt4xL0ZorQwwDlw/U7W
         BQNTD2XNDg1RbFSw5ClR8owRgQ6crAWxAEYOnT24zWnnak1VPSOVU6d9DXul6KWsxxXl
         NbTw7RjEhz8MLsUQP74FpAsNhaHiLAzJP7R8C0Rz2tZwGyRxo+3A4lJvb3f1YGApWASS
         9zT1GTiBYqWGXteMzM099F1Uf7OwvhY80MQugeUAvH7EWV3mBTC9ZzH8bB0g9C0sKPuB
         maVzN1J/nTLfs8s0sDC5LM6eIw0bCGfR4FdQlm38RgYM96oNWABZ56gVlsKxq0qxu+Sg
         HjGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OkwJfD+9JbK1oq4b62hgbaE6jtrSjfI6D/NEnPdUhSA=;
        b=J7E/czSAuyd5ea+5l6S/B4Juu3IetaI9LnL+zPena0vHfpt4H5RNp3aiHRQbOwjC+b
         pKIri3J0WrW2IGEITS0OPDHJkCPXraTWeiARXJ84i9OVUocpQ89w5EZaslzihny3gYcK
         630hOAFdV5Gkt0ukFIJbeVW7v9YhArt9g7OvAoXiZenwcwTJMd29t8GILt3PfXH3rmC0
         skTRB1e1jYJmChtYPYIQJoET+rhnFC4pHpuC7spb8BY5M3yBAfj3ETE/aVI0hykjp5bi
         LM9eOPOMFBZCF4F/dA95aLUe9ZBV/G/Aad0Hz9vSQ9cRypvtd/bzTLYvbINeIdHCxPZ8
         fs4A==
X-Gm-Message-State: AOAM531uDkaK1gpxcChDcW0zyuEQqEsvhqj5WXqz9mjpt94paX+hUYvp
        Wrn84OLEL8nFWlDr1ffnNVFjezLE4quG8U1khh3zxg==
X-Google-Smtp-Source: ABdhPJxV+0U33TwQlRrhkYebAuOuvvUm2yiD8B+cLmDSJV3xpHJxOwigW3tDHsI7+qrB2LoPw7JRgcwumeLjH3MAehI=
X-Received: by 2002:a05:6e02:1064:: with SMTP id q4mr1653159ilj.127.1624426217267;
 Tue, 22 Jun 2021 22:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <1624271985-23591-1-git-send-email-kewei.xu@mediatek.com> <1624271985-23591-2-git-send-email-kewei.xu@mediatek.com>
In-Reply-To: <1624271985-23591-2-git-send-email-kewei.xu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 23 Jun 2021 13:30:05 +0800
Message-ID: <CA+Px+wXb-kO7CJP9M6C06YAy6QMaoA0sDe_RO+RMTKT9WoQDkA@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] i2c: mediatek: Add OFFSET_EXT_CONF setting back
To:     kewei.xu@mediatek.com
Cc:     wsa@the-dreams.de, bbrezillon@kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
        qii.wang@mediatek.com, liguo.zhang@mediatek.com,
        xinping.qian@mediatek.com, ot_daolong.zhu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 21, 2021 at 6:40 PM <kewei.xu@mediatek.com> wrote:
> Fixes: be5ce0e97cc7 ("i2c: mediatek: Add i2c ac-timing adjust support")
> Signed-off-by: Kewei Xu <kewei.xu@mediatek.com>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
