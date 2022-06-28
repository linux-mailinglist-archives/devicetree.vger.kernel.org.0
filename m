Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7F0B55E9D2
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbiF1QeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231995AbiF1QdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:33:22 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E5F717E2B
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:26:53 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id jh14so11546673plb.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xetWrQq1CuXFaAf0qZ5D3ArvEX1faWi5mKIvWLTvWQs=;
        b=p8DorE8Gy9KLiNMfTG0qguwtfSrmuTsg0lqagSDdmMXsSSM9vlMICeOBZU4BddhuhU
         LlYKe40oval5N9xQ+Q25kEper3BKKqblLNJrqH/3csvMCNCr1eAPYROVgiQOMLLW1MKu
         wpPmTTwX7SebsyitIW/H2MmXzGo3M27hPd2J6dro5M4G0YU80lQI6qPAOkD58UQxTTSO
         0PrzadeLCz+C0mIzDAOpouxkpN30ZPLXrZ0yl8ID0lkL8vxwDq4nBz4tbJVifqJPVmpe
         ItmDNaoo0TT5cpXREdGfOD8M0GlQ3suBg3Tq7Uj+T1tYiI7Q2kmr1MJlSp1xRKAu1rqw
         pTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xetWrQq1CuXFaAf0qZ5D3ArvEX1faWi5mKIvWLTvWQs=;
        b=NtILPCTuUyqd6LnX1K0HxSwbAc8pf/wZp6Rz0YBYwIOGiNUGp+gIIgrFqV7UzLr04+
         m7OD76V23agLNSSMnEDbHM/oidoknP/vdkgQGwCEI9kMWd6gYMde8UaGoPMI6DWlMff2
         slFVDlHAJtWwqg9TFNRPHhC7WScBhioGpUz7BCb4kKrNAuIT9KTPC7j5MpJSF6UrSpvK
         xIa/BXPvOLh4g/6ZRO1DYQXdt4XLztibDT59vjxQzXLD5ou5Ri9tMR//ZmidNv7/GRwn
         h6MaolWiQdmq5Z3ars+RuchFvb9DBINAwx7GJDaen7RU+zBgUfRdNP2gP53qn0ub7r3S
         9wZw==
X-Gm-Message-State: AJIora+97/L3LCI6OiXptEQYdUZwPDbT5ESRJZsla8u1tUcKGXGTlz+k
        IuiglKm+SlcCwLAuIK82Qcg=
X-Google-Smtp-Source: AGRyM1uLFd+o2OSnlshwCqLNxQYiHvY5NEBrcyd/gviAvDGyJeVH2hn5FeHmzv4A6eaFWZge4SJNdQ==
X-Received: by 2002:a17:90a:9cd:b0:1ec:7258:d01b with SMTP id 71-20020a17090a09cd00b001ec7258d01bmr468065pjo.244.1656433612949;
        Tue, 28 Jun 2022 09:26:52 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id e22-20020a62aa16000000b005251dacdb9bsm9920361pff.14.2022.06.28.09.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:26:52 -0700 (PDT)
Message-ID: <80ab9176-ab8c-983b-7809-b0c45c7d156a@gmail.com>
Date:   Tue, 28 Jun 2022 09:26:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 11/11] soc: bcm: bcm2835-power: Bypass power_on/off()
 calls
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
 <20220625113619.15944-12-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-12-stefan.wahren@i2se.com>
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
> Bypass power_on/power_off() when running on BCM2711 as they are not
> needed.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
