Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ACB52D1CAA
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 23:04:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726519AbgLGWC7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 17:02:59 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:46354 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726478AbgLGWC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 17:02:59 -0500
Received: by mail-ot1-f66.google.com with SMTP id w3so13396120otp.13
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 14:02:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m/ZVFvAoEe2Nb+CBuDo63/KaPMVphVK+kNnMxfbhpkM=;
        b=RuHVJ5p86dLbn2lN6t7nJBFVGhqIT4/kB87swcYt3t80It09acb4qsJ3qZj02IusWR
         gWLf3J0oxu1rhg1qsMYOapJL5KIedkt3sp/xAI/JrhB1o5KrFeXq7y/UXPqVWNxEISfJ
         rBUHjHkkLCcLnWgaKTJtdVKcUlZkjbNTUl2HDHLqbIN5sE5ZS+llSGRA/jeY3GP5LpqF
         qspjbw3VGWdMWfaxRFDH4tWDa98g1T3G1nTN44SwbRE3ahoae+slLGG/RdP/6mLzKoqk
         X99ueYFGsJhgPznsWrVLbXbaQIpcKpKJ8Id6KJ96db8ne7A66vDHTZEHBbEueVhkYB/D
         1pNg==
X-Gm-Message-State: AOAM530IeuEY8W2XNIsN3A1nYO7BavreYfDGZ9+2g7pqZODP5ByWtHp+
        tJQ7m+ZYhF5zASljqEFyqA==
X-Google-Smtp-Source: ABdhPJwo8OJ2pHaSZyHKVQJLZWE34H0GaCK3BqJYR4dGdtyh9bnRoqK5g9Lw6GgxCIfqoemsaHfsog==
X-Received: by 2002:a9d:7a48:: with SMTP id z8mr4873631otm.146.1607378538248;
        Mon, 07 Dec 2020 14:02:18 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm3130801oti.45.2020.12.07.14.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 14:02:17 -0800 (PST)
Received: (nullmailer pid 912786 invoked by uid 1000);
        Mon, 07 Dec 2020 22:02:16 -0000
Date:   Mon, 7 Dec 2020 16:02:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Mohaimen alsmarai <Mohaimen.alsamarai@fii-na.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Vivekanand Veeracholan <vveerach@google.com>,
        Mustatfa Shehabi <Mustafa.Shehabi@fii-na.com>,
        devicetree@vger.kernel.org,
        Lancelot Kao <lancelot.kao@fii-usa.com>,
        Benjamin Fair <benjaminfair@google.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add FII
Message-ID: <20201207220216.GA912645@robh.at.kernel.org>
References: <20201119073230.123888-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119073230.123888-1-joel@jms.id.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 18:02:30 +1030, Joel Stanley wrote:
> Adds Foxconn Industrial Internet, who have submitted a BMC device tree.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!
