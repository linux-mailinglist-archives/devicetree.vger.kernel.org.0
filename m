Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 206F721ABB3
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 01:36:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726227AbgGIXgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jul 2020 19:36:23 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:34118 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726222AbgGIXgX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jul 2020 19:36:23 -0400
Received: by mail-il1-f196.google.com with SMTP id t4so3562984iln.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 16:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Vy5gFIdZ6QSGlG4Cu3mgACyqBbE7i2Yobo53B4I5b5Y=;
        b=OG0BaV42p8Y+ClF41Y+zQhCprgRd5MlRr9d0MTsWJOF1W2A+bb2RGG27CEHJso4zm7
         vrclKh5kQChIzZMeoSZT8PmVANM+jeJeXPOajylotIQYpcbMiYUNPlw9Vv1g+ic7tgIk
         BAiDbCOqDje7Flr58UadUGZFyRa6bs7cc6+XKdZESMlZJzGJlbPNxizZFAPJ1HpmMe+3
         /7ei3uQ/5XZqp5hQyt0FZqIlxMHBQnZ6UMxc1mvj1jfFk8qTXP2/N7By3dewUGZmGD5v
         vJzXPjAkUm2FG47j3hUjicwsLHx8aC1Jo0ULs4LdGkL1Q7qVHDMPhEN8LWSWQjaYiDVL
         uXoQ==
X-Gm-Message-State: AOAM533UDMWINl2o3dzohgoyg5POO7RbRSeIN/oWaCEERRNYqmXRexGD
        4sP5GW+gyiFRdqcHY+rVSg==
X-Google-Smtp-Source: ABdhPJxU0lDMGaiFiH5P6n2Dqzw0pN2vG0zjwrwuf8K57itQWDWpHiR9YfWF3FBaVNt9bIFjoSGrzA==
X-Received: by 2002:a92:bac4:: with SMTP id t65mr51529586ill.138.1594337782464;
        Thu, 09 Jul 2020 16:36:22 -0700 (PDT)
Received: from xps15 ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id q2sm2596921ilp.82.2020.07.09.16.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 16:36:22 -0700 (PDT)
Received: (nullmailer pid 1112131 invoked by uid 1000);
        Thu, 09 Jul 2020 23:36:20 -0000
Date:   Thu, 9 Jul 2020 17:36:20 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Chris Zhong <zyw@rock-chips.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: display: convert samsung, s6e8aa0 to
 DT Schema
Message-ID: <20200709233620.GA1112038@bogus>
References: <20200704102806.735713-1-sam@ravnborg.org>
 <20200704102806.735713-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200704102806.735713-3-sam@ravnborg.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 04 Jul 2020 12:28:05 +0200, Sam Ravnborg wrote:
> v2:
>   - Add missing types (Rob)
>   - Fix example to specify panel@0 (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/samsung,s6e8aa0.txt         |  56 ----------
>  .../display/panel/samsung,s6e8aa0.yaml        | 100 ++++++++++++++++++
>  2 files changed, 100 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
