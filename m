Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3402675066
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 10:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjATJOI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 04:14:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjATJOH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 04:14:07 -0500
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753E8917C1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 01:13:48 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by honk.sigxcpu.org (Postfix) with ESMTP id 3BC22FB03;
        Fri, 20 Jan 2023 10:05:08 +0100 (CET)
Received: from honk.sigxcpu.org ([127.0.0.1])
        by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 325fNfHe7kgh; Fri, 20 Jan 2023 10:05:06 +0100 (CET)
Date:   Fri, 20 Jan 2023 10:05:04 +0100
From:   Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, megous@megous.com, kernel@puri.sm,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: panel: Add compatible for Anbernic
 RG353V-V2 panel
Message-ID: <Y8pZQH+NbOs6UmbZ@qwark.sigxcpu.org>
References: <20230119230415.1283379-1-macroalpha82@gmail.com>
 <20230119230415.1283379-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230119230415.1283379-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_FAIL,
        SPF_HELO_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
On Thu, Jan 19, 2023 at 05:04:14PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG353V-V2 panel is a 5 inch 640x480 MIPI-DSI LCD panel.
> It's based on the ST7703 LCD controller just like rocktech,jh057n00900.
> It's used in a 2nd revision of the Anbernic RG353V handheld gaming
> device. Like the first revision of the RG353V the control chip is known
> but the panel itself is unknown, so name it for the device.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> index 09b5eb7542f8..150e81090af2 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> @@ -20,6 +20,8 @@ allOf:
>  properties:
>    compatible:
>      enum:
> +      # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
> +      - anbernic,rg353v-panel-v2
>        # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
>        - rocktech,jh057n00900
>        # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel

Acked-by: Guido Günther <agx@sigxcpu.org>

Cheers,
 -- Guido

> -- 
> 2.34.1
> 
