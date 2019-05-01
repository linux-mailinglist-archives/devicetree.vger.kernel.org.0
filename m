Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC15C11068
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 01:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726137AbfEAXwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 19:52:50 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:46310 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbfEAXwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 19:52:50 -0400
Received: by mail-ot1-f66.google.com with SMTP id 77so452854otu.13
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 16:52:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R0OfUtgbOzpycYr8iuHMBHzhuimOFdIQvOQuK/0qwdk=;
        b=U0P8lfQkDdLJHjEPdEadxAXu/M232UJCwMkPfjL9OHovwkFTGZV2nE47ThlIcNLZLH
         Rm5n7+ql4o+brCvlWhlxR00HJOud0ftnQFkxdPqPKwyDlBpp0LLEAEZqa9QqO8ouUXyM
         5I4t/qVUJExYuu8UGnjXAJq2utgekCjQQGb8oPf8Igz6AmEHQmrfJUgzl1hBCf0X8ncZ
         RYkJBqAyqFn935lGDWx+ZfBxSD//vN8LNHBDY6YqhfaWuoGCJvUhfl02VWqsXIQyEmBV
         JNFYhJkUbOiWY9pEu9QG42Ax+aE5TkQmXu9sdcibE5XuVvAat1x/P50SbmARMhdELUma
         8/ow==
X-Gm-Message-State: APjAAAWFmG7VYdHzHi0KgEXVn0Bjv2owEwMuH9DT5v/8RAMgwmBtqQJj
        c5XcoNKzjrWPVmMhlK0iEQ==
X-Google-Smtp-Source: APXvYqw0T4QCT53ktSmZ/bDfjHKN1Q33PzMjlDXREV9/xAvpwiGdJgn/fXfPZ0OGxTvrmQK2bgtXTg==
X-Received: by 2002:a05:6830:11cc:: with SMTP id v12mr460277otq.79.1556754770021;
        Wed, 01 May 2019 16:52:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j1sm16365532otl.43.2019.05.01.16.52.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 16:52:49 -0700 (PDT)
Date:   Wed, 1 May 2019 18:52:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Robin Gong <yibin.gong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-evk: Add BD71847 PMIC
Message-ID: <20190501235248.GA25128@bogus>
References: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Apr 2019 14:16:48 +0000, Leonard Crestez wrote:
> The BUCK2 regulator is used for cpufreq voltage control, otherwise
> configuration is mostly static.
> 
> This uses the newly-implemented rohm,reset-snvs-powered property to
> properly handle the SNVS state of imx8mm.
> 
> Between BD71837 and BD71847 the BUCK3/4 regulators were removed but
> datasheet and board schematics kept the names for BUCK5/6/7/8. The
> driver however renumbered 5/6/7/8 to 3/4/5/6. Use the names from DT
> bindings and add comments to signal this.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 131 +++++++++++++++++++
>  1 file changed, 131 insertions(+)
> 
> Changes since v1:
>  - Move compatible property first
>  - Remove address/size numbering from regulators list
> Link: https://marc.info/?l=linux-clk&m=155530430429151&w=2
> 
> Other imx8mm cpufreq patches in that series already accepted.
> 

Reviewed-by: Rob Herring <robh@kernel.org>
