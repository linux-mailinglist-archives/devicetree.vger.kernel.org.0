Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9727D67AAC1
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 08:17:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234182AbjAYHRc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 02:17:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232753AbjAYHRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 02:17:30 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 082B33525E
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 23:17:29 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d14so12381224wrr.9
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 23:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=chlnQKczQqGxgtBmjCWKCW6AYBinQQ7f23gebMJ77yc=;
        b=VqDygT8O9wpfGsIZWFRg/+xuF9eF8OFkp0u8fcS3gvHjFZqH7hSDBytY8tkpoVCOYH
         KcGQoO3QYl0tfQpuLwWfurJw3MIH7oNtN0LznOAOJBmlkdJ8zBQrBTzaUFvr8fr66QfM
         n0284fg3GHoJ90BbSuVLe7h4t6/LYjO+spf+J3dtWzGvpIT2XX99jz5yStFUPnfNOh5E
         xgteqe3OSUipUNNcK0FKpKEYKpCfy4SERdvdp32GCUiW/hXjEHvmLR0xF6OKaB6aKhLA
         UY/tfMtfwrFWsgn4gm++2vCoGmRt7SbgfUzq+yz04YZKUesEPvEXPXWc7496tDn6m2de
         ycGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=chlnQKczQqGxgtBmjCWKCW6AYBinQQ7f23gebMJ77yc=;
        b=ewpE9klDaCiaolM+s8hIPTx6nxHo/ZEGNyD+SsE2McGNCGcTFdIKpQQH0+YjMKisL3
         JjUvnZhpDmJ4Ws/miAtj4S8sMX7PjgBNrE2uTKO5zog2OXfLRV/et3QwRMokha3hqDGt
         0VkQreIZE9h/Vo2DqSOPU0TLWP/OhsxP5dJCf4GhsBSEzsZwpvy8us7TcHGz4EzJ2lYB
         HTIsV75EQmWMg+KpuyeJMLNqg8YLnfDa7Ycx5VONSuzTQllB8a1UikHirE9l+nYHp48u
         m4xa1qJK3h7PjgTULZ6ZgN7YMlvP7ngybH9i72zPMRCIpwSFQL53f90GW2qBc1uXvQ3s
         VRYQ==
X-Gm-Message-State: AFqh2kq0NwTZKPeZ8JXFyGTKxXzPgVAoQnyI0WaVOGF+9QQlHLSFXcpF
        wahrJqZalfIfZKESYr+J/v1ifQ==
X-Google-Smtp-Source: AMrXdXtNNTvlwsj4dxm1R0laqwG0cpyCC+E5QBosMbZ5BoH/xc/nE86RIea1JgdtdCBInnDiQS6WDQ==
X-Received: by 2002:a05:6000:a06:b0:2bd:d84d:bbbe with SMTP id co6-20020a0560000a0600b002bdd84dbbbemr30996639wrb.47.1674631047510;
        Tue, 24 Jan 2023 23:17:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm3638255wrj.102.2023.01.24.23.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 23:17:27 -0800 (PST)
Message-ID: <1cabe00c-e701-24ee-1c20-3b8eccf4fe39@linaro.org>
Date:   Wed, 25 Jan 2023 08:17:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 1/2] dt-bindings: trivial-devices: Add Infineon
 TDA38640 Voltage Regulator
Content-Language: en-US
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-hwmon@vger.kernel.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230124202317.3704963-1-Naresh.Solanki@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124202317.3704963-1-Naresh.Solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 21:23, Naresh Solanki wrote:
> Infineon TDA38640 is PMBUS compliant voltage regulator.
> 
> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

