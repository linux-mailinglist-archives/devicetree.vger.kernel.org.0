Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5ADA3FC229
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 07:31:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238048AbhHaFcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 01:32:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236695AbhHaFcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 01:32:03 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF83C061575
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 22:31:08 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id fz10so11036029pjb.0
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 22:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=D1j+u39JQe0IvSvalduRURIv+C+pC/WleO58NuYMuEE=;
        b=WJp8v1nOOjm9ZpppPwTfY2f8YP3w1j5YPwC41/npsmVhdgHXNj0yX1RRaA3p79kcbj
         l+fju0SQ4RqwIaDZuHGHORD/zVYh8Y5RxlpoRL7ULgxPd0/zxZqCFYhYNd/AX8s8kUGp
         HyBcmPBjk6uJFngm3p/6TLEj1a0F8TXfOoTq8swKLUNq6P2o2nNXO1At8oFReHwxistm
         wJ4Jp20YtezatBgYnp/J9+jSbDIr4luqhA/Fcq5A9XhwR1yWB0qgpDKtsdi1uLEBMwsu
         4QWzxRpnVbdUgBTYQo5kyA6ss8xG8FwPRE2RhNlYuyJvndcRKh7JvMcv1hdf6DKYkTlJ
         jKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=D1j+u39JQe0IvSvalduRURIv+C+pC/WleO58NuYMuEE=;
        b=hJxyGKGjSkH9Em+xvPlxInYGYPBk9zQV1iQD3pd7/hZXhovgCbHePS5PXwAmurnofG
         Gve8Nk6FNL1lOpJv8Uvrggt3hky/mquwTGPbaT1rV1I1Y2uUnrkkkhL+pMlmE1X9DRhK
         lRxbBX69OyZAgzom5O0FxLjqEV9Y1rUXBRgRFW+V/zDInG1FgiCXijdk869M3/5mQaUq
         goj6x+6aTwAeUccONwdNrrc/r/0jxL0P/V0yt3N4l6Sn/y2af2uq6TXdOcMIIHoVe8+l
         S0O1uWtSCgouILV70yKpYdDmH/vHRs1fuZvJdYXeKxoDqsPEJYbC2d+h1yJzu10L7xWM
         wWyg==
X-Gm-Message-State: AOAM5306ROwXBKT0fNmvWO8ECCAov9hjVs79uyeFCJxdShtTkD8JlI2t
        qBFwSIcHJBhP2z1d5humDNebhw==
X-Google-Smtp-Source: ABdhPJyjDELQe1mDHU5bNl0p0yBqpmQlcN+4VXQH9PQNBMQg+8YtgAejAl0fhVV67imVjkJe8fS97A==
X-Received: by 2002:a17:90a:8b81:: with SMTP id z1mr3236338pjn.82.1630387868016;
        Mon, 30 Aug 2021 22:31:08 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id c15sm1319656pjr.22.2021.08.30.22.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 22:31:07 -0700 (PDT)
Date:   Tue, 31 Aug 2021 11:01:05 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
        linux-i2c@vger.kernel.org, Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH V4 0/5] virtio: Add virtio-device bindings
Message-ID: <20210831053105.ut73bmvxcop65nuv@vireshk-i7>
References: <cover.1627362340.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1627362340.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27-07-21, 10:53, Viresh Kumar wrote:
> Hi,
> 
> Currently the DT only provides support for following node types for virtio-mmio
> nodes:
> 
>         virtio_mmio@a000000 {
>                 dma-coherent;
>                 interrupts = <0x00 0x10 0x01>;
>                 reg = <0x00 0xa000000 0x00 0x200>;
>                 compatible = "virtio,mmio";
>         };
> 
> Here, each virtio-mmio corresponds to a virtio-device. But there is no way for
> other users in the DT to show their dependency on virtio devices.
> 
> This patchset provides that support.
> 
> The first patch adds virtio-device bindings to allow for device sub-nodes to be
> present and the second patch updates the virtio core to update the of_node.
> 
> Other patches add bindings for i2c and gpio devices.
> 
> Tested on x86 with qemu for arm64.

Michael, are you picking these up for 5.15 ?

-- 
viresh
