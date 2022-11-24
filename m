Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B653637627
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 11:21:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiKXKVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 05:21:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbiKXKVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 05:21:22 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D67D14EC8F
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:14 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id a29so1848095lfj.9
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hUZZWNwOIyov61avaoGtjKOTcQzlTzIh7beZ0Xaj6kI=;
        b=vobhxyu0bOTm/6iNTOa2TV9Ckr0QOWecFq/0lvKyfaY3nXyTUzfWr49q/gQMJE4Ps7
         Qdw1ruzpBT9qTvWXBYto69qWc5uQ6veSucFLkBEL2/Xr0HvgYhZzLSeFSPyiZqcGQ3l5
         nNrrM86gtZPR+suhsUgMPv85PIFDl3eOTanU1JA53p2ofu655olLJFU9GuomYeSIOSoU
         GGb7VFb5rxZ9N40b0/EdHxxchgFrESjjauzhI67YTNWT0+epKp8miHTnBkXPCt/SLgep
         jXm79tOjaHC+Lu11AvbqhzpoD2UvfcXE7g+NYEUXfBtdoUmNwvGRfZzZYiA2+oUWhAzE
         Fohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hUZZWNwOIyov61avaoGtjKOTcQzlTzIh7beZ0Xaj6kI=;
        b=mqcWelmSFvMNSapp4fEcttGaJ6MSckENgg2qL5uG9Czzq1G5sW7l5eNt5nDr/hvroi
         Nz6tDw/3KlTn+1TnM1gyspDe4gYbHcEuyaKD+223kvLzyZ/Cc3pekYIfwQy1OPhdMe5Y
         XHQePhBinn3LE5cfyN5pnUiUpaxmST5qLh1bpaRC24FeDYFkemVsSUcZtNVxNCXYHxaS
         X+kvo7420z4OaU4hCefFK776lYFlpvPbUv8NCFR0EVlNRs4tzqFPdvbX5Vsn+/IlEr6K
         bqzwMY9FZMEGKZOGLw+G/WWQNvP36tyQShtnuSW5zAkjbx4OMVPb0G9BIjpthyessaFq
         Kr9g==
X-Gm-Message-State: ANoB5pmK39+wV8Ki3mR1mAjBtZ+gWuOH5Je0mNeryHr/rLo3sRVBhPO7
        MqfpsI/xcihKI6wXKFmrjyyhoQ==
X-Google-Smtp-Source: AA0mqf55Im85gNkyC7TOiVDJms4kQxc+quT1zcaTMlNCM0iojwdHAEO+6u53ChqNdNUto6lgCZ0t4A==
X-Received: by 2002:ac2:5f49:0:b0:4a4:7db1:b853 with SMTP id 9-20020ac25f49000000b004a47db1b853mr10270623lfz.562.1669285272975;
        Thu, 24 Nov 2022 02:21:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 4-20020ac25f44000000b00492b494c4e8sm73680lfz.298.2022.11.24.02.21.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 02:21:12 -0800 (PST)
Message-ID: <b3f5c37a-934b-54bf-e6b6-cc4d12c18484@linaro.org>
Date:   Thu, 24 Nov 2022 11:21:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] dt-bindings: iio: imu: st_lsm6dsx: add ism330is
Content-Language: en-US
To:     Lorenzo Bianconi <lorenzo@kernel.org>, jic23@kernel.org
Cc:     mario.tesi@st.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, lorenzo.bianconi@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <cover.1669279604.git.lorenzo@kernel.org>
 <a7a8a00037952928364269615ee8b6da4547795b.1669279604.git.lorenzo@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a7a8a00037952928364269615ee8b6da4547795b.1669279604.git.lorenzo@kernel.org>
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

On 24/11/2022 09:49, Lorenzo Bianconi wrote:
> Add device bindings for ism330is IMU sensor.
> Use lsm6dso16is as fallback device for ism330is since it implements all the
> features currently supported by ism330is.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

There were few changes to this binding (new compatibles) and the names
are similar, so I hope the end result is correct... Briefly it looks fine:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

