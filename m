Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 949265BCAA4
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiISL0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbiISLZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:25:49 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6CF1C923
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:25:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3F34BB819DB
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 11:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A051C433C1;
        Mon, 19 Sep 2022 11:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663586746;
        bh=rkm/5WUPF/Sq8fWXNsO5fF2dZjF2+uzCocVI6SmpW44=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=oc7Ip4TTVE+R/e7VnOMA5dI9ksWd4dfxA806JO45KDIqGoXjlIqNHyjO1UAvo/cVm
         qS6GL3hl216/8+i1F5EwwqzAbds4O+wR2o3xjBep1Pmb6X2WKeNE8QUNrVI7XErADB
         XeCfr18+qN6vEp95KXqFTuVMtT/6CtB7gUMAdpwTtDHHAlXsn460NjhHzLLsuUJ1d5
         uHkBQ11tcolTwkl4KSvenuJVZTajZ3t16IKkaSfh6wLzJJu2LTJIl/PYcEWXDuYotd
         psh25NWVdAXgC3UmGN3XrY1ux8lKddTY2zhjwf6d278lRBbJPfpu2yKhGmWTt6af1q
         VVW7Gvn+iSUiw==
Message-ID: <762c78b2-17be-8a9a-81c2-d642b94b96ac@kernel.org>
Date:   Mon, 19 Sep 2022 13:25:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/2] MAINTAINERS: update Mediatek MT7621/28/88 i2c
 driver doc file
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com, sr@denx.de
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
 <20220917042721.527345-2-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220917042721.527345-2-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 06:27, Sergio Paracuellos wrote:
> Mediatek MT7621 i2c driver Bindings have been migrated from text
> to YAML. Hence, properly update this file accordingly.

So you allow to have a warning added in patch #1 and then you fix it?

> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v2:
> - Add this new patch to the series to align MAINTAINERS files
>   with new YAML doc
> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 08620b9a44fc..bac21d599181 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12669,7 +12669,7 @@ MEDIATEK MT7621/28/88 I2C DRIVER
>  M:	Stefan Roese <sr@denx.de>
>  L:	linux-i2c@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> +F:	Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml

This must be squashed, otherwise it is not bisectable and you have warnings.


Best regards,
Krzysztof
