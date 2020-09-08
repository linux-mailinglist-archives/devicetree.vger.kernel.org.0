Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C7D026221A
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 23:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726434AbgIHVsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 17:48:47 -0400
Received: from mail-il1-f194.google.com ([209.85.166.194]:43477 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727935AbgIHVsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 17:48:42 -0400
Received: by mail-il1-f194.google.com with SMTP id m1so368857ilj.10
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 14:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ykDez5db4Tg7JVuX7yTUCZ67kcBqZSeX+Z9NmcRdJzo=;
        b=VyqiE87njZvRIN8SUu/MMNS2xQ2KupmbVtKlKsN3u8ZHXsmaXgBr53c9nu3ge10VEn
         7gjhLrzCcVx7aw6weycWYMSgZwHDbNvdYZWs1S1dmeQDu/TSn/rn+bYkNjY+5t/P8b/F
         vISA0V+UADaxUcl6SH4igFsVEOg1AB/tF7QH6u6yEwsjziIVqx5GcL/DvLFG6o1tYJjn
         Im5KlzqjcGiyLkLiyeUNhmItYOoZWSLzCFXeTtxEemt+U/Zk9vPGkMRLLT/KkE9GgadH
         BkNUUBDu6f8sM5SGqyU2Zcm3Z38TRYG8d6PLdmIufkffQv7o5L+36FpWGu8PYw5YLT9P
         /LiA==
X-Gm-Message-State: AOAM532qsOiilo1WKdPu+qLHOO9D3t7783o7wSjFBr15LYor3BdXSkpw
        BaNGwro5lqcXoLf29CVN5Q==
X-Google-Smtp-Source: ABdhPJwskaz0wCDXi8foT/IWYK5iyOa+/wg9K9BuESseQJfz6jF847jD/XiRsH6le8yJLULQsKFXXA==
X-Received: by 2002:a92:d792:: with SMTP id d18mr791213iln.195.1599601721478;
        Tue, 08 Sep 2020 14:48:41 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id k11sm294466iof.40.2020.09.08.14.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 14:48:40 -0700 (PDT)
Received: (nullmailer pid 987185 invoked by uid 1000);
        Tue, 08 Sep 2020 21:48:39 -0000
Date:   Tue, 8 Sep 2020 15:48:39 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Sam Ravnborg <sam@ravnborg.org>, f.fainelli@gmail.com,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] dt-bindings: vendor-prefixes: Add Cisco Meraki vendor
 prefix
Message-ID: <20200908214839.GA987127@bogus>
References: <20200822154045.16036-1-chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200822154045.16036-1-chunkeey@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 22 Aug 2020 17:40:45 +0200, Christian Lamparter wrote:
> Meraki was founded in 2006. The start-up quickly rose to prominence
> by being based in part on the MIT Roofnet Project.
> In December 2012, Cisco Systems, Inc. bought Meraki.
> The "Meraki" branding is still around to this day.
> 
> Web site of the company: https://meraki.cisco.com/
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
> 
> v1 -> v2:
> 	Split from Meraki MR32 upstreaming attempt. (Florian Fainelli)
> 	(This patch will be needed for the MR24 upstreaming series as well)
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!
