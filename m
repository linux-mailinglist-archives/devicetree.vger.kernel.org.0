Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B30C47A122
	for <lists+devicetree@lfdr.de>; Sun, 19 Dec 2021 16:30:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235366AbhLSPav (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 10:30:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231787AbhLSPav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 10:30:51 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D5CAC061574
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 07:30:50 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id o20so28240255eds.10
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 07:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3NR4neBcSa3OVf9zcTRr891OJW6GQ6/iIdu+6NzYN1M=;
        b=oh2W14TdHR2oEhC1XcD0jG913YSk88gaA6ikIJ2a7HXceu11eZnJZfas36H88DO8YZ
         8Zj9FMjGbVsPZSihV4MFWO1EgAwVgwt3DHtannbEc7qA/SrGWJiSkFMTZSph2usLkXV6
         xz8EIqP9krRxAKrWAITL/54K6b3Vrx2BH4ug/iowgxyX6+VmsqchukIdyXAkfYTWYOE7
         4Q1MQTEVsIZomQf9DaKxubb1FFqyACsCDZwA1DidfHkJuGpnpanRgY3Nf4K/2NwI8ESb
         JNW5hhEbzTqw9FzAkRcbpqtFZKovNZGqKN3C+dFY4DNE6VDrAYe7BBmmDI2Ih7B8MvZr
         AUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3NR4neBcSa3OVf9zcTRr891OJW6GQ6/iIdu+6NzYN1M=;
        b=21Mdyn+t4DeXLJITa4Xz408WF9B2fgBPPUk1I9vU7/BvBAg3CVvUJ+a+MYt/SIH72G
         SrQogfl0D3UyfqvT/rKtkpRoODvRGmktvpVe2R/ScaQ2mOgKANqw/oVMdnmzpl755TJK
         EYYRSRcrMX+nZFhANmr41HW0GQTd8rJmpfD9uCMrXcCegEru89rRsIyw12RwxIPimTcr
         Ml/4d+Gy75M36MydTrAokyq5Ntymslz2SCn1WIH0TzAXLshypPbldv5/rH5+ZCKwyI4O
         ODcQfvntBB/nR2hNO08gOTnt76ZNxw34IrflMvOSbRpxlLmYi+3QxODJoQcmROX4w/jy
         c6xA==
X-Gm-Message-State: AOAM531V4xgCJXX8vj4xiVzQEbUyJqx/ldgTohA9RfkX5vm0kDZBFl6p
        BUB00CeCFHWPFgr4rB+5IX+8TfdSXib9qykdoLi77fmRTV8=
X-Google-Smtp-Source: ABdhPJxf2/ofkyCTtyEKzMzBnoQiLt7GKIc7vbKI/YJnZJRORsBun1XfTBIuVsS5iWJPwmINtrivWq7dPxnfil2wzLw=
X-Received: by 2002:a17:907:c0c:: with SMTP id ga12mr7783351ejc.147.1639927849041;
 Sun, 19 Dec 2021 07:30:49 -0800 (PST)
MIME-Version: 1.0
References: <20211219094155.177206-1-alexander.stein@mailbox.org>
In-Reply-To: <20211219094155.177206-1-alexander.stein@mailbox.org>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sun, 19 Dec 2021 16:30:38 +0100
Message-ID: <CAFBinCBNqbu-jftGbt9Ss8KPkv+p48295MX5QBsJbc=yneqa8w@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: display: meson-vpu: Add missing
 amlogic,canvas property
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 19, 2021 at 10:42 AM Alexander Stein
<alexander.stein@mailbox.org> wrote:
>
> This property was already mentioned in the old textual bindings
> amlogic,meson-vpu.txt, but got dropped during conversion.
> Adding it back similar to amlogic,gx-vdec.yaml.
>
> Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Thank you very much for this contribution!
