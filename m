Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BED44E8ECA
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 09:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235039AbiC1HPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 03:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232514AbiC1HPc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 03:15:32 -0400
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE255F4C
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 00:13:52 -0700 (PDT)
Received: by mail-ej1-f53.google.com with SMTP id p15so26663288ejc.7
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 00:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=i8QlYXS+Du81ZL8BAubOYUiR6sHMTBbpMhIYqGeioDw=;
        b=JmPh79rDcSvcNyknwe2P86Zjk9oEgGtrvDgOVClG528juj4P3Qs4B9e197D9RufY6l
         qcnDE08GBlSukeof5lxNSbm4LPFOXDbQDsW4QIdjqdh6tO1nwYORtmIadVE3YIHXXC1e
         1hUTAYWmy/LTqndo16kGy+8/vmbpKgPVQiuj0gzBaUefuUe0LSD9Urpb7bZuxSyseWke
         eifZzsg3BuCJLJGQQj5jCRfpac+Vh8bACA6zmtsR7F4nbCnypsPRk/NW1WzQJMEhRFb6
         j/8HPrYx8T3ope3vji/GD0Yh36UHmgpiVPyj7NgBsUU1VxAYTfyfeZ8ExkVUbr8G4PPM
         Flzg==
X-Gm-Message-State: AOAM533kxvNXg5w8/UXjG9BLGLrDf6BAAGYlw9YcMIjnTUeRNoF4J35c
        5ry4n9SfeQRM9AR4tiWAM+nVJDjRw/e6qg==
X-Google-Smtp-Source: ABdhPJwOhI5EiHsXr1N9eY5umpffcNKlnvT0NGIo3n1TkYqTaY5vnH59UzaXrBLXcigLKrx4krnSbQ==
X-Received: by 2002:a17:906:7f02:b0:6cf:86d8:c31c with SMTP id d2-20020a1709067f0200b006cf86d8c31cmr26807289ejr.518.1648451630660;
        Mon, 28 Mar 2022 00:13:50 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.googlemail.com with ESMTPSA id ky5-20020a170907778500b006d1b2dd8d4csm5585967ejc.99.2022.03.28.00.13.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 00:13:50 -0700 (PDT)
Message-ID: <94377113-b51d-8fb2-56fe-6f2abcea8ed0@kernel.org>
Date:   Mon, 28 Mar 2022 09:13:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
Cc:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220325190247.468079-1-quic_jaehyoo@quicinc.com>
 <d0044322-72d8-1348-9898-dc91e3192e94@kernel.org>
 <92b381f7-6a4b-1db1-ea00-7bbc8c4b0f84@quicinc.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <92b381f7-6a4b-1db1-ea00-7bbc8c4b0f84@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2022 22:24, Jae Hyun Yoo wrote:
> 
> [...]
> 
>>> +	chosen {
>>> +		stdout-path = &uart5;
>>> +		bootargs = "console=ttyS4,115200n8";
>>
>> After adding stdout-path, please remove bootargs.
> 
> Can I keep the default bootargs for a case if CONFIG_CMDLINE_FORCE
> is enabled?

No, because you control the config, so just disable CMDLINE_FORCE if you
don't want it and such bootargs are not part of hardware description.

Best regards,
Krzysztof
