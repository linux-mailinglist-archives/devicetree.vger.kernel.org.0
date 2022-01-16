Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A953F48FC09
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 10:50:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232479AbiAPJuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jan 2022 04:50:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232360AbiAPJuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jan 2022 04:50:03 -0500
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69FC0C061574
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 01:50:02 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4Jc9Hq3wg5zQlWq;
        Sun, 16 Jan 2022 10:49:59 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1642326597;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=C5LrjAbPdo/A2nrBhoOhdJxR6g5DwmCNB/WVn11zbdg=;
        b=hLHy+sR2gGYWk/G1XB42XLD7PDozerm7RKwnuIr7gFOjT+NnWDeBBw78ZQS7A0A9Ss/js7
        NagfLLaPcQZU8YnzoTm7E1MpdvDt7fp/qlVC5FF6l1H9pfY7yX8CFsvCERCsA8kaueDt2+
        mAvTNw7APHIsidcvfliRo4fPFTDpRx/xq/ORHwAS9q5ibJ+5SqfT4tn4pv3/xU/F64OX1A
        UxrRU+W704H1IPbjqWFaPrrDkcca/6O0+J4X6ThXTGw/HzXvrxo6A4UxDUS1Gq+eLg3umT
        uUTy8LNDgzDbcLEQoMqDjpJjdWs0xtQ2F0gy6eCAqsUeJNsBpHQpoigJYCp0jg==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names property
Date:   Sun, 16 Jan 2022 10:49:45 +0100
Message-ID: <4732096.GXAFRqVoOG@kongar>
In-Reply-To: <1jilulav4u.fsf@starbuckisacylon.baylibre.com>
References: <20220115093557.30498-1-alexander.stein@mailbox.org> <1jilulav4u.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 15. Januar 2022, 16:04:10 CET schrieb Jerome Brunet:
> 
> On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> 
wrote:
> 
> > Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
> > property. Add it.
> 
> Binginds *mandates* ?? the bindings you are adding mandates that, not the
> previous doc, nor the driver.

Well, under required properties 'reset-names' is listed as well as 'arb' is 
required, only 'rst' is optional.
So when creating the .yaml accordingly this leads to warnings this patch is 
about to fix.

> Modifying drivers and DT to accomodate made-up bindings requirement is
> disturbing.
> 
> The bindings should not require that because the driver does not, as it
> stands. The driver requires the arb reset to be provided, not the name.
> Please fix the bindings.

Nothing is made up. When creating the .yaml file I took the .txt documentation 
for granted. How should I know the bindings documentation is apparently wrong?

When using your older bindings conversion [1] I'm fine with dropping this one.

Best regards,
Alexander

[1] https://patchwork.kernel.org/project/linux-amlogic/list/?
series=246453&state=%2A&archive=both


