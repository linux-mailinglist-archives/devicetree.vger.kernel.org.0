Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 89BA678149
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2019 21:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726314AbfG1TmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 15:42:17 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54183 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726203AbfG1TmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 15:42:16 -0400
Received: by mail-wm1-f65.google.com with SMTP id x15so51986885wmj.3
        for <devicetree@vger.kernel.org>; Sun, 28 Jul 2019 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cZDsP6Vjh3qAchq5bA/Y9mmlq5ggucZoGBTvUsBqZwY=;
        b=kBrMw64w8gKf1todfhDdsIKKZmXKC6CCIhiFXHRQnj8umEefttWPZlBNP8Zo5WYV+s
         JU3IcM1QagwKNUKJIWn7RjXL/rZBHj2Fd3AjEW67vicePxs8sbnKzjgFOJYfkU7oNEdR
         cjsuNjxPfeHfTV/FknaxlGZZEPWo/ivyeuoCJ12E8U0Durrq7T5LKDaIHT1Xhiz8jiKc
         s6LeT1DX7/gLob/k/Dxio+0kUTvxqCv5RsdZQZtFQz51kMqT5tFNXJS9ZvSE7liLDAfZ
         rCZ1568QBESuMV1b/QktAYD3Jv6miQYVwvhH30OaP86iiW8oGr7Dp4W+QMIMRLLV7KGm
         mKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cZDsP6Vjh3qAchq5bA/Y9mmlq5ggucZoGBTvUsBqZwY=;
        b=EeD2hqxFqt/y0CRRbOQ1OsxE83PjqXsf3wmT24SHy5b4aXqzx1ODLNM0zcJ1DTxQLq
         6afiaGYR8JZezWnx0RgEstg3I3DR4JBxHu08zCx/tX6dE2AEFHVA7vz188JYJVzQV6wL
         lwp9VAznPNxv/dW9jjiyKtQLuhuCQKVYawvgYuW12f2WItwdz52g9ocnkMmGhsPhcLNI
         tXgk24yIRYvJbKaUH81TmZfylU+I/lbNxxzyGW6IA1MjXpEDYkFCnloNOugTJRCI8LGh
         v+GSWTHjSTby4/HHpPPzP2THtqR0HNIPhq9hvtzuKPb/0LllWBi3KtPKgS6coXekMImr
         ZiIw==
X-Gm-Message-State: APjAAAXdLuRa+2zLZkZ/NK4468JqC2ObVArpAZCIE4gzSqzV1r8Xq7Et
        8IZPGHAQy4Vi62q6BrPOUZiCig==
X-Google-Smtp-Source: APXvYqzIGsx/VwsniuHVTl0QO3Oov9lrT/Mj3/pwgJwPSU5voW/QBxHEjrOMbARMEqeEAiO9dnkabg==
X-Received: by 2002:a7b:c081:: with SMTP id r1mr45595665wmh.76.1564342934763;
        Sun, 28 Jul 2019 12:42:14 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
        by smtp.googlemail.com with ESMTPSA id o24sm65369199wmh.2.2019.07.28.12.42.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 12:42:14 -0700 (PDT)
Date:   Sun, 28 Jul 2019 21:42:11 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, baylibre-upstreaming@groups.io
Subject: Re: [PATCH 0/4] crypto: add amlogic crypto offloader driver
Message-ID: <20190728194211.GA29444@Red>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
 <20190728184803.GA14920@sol.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190728184803.GA14920@sol.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 28, 2019 at 11:48:03AM -0700, Eric Biggers wrote:
> Hi Corentin,
> 
> On Thu, Jul 25, 2019 at 07:42:52PM +0000, Corentin Labbe wrote:
> > Hello
> > 
> > This serie adds support for the crypto offloader present on amlogic GXL
> > SoCs.
> > 
> > Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc
> > 
> > Regards
> > 
> 
> Does this new driver pass all the crypto self-tests?
> Including with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y?
> 

Yes it pass all extra self-tests.
I forgot to write it in the cover letter.

Regards
