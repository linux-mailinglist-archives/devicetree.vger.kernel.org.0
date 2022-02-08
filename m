Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 510A04AD2B9
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 09:06:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237577AbiBHIG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 03:06:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236001AbiBHIGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 03:06:53 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56E6AC0401F6
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 00:06:52 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 88E043F22B
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 08:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644307611;
        bh=KVZRFJpOLq0nJlympEs/FkK7jhyWuVYQ80mNAdiqYeg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gZR+rYiHO15TUynzJ2cyWnLhIEB5D4P8fPSLvQb35Vp4rMJAzNTqSP5vwxVF9/E6B
         3UTmivUtYVkGJsBkzl6UrY0nuopDvLr9XKCBJFiLeX+jdXo5mh6j+vg+9/0hc9y+3o
         8hdJmsFLyxCZpAcrdVnj6arKiPgKv7hZmEh4lfX7D5z3Ghb87Dtrk+ryviIWA6JBVV
         zKEH8yRibQ97EPFwsrXmKfd0vfoNArI9ylTYxY2eOYizFRmlc2X6ohm74ygQkrVrDj
         ojUyPPFsT3YKgzsI805bsAJWG3aLuLdCrr/1hb11odgAfdGIldBQQr1WaYiR/dEBfk
         tpFltb3c99PzA==
Received: by mail-ej1-f70.google.com with SMTP id z26-20020a1709067e5a00b006cbe0628826so1690173ejr.10
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 00:06:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KVZRFJpOLq0nJlympEs/FkK7jhyWuVYQ80mNAdiqYeg=;
        b=vcedFTvA6lPIeh963wUr/a0RprnMzOYB1UpDsjUC9xdskoNFlqCW7mxvR3lj49WCS6
         /ySKzC/y7XRiK8ytHSdNDdDlc70HYtaCFK+UJ4ZMyz7rvtcVxqfs+rls7qWryFi5GntB
         uLI3xb9jznPlLLTyFG3fF8IQls/J60Jb/ofnLNNRu9aII6697Jh66qa6iivudjearVYc
         anmUXvdsCDkz+JDUuAxDWC5cIzqscLN0q5TK7QyjRiaiiJ1TpDIqD0EG9dE5fET5ywuD
         Rk1mOv72OxA2Ug9JSASD6U43HZO7Fygjih+iwLB7hB7cz8QJaHCWignxYO+RXyYwqqr2
         is4Q==
X-Gm-Message-State: AOAM531prZigksdSvBEQ47gNxaUCyDhFUSXUWqpi5e8iV2vxyk3EpbUO
        td6CQLuijxTRxpOMonzLeGFJV0nSYmkOKfxSXjZgq+DVgkzShRDT6s2lvV7tazcL1ZZDforIaGS
        PGEJ1DWI8XFbgQwAfzeK+tJ84UaDzIHMyAx7BVko=
X-Received: by 2002:a05:6402:370:: with SMTP id s16mr3231824edw.63.1644307610260;
        Tue, 08 Feb 2022 00:06:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/LVHny9HM/vF8Zn5IwddFLoJjtpqc+jRpeSQ7higUone+y1NwT4iZ3bw86X890cbGVMwA9g==
X-Received: by 2002:a05:6402:370:: with SMTP id s16mr3231807edw.63.1644307610155;
        Tue, 08 Feb 2022 00:06:50 -0800 (PST)
Received: from [192.168.0.92] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r22sm6266673edt.51.2022.02.08.00.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 00:06:49 -0800 (PST)
Message-ID: <7c6fe5de-19db-3fe9-daa0-279e50865481@canonical.com>
Date:   Tue, 8 Feb 2022 09:06:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V2 1/4] dt-bindings: mailbox: imx-mu: add i.MX93 MU
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220208063046.2265537-1-peng.fan@oss.nxp.com>
 <20220208063046.2265537-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220208063046.2265537-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 07:30, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add bindings for i.MX93 MU which derived from i.MX8ULP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
