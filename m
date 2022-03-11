Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13DE84D5DFB
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 09:59:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239531AbiCKJAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:00:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241847AbiCKJAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:00:03 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E3261BB713
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 00:59:00 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 794AB3F1E5
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 08:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646989139;
        bh=0knUq+nj9peEmS1Svs4MEOnTn+oxEzDhNDhC8HFWh70=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=BTwuQE0Y+2RRIreddBlEqgV2MkER+bsd1IKgqfhmeiSJybopa7NukAOcqE+s2tc+h
         Zx9pEtqRwT5FjtPP7UD9C7uHTuq2ypg0wRzkssLtVMSrRJHlQH1nyOstisLiSj+SRk
         8PTorEWWT43oOi6p0UK60UDDeSFWV6td+SDFgzXddm2imiJhwzzHuuqK4JeQYQ80v8
         4+zCRiyOXJ7el+oQq1G+xQdDhKhIinyJTpwIhrytP2BRPwztAS4BPDVl8Za9DZtUPJ
         21WJqvRhWbkv813g9Zp4QzsIYExaltNq1N+ZS/pcWjsYCccofeQ0DPnOhqfYOJlDVT
         KDre3bZJoT3Gg==
Received: by mail-ej1-f69.google.com with SMTP id lf15-20020a170906ae4f00b006da86a43346so4577906ejb.14
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 00:58:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0knUq+nj9peEmS1Svs4MEOnTn+oxEzDhNDhC8HFWh70=;
        b=EzrFgTPz8KcJZSEsH7kSbE+GANlqmeymXktuE3VHxSK/V0ES51CJv45w4g5Mz65JGS
         3fUlwCn9aRDLJ81DFF7EpqtNdnsKbLKw/03Od//av769bDBUtg2D9mXl5tcQwx5yqkXL
         MbKFTAC0DgUoixAbWIg+YVjlfmjdZA5nhAjicerjscW+9tjayoc4HaiVVs327LQ1SaoM
         RDpAEmVxmJIOSyFh9vz5AUm77maUbeBvjYBv3eXJQ8tOL8rSjtqAiXUSVP6bTacA6Yox
         HcmQkchMF3Uzuxg19e4AKKnaeAw8xkL35SR0zzLaUXSKWMZJYOMaTFaIKSX3C7h/SHdl
         TGGA==
X-Gm-Message-State: AOAM532LU8LLtulR+S8nM/I1JuoJsLkF2trl4KT84t5IZaITeT+gUOvW
        JYc5O79TLhPUp30sztoMp+1bcTRg8TwFzan2g13uRtzsEyHjwJjlZNsraByQqPMYp/flLC11EeO
        dEl/XQMX40BEmJGehT6X84McdoYniDmeZ0gurfp0=
X-Received: by 2002:a17:906:4fc2:b0:6db:718f:7b18 with SMTP id i2-20020a1709064fc200b006db718f7b18mr7304011ejw.412.1646989139042;
        Fri, 11 Mar 2022 00:58:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwJ0MYmCOnRGydkzT13dr5ZvqsEe8P/UTOTbqINId0zENiFAHB5jwB73TPSN7i3f0Z42WkHBw==
X-Received: by 2002:a17:906:4fc2:b0:6db:718f:7b18 with SMTP id i2-20020a1709064fc200b006db718f7b18mr7303993ejw.412.1646989138835;
        Fri, 11 Mar 2022 00:58:58 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id fq14-20020a1709069d8e00b006da650af5a9sm2680769ejc.3.2022.03.11.00.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 00:58:58 -0800 (PST)
Message-ID: <b9eb6b6b-b295-4d10-d4f2-c56461994d71@canonical.com>
Date:   Fri, 11 Mar 2022 09:58:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/3] ARM: dts: nuvoton: Add new device node
Content-Language: en-US
To:     Medad CChien <medadyoung@gmail.com>, rric@kernel.org,
        james.morse@arm.com, tony.luck@intel.com, mchehab@kernel.org,
        bp@alien8.de, robh+dt@kernel.org, benjaminfair@google.com,
        yuenn@google.com, venture@google.com, KWLIU@nuvoton.com,
        YSCHU@nuvoton.com, JJLIU0@nuvoton.com, KFTING@nuvoton.com,
        avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
        ctcchien@nuvoton.com
Cc:     linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220311014245.4612-1-ctcchien@nuvoton.com>
 <20220311014245.4612-2-ctcchien@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311014245.4612-2-ctcchien@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 02:42, Medad CChien wrote:
>  Add NPCM memory controller device node
> 
> Signed-off-by: Medad CChien <ctcchien@nuvoton.com>
> ---

Subject is too generic. Describe shortly what are you adding.


Best regards,
Krzysztof
