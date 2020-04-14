Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B858E1A8A66
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 21:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504568AbgDNTAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 15:00:36 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45769 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504540AbgDNTAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 15:00:32 -0400
Received: by mail-ot1-f66.google.com with SMTP id i22so735793otp.12
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 12:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=diOnrilqyhMixuCeCVV10cOvtKIOS1g+rB5Tm2kZ1Ho=;
        b=abYl0mBgf5MnLuu/lh3T+kbsdzfckTsehNFVywbwpsjgTt+BPOsYrWx4VOQKpfD/ml
         S/oWxypY8/zwlXwcrLWvBMYsQQkkHiVApIkevoK2x8funlUCGXwmOBKvCeitRjTA5RRC
         W6tB/jBu0rKlMUUxEBedVIX1FZzRLFwqjWS3uhzLzmf0YEfqYw9XQLB2NppC/N72qXym
         jj88+bx+hU1YMwMSblaXr22A3Faw8WuCp57ICmX4NrhNnB3Qrvfi6Ep/z4a6R6khzlAd
         E5XUQu2ewY7ruHIr8Qn+8abCv86Q2wBjksige0gxX+8m58avcYO8g1DT6yh2o/h7pgEx
         m+fw==
X-Gm-Message-State: AGi0PuYSQeaLh0IK/tR+DuI7+Le9bdw8d8rXq9Ws2SEuljRWFkopyvno
        d1C7VCKvK7xQdBQD/Yo4/g==
X-Google-Smtp-Source: APiQypJqWT0BmQ3hoaaMIjIPu3yfNZz/Yfg6+ZKV5zYoLyRFpL7stRCpFQfXCEFDuKZXBohAlkUfUQ==
X-Received: by 2002:a9d:4792:: with SMTP id b18mr13376781otf.308.1586890830860;
        Tue, 14 Apr 2020 12:00:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h11sm6328390ooj.17.2020.04.14.12.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 12:00:30 -0700 (PDT)
Received: (nullmailer pid 18530 invoked by uid 1000);
        Tue, 14 Apr 2020 19:00:29 -0000
Date:   Tue, 14 Apr 2020 14:00:29 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <mripard@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH v2 34/36] dt-bindings: display: convert
 lgphilips,lb035q02 to DT Schema
Message-ID: <20200414190029.GA18497@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-35-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-35-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:51:07 +0200, Sam Ravnborg wrote:
> v2:
>   - drop use of spi-slave.yaml (Maxime)
>   - added unevaluatedProperties (maxime)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/lgphilips,lb035q02.txt      | 33 -----------
>  .../display/panel/lgphilips,lb035q02.yaml     | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
