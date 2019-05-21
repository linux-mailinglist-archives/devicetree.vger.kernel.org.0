Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB04259FF
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 23:34:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727453AbfEUVe1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 17:34:27 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:45324 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727437AbfEUVe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 17:34:27 -0400
Received: by mail-pl1-f194.google.com with SMTP id a5so9014148pls.12
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 14:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
        b=Y0wLmu+PpiLo7vUy+T1dLKysSylXSg7NwAOmGwX9MPYG07Y+1uOVcznI5UzVOu0hCF
         p2wF+V53lMgvx/uZ2rLt/OkiKtI0zDZRIR8kqkWYxre5gGeEgxBkUU0sFg0V0dkCJFmA
         Lu3AzdAwwDLllUxNxExJGK/YFL3iCRzH90A5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
        b=fwzD/xMEhGxYFf+2FORoHwPnM5yjzLX8Uil015r7pxLPvV1Pp+nO24wkipp4NDZJfI
         ynzVNpT1ybY2cHIHtF6quat3rR0LtlVQxo25N3e9rwRNrrgEiuzOpEI9IHYAinCZupgu
         H9Oz1isv5OjzSHJ/yPHAfX/0BFBavi+Ha94K8TGIMRU46OVBouNetgLztWvnqZdH9HB7
         WMRpTahoDL9XWY8tO/9oaPyNIfeb+burd1H6hcSdD7dtgJR70+qiAB+NVtGOgNz8qUY7
         BFLFVQpfS16NR1Nu1ZIc4CY582tSeryrKFFv4sQYxx5z7k+LKJM63hwWUfsqm9+M2nCj
         S6hA==
X-Gm-Message-State: APjAAAXapC5iB1cgZaN/xnluJ3LVXuk6teEZLhrKpQXL8ZTuMIqxw9rl
        WPZBcGwvK7ptBIqRoYciqXH/54rpA9g=
X-Google-Smtp-Source: APXvYqzihHia+iUnsOd86KRdycld+FsIGTxqXQCnCFsb55jp0SddgA52ec+bov96FU2MF9EkB9uLWQ==
X-Received: by 2002:a17:902:21:: with SMTP id 30mr69540871pla.302.1558474466758;
        Tue, 21 May 2019 14:34:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id 1sm24868945pfn.165.2019.05.21.14.34.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 14:34:26 -0700 (PDT)
Date:   Tue, 21 May 2019 14:34:25 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
        ryandcase@chromium.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Add pin names for
 rk3288-veyron-minnie
Message-ID: <20190521213425.GJ40515@google.com>
References: <20190521203215.234898-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190521203215.234898-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 01:32:14PM -0700, Douglas Anderson wrote:
> We can now use the "gpio-line-names" property to provide the names for
> all the pins on a board.  Let's use this to provide the names for all
> the pins on rk3288-veyron-minnie.
> 
> In general the names here come straight from the schematic.  That
> means even if the schematic name is weird / doesn't have consistent
> naming conventions / has typos I still haven't made any changes.
> 
> The exception here is for two pins: the recovery switch and the write
> protect detection pin.  These two pins need to have standardized names
> since crossystem (a Chrome OS tool) uses these names to query the
> pins.  In downstream kernels crossystem used an out-of-tree driver to
> do this but it has now been moved to the gpiod API and needs the
> standardized names.
> 
> It's expected that other rk3288-veyron boards will get similar patches
> shortly.
> 
> NOTE: I have sorted the "gpio" section to be next to the "pinctrl"
> section since it seems to logically make the most sense there.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
