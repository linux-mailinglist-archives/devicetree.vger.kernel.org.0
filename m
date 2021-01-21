Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62DAB2FE07F
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 05:19:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726472AbhAUERJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 23:17:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728070AbhAUEPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 23:15:01 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 574AFC061793
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 20:14:21 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id p18so519606pgm.11
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 20:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/js51H5j8YEkJ1QAw4QUNhESpoDZcZaipkmvSBF3vJ8=;
        b=jnfP/qhXcbEDwzaMplikgATYtZSVhAMgAERfcc+QbcAAHWoiuPaZZwIqTw1GHNSwJi
         YE0BkUGg1NnruNPc23VaSZUq+d/l8ymq1LaCCQXBB4sWgDsEDyofNnfAF1U1BnwhaTli
         tBfRJ9+7mlOtv13cI/s8LErc9jEEjAcboQahMLpCqx4dx+a6aDQ3fMtLXAQN2vNewO/5
         u4y/QM44MVVb9D3Lc47AZCvQgp4gjs9P1zuyqu9y46fQuAnChNnhDf0NmbCTjZ1fyoI/
         IepsQI4PhkGUBdEEa+XsTWjy6p/ZdaJlXncJ4KstLhL4cZ8k3Oi/EGe9KSR6JE2jjjWD
         9S+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/js51H5j8YEkJ1QAw4QUNhESpoDZcZaipkmvSBF3vJ8=;
        b=GhTopO6fWk9sxnB9Ss/wfmzo9n1DKw0Y/BpqYTO877Au7ydu4Z+AAax47rhvFBjOGN
         tcBP+5xboL2ozrP230c1m+6bL5wf8cLz+fbHHuKxyHuhmgLL1QDSb4VWo/1NHEvKyJmE
         dn7S17gCzC+eoatTukxZ+oQ4/y5tYNTdVauiygzKTc/4x1pv3DCdjc5BH/rzlEnkHdPX
         6muylbONHNMARlFnTzYLd3/ZsyXjFYdOwu8J4K4quG4gUrcRLIT2FPyU9NKbKJqCD3UN
         EEblYrVuJ76/T+OuSXMAwESh7DzEu1k/otDmK85nOQGdSmxuthM2Zct0GfpRaB1h26F6
         avIg==
X-Gm-Message-State: AOAM530T8jcWfpE+91pyVTAAtg/TP8ECimum3iGEJhQ6FtIWggwmiDhx
        LiJJ3vVSZzexP+96sGQHUX7YzQ==
X-Google-Smtp-Source: ABdhPJyNfu1oKhNTMhCWniKsJbvK5Z/+fGSCjJ0F7YGqkrUuyMSmojyCynTGUOGPqX23gVBM6LLiaQ==
X-Received: by 2002:a63:c54c:: with SMTP id g12mr12427133pgd.449.1611202460901;
        Wed, 20 Jan 2021 20:14:20 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id k141sm1520411pfd.9.2021.01.20.20.14.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 20:14:20 -0800 (PST)
Date:   Thu, 21 Jan 2021 09:44:18 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        Bill Mills <bill.mills@linaro.org>,
        Anmar Oueja <anmar.oueja@linaro.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: [PATCH V5 0/5] dt: build overlays
Message-ID: <20210121041418.jcruqgfxnkblluah@vireshk-i7>
References: <cover.1611124778.git.viresh.kumar@linaro.org>
 <CAL_JsqLoxHGphf4TbQtGPggq=kEUnpoR2QqCQD77ttjnVNt0wg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLoxHGphf4TbQtGPggq=kEUnpoR2QqCQD77ttjnVNt0wg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-01-21, 09:43, Rob Herring wrote:
> On Wed, Jan 20, 2021 at 1:07 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > Hi Frank/Rob,
> >
> > I have picked all the related patches together into a single patchset,
> > so they can be properly reviewed/tested.
> >
> > This patchset makes necessary changes to the kernel to add support for
> > building overlays (%.dtbo) and the required fdtoverlay tool. This also
> > builds static_test.dtb using some of the existing overlay tests present
> > in drivers/of/unittest-data/ for better test coverage.
> >
> > Note that in order for anyone to test this stuff, you need to manually
> > run the ./update-dtc-source.sh script once to fetch the necessary
> > changes from the external DTC project (i.e. fdtoverlay.c and this[1]
> > patch).
> 
> Do we need a fdtoverlay fix for applying root node changes?

I have dropped the overlay files which were updating the root-node as
it looks like it shouldn't be done. Frank suggested (in his patch) to
drop overlay.dtb and I dropped overlay_base.dtb as well.

With that no other fixes are required.

-- 
viresh
