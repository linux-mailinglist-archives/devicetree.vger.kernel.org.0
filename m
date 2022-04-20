Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0FAC508C83
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 17:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353835AbiDTP4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 11:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346732AbiDTP4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 11:56:32 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A2D443FA
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 08:53:45 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id r8so2510982oib.5
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 08:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VllFdnk/hyopF/Q5KMYzeYWwZpe5bkuxXCeeB8YIWUQ=;
        b=cvl50v9D6SOpihrr0kQ3HH9SKlpsII3mA35saRwVe6pPhy2wWijDqBAw7fenN6DkS6
         Y4BJ4OccDhxyW44yCeOHPzrrQdWAS87agmDgmeQeStyWStxcGtL7xZp4x0ik6P2NKX9G
         zc3wJt4QWKHhL3ExwT19q2OxNPDGxxi8C9hjtA04i1rIrCxtGnAr4RWqUxzGadSE2KUa
         9pvghhuiD4/54cpTNtGpZQ0YP7sL7J546oTgUe3Gk0OXQJeNu24PKp1e/NFQNz8rUlLm
         fBUNZ9f8BIODusIbxknoedANmnefIIR8avHFdhZVnA/PGOTECwGQY4GW8XK3IVXmX+Q7
         lFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VllFdnk/hyopF/Q5KMYzeYWwZpe5bkuxXCeeB8YIWUQ=;
        b=zJkCB2z0Z1lAMzCs6Eo1yzO+nMNGx0fm4GRmyVNyKRbtZCTX7NVZ+ZzeH55XYo7ef6
         593dcARME+1hQBfvNypbwFpHMdpvbrsgnNNhVnivXveSgI82ZF4yDIQ0Avk+uNNh3ooh
         n8YIaXNp6V7JmPa7qNlwATLsFp1CAWYsaWQ0WufuhNzEcBWSAfFIcJ+s5u7eTyIC4HNp
         3K5pisFM2DM+IOXFjpN41+ZmXl5hzZ5xj0oZsPteEzJfbGeZuyumirLdnGz6pQMR02LA
         o9leoM0A20RoKa/ckv1RN+T1KRGMCob7TDfpcVTOhgadslBCkGRYxTPN60wAXycEXkrm
         cPSA==
X-Gm-Message-State: AOAM530EB3GRzkS1TaMNeEpzhy9C7oea7kpxoL7WtYa3ZwPBWckD0qDV
        5G3F/W/ytbujh8XxVbMRlLY=
X-Google-Smtp-Source: ABdhPJw3yFoxnxRO+lp6dgZ3mEYw4m8/z2ultE8thh9xwpC/S5hnQiOYVZziW1tE7oQtp0oVK0QuSA==
X-Received: by 2002:a05:6808:1309:b0:322:e1f6:700c with SMTP id y9-20020a056808130900b00322e1f6700cmr1592591oiv.106.1650470024853;
        Wed, 20 Apr 2022 08:53:44 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:cac:ed08:b92a:3a4b? ([2600:1700:2442:6db0:cac:ed08:b92a:3a4b])
        by smtp.gmail.com with ESMTPSA id t22-20020a4a8256000000b003332a0402f5sm6795289oog.23.2022.04.20.08.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 08:53:44 -0700 (PDT)
Message-ID: <9ab323ca-f2ca-163b-4216-8537bf65b9ca@gmail.com>
Date:   Wed, 20 Apr 2022 10:53:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] of: overlay: do not break notify on NOTIFY_{OK|STOP}
Content-Language: en-US
To:     =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
References: <20220420130205.89435-1-nuno.sa@analog.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20220420130205.89435-1-nuno.sa@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/20/22 08:02, Nuno Sá wrote:
> We should not break overlay notifications on NOTIFY_{OK|STOP}
> otherwise we might break on the first fragment. We should only stop
> notifications if a *real* errno is returned by one of the listeners.
> 
> Fixes: a1d19bd4cf1fe ("of: overlay: pr_err from return NOTIFY_OK to overlay apply/remove")
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>

Thank you.

-Frank

> ---
> v2:
>  * Only break fragment notification in case errno is returned from
> notifier;
>  * Massaged commit message accordingly.
> 
>  drivers/of/overlay.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index d80160cf34bb..d1187123c4fc 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -170,9 +170,7 @@ static int overlay_notify(struct overlay_changeset *ovcs,
>  
>  		ret = blocking_notifier_call_chain(&overlay_notify_chain,
>  						   action, &nd);
> -		if (ret == NOTIFY_OK || ret == NOTIFY_STOP)
> -			return 0;
> -		if (ret) {
> +		if (notifier_to_errno(ret)) {
>  			ret = notifier_to_errno(ret);
>  			pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
>  			       of_overlay_action_name[action], ret, nd.target);

