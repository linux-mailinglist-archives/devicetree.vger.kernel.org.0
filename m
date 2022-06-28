Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D41555E9C9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232138AbiF1QdX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:33:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233724AbiF1QcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:32:24 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A34542B1B8
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:44 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id i8-20020a17090aee8800b001ecc929d14dso12639380pjz.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dRCg8cJ9g361UKzvOuBNxdduG5Zo3p9wccQPpKMwnqs=;
        b=PVq9xfNImPnO4g+pLAhQkZvuvi5HtpJW6Ki47F9CxnuWBPw5jDbxf6SY0/R9Q0V1j7
         AO+AUScESoXf1JG0FORsCIAYS8t6ZbNhxQ2n5VOpeMAkuVJ8UJaNFTLLa3VBMDNGCc1d
         32C/7l8Ij5+pu5FWyeLdjQcuT1eEGhfWnvM072wX4oBX8X+Y+AwAgWu2nOMYwz6QRHzV
         7DI/RIxK3nHm8kQywrYjdwcxaVe3cK2ltrUma8ey6IKkblwJryJPr/YSsWxDrt/AnhXb
         bjzZ5NiEjBgjrRGpl/lmzjV7FkN9QhjlI+g/cAXizhgybrfcAr87mw+Ry5jU8OOLboWE
         YZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dRCg8cJ9g361UKzvOuBNxdduG5Zo3p9wccQPpKMwnqs=;
        b=uVEAMrzPZiTc098NaR3TpfiiObMBebBS39LRsuxc+aBLrmXa0KQdN7MaNvrIBmOMAW
         0h3rvCg4y4AmQfLcAku8Ay+l473Qufk6SrXzuT3D4Db0Uag0C5SSypwzLo6oQvlGTVGI
         twqIl3Y6NiVdQo0mOxElNXxVPzecPfvoB+kORLn6bJ1ABtvjY8ls3VCJC9JETttDlqZ4
         cziOPJ5rNDs/WGlD4t79Pp8wScMMNaL66Q8KveauTXyOVNyTchmaqK8k9BHmJu6/QXVb
         JDz3fmopH5ybecYMzSYx9KXbHzfdMLPkutnIrVBU4+XVEtwlYxsEAAYodqK3bZyUMwgM
         TM4Q==
X-Gm-Message-State: AJIora/sruUL60qLZAq8P9H4W7JfR6DPojJxFTc5Na45/IwPi7bJePDX
        osQekmmNQBDTs8quEbfEoEE=
X-Google-Smtp-Source: AGRyM1tdP3sWJ0kU0aTUQ+GFWQ0VeXlXeiR9HSDPTTkVMUAqd6NGdSs8KOnZStG6lGyigTI/2Sz/6w==
X-Received: by 2002:a17:90a:930b:b0:1ed:5441:1fff with SMTP id p11-20020a17090a930b00b001ed54411fffmr453236pjo.238.1656433484104;
        Tue, 28 Jun 2022 09:24:44 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id a8-20020a654188000000b003fd4831e6fesm9581433pgq.70.2022.06.28.09.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:24:43 -0700 (PDT)
Message-ID: <4cafbcac-e292-f7ec-6625-b7220a58fde3@gmail.com>
Date:   Tue, 28 Jun 2022 09:24:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 08/11] soc: bcm: bcm2835-power: Refactor ASB control
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
 <20220625113619.15944-9-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-9-stefan.wahren@i2se.com>
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
> The functions to control the async AXI bridges are almost identical.
> So define a general function to handle it and keep the original ones as
> wrapper. This should make this driver easier to extend.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
