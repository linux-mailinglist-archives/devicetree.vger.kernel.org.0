Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78FBE264300
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 11:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730453AbgIJJ4q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 05:56:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730551AbgIJJyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 05:54:06 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC811C061756
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 02:54:03 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id d16so646836pll.13
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 02:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=F5h+9h0cZdkPW25qpRHYDsEGqxD1XBrnnk/6rX6atkY=;
        b=LlEDCWgpeqDgpOjcmWPATPwqcDWL30ELT2gpQ0RKc+nsv0DmZl7KzR+wBzWa3iOVW1
         hZoj8+bFhHUh00/hle1s8o7hTt4tCw27ur9NNvVYscHMUdlKcnPuo78LoWWf5x0kAyFY
         L82uvFjD+9fe24lrLCvrE/3k9iNz4Eo4rXtBRQ5salrpPxO3Wsi6U77bQMi0iOawjSAa
         m/jDOL+S/WFWakYspnhxAeCxKsonxnGD9xo3YoGuZGIqnkJX1/+YRoRErTaGApix9YhH
         6Wg6UOgHxIYfG6xe1O9LgeOANY8BBnFYOCEaXlypuNSCsnZF5MFqTu6mzDUwx3ZAN4W7
         sWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=F5h+9h0cZdkPW25qpRHYDsEGqxD1XBrnnk/6rX6atkY=;
        b=neREpjfpzAYJJqksvE9iZVNxtDsnlebdLPH4ihjmhwcXmEFYcQgdq7/S2yqexoiGXC
         mBfuSduZGUK9DdvQqkixFrqkTu/Dp/97BKnf52dvnlIAPCUJ6sSbwGZgboBWiru39SaX
         WpqZhUAd6IeA6Jf8Ey9Ih6ABEbT5rlCegnNWQZJlTDnD6+Vb7V1JAVar1qXWV+tEumkj
         bQMX3eTJE2q7TvIyk6CxIt8MMBs3x3+mE7nlkk506h/J1fpJT7z42FLEq4SKqBW3HOi/
         fi0XrpbHy4iJxq4aYQglhGXjN46lEPemG1K4Bj/rhbfW7P+1bqiOQzJktW8rC4UN1utI
         l/wQ==
X-Gm-Message-State: AOAM5319zxqpCWhz43+Oc9GNrytJjw7Ir/h2EgBchQSbms5k9RYXpt70
        S0J8wXK24KHIc2jSIPFELf6V3A==
X-Google-Smtp-Source: ABdhPJyyjLldSPXR3NqdKk6r7B8vIALvfp17tpVuzMdZQmhZeoDWx+QzRuSQDy4vQkGfoH/AbRs4Rg==
X-Received: by 2002:a17:902:b105:b029:d0:cbe1:e7b1 with SMTP id q5-20020a170902b105b02900d0cbe1e7b1mr4789265plr.34.1599731643373;
        Thu, 10 Sep 2020 02:54:03 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id c3sm5514471pfo.120.2020.09.10.02.54.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 02:54:02 -0700 (PDT)
Date:   Thu, 10 Sep 2020 15:23:55 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Frank Rowand <frowand.list@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200910095355.s5lwv3mp2mcz2sdd@vireshk-i7>
References: <ee7439aea0c2076aab5dab26d8266d5faab01b6b.1599632119.git.viresh.kumar@linaro.org>
 <CAL_JsqJadbhUSiVQWAL5uDzqpkDPWT+M7nGDVJ7Wyf4zHkPvEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJadbhUSiVQWAL5uDzqpkDPWT+M7nGDVJ7Wyf4zHkPvEg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-09-20, 13:35, Rob Herring wrote:
> I'd really like this converted to schema first given it's more than a
> minor change, but I don't want to hold things up. (Though, where's the
> new driver?)

Sudeep will re-work his older patches to get the separate driver ready
for inclusion. We were blocked on this idea for ever and so I didn't
try playing with it until now :)

-- 
viresh
