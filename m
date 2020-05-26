Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02EFA1A89CA
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504115AbgDNSjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:39:23 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:43504 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504089AbgDNSjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:39:21 -0400
Received: by mail-ot1-f68.google.com with SMTP id g14so683215otg.10
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:39:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dEiaIAvFJTlzpo/PB1mU+6ATHN9pj5y1SOOp368ZN78=;
        b=hfm5T0VeFKh2stdyoX9wfeQ74ZLHymc0pgTu7D6viUYYiSXP3uwVZyu9IzeYiwYDsc
         vvt+rxt2R2L4Eler2I1TDQe4kgXpeusdMKbcttl/9xuw0R6cE+EkbtiQzngsxWfcoVZb
         YKwN1D0fxEN+ihBYHrnKYLnKOsTX3YdwC3BKgc48ygQzu9SJ6NQaT/qjpxZPzpI7UHZV
         iulkzk4eRqfbWf2msiqQaIf6Gohfp50D6kSX34W5rOixnMMnvxQJ6xgkvDcVstzjQgYP
         Sgw7haFfYN/FT+n0cDBZkXTwXKrmDk4yYcA04qDmgVHj9lE4463H4D9HgaNDskwqaU4T
         vnGA==
X-Gm-Message-State: AGi0PubdtpxHEffnxuwiuIlmh/A1rFQDLkOK61eeo1CxXKSiFASFCRFh
        HzPoeQcSJ2KGSXPv2srzCA==
X-Google-Smtp-Source: APiQypJkzZHUyWzUu8THoFBytfHvNhQ5r8JEg6EMKILNV27nlLwjpWy4NwOIziv0ZO4AxsNR3rkUuA==
X-Received: by 2002:a9d:7201:: with SMTP id u1mr19997253otj.293.1586889560773;
        Tue, 14 Apr 2020 11:39:20 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm5688036otk.24.2020.04.14.11.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:39:20 -0700 (PDT)
Received: (nullmailer pid 19914 invoked by uid 1000);
        Tue, 14 Apr 2020 18:39:19 -0000
Date:   Tue, 14 Apr 2020 13:39:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 21/36] dt-bindings: display: convert samsung,s6d16d0
 to DT Schema
Message-ID: <20200414183919.GA19853@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-22-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-22-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:54 +0200, Sam Ravnborg wrote:
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/samsung,s6d16d0.txt         | 30 ----------
>  .../display/panel/samsung,s6d16d0.yaml        | 56 +++++++++++++++++++
>  2 files changed, 56 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
