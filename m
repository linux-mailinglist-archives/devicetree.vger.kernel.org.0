Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 403E65151CB
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 19:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236281AbiD2R2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 13:28:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351561AbiD2R2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 13:28:16 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A3B562C3
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:24:57 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C73CD80112;
        Fri, 29 Apr 2022 19:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651253095;
        bh=6zWLKnVmPjn67OBShu1Y71mWlfzoWqDIMDyqyrKYZN8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=E68pQaqxfWasH2aAoNYM7tVMb3+CRfTQdJZPkIuzu/M+9kRD2ag/Uj2sOkjLQEksd
         jgtgpEtXHGQ+/7aLO+E92r2WMsmxuMVC4xG9GU2Z6huO7EqVNd0ZWM+3I91pjP6bL7
         PqP5nXbvw1WFhCF0TV1Fkd2+v8oVpgkanhMolvdNsGyfz9HnTowtUB0GnptyDAdmSB
         S5jTeo5hZzbnmDSuCNjF9gWBnktJf+24BLzkfTNWta2HeDK1SMUBQhGK9DWL3UJoR6
         CYmixTULOZC79QIALa/zC1CHAX/dpy1iGiUP4TP+Wspciq0i6xDvgWeYPfXnzIdwqg
         SujgvODRIaPWA==
Message-ID: <e93f6030-b72d-4071-13c3-6f022a352cfc@denx.de>
Date:   Fri, 29 Apr 2022 19:24:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/2] dt-bindings: display: simple: Add Startek
 KD070WVFPA043-C069A panel
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, sam@ravnborg.org
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20220429172056.3499563-1-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220429172056.3499563-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/29/22 19:20, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add Startek KD070WVFPA043-C069A 7" TFT LCD panel compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> Changes since v2:
> - None
> 
>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1eb9dd4f8f58..e190eef66872 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -294,6 +294,8 @@ properties:
>         - starry,kr070pe2t
>           # Starry 12.2" (1920x1200 pixels) TFT LCD panel
>         - starry,kr122ea0sra
> +        # Startek KD070WVFPA043-C069A 7" TFT LCD panel
> +      - startek,kd070wvfpa
>           # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel
>         - team-source-display,tst043015cmhx
>           # Tianma Micro-electronics TM070JDHG30 7.0" WXGA TFT LCD panel


Reviewed-by: Marek Vasut <marex@denx.de>
