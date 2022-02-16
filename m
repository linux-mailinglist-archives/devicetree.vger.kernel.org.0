Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DC24B8B9D
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 15:40:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233354AbiBPOk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 09:40:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbiBPOk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 09:40:28 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 766932A64E3
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 06:40:16 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40916113E;
        Wed, 16 Feb 2022 06:40:16 -0800 (PST)
Received: from bogus (unknown [10.57.3.35])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C585C3F718;
        Wed, 16 Feb 2022 06:40:14 -0800 (PST)
Date:   Wed, 16 Feb 2022 14:39:26 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
Message-ID: <20220216143926.t3dadlsjtkotkv6o@bogus>
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 02:21:43PM +0100, Geert Uytterhoeven wrote:
> "make dt_binding_check":
> 
>     Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
> schemas").

Interesting !

> ---
>  Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> index 800417a76bda0bd9..3735f221fdf24e0a 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> @@ -51,6 +51,7 @@ properties:
>        be any memory reserved for the purpose of this communication between the
>        processors.
>      minItems: 1
> +    maxItems: 2
>

There is no max limit strictly speaking. The driver can use all the specified
mboxes and associated shmem in round robin fashion. That is the reason I
didn't add maxItems unlike the newer SCMI protocol which clearly restricts
to one Tx and one Rx(much saner I must admit).

-- 
Regards,
Sudeep
