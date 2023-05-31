Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1A9371772C
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 08:51:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234404AbjEaGvg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 02:51:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234400AbjEaGvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 02:51:35 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDB7186
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 23:51:30 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-96ff9c0a103so771523466b.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 23:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685515889; x=1688107889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j8KIRkSeQpAAw2eR4yzI5lu3pYKOIqBElBCoG4tj2Oo=;
        b=QffMaphaCoZ9MsLlJH4EYBJfwdueijKDixcU+L4mAd16ePYDj0K5aB4E+PgA/s9Mzp
         lSJonPXOH8QCQHTTrHZbytT3t9Wv2XsAxdhFQKkRzLZhe/KB4KfwBzClynOcLPSdo2c1
         Y1hjwnCON7+/bNk7ME5Q8Ka+n7IUT+ARV8MrH8g6JZHFIZCnZ7+/mCu5x48ohbyQ+JuE
         DEgb2uuU/K2Z/mUFiz/ghvaTG8DwZMv5cvaQST7IyYMCFH+uPErFkZmxUddEeuJGmq4M
         SyTKhva1ZjnWqm62IlQeTaV5tj1Vo+NQ+/OZayWr4yGZQNEBo0sNhAooxpFfX9peBgX0
         5vWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685515889; x=1688107889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j8KIRkSeQpAAw2eR4yzI5lu3pYKOIqBElBCoG4tj2Oo=;
        b=DWQSpsgi0gRckt3Oz3dSQSTuXoDajiGmGJaLJALuxcNjxucOchbRbqjgcDhhut088U
         j1XtfzsuzxgidGo0E1anM2zF+HxbPJPxC1TawVjr7ekBDUV6+nGqcaYacLTLXLSTtoYc
         BVTIxlpGDPL6337mxlc3fjvXQKMStY073Bh6jsO3nYG+R3qpm/mvhFulecFzgMsBq5sZ
         p/v/ASK2eA8hu1Z4CgiO+FNw+deUe3Hll9InmHINS6TSo5FhevEwsvx/sf3o+9ccAqzX
         OPOGQIsAT1rKs8Vv4nlKMsbazVBBT0rfvmSQtrM/9bt4991O8LuTGOj2nWq80CM0bXZF
         qbKA==
X-Gm-Message-State: AC+VfDyINMCnKSuxBu68uk3rH6zPakMijS/NDbDZxirrZlvmIe9I8i1d
        nv8Kg2aLTpAnwuZZs/EjWAT0HKL07qL7ihHRgqPv7w==
X-Google-Smtp-Source: ACHHUZ41+Df1JF3rXv8WCdc5cE6mupu5PE4dFHFEEKvM7CJGANm6pLKrWAUKpgejEfJB4tpS9+W3aQ==
X-Received: by 2002:a17:907:7291:b0:96f:4ee4:10d4 with SMTP id dt17-20020a170907729100b0096f4ee410d4mr4511643ejc.43.1685515888922;
        Tue, 30 May 2023 23:51:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id d12-20020a17090648cc00b00965e9a23f2bsm8410703ejt.134.2023.05.30.23.51.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 23:51:28 -0700 (PDT)
Message-ID: <ed4c3564-4083-5568-f999-cfd7f02544a7@linaro.org>
Date:   Wed, 31 May 2023 08:51:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] Documentation/process: add soc maintainer handbook
Content-Language: en-US
To:     Bagas Sanjaya <bagasdotme@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>, soc@kernel.org
Cc:     conor@kernel.org, corbet@lwn.net, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        olof@lixom.net, palmer@dabbelt.com, robh+dt@kernel.org,
        arnd@arndb.de
References: <20230530-multiple-whooping-ee5706fceb67@wendy>
 <ZHbpb98Yn7SDZ4XZ@debian.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZHbpb98Yn7SDZ4XZ@debian.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 08:30, Bagas Sanjaya wrote:
>> +appropriate time later.  Most importantly, any incompatible changes should be
>> +clearly pointed out in the patch description and pull request, along with the
>> +expected impact on existing users, such as bootloaders or other operating
>> +systems.
>> +
>> +Driver Branch Dependencies
>> +~~~~~~~~~~~~~~~~~~~~~~~~~~
>> +
>> +A common problem is synchronizing changes between device drivers and devicetree
>> +files, even if a change is compatible in both directions, this may require
>> +coordinating how the changes get merged through different maintainer trees.
>> +
>> +Usually the branch that includes a driver change will also include the
>> +corresponding change to the devicetree binding description, to ensure they are
>> +in fact compatible.  This means that the devicetree branch can end up causing
>> +warnings in the "make dtbs_check" step.  If a devicetree change depends on
>> +missing additions to a header file in include/dt-bindings/, it will fail the
>> +"make dtbs" step and not get merged.
> 
> Sounds like passing `make dtbs` is a merging requirement.

And why shouldn't be?

Best regards,
Krzysztof

