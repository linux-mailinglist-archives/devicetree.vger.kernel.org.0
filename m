Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9303A57E6D2
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 20:47:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236424AbiGVSra (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 14:47:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235459AbiGVSra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 14:47:30 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79A9FA8970
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 11:47:28 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id p11so4159172lfu.5
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 11:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U22qzag195P6poqQ9YYa+uEVyc9cDqkoMr+eaz+PhMc=;
        b=Zci6tL+2Nmq6YTC9QHfY38requX/5zX5FmKQyas6HvycvQJ/OONELujZBadrdvTpXH
         btD6GQ9/nt/N7RjIrZa7GNxVhd03zCSP49VXmSVNGQRaVCJQFkY/wRQPAFFwB1OmqM71
         q4URy+H5OwUOfgQrmhdDAqOinMX55+WeZxjHMy+95bI3T7Sfxlx8WzDkQcoB+8/pnaj8
         VwZud/6ltJZ/6517h+UyWNqDSrDPWXz5lGd0rFgdF0l5yVmNfPfRSZJs3eL4NGV+i2Ra
         j/s4TKDWFUXqAG30+mVUzU2yjaxiXcfEoir6j4aRvxa2Bbd5kJhD0n013N86GqpCe2n9
         6zUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U22qzag195P6poqQ9YYa+uEVyc9cDqkoMr+eaz+PhMc=;
        b=rl60nJfn26YxYP0CXvxKrf5rhz0tN4tKA5SHaOxhPrCY1cBrrEzHwe9Z+PbhTzoObL
         pF7dHXwaSWZNuHc6ldlcm++LuInS9LHeQViCsUESpX3W3qvwGgmn6wwjEvF4uBsAiZcI
         tNk8SF01ZMvAP63VF0JF6SXlcS9vHFvU+jgOdBx/advh5ssOujgGtVepbb81UFoyJWt7
         SOK6jXVH11zYbfZSOZ/vZTE/McWvQIqddcZzrOGyIOvV8rcLaxBLCzIZBB13OUESbNA7
         hR/oKKymetYkyhwFTfeh3WQu36ibn0u8x8CYaY1gUZvGwAKHpj8R1whEjIf5AVNrpim5
         NFuQ==
X-Gm-Message-State: AJIora+YvlCXxjxw0NiblfgJ+EJzEali5PoaCRme6fCkpPaa2HGMbTy8
        bVMOApnKQTbiim+oPbz/a445Ew==
X-Google-Smtp-Source: AGRyM1vB2jdgHrEy7sFIqTrDp31QM+2NOeu6hjTLq6AkzkWTmJMdLvT61byh7LBQKzk65KoRRkyVgw==
X-Received: by 2002:a05:6512:a8e:b0:48a:7513:6d83 with SMTP id m14-20020a0565120a8e00b0048a75136d83mr539808lfu.56.1658515646850;
        Fri, 22 Jul 2022 11:47:26 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00489dedf1dcfsm1185377lfs.289.2022.07.22.11.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 11:47:26 -0700 (PDT)
Message-ID: <0c8688d5-b0c1-8cc1-ec27-292acbb38dfc@linaro.org>
Date:   Fri, 22 Jul 2022 20:47:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/2] spi: npcm-pspi: Add NPCM845 peripheral SPI support
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, openbmc@lists.ozlabs.org,
        linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220722114136.251415-1-tmaimon77@gmail.com>
 <20220722114136.251415-3-tmaimon77@gmail.com>
 <afae04e0-76a3-1bcb-5b47-9944fa9ab2c0@linaro.org>
 <YtrvyyMGm64hFG5j@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YtrvyyMGm64hFG5j@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2022 20:43, Mark Brown wrote:
> On Fri, Jul 22, 2022 at 08:31:22PM +0200, Krzysztof Kozlowski wrote:
>> On 22/07/2022 13:41, Tomer Maimon wrote:
> 
>>>  static const struct of_device_id npcm_pspi_match[] = {
>>>  	{ .compatible = "nuvoton,npcm750-pspi", .data = NULL },
>>> +	{ .compatible = "nuvoton,npcm845-pspi", .data = NULL },
> 
>> The devices look compatible, so why not reusing 750 compatible and
>> adding more specific upfront only in the bindings instead?
> 
> ...with a fallback list required by the bindings so the driver actually
> binds.  Note that bindings are currently not in YAML format so there'd
> be even less enforcement of that than normal, and as they're currently
> written the bindings don't require fallback.

Yes, the bindings document should be rephrased but we were living like
that for few years. :)


Best regards,
Krzysztof
