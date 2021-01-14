Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0940B2F5A26
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 06:04:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726398AbhANFD6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 00:03:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726065AbhANFD6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 00:03:58 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96087C061786
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:03:12 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id w1so4085708pjc.0
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V92Nts5/LO1MQK5AF4Md88e71CzExZyVy0PrsnyGWp0=;
        b=ZIxkgSKOQxF2SnlRPa6ijaMDFwCzAMhvi1F3o319zniXgVzkIhhfQgrrHJ0pWESuh5
         pu+fIo2h9He99+kKwwSaMt9yTh5j9j4MizNabPeRPUONTUAqxB/oUntpS402Q9BUSoRP
         om6412OmHNrqDBcu7c28PCw8Dq/Z0u2ZNNcbHj+GbJkM9AcPg5oVB+BMHF8d7fsgSQnx
         22NWxfglaksP+upjqXHyTtlvAnXn5mkPv1JvKQAkZkC65KSCf5NLtaG60ExjmvkRthpC
         RwT6WkKEXfwIwrlK9xBgN18XTT5XjKtj/pSzbUb6k0YhGx0a2X6kMvEDckvFyt9Cb7fH
         fVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V92Nts5/LO1MQK5AF4Md88e71CzExZyVy0PrsnyGWp0=;
        b=HbBCeVdh2ADBvN6troeYP6juxGnDqk6KbHLUBwDsNb5n7sT+OQCnWdV5k1UAKKbQjl
         v2jNc9PzFdbzkYJzfvT+yLwcxOTd4hrIcmRDzMHPwQB15VIRcdIXTXwaIESrLYR7kRT1
         uz96OEIuK+a/bxtiMnMC9frwN5+0C2cREM8PCfkwU8ari5WFED3cwksLdNChhOlK2v1T
         NqdUeOylSkifjLdwn6ykzgW4TNMf/ejhcSApSabRntM6sBr8EDx5CfByUdWdOzJ4zWhb
         Q7xkn4MZwjM1Loxr9ayExmmXbHTQwnzumn2qvNBMgniprbf2SpcZAgY200s3ZGoIalAT
         xWWA==
X-Gm-Message-State: AOAM530XmDSrs8voPsNC410YaCG7VflNH/IhQ+4yBuaE02YrEWUA92Fd
        fUXG78E8u+AS+/+vIh32aJO3yA==
X-Google-Smtp-Source: ABdhPJxX5ENfqzDWGtwN0g0Mu9zNq2fqM69el2/2b6RDTGqJ2Ab91yOr9QgqkUUcG4WPLZzQKWye4w==
X-Received: by 2002:a17:902:b587:b029:de:23ed:88b1 with SMTP id a7-20020a170902b587b02900de23ed88b1mr5978581pls.61.1610600592151;
        Wed, 13 Jan 2021 21:03:12 -0800 (PST)
Received: from localhost ([122.172.85.111])
        by smtp.gmail.com with ESMTPSA id x125sm4083867pgb.35.2021.01.13.21.03.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 21:03:11 -0800 (PST)
Date:   Thu, 14 Jan 2021 10:33:09 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Anmar Oueja <anmar.oueja@linaro.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] of: unittest: Statically apply overlays using fdtoverlay
Message-ID: <20210114050309.wokrhw4o3cjxj5uo@vireshk-i7>
References: <be5cb12a68d9ac2c35ad9dd50d6b168f7cad6837.1609996381.git.viresh.kumar@linaro.org>
 <1e42183ccafa1afba33b3e79a4e3efd3329fd133.1610095159.git.viresh.kumar@linaro.org>
 <CAL_JsqLpbSOk-OST8Oi7uyFVjekX-15713F1FbDCQWfVWgikMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLpbSOk-OST8Oi7uyFVjekX-15713F1FbDCQWfVWgikMw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11-01-21, 09:46, Rob Herring wrote:
> On Fri, Jan 8, 2021 at 2:41 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > Now that fdtoverlay is part of the kernel build, start using it to test
> > the unitest overlays we have by applying them statically.
> 
> Nice idea.
> 
> > The file overlay_base.dtb have symbols of its own and we need to apply
> > overlay.dtb to overlay_base.dtb alone first to make it work, which gives
> > us intermediate-overlay.dtb file.
> 
> Okay? If restructuring things helps we should do that. Frank?

Frank, do we want to do something about it ? Maybe make overlay_base.dts an dtsi
and include it from testcases.dts like the other ones ?

-- 
viresh
