Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C93A2263742
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 22:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726535AbgIIUYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 16:24:21 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:32930 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726414AbgIIUYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 16:24:16 -0400
Received: by mail-io1-f65.google.com with SMTP id r25so4682163ioj.0
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 13:24:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uSZQprZx8Jr1mVE56CXDWGkinY4mIAl9cQJXCMxlcTw=;
        b=ZplfamTWYOAhAovWeYR5TXt0nNu7IEdZoD3Gpj/cUEcbr4Wnyd0GVxEZgIjXvuY8+s
         9GNAuayZofu/9iUeuzQ+Y/Q3Ffbm5noveoAex0DIGUIjF+/YTYvBDSqUi2IenyStRnKi
         7v68HW2kilNf1PCp9Pwo8MDp2V7vXii6KMhQ63nte7RaC9/28jsBKkQSTslQ05IoKQFq
         s7x0hRR63uTYoZB/KYq1lwL5Ejk4ZtXzb31HoUYo/NgafHL9dR+xDPvXGQej+V3PNua0
         pApuDrVv0NhIpgKRCpbWEHTcUIZVwuEIhjSrGKZlQNM97mticqW9ItJ6FcP79r0Nrbp0
         0IRA==
X-Gm-Message-State: AOAM532Czwhm7hmIS1nSD2dUb8pxZacXs4tU4J1zK5R2z60rH5OQf3+V
        YB6aynNGF6KQXoejvoPWZg==
X-Google-Smtp-Source: ABdhPJyNuaXPXEiDXSDOw49QK2GqZuAKDkSZNmPGh6DmG8VagBtrWzxz9YBajjNMNzFqZ/4Qa9euCg==
X-Received: by 2002:a05:6638:2049:: with SMTP id t9mr5595457jaj.14.1599683054786;
        Wed, 09 Sep 2020 13:24:14 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id u25sm1654209iot.35.2020.09.09.13.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 13:24:14 -0700 (PDT)
Received: (nullmailer pid 3019155 invoked by uid 1000);
        Wed, 09 Sep 2020 20:24:13 -0000
Date:   Wed, 9 Sep 2020 14:24:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        linux-arm-kernel@lists.infradead.org, Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: display: ti, j721e-dss: add missing
 properties to dt-schema
Message-ID: <20200909202413.GA3019108@bogus>
References: <20200827083045.76356-1-tomi.valkeinen@ti.com>
 <20200827083045.76356-2-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200827083045.76356-2-tomi.valkeinen@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Aug 2020 11:30:43 +0300, Tomi Valkeinen wrote:
> Add assigned-clocks, assigned-clock-parents and dma-coherent optional
> properties.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  .../devicetree/bindings/display/ti/ti,j721e-dss.yaml  | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
