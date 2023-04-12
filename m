Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D37D76DF9A3
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 17:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbjDLPTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 11:19:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230400AbjDLPS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 11:18:57 -0400
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 552A87EE3
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 08:18:50 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id bx42so24346326oib.6
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 08:18:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681312729; x=1683904729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1rryL6U4mVQ09wLHpMpKxLtoPKlN4qyacoLMBPLIA8=;
        b=4bntBuRwDnmQnAesdvoNNUSZlbBCmKPqCL5xw2ocx+4RfU1xFXeELS0J1Z+v3K/NiO
         aitRto2RlVTSOjSSwiRDyDhm7GpLu/QaIvcok4F0iJgRrsjrkUV2sHBZBiWirMxGEHUt
         h1n1eFecFidsRoQ41SmkU/sMWBsU8ArBPCU9G9K+nUA220mnbK2BjP99jvJP5Mn2TL0j
         MH4XmpmtrysQ4c9iuvWDpfiZjFMYHU3R+1rbprXZNrWVLEuvEMRL1YCh8uzatLp8HIZa
         R5irL7Ccnw4CdtNrmoiAZP8TkiNEL5Sf361gx2vAwllrSPZghzZ83Bu2FjGOT3h8nxY2
         3hgA==
X-Gm-Message-State: AAQBX9c9jO8n3LxzBqiuKpzHcUHSUZ5De3m8VDyF7acKfzofD/C4dNJz
        aACftvqIhQDG/cgjYQhL+LnPygOoBA==
X-Google-Smtp-Source: AKy350ZQbeCh5cmuFfBKiLl5geDZUvxtr5QiIwe7+jUSiiP4xOlRTlJOwAPMqYo7nFte+GQkh0totg==
X-Received: by 2002:a05:6808:2089:b0:38b:be56:81 with SMTP id s9-20020a056808208900b0038bbe560081mr5854480oiw.28.1681312729319;
        Wed, 12 Apr 2023 08:18:49 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r206-20020acaf3d7000000b0038bf8c6151fsm558883oih.6.2023.04.12.08.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 08:18:49 -0700 (PDT)
Received: (nullmailer pid 2453568 invoked by uid 1000);
        Wed, 12 Apr 2023 15:18:48 -0000
Date:   Wed, 12 Apr 2023 10:18:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     dianders@chromium.org, neil.armstrong@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: drm/bridge: ti-sn65dsi86: Fix the
 video-interfaces.yaml references
Message-ID: <20230412151848.GA2452008-robh@kernel.org>
References: <20230408174736.1789082-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230408174736.1789082-1-festevam@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 08, 2023 at 02:47:36PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> video-interface.txt does not exist anymore, as it has been converted
> to video-interfaces.yaml.
> 
> Update the references to the new file name.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml  | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> index 911564468c5e..967b1deb4936 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> @@ -106,7 +106,7 @@ properties:
>                      description:
>                        If you have 1 logical lane the bridge supports routing
>                        to either port 0 or port 1.  Port 0 is suggested.
> -                      See ../../media/video-interface.txt for details.
> +                      See ../../media/video-interfaces.yaml for details.

I would just drop this. There *should* be a $ref to the schema already 
up above here.

>  
>                    - minItems: 2
>                      maxItems: 2
> @@ -118,7 +118,7 @@ properties:
>                      description:
>                        If you have 2 logical lanes the bridge supports
>                        reordering but only on physical ports 0 and 1.
> -                      See ../../media/video-interface.txt for details.
> +                      See ../../media/video-interfaces.yaml for details.
>  
>                    - minItems: 4
>                      maxItems: 4
> @@ -132,7 +132,7 @@ properties:
>                      description:
>                        If you have 4 logical lanes the bridge supports
>                        reordering in any way.
> -                      See ../../media/video-interface.txt for details.
> +                      See ../../media/video-interfaces.yaml for details.
>  
>                lane-polarities:
>                  minItems: 1
> @@ -141,7 +141,7 @@ properties:
>                    enum:
>                      - 0
>                      - 1
> -                description: See ../../media/video-interface.txt
> +                description: See ../../media/video-interfaces.yaml
>  
>              dependencies:
>                lane-polarities: [data-lanes]
> -- 
> 2.34.1
> 
