Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA1694BA474
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 16:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbiBQPde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 10:33:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242543AbiBQPdd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 10:33:33 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0CB82B2E11
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:33:16 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 240073F4BA
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 15:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645111995;
        bh=f8RJ9ZvEOTgzqEro3GrpnsJLMjzjR+1XY4wUnry5/k0=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=HuILPATTIKQp9pALuiRrkvCncdSm4tolwZSOD6Ad2DoyfChlJ2IxCNNOJ7Gm/dzT+
         ae4EUNdnfKc0ZD39zPm6UDOq0xLfNdYSZfVcfi5qU46A6VdfFwyfu546Bz2vD3YEwr
         BqknqG7xjvymLl944cgb/ALNCH1LfGE/Y9uEGjjKfVqCnLnJtMjxWZ+qnu/9H4EQn8
         bvewquzbueMeLzfPjtxUSoPbEvuFEZPEtwvmUhUfSp3wwr3oiRnWwrRWpnPlYBHell
         jCp3kT1ElhKA7KJq5qWLVMZ449Wy8NY0zhDvKi/F3MMQNhbVThpWewVTl7U9xQrHMN
         jMO3nOMCle2Iw==
Received: by mail-ed1-f71.google.com with SMTP id l14-20020aa7cace000000b003f7f8e1cbbdso3721810edt.20
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:33:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f8RJ9ZvEOTgzqEro3GrpnsJLMjzjR+1XY4wUnry5/k0=;
        b=DasTmaIMKP8/94HSDqUWfNgcnR4ZBvNhkyeu9qpIPQT+Iounj/XnueM07yBwH/zIzw
         udmA+5zrW74QzvSGmYipcGZyURl3iuKyY2OYzVVvgSg8qd7o/itgHMVQg8LVgBL0+73E
         wEpUbIuXllj0bdZ5BG6siDfEvk02rVnafnNicSH8NyxcpmJtFgIAcf0WY+2PdrSrbKFc
         LhmcmO+bRtQEm/CIg8/aib9xHDcPCyRFIQqKOpju1Sh7ksPcBoVRlbC6cds0p5Lc6Ng9
         74NGM9GS+MXaAjHtX3D+Fe738F6nO1wOlPbGTQKudtvNv5NeKM0ZxM7WISsZq6V3KCiP
         Vc8w==
X-Gm-Message-State: AOAM532uO3O0itJw/dfVplhdJp2hLLrmLNcpHBRp19p2RIvBLP/Tp6vR
        xpVGvjJ6HV12JoK03lznrF0HsUPT2g8ypB+h/J26TGYnZ2E3gv9UHiXhAhUKq4xw1qMtWB+t83p
        AujNtjQg8DtRcnyoRunbyGUfGYRga/ReYNJoHks4=
X-Received: by 2002:a17:906:ce52:b0:6cf:54e5:df6 with SMTP id se18-20020a170906ce5200b006cf54e50df6mr2743295ejb.740.1645111994834;
        Thu, 17 Feb 2022 07:33:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxa+SoeeHCMT2UErUzJD23/gC5RtP3QKzZdUD5ZpN1mTlXYoJCzw9X3mOX2wyJb60OWuYUl4w==
X-Received: by 2002:a17:906:ce52:b0:6cf:54e5:df6 with SMTP id se18-20020a170906ce5200b006cf54e50df6mr2743285ejb.740.1645111994698;
        Thu, 17 Feb 2022 07:33:14 -0800 (PST)
Received: from [192.168.0.112] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m17sm1292986ejn.118.2022.02.17.07.33.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 07:33:14 -0800 (PST)
Message-ID: <974dc037-b63d-8337-bf4c-687851796c18@canonical.com>
Date:   Thu, 17 Feb 2022 16:33:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] iio: add meter subdirectory
Content-Language: en-US
To:     chegbeli <ciprian.hegbeli@analog.com>, jic23@kernel.org,
        robh+dt@kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220217135140.5658-1-ciprian.hegbeli@analog.com>
 <20220217135140.5658-2-ciprian.hegbeli@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220217135140.5658-2-ciprian.hegbeli@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/02/2022 14:51, chegbeli wrote:
> For IIO devices which are designed to measure and process power
> readings.
> 
> Signed-off-by: chegbeli <ciprian.hegbeli@analog.com>

Here and in other commits - please use full name in "From:" and
Signed-off-by.

Best regards,
Krzysztof
