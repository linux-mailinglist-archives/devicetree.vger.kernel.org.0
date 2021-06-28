Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1863B5AD1
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 11:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232409AbhF1JG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 05:06:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231683AbhF1JG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 05:06:29 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A16A9C061766
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 02:04:02 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a18so9097647lfs.10
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 02:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+2EzrTnhfOowmWhxm0kFHTRjLO9TCl8XXTjXsRKqQ2c=;
        b=zIJqs7Co2eNiFonKRmUhGl779hcPPInezCVycefhrwtwbgb1N451lT2INEF1w0lbnP
         NHUnBfkxgnWNECm58Zcusrpsubc4rnSid6PnR35RCycjZcigJDQMtm9dd+Q1H69B/s/p
         VEEYinlNBAIv8AK8C8ilf/J8GjLrdXsjXZgy2YIdzHKTwAjc0j0IdUIcW54K/XWs4R8e
         SR+ts7cwxpTzYlyLQAsgTjxRVwA6ezVzb6/xoNUDu3Av/3Tp8LKGS81KZ70+YQeO97Ot
         vwMkpWl/h+d1OVg4OeX3+CGimUoZKLdeC05B+gETnoeqaQSa/Wk/lKnTDIuC/7TwsEt1
         FGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+2EzrTnhfOowmWhxm0kFHTRjLO9TCl8XXTjXsRKqQ2c=;
        b=Ry+ILVRH/EeggrRsfvU/C8BEyUxjFC0zws4OvjiP2odbW6QYbzyFPCvF7XIJI5h6ro
         3jAT4WRcl3uPGiRdBJKIXSEM3jRg6Zj9iGkNHLSwuehqEWV5i7YjjG/iYjrbF1XJzOCJ
         aNsFEYl2w/sxUqr7MzcW2TMo6LAc4/H27LTYOdZZC7TUOpPUYO8W6RRIs12lm29RLvd+
         i3hGX8f+fvSLgD3Qq3r007dZD15j2FlRDgzLvtVxzBSn8N3NtehjYSRPogH3euEqXQC/
         +hGQlI/r8PF1ohCdlD81tKquRNiBcHLchrOgirsosL4CF59qVq98VM2wcPE0aq8iI8Oh
         1Msg==
X-Gm-Message-State: AOAM533eSEedx6xdpWEDeeIRdLaJOs/0/UuyAhS/qg3jEeSM6PoQjdBJ
        6miSwUC8We8nG560G42zQ+P7GQ==
X-Google-Smtp-Source: ABdhPJwJfZjn/0uvABnDakh1J3d7cG4mjD0RI2wPB8U7fPt3E4kbk1xZjnjHYhTJ8+t/yIHTzXu11Q==
X-Received: by 2002:a05:6512:76:: with SMTP id i22mr18642952lfo.420.1624871040878;
        Mon, 28 Jun 2021 02:04:00 -0700 (PDT)
Received: from localhost (h-46-59-88-219.A463.priv.bahnhof.se. [46.59.88.219])
        by smtp.gmail.com with ESMTPSA id b15sm1260527lfe.49.2021.06.28.02.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 02:04:00 -0700 (PDT)
Date:   Mon, 28 Jun 2021 11:03:59 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Fix 'unevaluatedProperties' errors in DT
 graph users
Message-ID: <YNmQf3nfSzScL97H@oden.dyn.berto.se>
References: <20210623164344.2571043-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210623164344.2571043-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for your work.

On 2021-06-23 10:43:44 -0600, Rob Herring wrote:
> In testing out under development json-schema 2020-12 support, there's a
> few issues with 'unevaluatedProperties' and the graph schema. If
> 'graph.yaml#/properties/port' is used, then neither the port nor the
> endpoint(s) can have additional properties. 'graph.yaml#/$defs/port-base'
> needs to be used instead.
> 
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: "Paul J. Murphy" <paul.j.murphy@intel.com>
> Cc: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
> Cc: "Niklas S�derlund" <niklas.soderlund@ragnatech.se>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml    | 3 ++-
>  Documentation/devicetree/bindings/media/i2c/imx258.yaml        | 2 +-
>  Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml   | 2 +-
>  Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml   | 2 +-
>  Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml   | 2 +-
>  Documentation/devicetree/bindings/media/renesas,vin.yaml       | 3 ++-

For renesas,vin

Reviewed-by: Niklas S�derlund <niklas.soderlund+renesas@ragnatech.se>

>  6 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> index 735d0233a7d6..674891ee2f8e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> @@ -29,7 +29,8 @@ properties:
>  
>      properties:
>        port@0:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
>          description:
>            Primary MIPI port for MIPI input
>  
> diff --git a/Documentation/devicetree/bindings/media/i2c/imx258.yaml b/Documentation/devicetree/bindings/media/i2c/imx258.yaml
> index 515317eff41a..cde0f7383b2a 100644
> --- a/Documentation/devicetree/bindings/media/i2c/imx258.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/imx258.yaml
> @@ -49,7 +49,7 @@ properties:
>  
>    # See ../video-interfaces.txt for more details
>    port:
> -    $ref: /schemas/graph.yaml#/properties/port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
>      additionalProperties: false
>  
>      properties:
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
> index 9149f5685688..246dc5fec716 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
> @@ -45,7 +45,7 @@ properties:
>  
>    port:
>      description: MIPI CSI-2 transmitter port
> -    $ref: /schemas/graph.yaml#/properties/port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
>      additionalProperties: false
>  
>      properties:
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
> index 0699c7e4fdeb..b962863e4f65 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
> @@ -45,7 +45,7 @@ properties:
>  
>    port:
>      description: MIPI CSI-2 transmitter port
> -    $ref: /schemas/graph.yaml#/properties/port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
>      additionalProperties: false
>  
>      properties:
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
> index 27cc5b7ff613..f5055b9db693 100644
> --- a/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
> @@ -37,7 +37,7 @@ properties:
>  
>    port:
>      additionalProperties: false
> -    $ref: /schemas/graph.yaml#/properties/port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
>  
>      properties:
>        endpoint:
> diff --git a/Documentation/devicetree/bindings/media/renesas,vin.yaml b/Documentation/devicetree/bindings/media/renesas,vin.yaml
> index dd1a5ce5896c..4945a2f0eca6 100644
> --- a/Documentation/devicetree/bindings/media/renesas,vin.yaml
> +++ b/Documentation/devicetree/bindings/media/renesas,vin.yaml
> @@ -118,7 +118,8 @@ properties:
>  
>      properties:
>        port@0:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
>          description:
>            Input port node, single endpoint describing a parallel input source.
>  
> -- 
> 2.27.0
> 

-- 
Regards,
Niklas S�derlund
