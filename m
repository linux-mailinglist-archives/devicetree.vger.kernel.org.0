Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0887189E6
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 21:12:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjEaTMM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 15:12:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjEaTML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 15:12:11 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A94FF107
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:12:09 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D0346861EC;
        Wed, 31 May 2023 21:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685560328;
        bh=Os7O+0HlwWKBxy88eq0jsfyPP+OTJb900Ym/2naD7kA=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=mEsvhqZsGX3UMU3ePXJ+vN987aGJy3qMJyrdX814Xr/g+nkxPiz5vHg9esFSBBViP
         vcKYVbBDkvdUfCfStX81lvVPl5rwvNZVXVxd/k/BpycMxLhSD+r0iN6bc3MtygDkdq
         rnTXmeNNxtjMpOfmYDN4D7UsbGsgQXFTV9udEJvVrt+xQxJLCuYFKQFC9/5A3k4VuY
         +6R5Z3es1Bs6C6bC5tkbKZaSJvNKcOSddRSTZdGvWqARb4+KjRJQwkvzZu8rv5niDa
         166qATZfWncKjape00BxKzcIvp5qftm57SVEuUVD17LKNgBJxmqSwidj+2DWBU3jEz
         EizTitAGGdy6g==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 31 May 2023 16:12:07 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: samsung,mipi-dsim: Use port-base reference
In-Reply-To: <eb2b71df-6767-40f3-afc1-ef1552aeaee6@linaro.org>
References: <20230531014315.1198880-1-festevam@gmail.com>
 <eb2b71df-6767-40f3-afc1-ef1552aeaee6@linaro.org>
Message-ID: <095bb5c25f120536bf38bf87df5900cb@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 15:56, Krzysztof Kozlowski wrote:

> This would have sense if you kept original intention, so
> additionalProperties: false
> 
> Without it - you just break bindings to hide warning.

I am not sure I understood your suggestion.

Is this what you mean?

diff --git 
a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml 
b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 06b6c44d4641..033404669b11 100644
--- 
a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ 
b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -96,14 +96,14 @@ properties:

      properties:
        port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
          description:
            Input port node to receive pixel data from the
            display controller. Exactly one endpoint must be
            specified.

        port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
          description:
            DSI output port node to the panel or the next bridge
            in the chain.
@@ -230,8 +230,7 @@ allOf:
          - vddio-supply
          - samsung,phy-type

-additionalProperties:
-  type: object
+additionalProperties: false

  examples:
    - |
-- 
