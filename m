Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC1E062329F
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:38:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiKISh5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:37:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiKISh5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:37:57 -0500
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AD8A55AE
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:37:56 -0800 (PST)
Received: by mail-qv1-xf2e.google.com with SMTP id u7so12874767qvn.13
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfDD0vxz8fTPaNXPczybk4TPvaKOmDLxmCDO9ytJp4k=;
        b=hJF6fEUR2AEDymEGo5MOSP6wg0FCVBTIJ+xod2StxwkuEGtQFtJ3f8rQ4Q+3u4LqHU
         Xdmz3F6Mns193UxI7XDa70n8ktmanwWnpN8+8C6Tvydou7R5uma3MsY+lwkSu8iezCfA
         +JvvAyn9hFbBQutlihCcEFm1U9bhKmwji+1E7qt9f2lFkOJoJnjkCRCknOqPA/3xu0gC
         5mFe4RCdQ88v/NcpQq5KjKBICwoJT8mpqMeKAcYbOmegpjyZmCGge7KrcAv9YWghkG9S
         Q3uGqpqnRuR1lZe+ZkoHZcYKC7Tmci17l8PU7wkLvtAx9AuU9gBHtQLo6deko0DPb//o
         RSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LfDD0vxz8fTPaNXPczybk4TPvaKOmDLxmCDO9ytJp4k=;
        b=b+0PwkrNbtkbIAX/4T/vzdN7nOnom/zfSXSsk2+GyYttkDg0IFVXqsKSCPPGALe+c8
         /4ppr5Z2puBIPhg0rO6WCvxbIJX5QOt5+y1mXPRD1EEvKdI8fZiKs536oYimvWPZKDxC
         b7D6MAeDFfO2AFW92/snuNsAkE6Zo5bqMaCD1w8X74rdI0XXs4pzY7H5RzvSBSk/lfGD
         0AZqcryrtusPFO44xQVSVU7jXOvHWe0l1Wjkp4W9ShbDxhlbXjnYbi/iEcyaafudvOMc
         78Oe4hw5bRbK155W8LutHgP7UkYPJxl0l6nO/psjeo9qqzBLqws4arVcjYg0akRnvee8
         UNfQ==
X-Gm-Message-State: ACrzQf3wP/Z5HK+MjnfB8dFqB48lAoBOBER5HGc3RoKWwKxkw+5wVdbG
        Iv4m/+I1QBYBBisl6s51Q7U=
X-Google-Smtp-Source: AMsMyM6iY7eCu0E7m08xxf0V3eidkQF8e71KzFO9MJd3HijL12LRUe1A29uxdPPsfU4xNcp4b7I7KQ==
X-Received: by 2002:a05:6214:29c5:b0:4bb:65bd:5edf with SMTP id gh5-20020a05621429c500b004bb65bd5edfmr56103709qvb.60.1668019075366;
        Wed, 09 Nov 2022 10:37:55 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id gd11-20020a05622a5c0b00b00398d83256ddsm10190049qtb.31.2022.11.09.10.37.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 10:37:54 -0800 (PST)
Message-ID: <78ac1b7d-5f7c-c9d3-118b-5e419a7c20dc@gmail.com>
Date:   Wed, 9 Nov 2022 10:37:51 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: drop invalid
 "nand" interrupt name
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103104152.19502-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20221103104152.19502-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/3/22 03:41, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> String "nand" was never a valid interrupt name. It was never documented
> and never used in Linux or U-Boot driver. This mistake was propagated
> from the bcm63138.dtsi.
> 
> The whole "interrupt-names" property is optional and can be skipped.
> 
> Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Do you still want me to apply this patch, or are we happy with renaming 
that interrupt to "nand_ctlrdy" instead?
-- 
Florian

