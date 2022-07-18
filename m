Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94A2657854B
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 16:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231416AbiGROZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 10:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235341AbiGROZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 10:25:24 -0400
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C1C61146F
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 07:25:24 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id h16so6069058ila.2
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 07:25:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=JfNeRuaq4QUMc1UQflDNIYPoJZqS9R6+d3wgQ7WusE8=;
        b=xQeMpF50Pfgc8Rmtp8sXzygLicBCDq6LA+8mLIc7Z+SLYPI2r2VayGTI7NHpCFHqWM
         JIZGqaLElbjbVqXaGJhItoPxZQpAdPktX62lXCiPa03H09BkBKjf0O2qjh/ecdYQNlFW
         PLaMZlUNz13444u8aZPAzQ4NXTIDGTgAgboU59K/600GjIveOGOg2xiRRafsRtVFCANz
         o0l6hJqeliPfvEtiUpVfgxBBwRQQVabTw9fUhGzTzpaD4pzDrA+7B9NWMRCBUNxS0ij3
         0f9F50nntNUkcEdAZF36keCMfp334KbQDbxiPK0bKc1eNPv4+u0Qn+xB1P/bdx/mIido
         vuzQ==
X-Gm-Message-State: AJIora8esF8PLoZVkjNC5BQvfO667ajgD3IWqULSHAiUsWnAUJtOTEr5
        F1Eyjs+CYh4EarnE/A1jK1EYeJvMIQ==
X-Google-Smtp-Source: AGRyM1v/EZOkHkYzJkV7IpFVulPzSJ6zIAShCYpgiVz7QSZ9ObMbxvmeXhOUg+0YHsA9PzHSmflswg==
X-Received: by 2002:a05:6e02:144f:b0:2dc:2850:2956 with SMTP id p15-20020a056e02144f00b002dc28502956mr13489972ilo.258.1658154323267;
        Mon, 18 Jul 2022 07:25:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id c14-20020a02330e000000b0033f043929fbsm5593016jae.107.2022.07.18.07.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 07:25:22 -0700 (PDT)
Received: (nullmailer pid 2902942 invoked by uid 1000);
        Mon, 18 Jul 2022 14:25:21 -0000
Date:   Mon, 18 Jul 2022 08:25:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: arm: Add Asus GT-AC6000 based on BCM4912
Message-ID: <20220718142521.GA2901770-robh@kernel.org>
References: <20220713121234.32604-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220713121234.32604-1-zajec5@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 13, 2022 at 02:12:34PM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a home router, the first BCM4912 SoC based public device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> index b817051c491d..40bb5223740b 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> @@ -31,6 +31,7 @@ properties:
>        - description: BCM4912 based boards
>          items:
>            - enum:
> +              - asus,gt-ax6000

The subject says it is gt-ac6000. Which is wrong?

>                - brcm,bcm94912
>            - const: brcm,bcm4912
>            - const: brcm,bcmbca
> -- 
> 2.34.1
> 
> 
