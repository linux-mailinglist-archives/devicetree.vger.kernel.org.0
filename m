Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66586D1FFF
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 14:21:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232228AbjCaMVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 08:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232276AbjCaMU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 08:20:56 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC1C31FD0E
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 05:20:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 60BF6B82EF2
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:19:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB51AC433EF;
        Fri, 31 Mar 2023 12:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680265161;
        bh=RFktdXDlZmxLRfoIJ/yv9VwadGz5IefreKLYKk9X1YU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HJdKW9+U6EjCFl70ovR/g545KjiaFq719gq1YjkZxmNiM/VyvI/n+xeZ5TI0n8cgt
         sSRoMbKhShstzcKTBtUSOrrY//cc1oUqOv2mp7VTWjeM7EusM1hANcFGIZMlqCXU2L
         +fJXGEMWnxjrIR2EuFdwMBWc/PAkzLQ6CJoQlLGUXR+pDVQCMuRcgnMNOGMvYKLA9P
         yx1NDsrlWwE5moEFfQLS8FJbubzomNvG5Zqk9uu3ugu1U6zz2qI9fMvyD3yOKj7jHe
         sl0xcC2oo1qc5AVPVnyUTrzoiTThxMRZKZRYf76b8nNrNM9Ch4QI0dtXwKbPX7h5CU
         knCsyYgcrl+uw==
Message-ID: <7ae0f3e8-38be-4cc1-a068-424819067526@kernel.org>
Date:   Fri, 31 Mar 2023 14:19:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Subject: [PATCH v1 1/2] dt-bindings: arm: realtek: Add Realtek
 Pym Particles
To:     =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
        "afaerber@suse.de" <afaerber@suse.de>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        =?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
References: <9511f256edfd41aea7e9910879df3a1b@realtek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <9511f256edfd41aea7e9910879df3a1b@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 11:58, CY_Huang[黃鉦晏] wrote:
> Define a compatible string for Realtek RTD1319 Pym Particles eval board.
> 
> Signed-off-by: cy.huang <mailto:cy.huang@realtek.com>

Your patch has corrupted subject.
> ---
> 
> v1:
> * RTD1319 SoC and Realtek PymParticle EVB

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> 
> Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
> 1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
> index ddd9a85099e9..8d4e92e9eb4b 100644
> --- a/Documentation/devicetree/bindings/arm/realtek.yaml
> +++ b/Documentation/devicetree/bindings/arm/realtek.yaml
> @@ -55,6 +55,12 @@ properties:
>                - realtek,mjolnir # Realtek Mjolnir EVB
>            - const: realtek,rtd1619
> 
> +      # RTD1319 SoC based boards
> +      - items:
> +          - enum:
> +              - realtek,pym-particles # Realtek Pym-particles EVB
> +          - const: realtek,rtd1319

Wrong placement - these are ordered by SoC. Don't add stuff just at the end.

> +
> additionalProperties: true
> 
> ...
> --
> 2.39.0

Best regards,
Krzysztof

