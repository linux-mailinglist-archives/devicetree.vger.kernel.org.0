Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52C593F7A74
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 18:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235727AbhHYQ1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 12:27:00 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:46624 "EHLO
        mail-oi1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231687AbhHYQ05 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 12:26:57 -0400
Received: by mail-oi1-f173.google.com with SMTP id o185so68904oih.13
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 09:26:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DW9b8MdwsWzotzwa8ZWoYy2W/1rml6bI+yi1yaL/Zzk=;
        b=lCKNf5UAe6GtACWdfy1z90pKUtK1entGKJyoWzRuX2NqOmUq/HDyCnutOoBBcZSoHW
         thWrCLmgINoOnAOgIEUqRhXbG1iraWW8OyhlxZkf33+V82nHnAMG29Ie90fNVbjCFJVb
         VfKBWshtcG6a2GJZh4CTkQxejusuLNQbpdMGew4tXuXT7M4WFL+h58ksNVNVzJGjWvTz
         NLy4SHwjEGgUwLINEDPKIkeO72oi/Km+TYOkmrMQpEoIL3zJvqx5y/BP7tGWOnf5aTHi
         A0BUdr2NgiBmBFZhIk6Rx4Ow63dBKNufS2t6iMQ4+3ciFozr+A4uXX7nP6cBsWafBbGM
         dvyA==
X-Gm-Message-State: AOAM533kBoyICKZ/qqUoik7NOvjaTvr65BTgtyKXJevdYRmgwzTosnr/
        ZJDw1N/9RNtOsmckz2peTg==
X-Google-Smtp-Source: ABdhPJzLwYY4N1u6ZipZnlNmg753qQV9zbi5aZ/2TSt2dZXRf/2S/5XmF3CBl3EGdyaGmFep+ECjqQ==
X-Received: by 2002:a05:6808:1912:: with SMTP id bf18mr7561893oib.48.1629908771297;
        Wed, 25 Aug 2021 09:26:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l67sm59065otl.3.2021.08.25.09.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 09:26:09 -0700 (PDT)
Received: (nullmailer pid 2898108 invoked by uid 1000);
        Wed, 25 Aug 2021 16:26:08 -0000
Date:   Wed, 25 Aug 2021 11:26:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniels Umanovskis <du@axentia.se>
Cc:     devicetree@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie
Subject: Re: [PATCH] dt-bindings: display/bridge: document enable-panel for,
 sn65dsi83
Message-ID: <YSZvIBp1axmfqkeh@robh.at.kernel.org>
References: <131ea94b-2079-3214-3ab9-f2129659cb76@axentia.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <131ea94b-2079-3214-3ab9-f2129659cb76@axentia.se>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 25, 2021 at 12:21:44PM +0200, Daniels Umanovskis wrote:
> The driver supports an optional GPIO specifier for a pin that
> enables the connected panel, but it's not documented in dt-bindings

The subject looks mangled with the ',' and 'ti' is missing.

(There's a common issue with a space getting inserted after a comma on 
some maillists like dridevel, but the DT list doesn't have that issue.)

> 
> Signed-off-by: Daniels Umanovskis <du@axentia.se>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git
> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> index d101233ae17..1aca6c1a8e0 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -32,6 +32,10 @@ properties:
>      maxItems: 1
>      description: GPIO specifier for bridge_en pin (active high).
> 
> +  enable-panel-gpios:
> +    maxItems: 1
> +    description: GPIO specifier for the panel's enable pin (active high).
> +

There's already the common 'enable-gpios' property. Use that.

>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> 
> -- 
> 2.30.2
> 
> 
