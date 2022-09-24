Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D466F5E8EC6
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 19:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbiIXRHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 13:07:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiIXRHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 13:07:48 -0400
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 159ED12D05
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 10:07:46 -0700 (PDT)
Received: by mail-oo1-f50.google.com with SMTP id c22-20020a4a4f16000000b00474a44441c8so506563oob.7
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 10:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=+aVWlf6unPZIMip47jgs/Fu16FdIOtjElNTUIzQmT8E=;
        b=7H+4LbMGKK5Yi6F2jnRAINrIYkzyCSqpbk3GrkCJblYu75uj9W6gVpBMBcvEV746Gl
         LcS61S5lEHv8ZsSuFjUsmmb5w2vyUN+axUKSSu5eyjeBwJljQmuxEsEw/bEGQe/ufEJ+
         K0VP2ZnilTbDgv5ig9yj95epLDDmwwHxfjoLmp0FW1h4jBcU4SLEcoTURj+8YTp6xpz/
         eWGG6NPFtl/u5XhF/znjzV7kkza4tiu8WP9gy0r+AUjzw+mdQo2AUhDSHK+QarkbCoJh
         tEQgK6ccvlaamsILS+uBHr79LqsmUpF8O6Ld/Q/Y7v08p3uBm6AXWoBSUODO5tzl/QCY
         pHXg==
X-Gm-Message-State: ACrzQf10XM6MzgYKjKDJ7Z5c1qoNkN0zxWfOgAwWcq6h5hExX1JuH2PD
        rwaGLFe2iTTYstOr+GkIEVnESfr3B7BE
X-Google-Smtp-Source: AMsMyM6KWD4IthwY8oAOVKWKUXbxXXc2IO72af+iBQ+GgkE9q6WVvIcTRB0WqPmfyzvnIp6HBIUaIA==
X-Received: by 2002:a4a:928e:0:b0:476:6c03:f0c5 with SMTP id i14-20020a4a928e000000b004766c03f0c5mr123173ooh.78.1664039265186;
        Sat, 24 Sep 2022 10:07:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m32-20020a05687005a000b001226d2100f2sm6681709oap.33.2022.09.24.10.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 10:07:44 -0700 (PDT)
Received: (nullmailer pid 968363 invoked by uid 1000);
        Sat, 24 Sep 2022 17:07:44 -0000
Date:   Sat, 24 Sep 2022 12:07:44 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch,
        airlied@linux.ie, sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision
 NV3051D bindings
Message-ID: <20220924170744.GA961091-robh@kernel.org>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220920145905.20595-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 20, 2022 at 09:59:04AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml      | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> new file mode 100644
> index 000000000000..d90bca4171c2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NewVision NV3051D based LCD panel
> +
> +description: |
> +  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> +  this driver only supports the 640x480 panels found in the Anbernic RG353
> +  based devices.
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - anbernic,rg353p-panel
> +          - anbernic,rg353v-panel

Is 'panel' redundant? IOW, could 'rg353v' identify something else other 
than the panel?

Rob
