Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B630F1FD8EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2020 00:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726835AbgFQWe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jun 2020 18:34:58 -0400
Received: from mail-il1-f193.google.com ([209.85.166.193]:45397 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726763AbgFQWe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jun 2020 18:34:58 -0400
Received: by mail-il1-f193.google.com with SMTP id 9so3909123ilg.12
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2020 15:34:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=c5Y+K27z/UnQHPf7dVA+plkp+xMtkTE7h8L8DPS7DYI=;
        b=LXVqQfUxrWumtZDjasdlOQIdDoDmwNY3zAiKHixrW/+nSQppMxQ5fDIdlHBSDJDaHy
         1dnbjZbWFxDto3h8DEUV8qBkWUH/K0QBqjlddg8DicjT5Jhz/BtXSA6jgtJqIPATDbrp
         0/Ch/eS9V57td7TYsFx4CqoScqftapf6E9431wwgU5ij0Bf4dUWQ6ObaROxB2k1IT5Q/
         JSyE0jwSNtMAjBFXpOnhm5s8g8fUCdcXguuFesmSzo0r9eJubCmjVMYbepi5xt/y/0lo
         ls4pqQi+DoUrYWJuKj+TvCIDFSCPZ0n8MuDU4bnXVkapmDlWgsYueEeqMn/UVj0SxZw/
         X/Hg==
X-Gm-Message-State: AOAM532cQ7deykbT3AE7r5Ja0Zw9LGOd1mz/6xXJN5qyeahcpLzvHIOI
        TLX3+D0kFji7QBAjpVx09w==
X-Google-Smtp-Source: ABdhPJxHuv4++9idd4cGJ1YVbZSUibTvT/Vt5YQAo6Eno5pqsY6fnO3joxmM0yNFJzrCC67k4I+ZSg==
X-Received: by 2002:a92:899b:: with SMTP id w27mr1285269ilk.16.1592433297077;
        Wed, 17 Jun 2020 15:34:57 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id l3sm710771iow.55.2020.06.17.15.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 15:34:56 -0700 (PDT)
Received: (nullmailer pid 2961072 invoked by uid 1000);
        Wed, 17 Jun 2020 22:34:55 -0000
Date:   Wed, 17 Jun 2020 16:34:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Laurent.pinchart@ideasonboard.com, kernel@collabora.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, airlied@linux.ie
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
Message-ID: <20200617223455.GA2953201@bogus>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200611102356.31563-6-ricardo.canuelo@collabora.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 11, 2020 at 12:23:56PM +0200, Ricardo Ca�uelo wrote:
> Make the ports node optional, since there are some DTs that don't define
> any ports for ti,tfp410.

Only arch/arm/boot/dts/dove-sbc-a510.dts AFAICT... It should be updated 
IMO.

> 
> Signed-off-by: Ricardo Ca�uelo <ricardo.canuelo@collabora.com>
> ---
>  Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> index 605831c1e836..1c9421eb80fa 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> @@ -83,7 +83,6 @@ properties:
>  
>  required:
>    - compatible
> -  - ports
>  
>  if:
>    required:
> -- 
> 2.18.0
> 
