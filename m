Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0F421A8984
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:28:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503976AbgDNS1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:27:47 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:43131 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2503947AbgDNS1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:27:45 -0400
Received: by mail-ot1-f67.google.com with SMTP id g14so641733otg.10
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:27:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kI/3eiVm1kw4HQZBFlJCA+YGkg5qdFUWdYWaFflp6bI=;
        b=BolWY725tPuuVmrmiE7t1F++Cgwwr6CgpKn60gihjK7PYO/rfmAQXCNWE6zL5g5O19
         zSTEggZl7T5jyOsbi/lTk9uconDnhytbp8bFRzfY1IZ4JyCkAm5Gsajytq49V81HXjss
         tS7U1OPoLZmrOdxHzBCbj9SPRth3+536v58GMshrEcpWFzFl4Dn/2rjs461AIL3qyQbS
         Fu2m9blJJFbHC6lzApL6XFjH729+t9LL7sE5YG7ojh1BYB0jHjsVHP1QOLloyzmUrkD7
         2Kyq7GLCTsX5auwFRF62hQvVJIbHg9IefJeUQvF+c2OrZlJrxjBCrbzUJj1Hl5TmL6ou
         GDdg==
X-Gm-Message-State: AGi0Puau+VSiQy+gv7AOzXeNCB+Y5BXwj8gucpURsAnt0wUPrnLyqf7B
        11A31DcBs7o3u1vFdT/8liSTX44=
X-Google-Smtp-Source: APiQypKdQLaKyJWhc/iZn1zA/BiC+KbyuEb28QVeOulOmFvbUxPbd8MM+Vxfne8Y5494a4QtdCw3FQ==
X-Received: by 2002:a4a:b489:: with SMTP id b9mr2193705ooo.71.1586888864743;
        Tue, 14 Apr 2020 11:27:44 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k4sm5681554otl.13.2020.04.14.11.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:27:43 -0700 (PDT)
Received: (nullmailer pid 22415 invoked by uid 1000);
        Tue, 14 Apr 2020 18:27:42 -0000
Date:   Tue, 14 Apr 2020 13:27:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 08/36] dt-bindings: display: convert ilitek,ili9881c
 to DT Schema
Message-ID: <20200414182742.GA22348@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-9-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-9-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:41 +0200, Sam Ravnborg wrote:
> Updating this binding identified an issue in the example in
> the allwinner,sun6i-a31-mipi-dsi binding.
> Fix the example so no new warnings are introduced.
> 
> v2:
>   - fix example in allwinner,sun6i-a31-mipi-dsi (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/allwinner,sun6i-a31-mipi-dsi.yaml |  2 +-
>  .../display/panel/ilitek,ili9881c.txt         | 20 --------
>  .../display/panel/ilitek,ili9881c.yaml        | 50 +++++++++++++++++++
>  3 files changed, 51 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
