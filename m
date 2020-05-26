Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20C021A8B1C
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 21:40:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2505023AbgDNTj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 15:39:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2505028AbgDNTjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Apr 2020 15:39:46 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59671C061A0C
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 12:03:35 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id k133so10676623oih.12
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 12:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=neZixX1FgRDvn70WcsvMU0lLKZGE4eRWJlNGOjVP1O8=;
        b=UYfk+XaexRCJh+jbvOXBtvzsO2vLuDuAKScYB6+yktAusuViI5VmNM5dIxYygQHIvZ
         mvZYzvwy0a4d9Po6JDK4EMwW1RyisC9bAShLkPiZqGB76qCyVcQuPbgWhjLxalXnqPCH
         x1XBgk9JJZYqSL5eRvh5pJKu3K1hG2j2GyfT20oXUDob/Otd7pL4zB1/lvth0eAlmYhE
         TKY9WhruPruEWCnKSakyCQXFQCKyZJropFMdD6z3ONKSE36CJ+A3ObxWBUGBfNExLD1T
         eg7riT+Zm0e2AUuKmyZ1W+ieHgsSJYd4u7D4NRggnUJdB1po4xeRuWi++30yog0klqQ6
         wpog==
X-Gm-Message-State: AGi0PuYzr5JBP2kCpy+LA2dFVFr+5x1JRhyohjOE/O9jwNdEkHUZaGDD
        1SsMfDoYueniZpz4GI0Ycg==
X-Google-Smtp-Source: APiQypKoje5VL7Nleh38k5MtuQV+rjMMY1W8ziSp8EW17y/skbV1g7KgZ3blwmjGx9sfECEGd+8Q6Q==
X-Received: by 2002:aca:4408:: with SMTP id r8mr14596592oia.14.1586891014583;
        Tue, 14 Apr 2020 12:03:34 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l7sm3592378oii.26.2020.04.14.12.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 12:03:34 -0700 (PDT)
Received: (nullmailer pid 25576 invoked by uid 1000);
        Tue, 14 Apr 2020 19:03:33 -0000
Date:   Tue, 14 Apr 2020 14:03:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 03/36] dt-bindings: display: add te-gpios to
 panel-common
Message-ID: <20200414190333.GA25534@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-4-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:36 +0200, Sam Ravnborg wrote:
> Several bindings specifies a "te-gpios" for tearing effect signal.
> Add this to panel-common so we have a shared definition.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../devicetree/bindings/display/panel/panel-common.yaml    | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
