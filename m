Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EAA02FE454
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 08:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726777AbhAUHsc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 02:48:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726600AbhAUG6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 01:58:14 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A29EFC0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 22:57:32 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id b5so1032144pjl.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 22:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rUtmDYOZWBTxf9UWZYyTgxEJymEAYD1V+CFm2Cwj5oE=;
        b=zKWYsAaGAVfkuVwHuXb2le1Ng7fKUWMobE0WXs3dqRKkU7n5Wv1zcU3wNMT76oiTUz
         lLVzgAHjb16iIK2ipXv5aBuUDH1vLeJBVPM325Qpf5SXYOkyopMaPwuzj3nGvEh3oyCZ
         vgEJoAVBW7R8zdFmazofWHebI4dxKvt9zxdt0Dn8Qjx63oYuy7nbAnnjomTJxo7vm22G
         GjD4th4VSyw84uD8FnaejQWDFGH8CYHr9zFqz0K4TT0kTjNzRo5mI/6sXlTdPLQqukqU
         L0vHeWu+0istqq10w3eS3yE3urL9XpPvd8KdVeC7OIz6a8ktEPhgf4wjmXBK9dzx6y/h
         NkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rUtmDYOZWBTxf9UWZYyTgxEJymEAYD1V+CFm2Cwj5oE=;
        b=G1Fn0e3xZq3jFFyUjw6DPRTgFfnMbTbisFdH7e3znJMSJP2SN2gmcKGOUiJXRgl+ne
         GQXaAzZ8kNmi9SKCh+jtYmWw3FviWXnN+ghGqTEv0QMmwEhWxghwGiXgiZQyPPGjwN2d
         OQgsM62vdSdhX5GH6MXtgynjvmIEwZWCjCMH2XVvDe4dli1zAOobqOygFNaC7EKf6FCj
         4zF9KZ590ALPUvFhawuOWaWpMU9WV02T/OWTw86OcTCPMAZWaA9CmlHuDsKXe2tv0gq9
         R+enC/ubXDdOLjNRs2oOtZJBts3qklWRPLghyQQiiFUUh9PMCyThOEkfLYQWZpjjNwv5
         4LtA==
X-Gm-Message-State: AOAM531hxYNNJkurOXuOu/QEccHB+7XK9UHOdxTbuvSGuSt3qP5X14Hj
        n8kWH7ZxAdAjh7z+ikDGqPHMQA==
X-Google-Smtp-Source: ABdhPJzhOl0HtEqutqCzxnWljZBU8BwIKjgI+j16tebtc4O5786lYFY0Hbxtp5+iVNVOGNHTqKEsXA==
X-Received: by 2002:a17:902:ff04:b029:df:d5e5:9acc with SMTP id f4-20020a170902ff04b02900dfd5e59accmr334016plj.1.1611212252012;
        Wed, 20 Jan 2021 22:57:32 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id t2sm4593111pju.19.2021.01.20.22.57.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 22:57:31 -0800 (PST)
Date:   Thu, 21 Jan 2021 12:27:28 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bill Mills <bill.mills@linaro.org>, anmar.oueja@linaro.org
Subject: Re: [PATCH V5 5/5] of: unittest: Statically apply overlays using
 fdtoverlay
Message-ID: <20210121065728.trqph5uwvp43k46l@vireshk-i7>
References: <cover.1611124778.git.viresh.kumar@linaro.org>
 <696c137461be8ec4395c733c559c269bb4ad586e.1611124778.git.viresh.kumar@linaro.org>
 <20210121005145.GF5174@yekko.fritz.box>
 <7d6adfd9-da1e-d4ca-3a04-b192f0cf36b0@gmail.com>
 <20210121053426.4dw5oqz7qb4y7hvm@vireshk-i7>
 <20210121063438.GJ5174@yekko.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210121063438.GJ5174@yekko.fritz.box>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-01-21, 17:34, David Gibson wrote:
> No, this is the wrong way around.  The expected operation here is that
> you apply overlay (1) to the base tree, giving you, say, output1.dtb.
> output1.dtb is (effectively) a base tree itself, to which you can then
> apply overlay-(2).

Thanks for the confirmation about this.

> Merging overlays is
> something that could make sense, but fdtoverlay will not do it at
> present.

FWIW, I think it works fine right now even if it not intentional. I
did inspect the output dtb (made by merging two overlays) using
fdtdump and it looked okay. But yeah, I understand that we shouldn't
do it.

-- 
viresh
