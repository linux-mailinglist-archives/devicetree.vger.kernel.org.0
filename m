Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE2E5583A85
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 10:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235247AbiG1IpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 04:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235254AbiG1IpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 04:45:11 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B19B13D6F
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 01:45:09 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bf9so1805496lfb.13
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 01:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wwMMWB4MgsL0geIx/JxooTNfuSKUr5tFvW+cF2MpyF0=;
        b=lJT8mazM6EQ5UkkHOfA6SDUaIHHGEXFOhexNqqUPd4xYv4GkeeHIVbR8/u/6N5ja7Y
         B93QwMEGkq3xOGIZzgl7QAWPKOLtMviUetbpVjfX8EhGT0uy6DeWytapO4GPO5cgzI8i
         hmfVEgfKcu10ffSeEQLs3vgBWTjmM4ldBVJjgm9u78cIr9INgzEM+A6jFad4o6V0lZN6
         KFhC39h5TQxEnDsLi+Ln5Fx6Vpq4wV++eqlJW9MA5r12gv/mXyLpPMBTsQclDaElSU6V
         HU7FHSPcE9SVxFOPREjQvXDrH2shwvj8sqbZ3ja8Wxexe8k0v37pEz1yFiyg31uK7jGg
         bMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wwMMWB4MgsL0geIx/JxooTNfuSKUr5tFvW+cF2MpyF0=;
        b=mVI+hBgfZ3Lf3gXbZ1u4jM6DzJMl5c0vtv9i80sh6sbzXFadabOAS76g+XNVTunhDg
         xF3hxgMmrQ1cg5RAxAXMCWCV8B/vLvi91Daq4EImH2T/uZvt/sv6/aCr9IshP3fFrGDz
         M9KL79AMqe+dAHebPwliWpvZrNICIn8f1NqJ+RP7LoMg9Ak176x+G5qn4X3nKp7Wl1SA
         cYBRJNiYWym05aqkLbn38thleZHeQ4Crx2HkVTJJVLqgaBsqMlq0y+bKyOAtNrEBW3LV
         GraRrSETdDcU8QyEjeVLTMP3oXfsMGiMfbOssWBlLICKB0iMWxav46wzncW9MOR9gE+E
         P3UA==
X-Gm-Message-State: AJIora9sJescpjzpYN+/msS2JazrVeCKzm0rAbmLub0IHcPcwCMBTsTm
        OVtgLVLB1CPz3eUuxr7CkkySo4wxfuh41w==
X-Google-Smtp-Source: AGRyM1vVzkb5qwBXDl3lfgqSyqXxa6KCXPbMNRJ9W9o9WbxDnjYQu4dHvOJ5/C/x+I1YYiZygfRj7w==
X-Received: by 2002:a05:6512:1594:b0:48a:874f:535 with SMTP id bp20-20020a056512159400b0048a874f0535mr7622313lfb.320.1658997907628;
        Thu, 28 Jul 2022 01:45:07 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id f11-20020ac251ab000000b0048a8fc05b0asm96585lfk.117.2022.07.28.01.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 01:45:07 -0700 (PDT)
Message-ID: <8a043e89-0ac8-52ad-d935-3c43d1c41592@linaro.org>
Date:   Thu, 28 Jul 2022 10:45:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 2/2] net: cdns,macb: use correct xlnx prefix for Xilinx
Content-Language: en-US
To:     Paolo Abeni <pabeni@redhat.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Harini Katakam <harini.katakam@xilinx.com>,
        Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
References: <20220726070802.26579-1-krzysztof.kozlowski@linaro.org>
 <20220726070802.26579-2-krzysztof.kozlowski@linaro.org>
 <87d8327b85ae54e4c9d080d0ef6645eda6f92e98.camel@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87d8327b85ae54e4c9d080d0ef6645eda6f92e98.camel@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2022 09:49, Paolo Abeni wrote:
> Hello,
> 
> On Tue, 2022-07-26 at 09:08 +0200, Krzysztof Kozlowski wrote:
>> Use correct vendor for Xilinx versions of Cadence MACB/GEM Ethernet
>> controller.  The Versal compatible was not released, so it can be
>> changed. 
> 
> I'm keeping this in PW a little extra time to allow for xilinx's
> review.
> 
> @Harini, @Radhey: could you please confirm the above?

The best would be if it still get merged for v5.20 to replace the
cdns,versal-gem with xlnx (as it is not released yet), so we are a bit
tight here on timing. Anyway, thanks Paolo for looking at it!

Best regards,
Krzysztof
