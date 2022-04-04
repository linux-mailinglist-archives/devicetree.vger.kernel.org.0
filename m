Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0E14F1B2B
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377494AbiDDVTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379829AbiDDSMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:12:32 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F0193EA8F
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:10:36 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id x9so7486322ilc.3
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4q7aZTZtthVx302+zR7f3ZZ4tKqws32hxWLFiMecBLY=;
        b=SwWv1/V705DtWP/ugpJsOK4K8586D3Omb59Jl1yKo5JnYQVI2gE4iH2aCNPkTkTSHF
         7ZlY8ZK0vuP0m3l6YAcyBMjIX0iOjRmV1k+d4j4G7qqJ/2C0wK6+5Zp56R+IZC83lViF
         OwVXGd3dvvBB2Ucd+2V/dz/5KHdbgrflfYUyMAaK8pMOJkWXEEdWEHPVVABuGho1SZ6c
         IG/0TpJjZNC2MxJggkEIduDaQTMLDZTD1hbVQzw5QnpGWkxAii6XSs1tRR3zrhS2s2TT
         HQ4fovKnd7gPCQm6cO4jFlgJUxJlZS4gce6XfizfqFIkjd1Lmqt5qp0UbiDH2kG+cgdE
         BLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4q7aZTZtthVx302+zR7f3ZZ4tKqws32hxWLFiMecBLY=;
        b=30YQ2w9Q19Bd3CyPUTCnywKG0AXmE2DwaSYDnWSQKgPtIitQRhNLH7HV8UVtB3NiRx
         7WRBr041r/8o+DDiZUkgH4RUjN5KCGSBJO3JkWg+lnVFghMW4s1+EfvM9cxzqULI0GWT
         6plF35GYsX/mbV1WAN1lpW2uL0UoBv35enHe/PYfFBDC6/ziq0g73+zrYznBshwAK1ZX
         2e8C+9SXTBlm92AmGszyDSFciKSTacN0e+ZGrgORDOzWvGFMEff4bB+n4mGdMdHHPlYh
         dFEEX8MCrEesgZKOfOt7QqGeQiEwC7jAyexF91hoRLUW00Jt+TE5zdHMxmn0R4eziQll
         K2hg==
X-Gm-Message-State: AOAM531c+mcetbR73+u+C6/0J6Y6VsHTM1h2cfsgM1F8/nf57en3CZ6q
        8477DB6h7S5rc3MQDVkaA6k=
X-Google-Smtp-Source: ABdhPJyvzK9GqtCA3phsSzcfjw9VquOxjd+ddGmAA9Fcit7vYPVn7zsTOwCyPTdc/A/q9xSfVx0hWg==
X-Received: by 2002:a05:6e02:1948:b0:2ca:43b2:25f5 with SMTP id x8-20020a056e02194800b002ca43b225f5mr507992ilu.187.1649095835640;
        Mon, 04 Apr 2022 11:10:35 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:d520:1e7b:35fa:114b? ([2600:1700:2442:6db0:d520:1e7b:35fa:114b])
        by smtp.gmail.com with ESMTPSA id f20-20020a6be814000000b00649d9a4db2asm6857044ioh.27.2022.04.04.11.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 11:10:35 -0700 (PDT)
Message-ID: <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
Date:   Mon, 4 Apr 2022 13:10:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Content-Language: en-US
To:     =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
References: <20220404074055.95618-1-nuno.sa@analog.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20220404074055.95618-1-nuno.sa@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/4/22 02:40, Nuno Sá wrote:
> We should not break overlay notifications on NOTIFY_OK otherwise we might
> break on the first fragment. As NOTIFY_OK is not zero, we need to
> account for that when looking for errors.

It's been a long time since I've looked at notifiers, it will take me some time to
review this.

-Frank

> 
> Fixes: a1d19bd4cf1fe ("of: overlay: pr_err from return NOTIFY_OK to overlay apply/remove")
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>
> ---
>  drivers/of/overlay.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index d80160cf34bb..0b2d47598cfb 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -170,9 +170,9 @@ static int overlay_notify(struct overlay_changeset *ovcs,
>  
>  		ret = blocking_notifier_call_chain(&overlay_notify_chain,
>  						   action, &nd);
> -		if (ret == NOTIFY_OK || ret == NOTIFY_STOP)
> +		if (ret == NOTIFY_STOP)
>  			return 0;
> -		if (ret) {
> +		if (ret && ret != NOTIFY_OK) {
>  			ret = notifier_to_errno(ret);
>  			pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
>  			       of_overlay_action_name[action], ret, nd.target);

