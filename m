Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DFF343B700
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 18:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbhJZQYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 12:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233975AbhJZQYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 12:24:14 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82D2C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 09:21:50 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4Hdxsl4kRtzQjhc;
        Tue, 26 Oct 2021 18:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1635265304; bh=uMuyU+nblW
        yVFduTcrnnzEZiwTLee7LI2fdTkp+K+rE=; b=AuYEvUoKNGf+SNM3Yye5eWWqSx
        TmosFFU43pS1GssQnibZ9knawQb5KcR6hIl2NHZeKzHF2yjHwzBU3i63ZvC3fpNx
        tQ7NRoirlYCbm5JYV0QSAkegEccCetYHQBnaFLIwXyqVEorCd41lAyfxdAtDysOM
        kcsICK5ZX/XxKYtb7z65jPMdtUtJsqcl6OID2pESY4JvGbOSJ+zJNpQiQw6DpWxD
        bFNiTqbfKZY5898oldQ/BjmTd8K6st5n+tLYCIOVNLgjvWKqggNNWbFP1deNZU/V
        D2imDtTFuoddpkCufCZ2O5pC66JG7Bj/iYDIANHERZED5J7kq6XPQ7ZFqgdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635265305;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Rt+PN7MxBqSh24kKMsH8OfBDuHBm2LuH1qJNjt8mCw8=;
        b=id3/Ht7mGot68SU5CeVGyN4cXmkECh17+DYHZeO4n0x7upnKIfPHBibJjUe9ptmz39yMAZ
        /0xqQG33cY2w2NMl/QCYrgdMcjKJAUWdbo/UGXqIxMV40q4dEWRyjZuUT4lGg239ZIQRJW
        4j6YhgSKz6B1hXCrCFyWOIFgkPZryEzPdiTJP7WYSQCCfhMqhrJ93sPfGi2shQORTKT2Bl
        Jw5gpmlX61XO3nIejv5bpCCoLMwyk7AJphaBlgUbzwsshrI0+dxeKovsC8Syd6kjv8r5MC
        XVcFX+yY4W7yzK49IAn2oNu2beymwGlO86RmR32UUl2prgctuKKfCYQfiPfeFA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/4] arm64: dts: amlogic: meson-g12: Fix thermal-zones indent
Date:   Tue, 26 Oct 2021 18:21:41 +0200
Message-ID: <5508780.DvuYhMxLoT@natsu>
In-Reply-To: <fd76f9e2-f3e1-8520-7569-2390edaa538e@baylibre.com>
References: <20211023214856.30097-1-alexander.stein@mailbox.org> <20211023214856.30097-2-alexander.stein@mailbox.org> <fd76f9e2-f3e1-8520-7569-2390edaa538e@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Queue-Id: 4D70C1838
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Am Dienstag, 26. Oktober 2021, 09:27:42 CEST schrieb Neil Armstrong:
> On 23/10/2021 23:48, Alexander Stein wrote:
> > This node is currently at /soc/thermal-zones, but the later introduced
> > bindings in commit 1202a442a31f ("dt-bindings: thermal: Add yaml bindings
> > for thermal zones") put this at /thermal-zones.
> > Fix dtb_check warning by moving the thermal-zones node to /
> > 
> > Fixes: e7251ed74ef7 ("arm64: dts: meson: g12: Add minimal thermal zone")
> > Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> > ---
> > I admit I'm a bit unsure about the 'Fixes' tag as at the time when those
> > thermal-zones were added there was no schema present. So there was no bug
> > at the time of writing. I'm ok either way.
> 
> I'm also unsure about it, either you list all commits that must be present
> for the fix to be applied, or remove it since it's not a bug.

Alright, I'll remove the Fixes tag then and send a v2 with your Reviewed-By 
for patches 3 & 4.

Best regards,
Alexander


