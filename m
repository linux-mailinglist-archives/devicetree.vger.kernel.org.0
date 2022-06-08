Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAA45542C19
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 11:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235606AbiFHJzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 05:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235662AbiFHJzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 05:55:12 -0400
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678FFA76E7
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 02:28:03 -0700 (PDT)
Received: by mail-vs1-xe32.google.com with SMTP id n4so10217698vsm.6
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 02:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Lqs4gUnH/ZvZia/+V1meC4v0Z5zlzIibOazqFT5so9w=;
        b=Kr+a0DDJj8uxKq5CXUsWrkZ+tpzAiP9a47NvU9/c/6RJFp1FJYhYhrET/fBVBbKYgD
         KavOiMuPRujKLYDrJGyR1ur20EzUE4C9G/5YoMdJvnKGmpc+rLCA1s3tEhEfYT0qipef
         1odGpOyHHEVdfFV0VUfHA3wssTgXCyMO95s8OSkgq9i/oOMy17lLi0Z/NJwAfGdP9y3N
         6KjEUoB6O1QxzSXaBseet3Dia48h7emEfM1R2go1/3MU5EIxJ97OfZ9n/BDNDrE/RcxQ
         tdTqij07S/SZmDhfQB0B8WytJlLAI0K3XC0+9PYlme5M5c+VnA0AFqwTwgc44zVIF7lo
         CXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Lqs4gUnH/ZvZia/+V1meC4v0Z5zlzIibOazqFT5so9w=;
        b=0Unt+aEhZTebcwIo+CS/Uubwr5wXmD3pR3e49gSrZFcsQbUV/ftvAVk4mA8h6nr4OB
         qqFl+ExUUuCWW8lEu9tD2t+LvlydbJG+2ioMSUc+jHOGzGVUQg267lx8l7Q7dD2LFanK
         gsWvS6LzsB3J6SVbH2TvJN0IvI09R1oj0DtepR3byyBWLGmY3I7qpe5iy5rzJS5AGKwZ
         wNkP3MGk1vr7J1ub+LqFzqCflqG7naNqC+MIPZHHMdsGHlncbazqoYlKQwenMmq0iBqI
         FKaxlNrLrIYSw3wRUyWP0aYoDp7U3WK6uCbNnXX+ktijb1zQ+B4j0kxOcSPG2VXYf+DL
         pX0Q==
X-Gm-Message-State: AOAM533tZL/5mXoRMdOfbigO4EDJRbgmJRZGex0lC3oKyucLjNSpapK5
        vH6XruIYlJQctwxqOTkfEXk=
X-Google-Smtp-Source: ABdhPJw9Iab44GgfVokvcakmp5RdbEOEAjJKlD/lpXw2F9G8HVIBlNGfwJ+SCMymEUpXoHqDVbLY0g==
X-Received: by 2002:a05:6102:2758:b0:34b:b836:2af7 with SMTP id p24-20020a056102275800b0034bb8362af7mr7223616vsu.33.1654680482373;
        Wed, 08 Jun 2022 02:28:02 -0700 (PDT)
Received: from [10.230.29.214] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a17-20020ac5cd31000000b0034e6f1fd061sm2654326vkm.43.2022.06.08.02.27.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:28:01 -0700 (PDT)
Message-ID: <952d541b-6b41-3db6-3ea0-efd5eab612a7@gmail.com>
Date:   Wed, 8 Jun 2022 11:27:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V3 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
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
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/7/2022 10:42 PM, Stefan Wahren wrote:
> This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
> by Peter Robinson [1]. It attempts to enable BCM2711 V3D support for the
> power management driver. It's a rework of the less controversial changes
> (excluding V3D GPU driver changes) so this can be reviewed and applied faster.

Lee, can I get your Ack so I can take all of these patches through the 
Broadcom ARM SoC pull requests for v5.20?
-- 
Florian
