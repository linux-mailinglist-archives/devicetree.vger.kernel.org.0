Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2423863C7B
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 22:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729539AbfGIUI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 16:08:59 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:42509 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729155AbfGIUI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 16:08:59 -0400
Received: by mail-io1-f66.google.com with SMTP id u19so45879027ior.9
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 13:08:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IxRusaB6/iyB44ZXKwv1Y+4wUL94u8uFC2wlPuO5HDA=;
        b=ifevYGgxR5eju9WODsNiYgIqj4j2X0wwgOy+kohxQ2w6TNHxE5Km0te/9LtBtkgryh
         FL4T0H6il+GICFooK/vIjiBH35oA7kbEQCCmLeNhiCR7oinpjGZwEoWvI3tRimC2Eqz5
         lC8YuxnL0h7nZW9qALKIch45gAISUx0Zrzw7dYiuKnVGF3CvlYi1IHOAySxfTwGpo0LB
         Lgiw9q1FQu14igw70xWRnU/6VRY9oa952AwkeIRzGGumx4s4QuesjmwaUm/zMfbNRNg1
         ea6GjGdZVmTe+3UUjVwI7fC/lRznyk85TuUD9TzbTFvrOAjuRcUA+DVcPUHWXFS2wgk8
         yYbg==
X-Gm-Message-State: APjAAAWQeQuXikzzsAPhZ2vl9Ii03GHVquO5sBqsTmPr0VlNxagqkmBn
        1Ehpl2M2w0pikTG4mFYRiA==
X-Google-Smtp-Source: APXvYqwgd7tVOXHETgkkm76xD20iAJG7Cx7wu+EG/GsDSVtPfjT/kQQX13fkDk6Uvy1rv8KXzARRtA==
X-Received: by 2002:a02:340d:: with SMTP id x13mr30040764jae.125.1562702938184;
        Tue, 09 Jul 2019 13:08:58 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id j25sm38049414ioj.67.2019.07.09.13.08.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 09 Jul 2019 13:08:57 -0700 (PDT)
Date:   Tue, 9 Jul 2019 14:08:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ashish Kumar <Ashish.Kumar@nxp.com>
Cc:     devicetree@vger.kernel.org, bbrezillon@kernel.org,
        broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Message-ID: <20190709200857.GA8477@bogus>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> ---
> v3:
> Rebase to top
> v2: 
> Convert to patch series and rebasing done on top of tree
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
