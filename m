Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7024BACC6
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 23:40:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343922AbiBQWkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 17:40:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343927AbiBQWkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 17:40:20 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C81169228;
        Thu, 17 Feb 2022 14:40:04 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id u5so5703232ple.3;
        Thu, 17 Feb 2022 14:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kJKvlz6mTbZ0HU9h+IMyLVNCFn3UT1msVylNEqZAnxc=;
        b=qT5KJDsQo3lgUYLoyO0X62lyth9bJgO4hfKCQi8eZ1fFmaxjnYhusXXugvn+2z/0sA
         4Zh4T+8eWIaRZXtIgS65S0glYGFSoA9ZS99FWhUjFXBseIAK7KKC8jtAg6jggYLdBCN4
         Nh+QfEjTtoF2hzHgU97SpUc3nFRPelL/qua6dKJm/aOfPXlFqppZ+o9kGYO+YLWzz/e9
         aqT8/jOFfhCbk16j3El35npP7/nB2NmMuhrLmk++q6xdHvPxkI8Qr46A5XVndhjku0qL
         S2QgNDTFGsVV+0Rid3RHSHZjN7ikY4JPJHAX5OFwu0SWfpd6FsK1eiK+qiwCuUENgeUY
         3Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kJKvlz6mTbZ0HU9h+IMyLVNCFn3UT1msVylNEqZAnxc=;
        b=ZHvVAUG0idSY17cP81GhvY4SHNV7YcVZQubZqE5uNYt3eoZkjgJ8F/3WjJJb63I+sI
         TcYuA9OfQG0lqnzqjarpq+lKzs2kuzybZjBs85Rs+oqYPLYdo6cZg+NPDotUjpzcni4n
         f1jqoLAssijSFOCJoXluydzD7UVk6aahhCybzg9pGJgJP+7uwAanHzqcLlybADJos+GH
         6HScSvSTf+okIhGguQiaSYWkGgSdCT3PCYzckMTc11f6+sOZJ+sl3hY/jA15DlZyc0dQ
         vXbQ2gHSMZlrv8rqFqf7JYDUx90kDyi9L48aE6PA+/qar7zKZDrm8tMvqJgJcPgiOsS0
         +8XA==
X-Gm-Message-State: AOAM531QvthuNqb9V8vhksy1ANydaD+w3NHDjBWdeVxQ1ek6Ar84l69I
        cG/J1FPWeIHPFXJorRlBU99LkP9NndY=
X-Google-Smtp-Source: ABdhPJwt4tFfuDzgTRNZU18CGCZ/3PD17/VdWn7gqP6PUAcRWJgX8FcBrUDGmhqAC1JUWiWNS1J/Yw==
X-Received: by 2002:a17:903:3015:b0:14c:def1:ef62 with SMTP id o21-20020a170903301500b0014cdef1ef62mr4807486pla.2.1645137604094;
        Thu, 17 Feb 2022 14:40:04 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id kk14sm2759409pjb.26.2022.02.17.14.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 14:40:03 -0800 (PST)
Subject: Re: [PATCH v2] dt-bindings: reserved-memory: Add restricted-dma-pool
 constraints
To:     Robin Murphy <robin.murphy@arm.com>,
        devicetree-spec@vger.kernel.org
Cc:     robh+dt@kernel.org, maxime@cerno.tech, devicetree@vger.kernel.org
References: <a4f3d4e2feef008d1236ebc3f5f0c46360f20c60.1645119806.git.robin.murphy@arm.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <60b60a8a-6aef-8561-8aa1-049206aede7f@gmail.com>
Date:   Thu, 17 Feb 2022 14:40:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <a4f3d4e2feef008d1236ebc3f5f0c46360f20c60.1645119806.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
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

On 2/17/22 9:47 AM, Robin Murphy wrote:
> The "restricted-dma-pool" definition prohibits combination with either
> of the "no-map" and "reusable" properties, but this is only stated in
> the description text. Add those constraints to the schema so we can
> properly validate them.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

FWIW
-- 
Florian
