Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A192F2B9393
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:23:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726866AbgKSNW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:22:28 -0500
Received: from mail-ej1-f67.google.com ([209.85.218.67]:40487 "EHLO
        mail-ej1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726845AbgKSNW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 08:22:28 -0500
Received: by mail-ej1-f67.google.com with SMTP id oq3so7862393ejb.7
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 05:22:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CStgkqKRXfI1wlaTDaJqSwx7L/FOjcoINWntm1mADrI=;
        b=fH1ugRw+HkBPuFYjfHi02SW86rKqY/U+to2GwC2RWVxEpZjx2uLbiuudj1sadJZKby
         xAoLvJFkqOQRlNrW6UzdcuZ5W4HOhvZimRT0d03WvES43ivdhpZkmMoZ/dCvhFdl2hVv
         mC8DZRYeP3qejLWUbL+/hM2bxJvBg5MhNirCnFAEQzIy5GgRe0Y11OqtgpBw6D06AC2s
         xbNxQx/cSWwbdvtxXMQkYw0JfFV4Mp8bHFfgjllA7Pyl0oX36q98qS/6CIp1nxVadzp1
         ANuuA/YV9b/Gn3mqyAkWyvfirey7jEb5Gg2vtEO9XBL20wxzfO+txAhzhBeZckbsbzPf
         ZosA==
X-Gm-Message-State: AOAM530wO7O2oP4R0DmdV2Mh0q/IwEdxgERE24zAgmmogq3ZAcordgrX
        zh6VPYMXlrSGX+DN5RKKruA=
X-Google-Smtp-Source: ABdhPJyKAXLSCpvfFCuT80e2NI/KEUhUGwDnJL5XMgObcvsS1ryTC/xK+1YT0PNi4f4+mEjMGYBvcA==
X-Received: by 2002:a17:906:2a46:: with SMTP id k6mr6923128eje.533.1605792146219;
        Thu, 19 Nov 2020 05:22:26 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id u2sm2682721edo.65.2020.11.19.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 05:22:25 -0800 (PST)
Date:   Thu, 19 Nov 2020 14:22:24 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: add imx8qm boards compatible
 string
Message-ID: <20201119132224.GB348129@kozik-lap>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-2-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201119125304.1279-2-aisheng.dong@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 08:53:03PM +0800, Dong Aisheng wrote:
> Add imx8qm boards compatible string
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index f793f90fe2e6..d69ac5c0554e 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -726,6 +726,12 @@ properties:
>            - const: zii,imx8mq-ultra
>            - const: fsl,imx8mq
>  
> +      - description: i.MX8QM based Boards
> +        items:
> +          - enum:
> +              - fsl,imx8qm-mek           # i.MX8QM MEK Board

No, please include the boards DTS in this patchset.

Best regards,
Krzysztof
