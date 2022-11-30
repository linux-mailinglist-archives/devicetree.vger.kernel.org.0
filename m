Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D077C63CECF
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 06:45:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233545AbiK3FpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 00:45:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233034AbiK3FpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 00:45:04 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF0D233BE
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 21:45:04 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id y17so7734522plp.3
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 21:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Kcop1gzwvrOWuYGccdr47O8voZqAmlt2zg16X+P522E=;
        b=z41iTzbj/qN/MPAQ5F4zvwaDd9PpZTxY22drhP/5eyYFzjHcPHa79pM+kqyhKsCQ7/
         v/hzsc62C1o0gTwrYjuGzFFxvVZxZg6pdRaB8aIRUYdgpEVWvRCy5U7qxNWMKGky7KKN
         5NlS+CwQUx1VHmkZpABluXtWaRf+PsWkMm4SD8Xj/M37dYlRrxzIy8C+Qt7VG4fQgNGW
         3I19hb8bCxftYcoL2+HUB2/RLSZ1tCQo675W9ca5de9rA5XMdHEZ/uGM9rEbND/OiKYN
         j3XVw1yo4Mg6tUMt7VWoWZsDZ+vowH8/kIutoKY2Z2BSvUJNBLHgG4Q2z5S/rC85vbDv
         xeZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kcop1gzwvrOWuYGccdr47O8voZqAmlt2zg16X+P522E=;
        b=nRrpP3GvYOI/my39ekTO3Lcl8ZUKPwSpUlicOpD6ERdQi6xvFjQkQMgdX7NrjRmmuL
         3wdnECfjMGdl1PPiOv9H1PJ3Jp0+CUktFCwQiIWGtslwtOxWmxCeYd7fYP4We5L+zV+p
         OGmvKo6XzTq/p2NfLj8rYPYTQ1zUMiAfC7M8y+CfbsDL5XWgDHIhVquS2QZBSBKYcs/H
         jnFfhgoY6NiP1rxYf0/9LfLyABJybSu+PAgkwjfPrMmqCjyAGjzBJl75oc/XKOfDpIAZ
         LElottVlRbVuNQZuUgz439lahS6B380cAOxVmiy13A1z3DtGfK3Om8q3/LV9+vRBoTaX
         Ig+Q==
X-Gm-Message-State: ANoB5plFUGB3u3CCba3ItKfzWAuTkegd7AcccOjvo35mjIcWh3L/A0Bz
        VJuVkY4BNrQaRru13Zb3swKgcg==
X-Google-Smtp-Source: AA0mqf6fvEC7PPByArPqHez7CyXgUfArEJ4SMUtjONXdpBqqiVfIleMT5tI/sdO5xAWpKyEdccQ3Rg==
X-Received: by 2002:a17:903:44b:b0:189:9749:d3fe with SMTP id iw11-20020a170903044b00b001899749d3femr8917136plb.70.1669787103612;
        Tue, 29 Nov 2022 21:45:03 -0800 (PST)
Received: from localhost ([122.172.87.149])
        by smtp.gmail.com with ESMTPSA id u8-20020a170903124800b00189a50d2a38sm362710plh.38.2022.11.29.21.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 21:45:03 -0800 (PST)
Date:   Wed, 30 Nov 2022 11:15:01 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Martin <marcan@marcan.st>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/4] Apple SoC cpufreq driver
Message-ID: <20221130054501.d65ajqzctsoyqemz@vireshk-i7>
References: <20221128142912.16022-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221128142912.16022-1-marcan@marcan.st>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28-11-22, 23:29, Hector Martin wrote:
> Hi folks,
> 
> Here's v5 of the cpufreq driver for Apple SoCs. v5 just incorporates
> minor review feedback changes from v3, and no functional changes. v4
> had a DT schema SNAFU; this supersedes it.
> 
> Once reviewed, please merge #3 via the cpufreq tree, and we'll take
> care of #1,#2,#4 via the asahi-soc tree. This lets us merge the DT
> changes in the same cycle without blocking on the binding coming in
> via the cpufreq tree first.

For patches 1/2/4:

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
