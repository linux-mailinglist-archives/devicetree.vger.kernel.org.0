Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D62663C79
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 22:08:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729684AbfGIUIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 16:08:39 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:38589 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729577AbfGIUIj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 16:08:39 -0400
Received: by mail-io1-f65.google.com with SMTP id j6so45909554ioa.5
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 13:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tMyCowNzgjxUaK5PWC6oQ1uWddr8utL+ufijtmsasYY=;
        b=MrI/oOTu7f6vXRzGZXhF9IG0WS4ADxUvghUVUKgRuAcSU77bxSQnUdnGrEca59ppuf
         J260PB/NQWYrldlcbR57YAVL5BYUgz6XwQbKpPQlsC+nzLrfRTMsyo8dpxFm2W4nrAh9
         HYtlRytVJmRuX39hTDXDnxHH+v3wN7rtIcmbYSt34O1sElDG/GyKacHTELhusWi/K0u4
         BQUMtz+ZO6vGoVlluOUYyVY6qaH3Q4SnoWXWz4ms/nhPkAX+hgTMVzkFYwHKH7udmbik
         ckepbRmIe5Ym8fqwkdlPJasms3JKo9dyFYPfrPL1unWs0M39oYlii1+W/uH8VQpk/jaV
         lP6w==
X-Gm-Message-State: APjAAAWv+CPczBSzSGlEpn0cv+2uA1Y5sPU8p445Ed9zY0l/qphGNjoh
        Y9tQg95LT2sTyEAUtYx0lqendGedrQ==
X-Google-Smtp-Source: APXvYqyKiyPFi1/Sk/eV1if8HfsDBQ9UxZKt6XHIcHyManJ2gt9dEXwY05nvvTvy0mh0ieg/bZNAQQ==
X-Received: by 2002:a02:b914:: with SMTP id v20mr29828003jan.83.1562702918640;
        Tue, 09 Jul 2019 13:08:38 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id z17sm31248845iol.73.2019.07.09.13.08.37
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 09 Jul 2019 13:08:37 -0700 (PDT)
Date:   Tue, 9 Jul 2019 14:08:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ashish Kumar <Ashish.Kumar@nxp.com>
Cc:     devicetree@vger.kernel.org, bbrezillon@kernel.org,
        broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string to bindings
Message-ID: <20190709200837.GA7806@bogus>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> There are 2 version of QSPI-IP, according to which controller registers sets
> can be big endian or little endian.There are some other minor changes like
> RX fifo depth etc.
> 
> The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> little endian version uses driver compatible "fsl,ls2080a-qspi"
> 
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> ---
> v3:
> Rebase to top
> v2: 
> Convert to patch series and rebasing done on top of tree
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
