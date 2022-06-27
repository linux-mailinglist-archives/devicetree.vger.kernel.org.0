Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFF9555D4D0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:14:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239167AbiF0Q2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 12:28:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239139AbiF0Q2m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 12:28:42 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9CA07678
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:28:41 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id m14so8640718plg.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eJNYcwa8MdB3TFlmjQGXEXwu3LQ+F2ULUjPAF03GvZI=;
        b=ncMlSWAC8DSEspwYSE6ymvT/EvKPWFY757CGu5oOZew7TislLANKfKKwVY+okxFmFs
         OlrBFj6orPeP+nNDY9CVYrTs78ZBUuRI/FOa/DG80f765DwYD2ctTWBV5w2+hpl5eRSf
         wHbuP+02IWdWUHuRKlyZaf/pi9LzNCIVrKq4LN8DJ98snvHUVFuuzO/N73Vdw+kmU+Zf
         MqpDs+BTfn1zXkWT2ZgMYzUzuBQLi+u3YJiG5rPlPqmJ152xU7ybr+QJKh9ChSLPUOzP
         JXI4lHxbQvI3Xn644LSO41rtltxRcn84uAU0AGZvZ/H8JEe5xUKt0cT0uARsjFuXn83P
         pBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eJNYcwa8MdB3TFlmjQGXEXwu3LQ+F2ULUjPAF03GvZI=;
        b=6oPbYvx7wId7G5F6vYXsuZur3ak2ax/Sz+ZRbq+Ask45dIGL4l2uRm6BCvDkjblfKC
         6GP4Ni0mFTeuL4/EktMcYo1JvKqLc6uia1p8uKc1qovTu2boR8uzxb9RVSqCMUxsUsn0
         D8k3GlC4lzGXT9BOStlp5mjSU//2x+KJIuGINiruZeKQ2TbYTzvgzkm9n+woXCk73rUe
         xnvI3/5hfr6HmD0isNrgFkHJy9JNCiZU+H7BgjFugoyQIaX3YlD4GdecuwCuC8waPTx6
         Ef/4O0TKyBvGef1yvHArRsNMZjq9zeJIIfkEgpMifzQGr+v08+0PE17kt1Vfmh7j7Xhj
         Rvrw==
X-Gm-Message-State: AJIora+lgmeErkbA1OEsHpZlmtlrRx6hWnjItpFkQnYFxCZGKCwO+xdO
        oJGQKkYdsi7MxNOmZc5P1LU=
X-Google-Smtp-Source: AGRyM1ueosPO/zKtUwGRpLnxzkctM/qLka4xC6ytgyiKQ1rpsTVWoqogWw5Y4Eku1elVF3ZCNpbB5Q==
X-Received: by 2002:a17:90b:4f8c:b0:1ed:243:ba07 with SMTP id qe12-20020a17090b4f8c00b001ed0243ba07mr21424205pjb.89.1656347321357;
        Mon, 27 Jun 2022 09:28:41 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id z1-20020a170902d54100b0016b85cdf8d3sm1315915plf.72.2022.06.27.09.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 09:28:40 -0700 (PDT)
Message-ID: <7ef987c7-1d99-bd63-f7fa-66bd12811716@gmail.com>
Date:   Mon, 27 Jun 2022 09:28:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com> <YrnZUqQsKVVGHUGh@google.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <YrnZUqQsKVVGHUGh@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/27/22 09:22, Lee Jones wrote:
> On Sat, 25 Jun 2022, Stefan Wahren wrote:
> 
>> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>
>> If available in firmware, find resources by their 'reg-names' position
>> instead of relying on hardcoded offsets. Care is taken to support old
>> firmware nonetheless.
>>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>> ---
>>   drivers/mfd/bcm2835-pm.c | 61 +++++++++++++++++++++++++++-------------
>>   1 file changed, 41 insertions(+), 20 deletions(-)
> 
> Anything preventing me from applying the two MFD patches?
> 

They are self contained and cater to being backward/forward compatible 
with Device Tree changes, so not really no. If that is how you want it, 
please proceed in taking the 2 MFD patches and I will apply the rest.
-- 
Florian
