Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17643513B62
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 20:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350887AbiD1SVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 14:21:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232847AbiD1SVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 14:21:36 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28CABB91E
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 11:18:18 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id r11so2529204ila.1
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 11:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2WPRzz9DnSw+3SdZSnY4y4grDnMEDZWrpXvyHZK/uQE=;
        b=jm4y2IaNstuZB9MVGPRjGHKOO2SqcGE6I4D9Nuh2noXxxdQ3uolBsjEDJMuxkBqk6u
         6WPYyxc2TRHzpLwGuXsqc01MrwbqgMAbJh4m+IEbt4msKgfn9crGWpQ9ovp6AFzvHlsT
         vLk3OCXY1mtQAMstNcQRPb/ctibY5cWSs4AmyHK56wwPynHLzw7/9j6C6V6tQKl/bGtX
         3WucBEfmhAMsbsNQfxmW9QO2WhpfAJb53/TzYobR3U1U41XuY8klzisYWd6vVF5/L3YP
         sToIcCz7vvCKNmzObx9OMfsIAnuy63rGa0fyjfwwa/u32KPU9cfQZSX6QxSjLJiuU+x4
         6q7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2WPRzz9DnSw+3SdZSnY4y4grDnMEDZWrpXvyHZK/uQE=;
        b=y3NnCgCwtdtNnMXkTL51AO7MMyaaPWOT6HgwBjADIjNOtcbFDuKediwgnAHsmXbkut
         9AqA2DVwxblrJgjenVAwf/O0l1Gxuqae+jytHnQtXmw5OT+HMfPoSHbtzCs7chDfXt0p
         Tvu1Iyofm1nqK1Xg1Nnt7SeAxy9KZsRhowzLS7LgKke0AtiEl4jSsaXSHQM6c6W1bePY
         xsCKmAEw6OCC6NaIWzUDiHCuxFglNTm/1igemKmQPre2cfkiXC29F/eFnKmBlkTjcWoV
         1k0nKPzLaeB/6CYOgEMu82snBavgq6XJzVlBl2PrI1tkV3uQ+tAcy9qysIJT2ZN9bSgK
         Z2tg==
X-Gm-Message-State: AOAM533uQ6WhcwzgINBGlDqgx/XL9hpx4B/USWUsW8mDyl6q0zyopgZc
        izJcOmF/UpxOENK/R9qzHzk=
X-Google-Smtp-Source: ABdhPJwpnkLmrAE78K4B7iOZyAlVwX6U+j+lg32J6PX8VFc01XLLQGUD7m6b56RFP3YZVmwzlJeRZg==
X-Received: by 2002:a05:6e02:1be1:b0:2cd:5e70:a2ea with SMTP id y1-20020a056e021be100b002cd5e70a2eamr14286474ilv.204.1651169898072;
        Thu, 28 Apr 2022 11:18:18 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:75d0:a34:61ff:fa0b? ([2600:1700:2442:6db0:75d0:a34:61ff:fa0b])
        by smtp.gmail.com with ESMTPSA id c1-20020a928e01000000b002cd6e31ea8csm347366ild.26.2022.04.28.11.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 11:18:17 -0700 (PDT)
Message-ID: <ce4aad1e-93d1-c824-1e25-7917d90d3c6f@gmail.com>
Date:   Thu, 28 Apr 2022 13:18:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [bug report] of: overlay: rework overlay apply and remove
 kfree()s
Content-Language: en-US
To:     Dan Carpenter <dan.carpenter@oracle.com>, frank.rowand@sony.com
Cc:     devicetree@vger.kernel.org
References: <Ymj0Sg7ubvNeXgyG@kili>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <Ymj0Sg7ubvNeXgyG@kili>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/27/22 02:44, Dan Carpenter wrote:
> Hello Frank Rowand,
> 
> The patch 067c098766c6: "of: overlay: rework overlay apply and remove
> kfree()s" from Apr 20, 2022, leads to the following Smatch static
> checker warning:
> 
> 	drivers/of/overlay.c:180 overlay_notify()
> 	error: buffer overflow 'of_overlay_action_name' 4 <= 4
> 
> drivers/of/overlay.c
>    155  static char *of_overlay_action_name[] = {
> 
> We need to add a "init" string at the start of this array.
> 
>    156          "pre-apply",
>    157          "post-apply",
>    158          "pre-remove",
>    159          "post-remove",
>    160  };
>    161  
>     162 static int overlay_notify(struct overlay_changeset *ovcs,
>     163                 enum of_overlay_notify_action action)
>     164 {
>     165         struct of_overlay_notify_data nd;
>     166         int i, ret;
>     167 
>     168         ovcs->notify_state = action;
>     169 
>     170         for (i = 0; i < ovcs->count; i++) {
>     171                 struct fragment *fragment = &ovcs->fragments[i];
>     172 
>     173                 nd.target = fragment->target;
>     174                 nd.overlay = fragment->overlay;
>     175 
>     176                 ret = blocking_notifier_call_chain(&overlay_notify_chain,
>     177                                                    action, &nd);
>     178                 if (notifier_to_errno(ret)) {
>     179                         ret = notifier_to_errno(ret);
> --> 180                         pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
>     181                                of_overlay_action_name[action], ret, nd.target);
>                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> These are all shifted and so post remove is out of bounds.
> 
>     182                         return ret;
>     183                 }
>     184         }
>     185 
>     186         return 0;
>     187 }
> 
> regards,
> dan carpenter

Thanks for the bug report!

I'm working on a patch to fix (easy) and a patch to add some unittest tests
to verify the overlay notifiers (a little bit more time consuming).

-Frank
