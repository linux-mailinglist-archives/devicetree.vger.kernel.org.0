Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA1AA1A89A5
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504045AbgDNSdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:33:09 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:43761 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504019AbgDNSdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:33:08 -0400
Received: by mail-ot1-f68.google.com with SMTP id g14so660877otg.10
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:33:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CVQ1lZVJvmFaf0NT3MmNSNNJewJxKoRusuaatdtuBxY=;
        b=DGCp+Tj+hoZUXLJTqdNT8FjxvQTJrqli+ex2kOfWAi+hn6h0f5BYSMeLF4I26j0r46
         +YBlm6LCBN71Zc52F5oP2ZXvDc4n/WzlVNu9PQCsSfLCGIq+8i1OEPC3h9M2nqSZJm53
         Xsp4IIOZRKgG6XxeaEka2RCWk6M8hRqaAw3JckuOqyUqnPe7c9uYohOD4adOpMyg8IoI
         RAqh5GpnZ6HVRsIx8oGo7AQTeXghMYzDDlU4GruWn871GsJSLp8EYa7QXPlBAlN5FAAI
         9QDjfh6JiRBDtre3LyFhfpcUh5r5hc7661/rSCBbFC2GqnPd8QDJTTldfntL7eC212oT
         8Q5Q==
X-Gm-Message-State: AGi0Pua43XbShLy2wrAWZv4OIIg5DOHUIZ/grl0MgQ70f5xq4tXGFII1
        JDsMMF97r1A9C10vQ/C/YA==
X-Google-Smtp-Source: APiQypIhAXnI56wNah9EwROjasnc8CgJq7BKcU3wY+UxZ3NLs81ZA8SST7QHeqSoYiFBQAZxO8GRYA==
X-Received: by 2002:a9d:6ad8:: with SMTP id m24mr13713732otq.272.1586889186281;
        Tue, 14 Apr 2020 11:33:06 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l7sm5438984otj.52.2020.04.14.11.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:33:05 -0700 (PDT)
Received: (nullmailer pid 5071 invoked by uid 1000);
        Tue, 14 Apr 2020 18:33:04 -0000
Date:   Tue, 14 Apr 2020 13:33:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 13/36] dt-bindings: display: convert
 kingdisplay,kd035g6-54nt to DT Schema
Message-ID: <20200414183304.GA5005@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-14-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-14-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:46 +0200, Sam Ravnborg wrote:
> v2:
>   - Drop use of spi-slave.yaml (Maxime)
>   - Introduce unevaluatedProperties (Maxime)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Paul Cercueil <paul@crapouillou.net>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Paul Cercueil <paul@crapouillou.net>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../panel/kingdisplay,kd035g6-54nt.txt        | 42 ------------
>  .../panel/kingdisplay,kd035g6-54nt.yaml       | 65 +++++++++++++++++++
>  2 files changed, 65 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/kingdisplay,kd035g6-54nt.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
