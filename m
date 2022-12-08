Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79121646B03
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 09:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbiLHIuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 03:50:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbiLHIue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 03:50:34 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D902264BB
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 00:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670489433; x=1702025433;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HS1LXFNFWH8asbrv1/rNtKvQd0Vnd4v/MZSu33SbCIk=;
  b=Dxflhaak844iuXAoW5gQDn5JOqTMYDwT+wHI67OkX27UU63oH1mpQ0Jf
   o8TXsYeb6/ViaPfU3nYRVL5akT0Lm9olFcwHK3pf4p2aS19+tlQF7nugf
   vZFupgNMHxYVaADoanRZBXXKVyunQUwEIADNkkNduwR+v/Ji3jJkNhBmp
   ybhHDPtdOz4remjX69ybwm8hJMBYf+a7POeowdiIYx5sotRcyhjlkfage
   XH+PI/igRQ+ncWmDro1/u9GB1h+qTrYOUIYnbWKAXp4pOu3gQC0enjEfZ
   oBUT1bSTkOkdvYx29cfZE8mgtSMGN3EOcVTBhZNzfIVfKWMRlLU+2hMGZ
   g==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27830345"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 09:50:31 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 09:50:31 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 09:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670489431; x=1702025431;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HS1LXFNFWH8asbrv1/rNtKvQd0Vnd4v/MZSu33SbCIk=;
  b=NxfOcP81VJMhdR3oELxJL8QcPDM5ziReZWTq8ttR/kM1wF6wZr2RdVZE
   bqD1GdPdptGixpHsrRbxrCD1YuFDxot4fBR4y9Bx8DNCeRrEBPy3FxgYz
   5Yye6OERbE60loDKHSu6ka4+hroL/n+1smlUZ2IhDWWijbDC304ZHUygr
   l8TuvErtTF53TsRuDSWugJYUXzAqy6gjtMD/joKMQrnbGja05/ZxYicM/
   PIqDEp0aNq3SncukAi64aeDtz6qW16HLyG+urlFq1vU782Zj9Kv3G91Td
   wFXzlQgiEtqUWj0acxTvmrRo0j5d/BnaZxlwNDH0DVLcwxZ+g76GM9TXT
   A==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27830344"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 09:50:31 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 08D74280071;
        Thu,  8 Dec 2022 09:50:31 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Date:   Thu, 08 Dec 2022 09:50:26 +0100
Message-ID: <3212302.44csPzL39Z@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <a033d9a3-4bee-d749-9bd9-24a419398d0b@linaro.org>
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com> <1839665.tdWV9SEqCh@steina-w> <a033d9a3-4bee-d749-9bd9-24a419398d0b@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

Am Donnerstag, 8. Dezember 2022, 09:25:31 CET schrieb Krzysztof Kozlowski:
> On 08/12/2022 06:59, Alexander Stein wrote:
> > Am Mittwoch, 7. Dezember 2022, 17:00:22 CET schrieb Marek Vasut:
> >> On 12/7/22 16:14, Alexander Stein wrote:
> >>> i.MX8MP requires a power-domain for this peripheral to use. Add it as
> >>> an optional property.
> >>> 
> >>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> >>> ---
> >>> 
> >>>   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
> >>>   1 file changed, 3 insertions(+)
> >>> 
> >>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> >>> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
> >>> 793e8eccf8b8b..9d9fb5ad587c2 100644
> >>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> >>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> >>> 
> >>> @@ -52,6 +52,9 @@ properties:
> >>>     interrupts:
> >>>       maxItems: 1
> >>> 
> >>> +  power-domains:
> >>> +    maxItems: 1
> >>> +
> >>> 
> >>>     port:
> >>>       $ref: /schemas/graph.yaml#/properties/port
> >>>       description: The LCDIF output port
> >> 
> >> Should this be required on mx8mp then ?
> > 
> > I'm hesitating to add a required property later on. But I'm okay with
> > both.
> > Rob, Krzysztof: Any preference here? Shall power-domains be made required
> > for fsl,imx8mp-lcdif only?
> 
> I don't know. That's not the question to us, but to someone who knows
> the hardware/datasheet.

I was not talking about the hardware, which needs the power-domain, but the DT 
schema. Sorry to be not specific about this.
Is it okay to add a required property for a compatible later on?

Best regards,
Alexander



