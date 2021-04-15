Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5E735FF8A
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 03:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbhDOB2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 21:28:39 -0400
Received: from gw.atmark-techno.com ([13.115.124.170]:36046 "EHLO
        gw.atmark-techno.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbhDOB2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 21:28:38 -0400
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
        by gw.atmark-techno.com (Postfix) with ESMTPS id 74DFB8048F
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 10:28:12 +0900 (JST)
Received: by mail-pf1-f197.google.com with SMTP id c18-20020a62e8120000b0290250828ad346so1908771pfi.12
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 18:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FOM9b0pdtnYk8Fnx4fGxxS9X4Bl0c34VqGJkMkPLCys=;
        b=sLPExGV0RAZx0NTjmtu4rcKqcXTuV/Pdg9LvLtqM/ryraWFtkXoKI+DqzgariWI/xt
         McqarLWv+QFDp9g87YHqh1RIgeel9TNVVoySOZGUkccpDIRsHDgNFCmtclCMyB2RVvx3
         0K38jgD//SnwtbPvKokGamW9Uqwlufc6k0E/enAnmH6qd93rgHuvjgji8iDF0RXw6WKA
         T+sR3yGjP3fZCPyLL3zD1ld/RYI+TaektaorT/VOVQNz4SXYxmPYymKPgk2iw7p5ORe+
         1sddOkD+DF99mjLjpM5CR5DQ7t7m9xGEkCrfIMK4rnIUov6kye4KT+6rbWdZ+mrkdJY4
         Zygw==
X-Gm-Message-State: AOAM533s4Tq8oR387bNCSEzkdSuMmBOTvztI59pERAxlxE4vWHrtNQiS
        6Jk/7ZlTHf8LyL26bJfd2c2UkGK0HwAO3Un7eF6IUDwnkllcCVm3yOkd/ON3m2B8F3f18OqIBlc
        4Q65MnbeCEhWqZoW9jXkv8AhM5g==
X-Received: by 2002:aa7:9299:0:b029:21d:7ad1:2320 with SMTP id j25-20020aa792990000b029021d7ad12320mr936594pfa.22.1618450091301;
        Wed, 14 Apr 2021 18:28:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwOS8ZF+FYzG7w9Mf8YFdOFOmZ/r+RgZwkgg5u3LbU7N9Rak2ehntN57YQtvkLegkVtKjlWww==
X-Received: by 2002:aa7:9299:0:b029:21d:7ad1:2320 with SMTP id j25-20020aa792990000b029021d7ad12320mr936569pfa.22.1618450090996;
        Wed, 14 Apr 2021 18:28:10 -0700 (PDT)
Received: from pc-0115 (178.101.200.35.bc.googleusercontent.com. [35.200.101.178])
        by smtp.gmail.com with ESMTPSA id e1sm643595pgl.25.2021.04.14.18.28.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 18:28:10 -0700 (PDT)
Received: from martinet by pc-0115 with local (Exim 4.94)
        (envelope-from <martinet@pc-0115>)
        id 1lWqng-004w4O-Qv; Thu, 15 Apr 2021 10:28:08 +0900
Date:   Thu, 15 Apr 2021 10:27:58 +0900
From:   Dominique MARTINET <dominique.martinet@atmark-techno.com>
To:     "Alice Guo (OSS)" <alice.guo@oss.nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [EXT] regression due to soc_device_match not handling defer
 (Was: [PATCH v4 4/4] soc: imx8m: change to use platform driver)
Message-ID: <YHeWnuDQo76rYoz5@atmark-techno.com>
References: <20201120101112.31819-4-alice.guo@nxp.com>
 <YGGZJjAxA1IO+/VU@atmark-techno.com>
 <AM6PR04MB60536EF0DEEE6EB64CF29390E27D9@AM6PR04MB6053.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <AM6PR04MB60536EF0DEEE6EB64CF29390E27D9@AM6PR04MB6053.eurprd04.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alice Guo (OSS) wrote on Tue, Mar 30, 2021 at 02:41:23AM +0000:
> Thanks for reporting this issue, I'll check and add a fix to handle defer probe.

I haven't seen any follow up on this, have you had a chance to take a
look?
If this won't make it for 5.12 (in a couple of week probably?) would it
make sense to revert 7d981405d0fd ("soc: imx8m: change to use platform
driver") for now?



While looking at the code earlier I also have an unrelated, late-review
on the patch itself:

> +static u32 __init imx8mq_soc_revision(struct device *dev)
> [...]
>  @@ -191,8 +223,16 @@ static int __init imx8_soc_init(void)
>         data = id->data;
>         if (data) {
>                 soc_dev_attr->soc_id = data->name;
> -               if (data->soc_revision)
> -                       soc_rev = data->soc_revision();
> +               if (data->soc_revision) {
> +                       if (pdev) {
> +                               soc_rev = data->soc_revision(&pdev->dev);
> +                               ret = soc_rev;
> +                               if (ret < 0)

I appreciate current soc_revision are "small enough" (looking at
include/soc/imx/revision.h we're talking < 256) so this actually works,
but would it make sense to either make soc_rev signed, or to have
soc_revision() return a s64, or have the revision filled in another *u32
argument to make sure the error is an error and not just a large rev?

This is most definitely fine for now but that kind of code patterns can
lead to weird errors down the road.

Thanks,
-- 
Dominique
