Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE0F1A8A40
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504475AbgDNSv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:51:56 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:33038 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504464AbgDNSvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:51:54 -0400
Received: by mail-oi1-f194.google.com with SMTP id m14so11383036oic.0
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jPaGaQsxKuZGck310qvcXoh0JaiZD966zdpTeNQ7MWo=;
        b=XKkSMhag07E9xLAHa59bHzOl15iQk6p/HlNx5hM2jllNJDimDSAEyJUHyXsk5j138N
         s8dlQZIXJQZ4cneEOgXUyaS6UTj3xnUsnHyHXsXOWpURaud7EmfREMNucPi+e3UGeoLd
         Vs1Aqdh+xr4Yigy+hJrbbbI0+SRK9ml1bHXw+kOr/F735WMjbbcSpTLYRma6AjK+BA9E
         X0iXzGWdk0dy/LmVEjiIO7RA4AE5WWg6KvUvqd+9v7wgZVq9G+Z+AN02zyObXHR+yhnR
         1XnLEZhFq/Qexw97LP0b6YHTM930Kw67kVyQZ1Opigs/8KEfmmW1l+4+ISmIBMUxgRPs
         yktw==
X-Gm-Message-State: AGi0Pua6GpD2SG3bXaYX4RMy+F2i63tGTi3tjztYcPXF1NSByLUTjFAO
        /d4psA/bafwzU3kdsu3YSQ==
X-Google-Smtp-Source: APiQypJKmFuJ3x8Jb9ughPgLOGIE8fGBqgK5oPFEQWXlY8sIrOH/jasemv2QDNE2LKOv+i5Ar1Aq7g==
X-Received: by 2002:aca:ecd7:: with SMTP id k206mr16411237oih.113.1586890313525;
        Tue, 14 Apr 2020 11:51:53 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i26sm5887124otr.18.2020.04.14.11.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:51:52 -0700 (PDT)
Received: (nullmailer pid 5673 invoked by uid 1000);
        Tue, 14 Apr 2020 18:51:51 -0000
Date:   Tue, 14 Apr 2020 13:51:51 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Marek Belisko <marek@goldelico.com>
Subject: Re: [PATCH v2 25/36] dt-bindings: display: convert
 startek,startek-kd050c to DT Schema
Message-ID: <20200414185151.GA5635@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-26-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-26-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:58 +0200, Sam Ravnborg wrote:
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Marek Belisko <marek@goldelico.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/startek,startek-kd050c.txt  |  4 ---
>  .../display/panel/startek,startek-kd050c.yaml | 33 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 4 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/startek,startek-kd050c.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/startek,startek-kd050c.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
