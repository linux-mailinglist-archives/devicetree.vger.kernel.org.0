Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F1055E9CD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236746AbiF1Qdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:33:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239913AbiF1Qck (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:32:40 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB3E31368
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:25:36 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 9so12675522pgd.7
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nbn8WFcjD4tsKxLe8YeMuinEUyIJltN2za4FFl31z2k=;
        b=RjBX27p69XldpSmeTrBPIc/77OWDZ/fEU1BNH8oqZQYY9ypzrIsJigvp76oGZLbnLK
         fpRYxdK62IoQ8JnDPXyxPHHvU0koFNh/2iKN9SiKvBcaFqMDAIwe0s3o+qrIpTGT0vc0
         kOtwDL6iv8QLCeFieBvoLudaHw2CYW+ZLlBJ8pElD8dWwT22NH3/3eS18uer6w1veNJV
         2CpzxsNihggsKMkLH+kcjYVUPvQDCj3ggjR6N93bhMAl/4oibgriFI36zTuJEJ4WZeSD
         tKsfYgvKZndlgRltzwOVy0PUJ/yJU5vPOOOAMWpewzxHPFAOT1Cmn87sXjNfYHRjZJh1
         C3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nbn8WFcjD4tsKxLe8YeMuinEUyIJltN2za4FFl31z2k=;
        b=d0dDmGBtgf23+0yuqHH+7XHVbnL3D07EpsJDq3fyi8UebmyZ/nCW6UJpsCeRYf7W6e
         SBJUnPDC2uuhw7bs9Q3TfiY8s7GDtI+sQRDnNDdZd1F9LJN1rOBwyWaR79MN536LdhX8
         EhkcAcOkrFLvuV3qN0T9b5Cvsrt7FPnD9ntCL1qI9NCT161MGmzXzUrj9gdlkXuarUvG
         1gyrFa4bkPxXZZtJsQ1tIdndFWYPQ8shTQtJA/AZaRUQszOyrruBhClZy+kljhsuKl0q
         BN3DTe3s0N74UraBhxuYf7UUnglFfhgJjuACuvWZ0plAbesaim5MEWkMJHGCjADpC6h3
         JRSg==
X-Gm-Message-State: AJIora/1TunIL3OtmOQQ+hE+MFUOCpbR/KrxFqV0JiNciB5EoCAFGy+5
        Lbjh09sah/eba8hk6cDFaJI=
X-Google-Smtp-Source: AGRyM1sSbCwy8GnRkRKAic8TI7HukpqpRQ/zG6pI7rjds3wM9L+hi5E0dUW/DZUk4VOvbeserWdTKw==
X-Received: by 2002:a05:6a00:1152:b0:4be:ab79:fcfa with SMTP id b18-20020a056a00115200b004beab79fcfamr4308620pfm.3.1656433536211;
        Tue, 28 Jun 2022 09:25:36 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id mh8-20020a17090b4ac800b001df264610c4sm2816247pjb.0.2022.06.28.09.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:25:35 -0700 (PDT)
Message-ID: <1de40216-bf8c-ccb6-5c9c-d3d24c28d22b@gmail.com>
Date:   Tue, 28 Jun 2022 09:25:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 10/11] soc: bcm: bcm2835-power: Add support for
 BCM2711's RPiVid ASB
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
 <20220625113619.15944-11-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-11-stefan.wahren@i2se.com>
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
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
> 
> Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
> BCM2711.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
