Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC35B1F4964
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 00:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728191AbgFIWbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 18:31:32 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:38913 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728135AbgFIWb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jun 2020 18:31:29 -0400
Received: by mail-io1-f68.google.com with SMTP id c8so24689955iob.6
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2020 15:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZBhOP7AY8qGsl+2qKTjU0GQAyY1lme2FBPs/pfwfrHY=;
        b=m60YpnMUP5l44H5DFNNwrN6jZdeF+BIfAPOf5IOkFUQlloeL8TSS0ZzKZlWYwzMTbH
         unD0PlQKCJCiM7a9hO2HXoyrcvAelyq76+/9WotYA4PmkNNcwWcEzQ9afHWa+GxkDYHk
         hBiV/Vro0Z5QWQ38N8R8ocjlXio1bWhSc21paZZRru3MjJIUz2DfaqK+dnBIcDeguHcz
         jNo1AyGQQxkL8K/q/0XBDMjfiv7OmY1ol5O3vaBv6gv1i+ihkNmFIk0MuLBsiLPYHYQl
         b2nhC3580ZzlHG/Rk2FsDBMr8AU+y6vra1aVsTn87nTqztiDJzkAi60o25ikQF71t2UH
         ShQA==
X-Gm-Message-State: AOAM5315fCwwECfUL68mTX9nBYwLRnIhPvVKwhgVYJSb64h+0PKLiNgS
        d+FnaeqsvsDkbSQ/Zb6fsA==
X-Google-Smtp-Source: ABdhPJxcqqsRWJbto+HhyUaH7RE5t0x6X83/eTTC/7UnsSHgtliRRQ67qNyyvwt/RmFuNjl1gqQbzQ==
X-Received: by 2002:a02:cd1b:: with SMTP id g27mr361030jaq.61.1591741888289;
        Tue, 09 Jun 2020 15:31:28 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id 2sm10334192ila.0.2020.06.09.15.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2020 15:31:27 -0700 (PDT)
Received: (nullmailer pid 1618796 invoked by uid 1000);
        Tue, 09 Jun 2020 22:31:24 -0000
Date:   Tue, 9 Jun 2020 16:31:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        =?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
        devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Douglas Anderson <dianders@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v1 3/6] dt-bindings: panel: add Hitachi 3,5" QVGA panel
Message-ID: <20200609223124.GA1618745@bogus>
References: <20200601083309.712606-1-sam@ravnborg.org>
 <20200601083309.712606-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200601083309.712606-4-sam@ravnborg.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 01 Jun 2020 10:33:06 +0200, Sam Ravnborg wrote:
> This panel is used on evaluation boards for Atmel at91sam9261 and
> at91sam6263.
> 
> The panel is named: TX09D71VM1CCA
> 
> The panel is a dumb panel that matches the panel-simple binding
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
