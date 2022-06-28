Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEE2D55E9C7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231584AbiF1QdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:33:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231929AbiF1QcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:32:14 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3B8C2A27C
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:14 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id m14-20020a17090a668e00b001ee6ece8368so7189776pjj.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=r53N46YetsD+77rxVPxEImekXwBK0RogWuYrJuRRIUY=;
        b=BmM2+O3Td2frcJk9O9T5y0bPzYvZm7q/+t5BLGfN7EmqXP1s2wjpB6FG8Zgn14JlMu
         cgiyUE0mnZ4p2FrKmIQlhMuwXdAR7PQa4nTRDWzBW9wzcMd9VkIm5fP4OPDmQ5vRJp+6
         YxDrFJgjC+meS10HLbYKGkhDBDGZ0bir2EZ4BYuRkyw56SwbP92s+1DrV1JbHYDYfvlt
         shl19GXRMBvtJAIwSzel1dDFV6sCnbi4RoVM/bV9COZyUNIx4s90+kXnw7dG+0iLoJXL
         R3vqvSsKRuP00VnteuU/UXFPCDcBAVvvyHQ1gNZiaYbWUCu3H+v6W0l/ChJ/yvHapUBh
         C9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r53N46YetsD+77rxVPxEImekXwBK0RogWuYrJuRRIUY=;
        b=Ii4WyRaPNNjTy6Zr/jIr0HyZJMKEkTstEDjGzauxZ2+K1xFIFE42+0RHLo9m+RkYob
         dgnElbCApoLc34oBbgAF3F/y9Rq33piPMrENGnflU97JYQUgnt9Je3RLyNF3bs7kHSzN
         mwUf3CWuplj1bWnngZWUR3Thy7KXFTav74aSIPKC/d2OHO5WiEOYdykigki9mouR/I9r
         b8DTSv8GS+qWQ6faXtMrMA3paEwxGbh9Rio/NWRPFj99r8aWYWIQA+aYTVEQkemFNFto
         wsGhzOLesCq70uipiUVbmtX1h5pRm1mNxDgv6NrUsnxAvssWk6jOnQ631UQNcmdr2LER
         SUaA==
X-Gm-Message-State: AJIora9mYXYOSh4sUmnS7YEL7oZeGRWUmVYcxTkvBVICyDJ6z6WKJ0Rk
        TXsIaDRqWNVqFJ0yjrCIptuoqO3256M=
X-Google-Smtp-Source: AGRyM1vXL5ztI68M/71kv5sxS/d5sgRPtJRpwrxnpCsDATBk+1T0c2r+YOnCLvOIMAr5ndJopA4PUQ==
X-Received: by 2002:a17:902:d2d1:b0:16a:1dd9:4d3d with SMTP id n17-20020a170902d2d100b0016a1dd94d3dmr5774692plc.18.1656433454182;
        Tue, 28 Jun 2022 09:24:14 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id ru15-20020a17090b2bcf00b001ec2b1b7d8asm44343pjb.10.2022.06.28.09.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:24:13 -0700 (PDT)
Message-ID: <273ecfd2-a16a-8cb5-2a78-438b09ee6547@gmail.com>
Date:   Tue, 28 Jun 2022 09:24:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-7-stefan.wahren@i2se.com>
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
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> If available in firmware, find resources by their 'reg-names' position
> instead of relying on hardcoded offsets. Care is taken to support old
> firmware nonetheless.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
