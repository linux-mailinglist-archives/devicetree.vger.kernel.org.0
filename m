Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 709356F9DF2
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 05:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbjEHC7w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 22:59:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjEHC7v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 22:59:51 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD2683C2
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 19:59:50 -0700 (PDT)
Received: from pendragon.ideasonboard.com (softbank126090219015.bbtec.net [126.90.219.15])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3B916814;
        Mon,  8 May 2023 04:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1683514783;
        bh=XpKaegjrUuuBU+lYU7WtJvcFA2w3wSOoDTm1CNlD8Io=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CLwm57VPuAOuDjKt9jAKlsqDa7z+WiDnc1r3hI10JpMCdSL3QD2QDO2xOb4TftxX2
         lhF0A6Y338EjJ+SG9ppNlCctTncIXSeqWHNQWahy89VTxW5lqiTTC9qaTwGUa98aBf
         YCtYFbdKl2sXHwqwaha//O1EraxNV2ZgwyPf99sg=
Date:   Mon, 8 May 2023 06:00:01 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr
 supply
Message-ID: <20230508030001.GT23514@pendragon.ideasonboard.com>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

Thank you for the patch.

On Sun, May 07, 2023 at 11:12:16PM +0300, Dmitry Baryshkov wrote:
> Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
> pin of the HDMI connector (together with some simple glue logic possibly
> attached to the connector).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
> index 83c0d008265b..94f75359c6ff 100644
> --- a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
> +++ b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
> @@ -36,6 +36,9 @@ properties:
>      description: GPIO signal to enable DDC bus
>      maxItems: 1
>  
> +  hdmi-pwr-supply:
> +    description: Power supply for the HDMI 5v pin connector

I'd write

    description: Power supply for the HDMI +5V Power pin

to match the HDMI specification. With that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
>    port:
>      $ref: /schemas/graph.yaml#/properties/port
>      description: Connection to controller providing HDMI signals

-- 
Regards,

Laurent Pinchart
