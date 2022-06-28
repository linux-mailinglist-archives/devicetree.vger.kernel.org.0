Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86CFB55E9CB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233929AbiF1Qd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238457AbiF1Qca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:32:30 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 842E92B252
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:25:01 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 73-20020a17090a0fcf00b001eaee69f600so13228219pjz.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bUtATjVwpdEcWGl6tWLf8/GTsqtaV/x7C+7WaVvkNnc=;
        b=OdRtjxE5+NmlSQUXvRIM4n6YhAM7Y+3nMmGxRHymMfIgxrakzjjeo0RLRKrFhxj7Z4
         +Ijj8Bd06FChohElXpofx1DeFN+S/Ku1/RBaUuCnVYewjBVppU3Jch0Jj2tnhWrqZdUl
         2GvFChDVQGGAqgQ2JlG4xsan9AmJpb1ZK0lW2BBZndjPU4s7hXixBwix5vfRInBa+He/
         4vMy5/b6IF98B5Rs+/gp9lugnyjSbr6RaLzr4AYSEiE+L4ABb3JQuRcX+/mAPzlLssNO
         XrlYfBuaRfaPfcXberIfGKfobU9mwo4lAqExt9Youi7OoPtTdf0MZ09RQ4+2Dh6w/I8r
         xc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bUtATjVwpdEcWGl6tWLf8/GTsqtaV/x7C+7WaVvkNnc=;
        b=Ry9taQ4pTyZVTnx+B7/UTSHgf0ut9qktXYkEBImk/JJIwRdOJXd6sIiHeQ3YNf7qXu
         FHRQUO0Y3f2NgImBr8IZz4eTMQqiGstZ2W9FOvwrBrx11UY3RKv379CEj4l9a13pwVzg
         6HBwzmGEuaXF4gc6awPziRQDx1OV6hrLtXI3F1OnlR9Y8yV7SqA7mHDsiB785hic3Tnc
         xrSFHkWeSPBkRnC2J45F1QPB/cmTuoiuriJ/GBIk7WnSE1Y37I4m87kCKXORSgfMxLFr
         lwwZXJUVviB2XuZ2cYJ/iIBAD2VPsSNYihGiSOlNpI5jwuwVVOmesxu9Km213Nz+xGtw
         NJRg==
X-Gm-Message-State: AJIora/Z2UVcgEUEi4ndRwFS8tycRpZO0SIMNTrMcIRRsYve6Ei3+RN7
        iK+qeHKj5t5kXaR8pozjb5A=
X-Google-Smtp-Source: AGRyM1un8CHF2yQx5AU8G1aGqih6tUjeCR8FZ1IQploNeFco3wW0Kq0Ksg6OtkvgN1BU5dJXIqoCdQ==
X-Received: by 2002:a17:90a:2e03:b0:1ed:2cd5:6c4e with SMTP id q3-20020a17090a2e0300b001ed2cd56c4emr411616pjd.225.1656433501023;
        Tue, 28 Jun 2022 09:25:01 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id a20-20020a170903101400b001641670d1adsm9480729plb.131.2022.06.28.09.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:25:00 -0700 (PDT)
Message-ID: <90f20e7a-f1d4-e50b-c86f-9fe222c718a9@gmail.com>
Date:   Tue, 28 Jun 2022 09:24:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 09/11] soc: bcm: bcm2835-power: Resolve ASB register
 macros
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-10-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-10-stefan.wahren@i2se.com>
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

On 6/25/22 04:36, Stefan Wahren wrote:
> The macros in order to access the ASB registers have a hard coded base
> address. So extending them for other platforms would make them harder
> to read. As a solution resolve these macros.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
