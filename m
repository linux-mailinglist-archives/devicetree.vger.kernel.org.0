Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70CD6589E72
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 17:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239674AbiHDPOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 11:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239411AbiHDPO0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 11:14:26 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A777938B1
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 08:14:25 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id w15so204723ljw.1
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 08:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=;
        b=rs7UDamBA2ETIgqoEJ5UAtg+BNM2bPzkhj4hOO6lGU3TvE9gF9YSlRQ9scPbctefiZ
         eKbDnpnxMmEjpzzxX83prKVG87t2t2tAamwh8ihOP6jUZbR3blOX7a83wHc757Jip77I
         mvYvrMWGGwSAnPyom/zmEquyINUEF3HLmaY4CKmUoM6/1hfoLFRIr45QxsWp3quVqs/8
         KkztRGvKgtE0a5tM470mSB1sZUun3vitkm0rSyCa6E3BIyzfT7OGAn1DmSO+VNFtRaRk
         UOTDNbUd6GbLwYE2iUwhAgYLfDKt/bY2OIxUnIwMIvVR7nIw69i89bQPokzTVrcY1obI
         Z+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NOia1B38YE3Whq97iXD6BLxAeWDOa4nd+CQScRkgm7A=;
        b=EPe3mmluxyU8U/dXVqfH8wa9K6noHK/DgJCUx5DA+uIsYehVRA0jQgNBTksX4ZoCCs
         fhfumBSvm4TvdJ1NFBlqCAAjLkWCbHk6zlXGs8GMASwv3fxlzXQWIBpgtj/IqJbGNv4O
         z6xzkFHFAbnX7yIMxppR38DmZdgh7WUbVzRJDba3fY3XLiGB1FdT6kpoy9rh0LFp/3Ot
         1zBabdWXD7AyJ5xY6E90233Dpbad/TL+7BLK1pTMJ6xl+3BAuSKX7RdlVMZ3xA6mDBQ5
         o5YaJXVDKL7Bp/57N/OF6HYQ+KLd67PJXCv4cN7RrKfrjRYWDnP2fyaARi+OwCajrMJn
         bfHQ==
X-Gm-Message-State: ACgBeo0s33BkQ2WGQRSLr1aMeWO1EcHnzfDES9G7+mAAySwOZYjsJZ8N
        wb46MdkOBOvMnnl5M7k9zf9K4Q==
X-Google-Smtp-Source: AA6agR7JVLWDvIVNg6U27naCjDABIHZmPrY0O7mtkyZhQfdguRWg/PygUQvQMY4Rm9fX93k5cxNZAw==
X-Received: by 2002:a05:651c:211d:b0:25e:4d0b:9ebe with SMTP id a29-20020a05651c211d00b0025e4d0b9ebemr717397ljq.121.1659626064031;
        Thu, 04 Aug 2022 08:14:24 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id x6-20020a2e9c86000000b0025e59a76742sm157631lji.14.2022.08.04.08.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 08:14:23 -0700 (PDT)
Message-ID: <6c1570c5-bdf4-21bd-ce0f-6bc5513c5dae@linaro.org>
Date:   Thu, 4 Aug 2022 17:14:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v1] dt-binding: ipmi: add fallback to npcm845 compatible
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, jic23@kernel.org,
        minyard@acm.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     openbmc@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220804145516.217482-1-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804145516.217482-1-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2022 16:55, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string.

It's easily visible in the code what you are doing, so instead you must
explain why you are doing it.

Best regards,
Krzysztof
