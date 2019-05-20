Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E6981231E1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 13:00:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731459AbfETLAU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 07:00:20 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:51893 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731332AbfETLAU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 07:00:20 -0400
Received: by mail-wm1-f67.google.com with SMTP id c77so11321700wmd.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 04:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dY6Vm/X1fwZnQ8eZ+SPUjbYNZsQemTeD0TsJJW0/Jlg=;
        b=E49Fgfh98ks/ZozVTB2OfiBHqaRFuicMIjv8YusPYkUFwGgM0DWFn3SRQxK7+VfjN7
         9L8w6T6VnYMWTwkyNCi2bNdOabALssp9s+oYs7TW3syp+gLUiV25GrQM2R2N0CoMjkYM
         eR4B6hu01xaimG0VwTnQSWJNLh7mcmhoMEK9c8844TlPSl/WH2piBGd8hhuP77z4hOFk
         P3R45yx8cFj7pJuob0pHsHAtSkjaeX+D5MsQKbr2r7YypR4Bj0qGW1nHMDRbPi9aO143
         wOo9tUtq3AhlhOA6SCGNEryuRtX8GF458xueJSQ4vAdq9UbZQBrLePcoCccsfhdc4+Bu
         KogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dY6Vm/X1fwZnQ8eZ+SPUjbYNZsQemTeD0TsJJW0/Jlg=;
        b=mgKI7i0JR4Z6MqmvhZJkg/CzBB+EuDah9+ErS+bJK4ZC7BCx37Z+R0jElE5ccy+tYx
         XgE6cd/H9jGjH+7K9Au2eE5VqQW4maRvMdxIxIOQ0H+hmon1CucQTSXwoLntxRCgGFQo
         2soePsn7Zbf1akfNpiIGSPE1c65g7zZy5KOYiWpQHaSxAl5NqVJ7rYLZIJzpX04LNqpI
         cTEr+0O9NWYm3XrRZ2Ouq02I1H1XetNCYedCCvPrASzGJI2MudDcKJH4mArAbWM5wWX6
         n6hyKKjP5WubW0p4E49r801lDfICymVSnLnaKIRZM7zUig+GyaVZjZpi2arOPs9jo1Mx
         xN2w==
X-Gm-Message-State: APjAAAW1oyNzUXM6Ex2PCp0ntARyGmLdd3fRWVX8LBRltftUXSxS7U0U
        ccNvJlWyIY8LSBi2HcAIRhk=
X-Google-Smtp-Source: APXvYqxO7JEe30jPJyHjEt36HwpYLbb3bRcMWqZK9SnjCQkZPXbbGO5T+r1SUrl7zUYPzKcDhmLVpw==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr31674752wme.83.1558350018039;
        Mon, 20 May 2019 04:00:18 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id 91sm25263075wrs.43.2019.05.20.04.00.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 04:00:17 -0700 (PDT)
Date:   Mon, 20 May 2019 12:57:51 +0200
From:   Oliver Graute <oliver.graute@gmail.com>
To:     Aisheng Dong <aisheng.dong@nxp.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: Re: [PATCH 1/5] clk: add imx8 clk defines
Message-ID: <20190520105751.GA17256@optiplex>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
 <AM0PR04MB4211706D24BBF3F9FB6CAF28800B0@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4211706D24BBF3F9FB6CAF28800B0@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/19, Aisheng Dong wrote:
> Hi Oliver,
> 
> > From: Oliver Graute [mailto:oliver.graute@gmail.com]
> > Sent: Friday, May 17, 2019 3:18 PM
> > 
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > added header defines for imx8qm clock
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> 
> It seems you missed this one.
> [00/14] arm64: dts: imx8: architecture improvement and adding imx8qm support
> https://patchwork.kernel.org/cover/10824537/

yes I missed this patch series. Thx for the hint. I'll try your proposed
patches soon on my board. I'am also interested to get this working.

Best Regards,

Oliver
