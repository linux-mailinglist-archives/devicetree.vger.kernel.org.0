Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F018F4AF33A
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 14:48:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbiBINsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 08:48:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234384AbiBINsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 08:48:17 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4553C061355
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 05:48:20 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AAF3D3F203
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 13:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644414499;
        bh=Mu0uUPwtfbOpUWUMXTkPYrv76xELhcCbylOZUsI3OCI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Y3IJOidjPy1j3J9EQQFBELZo+5i2eHLIqkEthI427GfTgkX6BZwUPxRrCPD/AxSWn
         slG/MfPvDAHi6oPGla8JORr5u18yJKdYo2WQyYRyWUjhECQjJDfrH/H9AIBCCcMHvs
         HkBkjM6WatiUiJ7LilouOwhJFZceT0GWBDkUp1RVjFSqdc/74vfDNrP4dLVpW53IB6
         QDXdvAb+ea2QO/suVJC0YRCy+OsvC8CcuJRwtNirlqt7O/viUCgwbwm+he5RBqtihG
         1HXkhAz9Vn0oavSZNQI0PcIkrdtM/Ll7xItrKB5AmCogokGJ0W6mvjxOUr6h8n9JrK
         CD4FZngcgHwNg==
Received: by mail-ej1-f70.google.com with SMTP id v2-20020a170906292200b006a94a27f903so1211438ejd.8
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 05:48:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Mu0uUPwtfbOpUWUMXTkPYrv76xELhcCbylOZUsI3OCI=;
        b=ui02/7Az01Aanqakq+MHe0/R7Ct+Uw5W9I11c92K5A1IwtbBQzQ1LJ1DUS8RXL09/b
         IAEidWPcT5CCvFMUW4VRIdQFKIYLRT+z5kufXvdWs47DkCHJKCaYfxnfbbh7nYd7E2Lh
         gSI3ftSDniJKve026aa5r/MR+UoAFePjfFtmOlREiBIVYzGPejVlCWiCJU/IQkBPwBI5
         za0nHTpaJd+vd6+t39Q2jFASalbpU41O28ovviYkg1swMpWBWdsRgqwsK0AUu4gbOguh
         u7u89k8Fj4Jt/l1RcG+vHWvhr3EaLdUsmf1JYYnu556w/zWU/AExvkFxUbA6UDNsTQ8U
         f5Dg==
X-Gm-Message-State: AOAM533XkNvNPRI73wOWs0Y2P87i75zHoMCrQ9m7CcgElYRFSPRZBsrN
        CJiuEPz5B0DeMEwDwdG+1kNPuIHnLOL2KB4iPf9Ocb8qJP1hUiP0xdvWcLcKxmLb+LOsmogM08o
        c82SzbCzIgvxn09WbmbjW80QNFA+SnIfkqenBirM=
X-Received: by 2002:a50:eb46:: with SMTP id z6mr2567136edp.229.1644414499419;
        Wed, 09 Feb 2022 05:48:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxPJOczPsAbt78jg/uzyq90VVRYehbGtYxsyn5ZriTBP42R4TMVIvVzbcHG+m7PNorhEN3EBQ==
X-Received: by 2002:a50:eb46:: with SMTP id z6mr2567116edp.229.1644414499248;
        Wed, 09 Feb 2022 05:48:19 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id j1sm2650879ejx.123.2022.02.09.05.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 05:48:18 -0800 (PST)
Message-ID: <081b64b0-3cf7-c318-20b4-07e65951fd32@canonical.com>
Date:   Wed, 9 Feb 2022 14:48:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V2 4/4] mailbox: imx: support i.MX93 S401 MU
Content-Language: en-US
To:     Daniel Baluta <daniel.baluta@gmail.com>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Peng Fan <peng.fan@nxp.com>
References: <20220208063046.2265537-1-peng.fan@oss.nxp.com>
 <20220208063046.2265537-5-peng.fan@oss.nxp.com>
 <CAEnQRZA15UabGMSd_GjAdLXhidbVupz68Jh8CqVSYw-n+_4+=Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAEnQRZA15UabGMSd_GjAdLXhidbVupz68Jh8CqVSYw-n+_4+=Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2022 13:46, Daniel Baluta wrote:
> Peng,
> 
> This patch is doing 3 things in one patch.
> 
> Please split this with one patch per functional change.

The third task - updating author - I just asked to squash with previous
patch because it really does not have sense on its own. Authorship and
copyright update are direct effect of new code. Therefore they are
usually squashed with the actual change.

> 
> On Wed, Feb 9, 2022 at 1:20 PM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>>
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> i.MX93 S401 MU support two interrupts: tx empty and rx full.
>>
>>  - Introduce a new flag IMX_MU_V2_IRQ for the dual interrupt case
>>  - Add i.MX93 S401 MU cfg
>>  - Update author and Copyright

Best regards,
Krzysztof
